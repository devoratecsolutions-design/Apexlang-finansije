/*
================================================================================
  ESSCOM Finansije - 06_kuf.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 01-04, PRIJE importa aplikacije

  Svrha: novi paket KUF_PKG - hitne ispravke modula Ulazne fakture
    N-09  brisanje fakture provjerava se na serveru: ne briše se proknjižena,
          stornirana / storno, unesena u UIO KUF, sa plaćanjima (izvod ili
          ručno), vezana za kalkulaciju ili iz zaključanog perioda
          (ranije samo uslov na dugmetu - ostajale su "viseće" stavke izvoda)
    N-09  ispravljeno vraćanje brojača pri brisanju (gledala se najveća
          vrijednost broja kroz SVE godine, a ne samo godinu fakture)
    N-08  provjera duplikata: isti dobavljač + isti broj fakture u istoj godini
          (kad je KUF.godina prazna, godina se uzima iz datuma fakture)

  Skripta pravi SAMO novi paket. Postojeći paketi (FINANSIJE_PKG ...),
  tabele i podaci se NE mijenjaju. Vraćanje: drop package kuf_pkg;
  (i vraćanje aplikacije na prethodnu verziju).
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

create or replace package kuf_pkg as
    --------------------------------------------------------------
    -- Ulazne fakture (KUF) - v2
    --------------------------------------------------------------

    -- Razlog zbog kojeg se faktura ne smije obrisati; null = smije.
    function razlog_zabrane_brisanja (
        p_id in number
    ) return varchar2;

    -- Brisanje sa provjerom (ORA-20201 sa razlogom) i vraćanjem brojača.
    procedure obrisi (
        p_id     in number,
        p_ooj_id in number
    );

    -- Interni naziv (npr. UF-000012/2026) prve fakture istog dobavljača sa
    -- istim brojem fakture u godini; null = nema duplikata.
    -- Ne broje se stornirane fakture ni storno dokumenti.
    function duplikat (
        p_ooj_id       in number,
        p_klijent_id   in number,
        p_broj_fakture in varchar2,
        p_godina       in number,
        p_id           in number default null
    ) return varchar2;

end kuf_pkg;
/

create or replace package body kuf_pkg as

    function razlog_zabrane_brisanja (
        p_id in number
    ) return varchar2 is
        r_kuf   kuf%rowtype;
        l_count number;
    begin
        begin
            select * into r_kuf from kuf where id = p_id;
        exception
            when no_data_found then
                return 'Faktura ne postoji ili je već obrisana.';
        end;

        if r_kuf.glavna_knjiga_id is not null then
            return 'Faktura je proknjižena i ne može se obrisati.';
        end if;

        if r_kuf.stornirano = 'Y' or r_kuf.storniran_id is not null then
            return 'Stornirana faktura i storno dokument se ne brišu.';
        end if;

        select count(*) into l_count from uio_kuf where faktura_id = p_id;
        if l_count > 0 then
            return 'Faktura je unesena u UIO KUF. Prvo obrišite UIO zapis.';
        end if;

        select count(*) into l_count from glavna_knjiga_stavke where kuf_id = p_id;
        if l_count > 0 then
            return 'Na fakturu su vezana plaćanja kroz izvode.';
        end if;

        if nvl(r_kuf.uplaceno_rucno, 0) <> 0 then
            return 'Na fakturi su evidentirana ručna plaćanja.';
        end if;

        select count(*) into l_count from kalkulacija_kuf where kuf_id = p_id;
        if l_count > 0 then
            return 'Faktura je vezana za kalkulaciju.';
        end if;

        -- preostalo: zaključan period (is_kuf_editable provjerava i UIO i GK)
        if not finansije_pkg.is_kuf_editable(p_id) then
            return 'Faktura je u zaključanom periodu.';
        end if;

        return null;
    end razlog_zabrane_brisanja;

    procedure obrisi (
        p_id     in number,
        p_ooj_id in number
    ) is
        l_razlog varchar2(400);
        l_godina number;
        l_broj   number;
        l_max    number;
    begin
        begin
            -- godina je u starijim podacima često prazna: tada iz datuma fakture
            select nvl(godina, extract(year from datum_fakture)), broj
              into l_godina, l_broj
              from kuf
             where id = p_id
               and ooj_id = p_ooj_id;
        exception
            when no_data_found then
                raise_application_error(-20201, 'Faktura ne postoji ili ne pripada izabranoj firmi.');
        end;

        l_razlog := razlog_zabrane_brisanja(p_id);
        if l_razlog is not null then
            raise_application_error(-20201, l_razlog);
        end if;

        select max(broj)
          into l_max
          from kuf
         where ooj_id = p_ooj_id
           and nvl(godina, extract(year from datum_fakture)) = l_godina;

        finansije_pkg.delete_kuf(p_id => p_id);

        -- brojač se vraća samo ako je obrisana posljednja faktura u godini
        if l_broj is not null and l_broj = l_max then
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => 'uf',
                p_godina             => l_godina,
                p_value              => -1
            );
        end if;
    end obrisi;

    function duplikat (
        p_ooj_id       in number,
        p_klijent_id   in number,
        p_broj_fakture in varchar2,
        p_godina       in number,
        p_id           in number default null
    ) return varchar2 is
    begin
        if p_klijent_id is null or trim(p_broj_fakture) is null then
            return null;
        end if;

        for c in (
            select nvl(naziv, to_char(broj)) as naziv
              from kuf
             where ooj_id = p_ooj_id
               and klijent_id = p_klijent_id
               and nvl(godina, extract(year from datum_fakture)) = p_godina
               and upper(trim(naziv_fakture)) = upper(trim(p_broj_fakture))
               and id <> nvl(p_id, -1)
               and nvl(stornirano, 'N') = 'N'
               and storniran_id is null
             order by id
        ) loop
            return c.naziv;
        end loop;

        return null;
    end duplikat;

end kuf_pkg;
/

show errors package kuf_pkg
show errors package body kuf_pkg

-- provjera: oba reda moraju biti VALID
select object_type, status from user_objects where object_name = 'KUF_PKG' order by object_type;

declare
    l_n number;
begin
    select count(*) into l_n from user_objects where object_name = 'KUF_PKG' and status <> 'VALID';
    if l_n > 0 then
        raise_application_error(-20000, 'KUF_PKG nije VALID - pogledati greške iznad.');
    end if;
    dbms_output.put_line('KUF_PKG je VALID.');
end;
/

-- Test (zamijeniti ID fakture):
--   select kuf_pkg.razlog_zabrane_brisanja(<kuf_id>) from dual;
