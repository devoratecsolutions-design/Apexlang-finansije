/*
================================================================================
  ESSCOM Finansije - 17_rm_izvjestaji.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 12_rm_pkg.sql i 13_rm_views.sql

  Korak R15: izvori podataka za izvještaje materijalnog / robnog modula
  (stranica 371). Sve na dokumentima v2 (OPERACIJE + vrsta dokumenta) i
  starim dokumentima (tip kretanja), samo nestornirani.
    VW_RM_PROMET          jedan red po stavci dokumenta: ulaz / izlaz (količina,
                          vrijednost), vrsta, status, partner, mjesto troška
    VW_RM_ZADUZENJA       otvorena zaduženja: reversi (preostalo) i izlazi na
                          osnovno sredstvo / sitni inventar po radniku / komitentu
    VW_RM_NA_CEKANJU      dokumenti koji čekaju radnju (u pripremi, prijemnica
                          bez kalkulacije, prenos koji čeka prijem)
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off

create or replace force view vw_rm_promet as
select o.id                                                             as operacija_id,
       o.ooj_id,
       o.godina,
       o.skladiste_id,
       sk.sifra                                                         as skladiste_sifra,
       sk.naziv                                                         as skladiste_naziv,
       o.naziv                                                          as dokument,
       o.datum,
       coalesce(upper(vd.sifra), upper(t.sifra))                        as vrsta_sifra,
       coalesce(vd.naziv, t.naziv)                                      as vrsta_naziv,
       k.tk                                                             as tip_kretanja,
       k.st                                                             as status,
       o.klijent_id,
       kl.naziv                                                         as klijent_naziv,
       o.mjesto_troska_id,
       nvl2(mt.id, mt.sifra || ' - ' || mt.naziv, null)                 as mjesto_troska_naziv,
       o.zaduzeni_radnik_id,
       nvl2(rad.id, rad.ime || ' ' || rad.prezime, null)               as radnik_naziv,
       o.skladiste_prenos_id,
       nvl2(skp.id, skp.sifra || ' - ' || skp.naziv, null)             as skladiste_prenos_naziv,
       os.id                                                            as stavka_dok_id,
       os.stavka_id,
       st.sifra                                                         as artikal_sifra,
       st.naziv                                                         as artikal_naziv,
       jm.naziv                                                         as jm_naziv,
       os.kolicina,
       os.nabavna_cijena                                                as cijena,
       case when k.tk = 'U' then os.kolicina else 0 end                 as ulaz_kolicina,
       case when k.tk = 'I' then os.kolicina else 0 end                 as izlaz_kolicina,
       case when k.tk in ('U', 'N') then round(os.kolicina * nvl(os.nabavna_cijena, 0), 2) else 0 end as ulaz_vrijednost,
       case when k.tk = 'I' then round(os.kolicina * nvl(os.nabavna_cijena, 0), 2) else 0 end         as izlaz_vrijednost
  from operacija_stavke os
  join operacije o on o.id = os.operacija_id
  join sec_stavke st on st.id = os.stavka_id
  left join sif.acc_jedinice_mjere jm on jm.id = st.jm_id
  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
  left join skladista sk on sk.id = o.skladiste_id
  left join sec_klijenti kl on kl.id = o.klijent_id
  left join sif.acc_mjesta_troska mt on mt.id = o.mjesto_troska_id
  left join sif.acc_radnici rad on rad.id = o.zaduzeni_radnik_id
  left join skladista skp on skp.id = o.skladiste_prenos_id
 cross apply (select coalesce(rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                     nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                from dual) k
 where nvl(o.stornirano, 'N') = 'N'
   and o.storniran_id is null
   and nvl(k.tk, '-') <> 'Z';          -- R18: prezaduženje / rashod / višak SI kod radnika ne mijenjaju stanje skladišta

-- otvorena zaduženja: reversi (preostalo poslije povrata) i izlazi na OS / sitni inventar (trajno)
create or replace force view vw_rm_zaduzenja as
select r.ooj_id,
       case when r.revers_sifra = 'REV' then 'Revers' else 'Revers servis' end as vrsta,
       case when r.revers_sifra = 'REV' then 'R' else 'K' end           as partner_vrsta,
       r.partner_id,
       case when r.revers_sifra = 'REV' then (select ra.ime || ' ' || ra.prezime from sif.acc_radnici ra where ra.id = r.partner_id)
            else (select k.naziv from sec_klijenti k where k.id = r.partner_id) end as partner_naziv,
       r.revers_id                                                      as operacija_id,
       r.revers_naziv                                                   as dokument,
       r.datum,
       r.skladiste_id,
       r.stavka_id,
       r.sifra                                                          as artikal_sifra,
       r.naziv                                                          as artikal_naziv,
       r.jm_naziv,
       r.izdato,
       r.preostalo                                                      as zaduzeno,
       round(r.preostalo * nvl(r.cijena, 0), 2)                        as vrijednost
  from vw_rm_revers_preostalo r
 where r.preostalo > 0
union all
select p.ooj_id,
       p.vrsta_naziv,
       'R',
       p.zaduzeni_radnik_id,
       p.radnik_naziv,
       p.operacija_id,
       p.dokument,
       p.datum,
       p.skladiste_id,
       p.stavka_id,
       p.artikal_sifra,
       p.artikal_naziv,
       p.jm_naziv,
       p.kolicina,
       p.kolicina,
       p.izlaz_vrijednost
  from vw_rm_promet p
 where p.vrsta_sifra = 'IOS'
   and p.status = 'Z'
   and p.zaduzeni_radnik_id is not null
union all
-- R18 sitni inventar: stvarno zaduženje radnika (poslije prezaduženja i rashoda), po artiklu,
-- dokument / skladište = posljednje zaduženje
select z.ooj_id,
       'Sitni inventar',
       'R',
       z.radnik_id,
       z.radnik_naziv,
       z.operacija_id,
       z.dokument,
       z.zadnje_zaduzenje,
       z.skladiste_id,
       z.stavka_id,
       z.sifra,
       z.naziv,
       z.jm_naziv,
       z.zaduzeno,
       z.zaduzeno,
       z.vrijednost
  from vw_rm_si_zaduzenja z
 where z.zaduzeno > 0;

-- dokumenti koji čekaju radnju
create or replace force view vw_rm_na_cekanju as
select d.id                                                             as operacija_id,
       d.ooj_id,
       d.skladiste_id,
       d.naziv                                                          as dokument,
       d.datum,
       d.vrsta_naziv,
       case when d.vrsta_sifra = 'PRI' and d.u_kalkulaciji_id is null then 'Prijemnica nije u kalkulaciji'
            when d.vrsta_sifra = 'PRI' then 'Kalkulacija ' || d.kalkulacija_naziv || ' nije zaključena'
            else 'Dokument je u pripremi (nije zaključen)' end         as razlog,
       d.iznos,
       trunc(sysdate) - trunc(d.datum)                                 as dana
  from vw_rm_dokumenti d
 where d.v2 = 'Y'
   and d.status = 'P'
   and d.stornirano = 'N'
   and d.vrsta_sifra <> 'MPP'
union all
select p.id,
       p.ooj_id,
       p.skladiste_prenos_id,
       p.naziv,
       p.datum,
       'Međuskladišni prenos',
       'Čeka prijem (sa skladišta ' || p.sa_skladista || ')',
       p.iznos,
       trunc(sysdate) - trunc(p.datum)
  from vw_rm_prenosi_cekanje p;
