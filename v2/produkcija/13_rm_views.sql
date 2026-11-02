/*
================================================================================
  ESSCOM Finansije - 13_rm_views.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 11_rm_model.sql i 12_rm_pkg.sql
  (view-ovi koriste funkcije tip_kretanja i podrzana iz RM_DOKUMENT_PKG)

  VW_RM_ARTIKLI         artikli za dokumente skladišta (šifra, naziv, JM, SB)
  VW_RM_DOKUMENTI       dokumenti skladišta (lista i forma)
  VW_RM_DOKUMENT_STAVKE stavke dokumenta sa brojem unesenih serijskih brojeva
  VW_RM_SB              serijski brojevi stavki
================================================================================
*/
set define off

create or replace force view vw_rm_artikli as
select s.id,
       s.ooj_id,
       s.sifra,
       s.naziv,
       s.jm_id,
       jm.naziv                           as jm_naziv,
       s.tip_stavke_id,
       ts.naziv                           as tip_stavke_naziv,
       s.grupa_id,
       case when s.serijski_broj = 'Y' then 'Y' else 'N' end as prati_sb,
       s.valid
  from sec_stavke s
  left join sif.acc_jedinice_mjere jm on jm.id = s.jm_id
  left join sif.acc_tipovi_stavki ts on ts.id = s.tip_stavke_id;

create or replace force view vw_rm_dokumenti as
select o.id,
       o.ooj_id,
       o.godina,
       o.broj,
       o.naziv,
       o.datum,
       o.vrsta_dokumenta_id,
       coalesce(upper(vd.sifra), upper(t.sifra))                        as vrsta_sifra,
       coalesce(vd.naziv, t.naziv)                                      as vrsta_naziv,
       coalesce(rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tip_kretanja,
       case when o.vrsta_dokumenta_id is not null
                 and rm_dokument_pkg.podrzana(vd.sifra) = 'Y' then 'Y' else 'N' end as v2,
       o.tip_kretanja_id,
       o.skladiste_id,
       sk.sifra                                                         as skladiste_sifra,
       sk.naziv                                                         as skladiste_naziv,
       ts.sifra                                                         as tip_skladista_sifra,
       o.skladiste_prenos_id,
       o.klijent_id,
       kl.naziv                                                         as klijent_naziv,
       o.otpremnica_broj,
       o.otpremnica_datum,
       o.ugovor_id,
       ug.broj || nvl2(nvl(ug.predmet, ug.naziv), ' - ' || nvl(ug.predmet, ug.naziv), null) as ugovor_naziv,
       o.opis,
       nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as status,
       o.zakljucano,
       nvl(o.stornirano, 'N')                                           as stornirano,
       o.storniran_id,
       o.glavna_knjiga_id,
       o.kalkulacija_id,
       kk.kalkulacija_id                                                as u_kalkulaciji_id,
       k.naziv                                                          as kalkulacija_naziv,
       nvl(st.stavki, 0)                                                as stavki,
       nvl(st.kolicina, 0)                                              as kolicina,
       nvl(st.sb_nedostaje, 0)                                          as sb_nedostaje,
       nvl(st.iznos, 0)                                                 as iznos,
       o.created,
       o.created_by,
       o.updated,
       o.updated_by
  from operacije o
  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
  left join skladista sk on sk.id = o.skladiste_id
  left join sif.acc_tipovi_skladista ts on ts.id = sk.tip_skladista_id
  left join sec_klijenti kl on kl.id = o.klijent_id
  left join ugovori ug on ug.id = o.ugovor_id
  outer apply (select max(ko.kalkulacija_id) as kalkulacija_id
                 from kalkulacija_operacije ko
                where ko.operacija_id = o.id) kk
  left join kalkulacije k on k.id = nvl(o.kalkulacija_id, kk.kalkulacija_id)
  outer apply (select count(*)          as stavki,
                      sum(os.kolicina)  as kolicina,
                      round(sum(os.kolicina * os.nabavna_cijena), 2) as iznos,
                      sum(case when s.serijski_broj = 'Y'
                                and nvl(os.kolicina, 0) <> (select count(*) from operacija_stavke_sb sb
                                                             where sb.operacija_stavka_id = os.id)
                               then 1 else 0 end) as sb_nedostaje
                 from operacija_stavke os
                 join sec_stavke s on s.id = os.stavka_id
                where os.operacija_id = o.id) st;

create or replace force view vw_rm_dokument_stavke as
select os.id,
       os.operacija_id,
       o.ooj_id,
       nvl(os.redni_broj, row_number() over (partition by os.operacija_id order by os.id)) as redni_broj,
       os.stavka_id,
       a.sifra,
       a.naziv,
       a.jm_naziv,
       a.prati_sb,
       os.kolicina,
       os.opis,
       os.nabavna_cijena                                                as cijena,
       round(os.kolicina * os.nabavna_cijena, 2)                         as iznos,
       nvl(sb.n, 0)                                                     as sb_uneseno,
       case when a.prati_sb = 'Y' and nvl(sb.n, 0) <> nvl(os.kolicina, 0) then 'N' else 'Y' end as sb_ok
  from operacija_stavke os
  join operacije o on o.id = os.operacija_id
  join vw_rm_artikli a on a.id = os.stavka_id
  outer apply (select count(*) as n from operacija_stavke_sb x where x.operacija_stavka_id = os.id) sb;

create or replace force view vw_rm_sb as
select sb.id,
       sb.operacija_stavka_id,
       os.operacija_id,
       os.stavka_id,
       o.ooj_id,
       sb.serijski_broj
  from operacija_stavke_sb sb
  join operacija_stavke os on os.id = sb.operacija_stavka_id
  join operacije o on o.id = os.operacija_id;

-- raspoloživi serijski brojevi po skladištu i artiklu (zaključeni ulazi - svi izlazi)
create or replace force view vw_rm_sb_stanje as
select o.ooj_id,
       o.skladiste_id,
       os.stavka_id,
       sb.serijski_broj,
       sum(case when k.tk = 'U' and k.st = 'Z' then 1 when k.tk = 'I' then -1 else 0 end) as raspolozivo,
       max(case when k.tk = 'U' then o.datum end)                                         as datum_ulaza
  from operacija_stavke_sb sb
  join operacija_stavke os on os.id = sb.operacija_stavka_id
  join operacije o on o.id = os.operacija_id
  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
  cross apply (select coalesce(rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                      nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                 from dual) k
 where nvl(o.stornirano, 'N') = 'N'
   and o.storniran_id is null
 group by o.ooj_id, o.skladiste_id, os.stavka_id, sb.serijski_broj;
