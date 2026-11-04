/*
================================================================================
  ESSCOM Finansije - 13_rm_views.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 11_rm_model.sql i 12_rm_pkg.sql
  (view-ovi koriste funkcije tip_kretanja i podrzana iz RM_DOKUMENT_PKG)

  VW_RM_ARTIKLI         artikli za dokumente skladišta (šifra, naziv, JM, SB)
  VW_RM_DOKUMENTI       dokumenti skladišta (lista i forma)
  VW_RM_DOKUMENT_STAVKE stavke dokumenta sa brojem unesenih serijskih brojeva
  VW_RM_SB              serijski brojevi stavki
  VW_RM_SI_ZADUZENJA    R18: zaduženje sitnog inventara po radniku i artiklu (ISI + PSI na radnika + VSR
                        - PSI sa radnika - RSR), sa raspoloživim i vrijednošću
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
       o.mjesto_troska_id,
       nvl2(mt.id, mt.sifra || ' - ' || mt.naziv, null)                 as mjesto_troska_naziv,
       o.zaduzeni_radnik_id,
       nvl2(rad.id, rad.ime || ' ' || rad.prezime, null)               as zaduzeni_radnik_naziv,
       nvl2(skp.id, skp.sifra || ' - ' || skp.naziv, null)             as skladiste_prenos_naziv,
       o.veza_id,
       vz.naziv                                                         as veza_naziv,
       (select max(p.naziv) from operacije p join sif.vrste_dokumenata pv on pv.id = p.vrsta_dokumenta_id
         where p.veza_id = o.id and upper(pv.sifra) = 'MPP' and nvl(p.stornirano, 'N') = 'N') as preuzeto_naziv,
       o.opis,
       nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as status,
       o.zakljucano,
       nvl(o.stornirano, 'N')                                           as stornirano,
       o.storniran_id,
       so.naziv                                                         as storniran_naziv,
       (select max(x.naziv) from operacije x where x.storniran_id = o.id) as storno_naziv,
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
       o.updated_by,
       o.popis_id,
       pp.naziv                                                         as popis_naziv,
       o.radnik_prenos_id,
       nvl2(rpr.id, rpr.ime || ' ' || rpr.prezime, null)               as radnik_prenos_naziv
  from operacije o
  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
  left join skladista sk on sk.id = o.skladiste_id
  left join sif.acc_tipovi_skladista ts on ts.id = sk.tip_skladista_id
  left join sec_klijenti kl on kl.id = o.klijent_id
  left join ugovori ug on ug.id = o.ugovor_id
  left join sif.acc_mjesta_troska mt on mt.id = o.mjesto_troska_id
  left join sif.acc_radnici rad on rad.id = o.zaduzeni_radnik_id
  left join skladista skp on skp.id = o.skladiste_prenos_id
  left join operacije vz on vz.id = o.veza_id
  left join operacije so on so.id = o.storniran_id
  left join popisi pp on pp.id = o.popis_id
  left join sif.acc_radnici rpr on rpr.id = o.radnik_prenos_id
  outer apply (select max(ko.kalkulacija_id) as kalkulacija_id
                 from kalkulacija_operacije ko
                where ko.operacija_id = o.id) kk
  left join kalkulacije k on k.id = nvl(o.kalkulacija_id, kk.kalkulacija_id)
  outer apply (select count(*)          as stavki,
                      sum(os.kolicina)  as kolicina,
                      sum(round(os.kolicina * os.nabavna_cijena, 2)) as iznos,
                      sum(case when s.serijski_broj = 'Y' and o.popis_id is null
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

-- R12: međuskladišni prenosi koji čekaju prijem (zaključeni, nepreuzeti), sa stavkama
create or replace force view vw_rm_prenosi_cekanje as
select o.id,
       o.ooj_id,
       o.naziv,
       o.datum,
       o.skladiste_id,
       sk.sifra || ' - ' || sk.naziv                                    as sa_skladista,
       o.skladiste_prenos_id,
       o.opis,
       (select count(*) from operacija_stavke os where os.operacija_id = o.id) as stavki,
       (select sum(round(os.kolicina * os.nabavna_cijena, 2)) from operacija_stavke os where os.operacija_id = o.id) as iznos,
       (select listagg(st.sifra || ' ' || st.naziv || ': ' || rtrim(to_char(os.kolicina, 'FM999G999G990D999999'), '.,')
                       || nvl2(jm.naziv, ' ' || jm.naziv, '') || ' × ' || to_char(os.nabavna_cijena, 'FM999G999G990D00'), '; '
                       on overflow truncate '…' with count)
                       within group (order by os.redni_broj, os.id)
          from operacija_stavke os
          join sec_stavke st on st.id = os.stavka_id
          left join sif.acc_jedinice_mjere jm on jm.id = st.jm_id
         where os.operacija_id = o.id)                                  as stavke_opis
  from operacije o
  join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id and upper(vd.sifra) = 'MPR'
  left join skladista sk on sk.id = o.skladiste_id
 where nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
   and nvl(o.stornirano, 'N') = 'N'
   and o.storniran_id is null
   and not exists (select 1 from operacije p join sif.vrste_dokumenata pv on pv.id = p.vrsta_dokumenta_id
                    where p.veza_id = o.id and upper(pv.sifra) = 'MPP' and nvl(p.stornirano, 'N') = 'N');

-- R14: preostale količine po reversima (zaključeni reversi partnera; povrati se raspoređuju
-- na najstarije reverse - FIFO). Partner: REV = zaduženi radnik, RSV = komitent.
create or replace force view vw_rm_revers_preostalo as
with rev as (
    select o.id as revers_id, o.ooj_id, upper(vd.sifra) as revers_sifra,
           case when upper(vd.sifra) = 'REV' then o.zaduzeni_radnik_id else o.klijent_id end as partner_id,
           o.naziv as revers_naziv, o.datum, o.skladiste_id, os.stavka_id,
           sum(os.kolicina) as izdato,
           round(sum(os.kolicina * nvl(os.nabavna_cijena, 0)) / nullif(sum(os.kolicina), 0), 4) as cijena
      from operacije o
      join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
      join operacija_stavke os on os.operacija_id = o.id
     where upper(vd.sifra) in ('REV', 'RSV')
       and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
       and nvl(o.stornirano, 'N') = 'N'
       and o.storniran_id is null
     group by o.id, o.ooj_id, upper(vd.sifra), case when upper(vd.sifra) = 'REV' then o.zaduzeni_radnik_id else o.klijent_id end,
              o.naziv, o.datum, o.skladiste_id, os.stavka_id
), pov as (
    select o.ooj_id, case upper(vd.sifra) when 'REVP' then 'REV' else 'RSV' end as revers_sifra,
           case when upper(vd.sifra) = 'REVP' then o.zaduzeni_radnik_id else o.klijent_id end as partner_id,
           os.stavka_id, sum(os.kolicina) as vraceno
      from operacije o
      join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
      join operacija_stavke os on os.operacija_id = o.id
     where upper(vd.sifra) in ('REVP', 'RSVP')
       and nvl(o.stornirano, 'N') = 'N'
       and o.storniran_id is null
     group by o.ooj_id, case upper(vd.sifra) when 'REVP' then 'REV' else 'RSV' end,
              case when upper(vd.sifra) = 'REVP' then o.zaduzeni_radnik_id else o.klijent_id end, os.stavka_id
), x as (
    select r.*,
           sum(r.izdato) over (partition by r.ooj_id, r.revers_sifra, r.partner_id, r.stavka_id
                               order by r.datum, r.revers_id rows unbounded preceding) as kumulativno,
           nvl(p.vraceno, 0) as vraceno_ukupno
      from rev r
      left join pov p
        on p.ooj_id = r.ooj_id and p.revers_sifra = r.revers_sifra and p.partner_id = r.partner_id and p.stavka_id = r.stavka_id
)
select x.revers_id,
       x.ooj_id,
       x.revers_sifra,
       x.partner_id,
       x.revers_naziv,
       x.datum,
       x.skladiste_id,
       x.stavka_id,
       st.sifra,
       st.naziv,
       jm.naziv                                                         as jm_naziv,
       x.izdato,
       x.cijena,
       x.izdato - greatest(0, least(x.izdato, x.vraceno_ukupno - (x.kumulativno - x.izdato))) as preostalo
  from x
  join sec_stavke st on st.id = x.stavka_id
  left join sif.acc_jedinice_mjere jm on jm.id = st.jm_id;

-- R18 sitni inventar: zaduženje po radniku i artiklu (firma). Zaduženo = zaključeni dokumenti,
-- raspoloživo = zaduženo - odlazni dokumenti u pripremi (prezaduženje / rashod koji još nisu zaključeni).
create or replace force view vw_rm_si_zaduzenja as
with m as (
    select o.ooj_id, x.radnik_id, os.stavka_id, x.znak * os.kolicina as kol, x.znak,
           nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st,
           os.kolicina * nvl(os.nabavna_cijena, 0) as vr, os.kolicina as kol_abs,
           o.id as operacija_id, o.naziv as dokument, o.datum, o.skladiste_id
      from operacija_stavke os
      join operacije o on o.id = os.operacija_id
      join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
     cross apply (select o.zaduzeni_radnik_id as radnik_id,
                         case when upper(vd.sifra) in ('ISI', 'VSR') then 1 else -1 end as znak
                    from dual
                  union all
                  select o.radnik_prenos_id, 1 from dual where upper(vd.sifra) = 'PSI') x
     where upper(vd.sifra) in ('ISI', 'VSR', 'PSI', 'RSR')
       and nvl(o.stornirano, 'N') = 'N'
       and o.storniran_id is null
       and x.radnik_id is not null
), a as (
    select m.ooj_id, m.radnik_id, m.stavka_id,
           sum(case when m.st = 'Z' then m.kol else 0 end)                         as zaduzeno,
           sum(case when m.st <> 'Z' and m.znak < 0 then m.kol_abs else 0 end)      as u_pripremi,
           sum(case when m.st = 'Z' and m.znak > 0 then m.vr else 0 end)            as ulaz_vr,
           sum(case when m.st = 'Z' and m.znak > 0 then m.kol_abs else 0 end)       as ulaz_kol,
           max(case when m.st = 'Z' and m.znak > 0 then m.datum end)                as zadnje_zaduzenje,
           max(m.skladiste_id) keep (dense_rank last order by case when m.st = 'Z' and m.znak > 0 then 1 else 0 end,
                                                              m.datum, m.operacija_id) as skladiste_id,
           max(m.dokument) keep (dense_rank last order by case when m.st = 'Z' and m.znak > 0 then 1 else 0 end,
                                                          m.datum, m.operacija_id) as dokument,
           max(m.operacija_id) keep (dense_rank last order by case when m.st = 'Z' and m.znak > 0 then 1 else 0 end,
                                                              m.datum, m.operacija_id) as operacija_id
      from m
     group by m.ooj_id, m.radnik_id, m.stavka_id
)
select a.ooj_id,
       a.radnik_id,
       r.ime || ' ' || r.prezime                                        as radnik_naziv,
       a.stavka_id,
       s.sifra,
       s.naziv,
       s.jm_naziv,
       s.prati_sb,
       a.zaduzeno,
       a.u_pripremi,
       a.zaduzeno - a.u_pripremi                                        as raspolozivo,
       round(a.ulaz_vr / nullif(a.ulaz_kol, 0), 4)                      as cijena,
       round(a.zaduzeno * nvl(a.ulaz_vr / nullif(a.ulaz_kol, 0), 0), 2) as vrijednost,
       a.zadnje_zaduzenje,
       a.skladiste_id,
       a.operacija_id,
       a.dokument
  from a
  join vw_rm_artikli s on s.id = a.stavka_id
  left join sif.acc_radnici r on r.id = a.radnik_id
 where a.zaduzeno <> 0 or a.u_pripremi <> 0;
