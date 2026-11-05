/*
================================================================================
  ESSCOM Finansije - 20_partneri_konta.sql
  Pokrenuti kao: ACCOUNTING (poslije 11-19; ne zavisi od njih)

  Svrha (R19, 04.11.2026): konta poslovnog partnera za dvojno knjigovodstvo.
    Partner (SEC_KLIJENTI) može imati više konta (SEC_KLIJENT_KONTA). U svakoj
    kontnoj grupi (prva cifra konta: 2 = kupci, 4 = dobavljači...) jedno aktivno
    konto je PODRAZUMIJEVANO - po njemu se knjiži kada dokument ne kaže drugačije.
      - nova kolona SEC_KLIJENT_KONTA.PODRAZUMIJEVANO (Y/N, default N)
      - jedinstveno konto po partneru (indeks SEC_KLIJENT_KONTA_UK)
      - paket SEC_PARTNER_PKG: snimanje / brisanje konta, usklađivanje
        podrazumijevanih (u grupi tačno jedno, zadnje označeno pobjeđuje),
        funkcija KONTO(partner, grupa) za knjiženja i KONTA_OPIS za liste
      - SEC_KLIJENTI.KONTNA_KLASA_ID ostaje (stari kod ga čita) i puni se
        podrazumijevanim kontom najniže grupe
    Postojeći podaci: u svakoj grupi gdje partner ima aktivna konta, prvo konto
    (po šifri) postaje podrazumijevano.
  Šablon za knjiženje partnera (SEC_KLIJENTI.SABLON_ID) više nije obavezan -
  kolona ostaje, forma ga ne prikazuje.
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) kolona, ograničenje, indeks ----------------------------------------------
declare
    l_n number;
begin
    select count(*) into l_n from user_tab_columns
     where table_name = 'SEC_KLIJENT_KONTA' and column_name = 'PODRAZUMIJEVANO';
    if l_n = 0 then
        execute immediate q'[alter table sec_klijent_konta add (podrazumijevano varchar2(1 char) default 'N' not null)]';
        dbms_output.put_line('Dodata kolona SEC_KLIJENT_KONTA.PODRAZUMIJEVANO');
    end if;
    select count(*) into l_n from user_constraints where constraint_name = 'SEC_KLIJENT_KONTA_PODR_CK';
    if l_n = 0 then
        execute immediate q'[alter table sec_klijent_konta add constraint sec_klijent_konta_podr_ck check (podrazumijevano in ('Y','N'))]';
        dbms_output.put_line('Napravljeno ograničenje SEC_KLIJENT_KONTA_PODR_CK');
    end if;
    select count(*) into l_n from user_indexes where index_name = 'SEC_KLIJENT_KONTA_UK';
    if l_n = 0 then
        begin
            execute immediate 'create unique index sec_klijent_konta_uk on sec_klijent_konta (sec_klijent_id, kontna_klasa_id)';
            dbms_output.put_line('Napravljen indeks SEC_KLIJENT_KONTA_UK');
        exception
            when others then
                -- stari podaci sa istim kontom dva puta kod partnera: javiti, ne prekidati
                dbms_output.put_line('UPOZORENJE: indeks SEC_KLIJENT_KONTA_UK nije napravljen (duplikati konta kod partnera): ' || sqlerrm);
        end;
    end if;
end;
/

comment on column sec_klijent_konta.podrazumijevano is 'Y = podrazumijevano konto partnera u svojoj kontnoj grupi (prva cifra konta) za knjiženje (v2)';

-- 2) paket ----------------------------------------------------------------------
create or replace package sec_partner_pkg as

    -- kontna grupa konta = prva cifra šifre (2 kupci, 4 dobavljači ...)
    function grupa (p_konto_id in number) return varchar2;

    -- snimanje jednog konta partnera (novo: p_id null). Podrazumijevana se usklađuju
    -- tek pozivom USKLADI (poslije svih redova), da redoslijed redova ne smeta.
    procedure snimi_konto (
        p_id              in out number,
        p_klijent_id      in number,
        p_konto_id        in number,
        p_podrazumijevano in varchar2,
        p_valid           in varchar2
    );
    procedure obrisi_konto (p_id in number);
    procedure obrisi_konta (p_klijent_id in number);

    -- u svakoj grupi sa aktivnim kontima tačno jedno podrazumijevano:
    -- više označenih -> ostaje zadnje izmijenjeno; nijedno -> prvo po šifri.
    -- Puni SEC_KLIJENTI.KONTNA_KLASA_ID. Vraća poruku o promjeni ili null.
    function uskladi (p_klijent_id in number) return varchar2;

    -- konto za knjiženje: podrazumijevano aktivno konto partnera u grupi
    -- (p_grupa = '2', '4' ...), inače jedino aktivno konto u grupi, inače null
    function konto (p_klijent_id in number, p_grupa in varchar2) return number;

    -- za liste: "2110 · 4330 (podrazumijevano)"
    function konta_opis (p_klijent_id in number) return varchar2;

end sec_partner_pkg;
/

create or replace package body sec_partner_pkg as

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20301, 'Greška CORP-SEC: ' || p_tekst);
    end greska;

    function grupa (p_konto_id in number) return varchar2 is
        l_g varchar2(10);
    begin
        select max(substr(code, 1, 1)) into l_g from sif.acc_kontni_okvir_klase where id = p_konto_id;
        return l_g;
    end grupa;

    procedure snimi_konto (
        p_id              in out number,
        p_klijent_id      in number,
        p_konto_id        in number,
        p_podrazumijevano in varchar2,
        p_valid           in varchar2
    ) is
        l_ooj  number;
        l_kooj number;
        l_kod  varchar2(100);
        l_n    number;
    begin
        if p_klijent_id is null then
            greska('Partner nije snimljen.');
        end if;
        if p_konto_id is null then
            greska('Izaberite konto.');
        end if;
        select max(ooj_id) into l_ooj from sec_klijenti where id = p_klijent_id;
        select max(ooj_id), max(code) into l_kooj, l_kod from sif.acc_kontni_okvir_klase where id = p_konto_id;
        if l_kooj is null then
            greska('Konto ne postoji u kontnom okviru.');
        end if;
        if l_kooj <> l_ooj then
            greska('Konto ' || l_kod || ' nije iz kontnog okvira firme partnera.');
        end if;
        select count(*) into l_n from sec_klijent_konta
         where sec_klijent_id = p_klijent_id and kontna_klasa_id = p_konto_id and id <> nvl(p_id, -1);
        if l_n > 0 then
            greska('Konto ' || l_kod || ' je već dodijeljen partneru.');
        end if;
        if p_id is null then
            insert into sec_klijent_konta (sec_klijent_id, kontna_klasa_id, valid, podrazumijevano)
            values (p_klijent_id, p_konto_id, nvl(p_valid, 'Y'),
                    case when nvl(p_valid, 'Y') = 'Y' and p_podrazumijevano = 'Y' then 'Y' else 'N' end)
            returning id into p_id;
        else
            update sec_klijent_konta
               set kontna_klasa_id = p_konto_id,
                   valid           = nvl(p_valid, 'Y'),
                   podrazumijevano = case when nvl(p_valid, 'Y') = 'Y' and p_podrazumijevano = 'Y' then 'Y' else 'N' end
             where id = p_id and sec_klijent_id = p_klijent_id;
        end if;
    end snimi_konto;

    procedure obrisi_konto (p_id in number) is
    begin
        delete from sec_klijent_konta where id = p_id;
    end obrisi_konto;

    procedure obrisi_konta (p_klijent_id in number) is
    begin
        delete from sec_klijent_konta where sec_klijent_id = p_klijent_id;
    end obrisi_konta;

    function uskladi (p_klijent_id in number) return varchar2 is
        l_poruka varchar2(4000);
        l_prvi   number;
        l_konto  number;
    begin
        -- neaktivno konto nije podrazumijevano
        update sec_klijent_konta set podrazumijevano = 'N'
         where sec_klijent_id = p_klijent_id and valid <> 'Y' and podrazumijevano = 'Y';
        for g in (select substr(ko.code, 1, 1) as grupa,
                         count(*) as aktivnih,
                         sum(case when kk.podrazumijevano = 'Y' then 1 else 0 end) as podr
                    from sec_klijent_konta kk
                    join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
                   where kk.sec_klijent_id = p_klijent_id and kk.valid = 'Y'
                   group by substr(ko.code, 1, 1)
                   order by 1) loop
            if g.podr = 1 then
                continue;
            end if;
            -- nijedno označeno: prvo po šifri; više označenih: ostaje zadnje izmijenjeno
            select id into l_prvi
              from (select kk.id
                      from sec_klijent_konta kk
                      join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
                     where kk.sec_klijent_id = p_klijent_id and kk.valid = 'Y'
                       and substr(ko.code, 1, 1) = g.grupa
                       and (g.podr = 0 or kk.podrazumijevano = 'Y')
                     order by case when g.podr = 0 then ko.code end,
                              case when g.podr > 0 then kk.updated end desc nulls last,
                              kk.id desc)
             where rownum = 1;
            for k in (select kk.id, ko.code
                        from sec_klijent_konta kk
                        join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
                       where kk.sec_klijent_id = p_klijent_id and substr(ko.code, 1, 1) = g.grupa) loop
                update sec_klijent_konta
                   set podrazumijevano = case when id = l_prvi then 'Y' else 'N' end
                 where id = k.id
                   and podrazumijevano <> case when id = l_prvi then 'Y' else 'N' end;
                if k.id = l_prvi then
                    l_poruka := substr(l_poruka || case when l_poruka is not null then ', ' end || k.code, 1, 3000);
                end if;
            end loop;
        end loop;
        -- stara kolona partnera: podrazumijevano konto najniže grupe
        select max(kk.kontna_klasa_id) keep (dense_rank first order by ko.code)
          into l_konto
          from sec_klijent_konta kk
          join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
         where kk.sec_klijent_id = p_klijent_id and kk.valid = 'Y' and kk.podrazumijevano = 'Y';
        update sec_klijenti set kontna_klasa_id = l_konto
         where id = p_klijent_id and decode(kontna_klasa_id, l_konto, 1, 0) = 0;
        if l_poruka is not null then
            return 'Podrazumijevano konto za knjiženje: ' || l_poruka || '.';
        end if;
        return null;
    end uskladi;

    function konto (p_klijent_id in number, p_grupa in varchar2) return number is
        l_id number;
    begin
        select max(kk.kontna_klasa_id) keep (dense_rank first order by case when kk.podrazumijevano = 'Y' then 0 else 1 end, ko.code)
          into l_id
          from sec_klijent_konta kk
          join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
         where kk.sec_klijent_id = p_klijent_id
           and kk.valid = 'Y'
           and substr(ko.code, 1, 1) = p_grupa;
        return l_id;
    end konto;

    function konta_opis (p_klijent_id in number) return varchar2 is
        l_s varchar2(4000);
    begin
        for k in (select ko.code, kk.podrazumijevano
                    from sec_klijent_konta kk
                    join sif.acc_kontni_okvir_klase ko on ko.id = kk.kontna_klasa_id
                   where kk.sec_klijent_id = p_klijent_id and kk.valid = 'Y'
                   order by ko.code) loop
            exit when length(l_s) > 3800;
            l_s := l_s || case when l_s is not null then ' · ' end || k.code
                   || case when k.podrazumijevano = 'Y' then '*' end;
        end loop;
        return l_s;
    end konta_opis;

end sec_partner_pkg;
/

-- 3) postojeći podaci ---------------------------------------------------------------
--    a) konto sa zaglavlja partnera (SEC_KLIJENTI.KONTNA_KLASA_ID) koje nije u listi konta dodaje se u listu
--    b) u svakoj grupi jedno podrazumijevano konto
declare
    l_r varchar2(4000);
    l_n number := 0;
begin
    insert into sec_klijent_konta (sec_klijent_id, kontna_klasa_id, valid, podrazumijevano)
    select k.id, k.kontna_klasa_id, 'Y', 'N'
      from sec_klijenti k
     where k.kontna_klasa_id is not null
       and not exists (select 1 from sec_klijent_konta kk
                        where kk.sec_klijent_id = k.id and kk.kontna_klasa_id = k.kontna_klasa_id);
    dbms_output.put_line('Konta sa zaglavlja partnera dodata u listu konta: ' || sql%rowcount);
    for k in (select distinct sec_klijent_id from sec_klijent_konta) loop
        l_r := sec_partner_pkg.uskladi(k.sec_klijent_id);
        l_n := l_n + 1;
    end loop;
    dbms_output.put_line('Usklađena konta partnera: ' || l_n);
    commit;
end;
/

prompt 20_partneri_konta.sql završena.
