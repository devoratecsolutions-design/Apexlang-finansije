/*
================================================================================
  ESSCOM Finansije - 14_rm_skladista.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 13_rm_views.sql

  Svrha (korak R2 - skladišta):
    1) brojač PRI za narednu godinu (napravio ga 11_rm_model) se uklanja: APP_GODINA
       je najveća godina sa aktivnim brojačem, pa je aplikacija prešla u tu godinu
       ("Neophodno je da konfigurišete formu numeracije" na ulaznim fakturama).
    2) zaduženi radnik skladišta: HRM.HR_RADNICI -> SIF.ACC_RADNICI. Postojeće
       vrijednosti se mapiraju po firmi, imenu i prezimenu (stara vrijednost se
       čuva u SKLADISTA_MIGRACIJA_V2); FK se prebacuje na SIF.ACC_RADNICI.
    3) VW_SKLADISTA: radnik iz SIF.ACC_RADNICI (i ispravljen naziv tipa cijene).
    4) VW_RM_SKLADISTA (lista) i VW_RM_SKLADISTE_STANJE (stanje po artiklu).
    5) RM_SKLADISTE_PKG: snimanje, brisanje i korisnici skladišta, sa pravilima.
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on

-- 1) brojač PRI za narednu godinu --------------------------------------------------
declare
    l_n number := 0;
begin
    for p in (select p.id
                from core.protokoli p
                join sif.vrste_dokumenata vd on vd.id = p.vrsta_naloga_id
                join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = 'MAT'
               where upper(vd.sifra) = 'PRI'
                 and p.godina > extract(year from sysdate)
                 and nvl(p.broj, 0) = 0) loop
        core.protokoli_pkg.delete_protokol(p_id => p.id);
        l_n := l_n + 1;
    end loop;
    commit;
    dbms_output.put_line('Uklonjeni brojači PRI za narednu godinu: ' || l_n
                         || ' (ponovo se prijavite u aplikaciju da se radna godina vrati).');
end;
/

-- 2) zaduženi radnik -> SIF.ACC_RADNICI ------------------------------------------------
declare
    l_n     number;
    l_r_own varchar2(128);
begin
    select count(*) into l_n from user_tables where table_name = 'SKLADISTA_MIGRACIJA_V2';
    if l_n = 0 then
        execute immediate q'[
            create table skladista_migracija_v2 (
                skladiste_id     number,
                kolona           varchar2(30),
                stara_vrijednost varchar2(4000),
                nova_vrijednost  varchar2(4000),
                izmijenjeno      date default sysdate
            )]';
    end if;

    select max(c2.owner) into l_r_own
      from user_constraints c
      join all_constraints c2 on c2.constraint_name = c.r_constraint_name and c2.owner = c.r_owner
     where c.table_name = 'SKLADISTA' and c.constraint_name = 'SKLADISTA_RADNIK_ID_FK';

    if l_r_own = 'HRM' then
        execute immediate 'alter table skladista drop constraint skladista_radnik_id_fk';
        execute immediate q'[
            insert into skladista_migracija_v2 (skladiste_id, kolona, stara_vrijednost, nova_vrijednost)
            select s.id, 'RADNIK_ID', to_char(s.radnik_id),
                   to_char((select min(a.id) from sif.acc_radnici a
                             where a.ooj_id = s.ooj_id
                               and upper(trim(a.ime)) = upper(trim(h.ime))
                               and upper(trim(a.prezime)) = upper(trim(h.prezime))))
              from skladista s
              join hrm.hr_radnici h on h.id = s.radnik_id
             where s.radnik_id is not null]';
        execute immediate q'[
            update skladista s
               set s.radnik_id = (select to_number(m.nova_vrijednost) from skladista_migracija_v2 m
                                   where m.skladiste_id = s.id and m.kolona = 'RADNIK_ID')
             where s.radnik_id is not null]';
        dbms_output.put_line('Zaduženi radnik mapiran na SIF.ACC_RADNICI: ' || sql%rowcount
                             || ' skladišta (bez para po imenu ostaje prazno - vidi SKLADISTA_MIGRACIJA_V2).');
        commit;
    end if;

    select count(*) into l_n from user_constraints where constraint_name = 'SKLADISTA_ACC_RADNIK_FK';
    if l_n = 0 then
        begin
            execute immediate 'alter table skladista add constraint skladista_acc_radnik_fk '
                              || 'foreign key (radnik_id) references sif.acc_radnici (id)';
            dbms_output.put_line('Napravljen FK SKLADISTA_ACC_RADNIK_FK -> SIF.ACC_RADNICI');
        exception
            when others then
                -- bez REFERENCES prava na SIF.ACC_RADNICI: pravilo provjerava RM_SKLADISTE_PKG
                dbms_output.put_line('UPOZORENJE: FK na SIF.ACC_RADNICI nije napravljen (' || sqlerrm
                                     || '). Za FK: kao SIF pokrenuti "grant references on sif.acc_radnici to accounting".');
        end;
    end if;
end;
/

-- 3) VW_SKLADISTA ---------------------------------------------------------------------
create or replace force view vw_skladista as
select s.id,
       s.ooj_id,
       ooj.naziv                 as ooj_naziv,
       s.nadredjeno_id,
       n.naziv                   as nadredjeno_naziv,
       s.valuta_id,
       v.naziv                   as valuta_naziv,
       s.tip_skladista_id,
       ts.naziv                  as tip_skladista_naziv,
       ts.sifra                  as tip_skladista_sifra,
       s.tip_cijene_id,
       tc.naziv                  as tip_cijene_naziv,
       tc.sifra                  as tip_cijene_sifra,
       s.cjenovnik_id,
       cj.sifra                  as cjenovnik_sifra,
       cj.naziv                  as cjenovnik_naziv,
       s.kontna_klasa_id,
       kok.naziv                 as kontna_klasa_naziv,
       kok.code                  as kontna_klasa_code,
       s.radnik_id,
       r.ime || ' ' || r.prezime as radnik_naziv,
       s.oj_id,
       oj.naziv                  as oj_naziv,
       s.naziv,
       s.sifra,
       s.adresa,
       s.fax,
       s.napomena,
       s.valid,
       s.row_version,
       s.created,
       s.created_by,
       s.updated,
       s.updated_by
  from skladista s
  left join core.ooj on s.ooj_id = ooj.id
  left join skladista n on s.nadredjeno_id = n.id
  left join sif.acc_valute v on s.valuta_id = v.id
  left join sif.acc_tipovi_skladista ts on s.tip_skladista_id = ts.id
  left join sif.acc_tipovi_cijena tc on s.tip_cijene_id = tc.id
  left join sif.acc_kontni_okvir_klase kok on s.kontna_klasa_id = kok.id
  left join sif.acc_radnici r on s.radnik_id = r.id
  left join core.oj on s.oj_id = oj.id
  left join cjenovnici cj on s.cjenovnik_id = cj.id;

-- 4) stanje i lista -------------------------------------------------------------------
-- stanje po skladištu i artiklu (bez storniranih dokumenata):
--   kolicina (stanje) = svi ulazi - svi izlazi; obradjeno = zaključeni ulazi - zaključeni izlazi;
--   raspolozivo = zaključeni ulazi - svi izlazi; vrijednost i prosječna cijena = zaključeni dokumenti
create or replace force view vw_rm_skladiste_stanje as
select o.ooj_id,
       o.skladiste_id,
       os.stavka_id,
       s.sifra                                                         as stavka_sifra,
       s.naziv                                                         as stavka_naziv,
       jm.naziv                                                        as jm_naziv,
       g.naziv                                                         as grupa_naziv,
       ts.naziv                                                        as tip_stavke_naziv,
       case when s.serijski_broj = 'Y' then 'Y' else 'N' end            as prati_sb,
       sum(case k.tk when 'U' then os.kolicina when 'I' then -os.kolicina else 0 end) as kolicina,
       sum(case when k.st = 'Z' then case k.tk when 'U' then os.kolicina when 'I' then -os.kolicina else 0 end else 0 end) as obradjeno,
       sum(case when k.tk = 'U' and k.st = 'Z' then os.kolicina when k.tk = 'I' then -os.kolicina else 0 end) as raspolozivo,
       sum(case when k.st = 'Z' then case k.tk when 'U' then os.kolicina * nvl(os.nabavna_cijena, 0)
                                               when 'I' then -os.kolicina * nvl(os.nabavna_cijena, 0)
                                               when 'N' then os.kolicina * nvl(os.nabavna_cijena, 0) else 0 end
                else 0 end)                                            as vrijednost,
       max(o.datum)                                                    as zadnja_promjena
  from operacija_stavke os
  join operacije o on o.id = os.operacija_id
  join sec_stavke s on s.id = os.stavka_id
  left join sif.acc_jedinice_mjere jm on jm.id = s.jm_id
  left join sif.acc_grupe_stavki g on g.id = s.grupa_id
  left join sif.acc_tipovi_stavki ts on ts.id = s.tip_stavke_id
  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
  cross apply (select coalesce(os.smjer, rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                      nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                 from dual) k
 where nvl(o.stornirano, 'N') = 'N'
   and o.storniran_id is null
   and nvl(k.tk, '-') <> 'Z'            -- R18: dokumenti zaduženja sitnog inventara ne mijenjaju stanje skladišta
 group by o.ooj_id, o.skladiste_id, os.stavka_id, s.sifra, s.naziv, jm.naziv, g.naziv, ts.naziv, s.serijski_broj;

-- skladišta kojima korisnik ima pristup, sa modulom (ROB = Zalihe robe, MAT = Materijal i oprema)
create or replace force view vw_rm_korisnik_skladista as
select k.korisnik_id,
       s.id                                                     as skladiste_id,
       s.ooj_id,
       case when upper(ts.sifra) = 'ROB' then 'ROB' else 'MAT' end as modul,
       s.valid
  from skladiste_korisnici k
  join skladista s on s.id = k.skladiste_id
  left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id;

create or replace force view vw_rm_skladista as
select s.id,
       s.ooj_id,
       s.sifra,
       s.naziv,
       s.tip_skladista_id,
       ts.sifra                                                        as tip_sifra,
       ts.naziv                                                        as tip_naziv,
       case when upper(ts.sifra) = 'ROB' then 'Y' else 'N' end          as robno,
       s.cjenovnik_id,
       cj.sifra                                                        as cjenovnik_sifra,
       cj.naziv                                                        as cjenovnik_naziv,
       case cj.tip when 'M' then 'Maloprodaja' when 'V' then 'Veleprodaja' end as cjenovnik_tip,
       s.oj_id,
       oj.naziv                                                        as oj_naziv,
       s.radnik_id,
       r.ime || ' ' || r.prezime                                       as radnik_naziv,
       s.kontna_klasa_id,
       kok.code || ' - ' || kok.naziv                                  as kontna_klasa,
       s.nadredjeno_id,
       case when n.id is not null then n.sifra || ' - ' || n.naziv end as nadredjeno,
       s.adresa,
       s.fax,
       s.napomena,
       s.valid,
       (select count(*) from skladiste_korisnici k where k.skladiste_id = s.id) as korisnika,
       (select count(*) from operacije o where o.skladiste_id = s.id)           as dokumenata,
       st.artikala,
       st.vrijednost
  from skladista s
  left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
  left join cjenovnici cj on cj.id = s.cjenovnik_id
  left join core.oj oj on oj.id = s.oj_id
  left join sif.acc_radnici r on r.id = s.radnik_id
  left join sif.acc_kontni_okvir_klase kok on kok.id = s.kontna_klasa_id
  left join skladista n on n.id = s.nadredjeno_id
  outer apply (select count(case when x.kolicina <> 0 or x.obradjeno <> 0 then 1 end) as artikala,
                      sum(x.vrijednost)                           as vrijednost
                 from vw_rm_skladiste_stanje x
                where x.skladiste_id = s.id) st;

-- 5) RM_SKLADISTE_PKG -----------------------------------------------------------------
create or replace package rm_skladiste_pkg as

    function ima_dokumenata (p_id in number) return varchar2;          -- Y / N
    function ima_stanja (p_id in number) return varchar2;              -- Y / N
    function razlog_zabrane_brisanja (p_id in number) return varchar2;  -- null = može se obrisati

    function provjeri (
        p_id               in number,
        p_ooj_id           in number,
        p_sifra            in varchar2,
        p_naziv            in varchar2,
        p_tip_skladista_id in number,
        p_cjenovnik_id     in number,
        p_oj_id            in number,
        p_nadredjeno_id    in number,
        p_kontna_klasa_id  in number,
        p_radnik_id        in number,
        p_valid            in varchar2,
        p_dvojno           in varchar2
    ) return varchar2;

    function snimi (
        p_id               in number,
        p_ooj_id           in number,
        p_sifra            in varchar2,
        p_naziv            in varchar2,
        p_tip_skladista_id in number,
        p_cjenovnik_id     in number,
        p_oj_id            in number,
        p_nadredjeno_id    in number,
        p_kontna_klasa_id  in number,
        p_radnik_id        in number,
        p_adresa           in varchar2,
        p_fax              in varchar2,
        p_napomena         in varchar2,
        p_valid            in varchar2,
        p_dvojno           in varchar2
    ) return number;

    procedure obrisi (p_id in number);

    procedure dodaj_korisnike (p_skladiste_id in number, p_korisnici in varchar2);   -- lista id-jeva "1:2:3"
    procedure obrisi_korisnika (p_id in number);

    -- moduli aplikacije: ROB = zalihe robe (robna skladišta), MAT = materijal i oprema (ostala skladišta)
    function modul (p_skladiste_id in number) return varchar2;
    -- skladište korisnika u modulu: željeno ako je dozvoljeno, inače prvo po šifri
    function izaberi (p_ooj_id in number, p_korisnik_id in number, p_modul in varchar2, p_zeljeno in number) return number;
    -- skladišta korisnika u modulu za izbornik: [{"id":..,"s":"šifra","n":"naziv","c":"cjenovnik"}]
    function lista_json (p_ooj_id in number, p_korisnik_id in number, p_modul in varchar2) return clob;

end rm_skladiste_pkg;
/

create or replace package body rm_skladiste_pkg as

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20201, 'Greška CORP-RM: ' || p_tekst);
    end greska;

    function ima_dokumenata (p_id in number) return varchar2 is
        l_n number;
    begin
        select count(*) into l_n from dual
         where exists (select 1 from operacije where skladiste_id = p_id or skladiste_prenos_id = p_id)
            or exists (select 1 from trebovanja where skladiste_id = p_id or skladiste_prenos_id = p_id)
            or exists (select 1 from popisi where skladiste_id = p_id)
            or exists (select 1 from kif where skladiste_id = p_id);
        return case when l_n > 0 then 'Y' else 'N' end;
    end ima_dokumenata;

    function ima_stanja (p_id in number) return varchar2 is
        l_n number;
    begin
        select count(*) into l_n from vw_rm_skladiste_stanje where skladiste_id = p_id and (kolicina <> 0 or obradjeno <> 0);
        return case when l_n > 0 then 'Y' else 'N' end;
    end ima_stanja;

    function razlog_zabrane_brisanja (p_id in number) return varchar2 is
        l_n number;
    begin
        if ima_dokumenata(p_id) = 'Y' then
            return 'Skladište ima dokumente (ulaz, izlaz, trebovanje, popis ili fakturu) i ne može se obrisati. Možete ga deaktivirati ako nema artikala na stanju.';
        end if;
        select count(*) into l_n from skladista where nadredjeno_id = p_id;
        if l_n > 0 then
            return 'Skladište je nadređeno drugim skladištima i ne može se obrisati.';
        end if;
        return null;
    end razlog_zabrane_brisanja;

    function provjeri (
        p_id               in number,
        p_ooj_id           in number,
        p_sifra            in varchar2,
        p_naziv            in varchar2,
        p_tip_skladista_id in number,
        p_cjenovnik_id     in number,
        p_oj_id            in number,
        p_nadredjeno_id    in number,
        p_kontna_klasa_id  in number,
        p_radnik_id        in number,
        p_valid            in varchar2,
        p_dvojno           in varchar2
    ) return varchar2 is
        l_n      number;
        l_tip    varchar2(64);
        l_tip_cj varchar2(1);
    begin
        if trim(p_sifra) is null then return 'Šifra skladišta je obavezna.'; end if;
        if trim(p_naziv) is null then return 'Naziv skladišta je obavezan.'; end if;
        if p_tip_skladista_id is null then return 'Tip skladišta je obavezan.'; end if;
        if p_oj_id is null then return 'Organizaciona jedinica je obavezna.'; end if;

        select count(*) into l_n from skladista
         where ooj_id = p_ooj_id and upper(trim(sifra)) = upper(trim(p_sifra)) and id <> nvl(p_id, -1);
        if l_n > 0 then
            return 'Skladište sa šifrom ' || trim(p_sifra) || ' već postoji.';
        end if;

        select max(upper(sifra)) into l_tip from sif.acc_tipovi_skladista where id = p_tip_skladista_id;
        if l_tip = 'ROB' then
            if p_cjenovnik_id is null then
                return 'Robno skladište radi po cjenovniku - izaberite cjenovnik (maloprodajni ili veleprodajni).';
            end if;
            select max(tip) into l_tip_cj from cjenovnici where id = p_cjenovnik_id and ooj_id = p_ooj_id and valid = 'Y';
            if l_tip_cj is null then
                return 'Cjenovnik ne pripada firmi ili nije aktivan.';
            end if;
        end if;

        if p_nadredjeno_id is not null then
            if p_nadredjeno_id = p_id then
                return 'Skladište ne može biti nadređeno samo sebi.';
            end if;
            select count(*) into l_n from skladista where id = p_nadredjeno_id and ooj_id = p_ooj_id;
            if l_n = 0 then
                return 'Nadređeno skladište ne pripada firmi.';
            end if;
        end if;

        if p_dvojno = 'Y' and p_kontna_klasa_id is null then
            return 'Konto skladišta (kontna klasa) je obavezan za dvojno knjigovodstvo.';
        end if;

        if p_radnik_id is null then
            return 'Zaduženi radnik (skladištar) je obavezan.';
        end if;
        if p_radnik_id is not null then
            select count(*) into l_n from sif.acc_radnici where id = p_radnik_id and ooj_id = p_ooj_id;
            if l_n = 0 then
                return 'Zaduženi radnik ne pripada firmi.';
            end if;
        end if;

        if p_id is not null then
            -- kad skladište ima dokumente mijenjaju se samo radnik, adresa, fax, napomena i aktivnost
            if ima_dokumenata(p_id) = 'Y' then
                for s in (select * from skladista where id = p_id) loop
                    if nvl(trim(s.sifra), '#') <> nvl(trim(p_sifra), '#')
                       or nvl(trim(s.naziv), '#') <> nvl(trim(p_naziv), '#')
                       or nvl(s.tip_skladista_id, -1) <> nvl(p_tip_skladista_id, -1)
                       or nvl(s.cjenovnik_id, -1) <> nvl(p_cjenovnik_id, -1)
                       or nvl(s.oj_id, -1) <> nvl(p_oj_id, -1)
                       or nvl(s.nadredjeno_id, -1) <> nvl(p_nadredjeno_id, -1)
                       or (p_dvojno = 'Y' and nvl(s.kontna_klasa_id, -1) <> nvl(p_kontna_klasa_id, -1)) then
                        return 'Skladište ima dokumente - mogu se mijenjati samo zaduženi radnik, adresa, fax, napomena i aktivnost.';
                    end if;
                end loop;
            end if;
            if nvl(p_valid, 'Y') = 'N' and ima_stanja(p_id) = 'Y' then
                return 'Skladište ima artikle na stanju i ne može se deaktivirati.';
            end if;
        end if;
        return null;
    end provjeri;

    function snimi (
        p_id               in number,
        p_ooj_id           in number,
        p_sifra            in varchar2,
        p_naziv            in varchar2,
        p_tip_skladista_id in number,
        p_cjenovnik_id     in number,
        p_oj_id            in number,
        p_nadredjeno_id    in number,
        p_kontna_klasa_id  in number,
        p_radnik_id        in number,
        p_adresa           in varchar2,
        p_fax              in varchar2,
        p_napomena         in varchar2,
        p_valid            in varchar2,
        p_dvojno           in varchar2
    ) return number is
        l_id      number := p_id;
        l_poruka  varchar2(4000);
        l_robno   boolean;
        l_tc      number;
        l_valuta  number;
        l_cj      number := p_cjenovnik_id;
        l_kk      number := p_kontna_klasa_id;
    begin
        l_poruka := provjeri(p_id, p_ooj_id, p_sifra, p_naziv, p_tip_skladista_id, p_cjenovnik_id, p_oj_id,
                             p_nadredjeno_id, p_kontna_klasa_id, p_radnik_id, p_valid, p_dvojno);
        if l_poruka is not null then
            greska(l_poruka);
        end if;
        select count(*) into l_tc from sif.acc_tipovi_skladista where id = p_tip_skladista_id and upper(sifra) = 'ROB';
        l_robno := l_tc > 0;
        -- tip cijene se ne bira: robno = cjenovnik, ostala = prosječna
        select max(id) into l_tc from sif.acc_tipovi_cijena where upper(sifra) = case when l_robno then 'CJEN' else 'PRS' end;
        if not l_robno then
            l_cj := null;
        end if;
        select max(id) into l_valuta from sif.acc_valute where upper(sifra) = 'BAM';

        if l_id is null then
            insert into skladista (ooj_id, sifra, naziv, tip_skladista_id, tip_cijene_id, cjenovnik_id, oj_id,
                                   nadredjeno_id, kontna_klasa_id, radnik_id, adresa, fax, napomena, valuta_id, valid)
            values (p_ooj_id, trim(p_sifra), trim(p_naziv), p_tip_skladista_id, l_tc, l_cj, p_oj_id,
                    p_nadredjeno_id, l_kk, p_radnik_id, p_adresa, p_fax, p_napomena, l_valuta, nvl(p_valid, 'Y'))
            returning id into l_id;
        else
            if p_dvojno <> 'Y' then
                select kontna_klasa_id into l_kk from skladista where id = l_id;   -- jednostavno knjigovodstvo ne vidi konto
            end if;
            update skladista
               set sifra            = trim(p_sifra),
                   naziv            = trim(p_naziv),
                   tip_skladista_id = p_tip_skladista_id,
                   tip_cijene_id    = l_tc,
                   cjenovnik_id     = l_cj,
                   oj_id            = p_oj_id,
                   nadredjeno_id    = p_nadredjeno_id,
                   kontna_klasa_id  = l_kk,
                   radnik_id        = p_radnik_id,
                   adresa           = p_adresa,
                   fax              = p_fax,
                   napomena         = p_napomena,
                   valuta_id        = nvl(valuta_id, l_valuta),
                   valid            = nvl(p_valid, 'Y')
             where id = l_id and ooj_id = p_ooj_id;
        end if;
        return l_id;
    end snimi;

    procedure obrisi (p_id in number) is
        l_razlog varchar2(4000) := razlog_zabrane_brisanja(p_id);
    begin
        if l_razlog is not null then
            greska(l_razlog);
        end if;
        delete from skladiste_korisnici where skladiste_id = p_id;
        delete from skladista where id = p_id;
    end obrisi;

    procedure dodaj_korisnike (p_skladiste_id in number, p_korisnici in varchar2) is
    begin
        if p_korisnici is null then
            greska('Izaberite korisnika.');
        end if;
        insert into skladiste_korisnici (skladiste_id, korisnik_id)
        select p_skladiste_id, to_number(column_value)
          from table(apex_string.split(p_korisnici, ':'))
         where column_value is not null
           and to_number(column_value) not in (select korisnik_id from skladiste_korisnici where skladiste_id = p_skladiste_id);
    end dodaj_korisnike;

    procedure obrisi_korisnika (p_id in number) is
    begin
        delete from skladiste_korisnici where id = p_id;
    end obrisi_korisnika;

    function modul (p_skladiste_id in number) return varchar2 is
        l_s varchar2(64);
    begin
        select max(upper(ts.sifra)) into l_s
          from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
         where s.id = p_skladiste_id;
        return case when l_s is null then null when l_s = 'ROB' then 'ROB' else 'MAT' end;
    end modul;

    function izaberi (p_ooj_id in number, p_korisnik_id in number, p_modul in varchar2, p_zeljeno in number) return number is
        l_id number;
    begin
        select min(s.id) keep (dense_rank first order by case when s.id = p_zeljeno then 0 else 1 end, s.sifra)
          into l_id
          from skladista s
          join skladiste_korisnici k on k.skladiste_id = s.id and k.korisnik_id = p_korisnik_id
          left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
         where s.ooj_id = p_ooj_id
           and s.valid = 'Y'
           and (p_modul is null or case when upper(ts.sifra) = 'ROB' then 'ROB' else 'MAT' end = p_modul);
        return l_id;
    end izaberi;

    function lista_json (p_ooj_id in number, p_korisnik_id in number, p_modul in varchar2) return clob is
        l_json clob;
    begin
        select json_arrayagg(json_object('id' value s.id, 's' value s.sifra, 'n' value s.naziv,
                                         'c' value case cj.tip when 'M' then 'Maloprodaja' when 'V' then 'Veleprodaja'
                                                               else ts.naziv end)
                             order by s.sifra returning clob)
          into l_json
          from skladista s
          join skladiste_korisnici k on k.skladiste_id = s.id and k.korisnik_id = p_korisnik_id
          left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
          left join cjenovnici cj on cj.id = s.cjenovnik_id
         where s.ooj_id = p_ooj_id
           and s.valid = 'Y'
           and (p_modul is null or case when upper(ts.sifra) = 'ROB' then 'ROB' else 'MAT' end = p_modul);
        return nvl(l_json, to_clob('[]'));
    end lista_json;

end rm_skladiste_pkg;
/

show errors package body rm_skladiste_pkg
