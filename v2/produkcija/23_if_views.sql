/*
================================================================================
  ESSCOM Finansije - 23_if_views.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 22_if_model.sql, PRIJE 24_if_pkg.sql

  Svrha: view-ovi izlaznih faktura v2 (korak I1) - stranice ne čitaju tabele direktno
    VW_IF_VRSTE              vrste dokumenata modula IF firme (šifra, brojač, fiskalna šifra)
    VW_IF_PRODAJNA_MJESTA    robna skladišta (prodajna mjesta) sa tipom cjenovnika V / M
    VW_IF_PDV_INDIKATORI     izlazni PDV indikatori (stopa)
    VW_IF_LISTA              lista faktura (status, skladište, vezani dokument skladišta)
    VW_IF_FORMA              zaglavlje za formu
    VW_IF_STAVKE             stavke za formu (iznos, PDV, iznos sa PDV-om, serijski brojevi)
    VW_IF_PDV_SPEC           PDV specifikacija fakture po indikatoru (iz stavki)
    VW_IF_AVANSI             zaključeni, nestornirani avansi kupca i raspoloživi iznos
    VW_IF_URACUNATI_AVANSI   avansi uračunati u konačnu fakturu
    VW_IF_ARTIKLI            artikli i usluge firme za izbor na fakturi
================================================================================
*/
set define off

create or replace force view vw_if_vrste as
select vd.id,
       vd.ooj_id,
       upper(vd.sifra)            as sifra,
       vd.naziv,
       lower(vn.sifra)            as brojac_sifra,
       vd.fiskalna_sifra,
       vd.valid
  from sif.vrste_dokumenata vd
  join sif.acc_moduli m on m.id = vd.acc_modul_id and m.sifra = 'IF'
  left join sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id;

create or replace force view vw_if_prodajna_mjesta as
select s.id,
       s.ooj_id,
       s.sifra,
       s.naziv,
       s.sifra || ' - ' || s.naziv                                as prikaz,
       s.cjenovnik_id,
       cj.tip                                                    as tip_cijene,
       case cj.tip when 'M' then 'Maloprodaja' when 'V' then 'Veleprodaja' end as tip_naziv,
       s.valid
  from skladista s
  join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id and upper(ts.sifra) = 'ROB'
  left join cjenovnici cj on cj.id = s.cjenovnik_id;

create or replace force view vw_if_pdv_indikatori as
select p.id,
       p.sifra,
       p.naziv,
       p.sifra || ' - ' || p.naziv as prikaz,
       nvl(p.vrijednost, 0)        as stopa,
       p.vrsta
  from sif.acc_pdv_indikatori p
 where p.ui = 'I'
   and p.valid = 'Y'
   and nvl(p.vrsta, '-') not in ('OBRACUNSKI', 'TEHNICKI');

create or replace force view vw_if_stavke as
select ks.id,
       ks.kif_id,
       nvl(ks.redni_broj, 0)                                            as redni_broj,
       ks.stavka_id,
       s.sifra                                                          as stavka_sifra,
       nvl(ks.naziv, s.naziv)                                           as stavka_naziv,
       s.sifra || ' - ' || nvl(ks.naziv, s.naziv)                       as stavka_prikaz,
       s.tip_stavke_id,
       case when s.tip_stavke_id = 3 then 'N' else 'Y' end              as je_roba,
       case when s.serijski_broj = 'Y' then 'Y' else 'N' end            as prati_sb,
       ks.jm_id,
       jm.naziv                                                         as jm_naziv,
       ks.kolicina,
       ks.cijena,
       nvl(ks.rabat, 0)                                                 as rabat,
       ks.pdv_indikator_id,
       pi.sifra                                                         as pdv_indikator_sifra,
       nvl(ks.pdv, 0)                                                   as pdv_stopa,
       ks.iznos,
       round(ks.iznos * nvl(ks.pdv, 0) / 100, 2)                        as iznos_pdv,
       ks.iznos + round(ks.iznos * nvl(ks.pdv, 0) / 100, 2)             as iznos_sa_pdv,
       round(ks.cijena * (1 + nvl(ks.pdv, 0) / 100), 4)                 as cijena_sa_pdv,
       ks.opis,
       ks.operacija_stavka_id,
       (select count(*) from operacija_stavke_sb sb
         where sb.operacija_stavka_id = ks.operacija_stavka_id)          as sb_uneseno,
       os.nabavna_cijena                                                as cijena_izlaza
  from kif_stavke ks
  left join sec_stavke s on s.id = ks.stavka_id
  left join sif.acc_jedinice_mjere jm on jm.id = ks.jm_id
  left join sif.acc_pdv_indikatori pi on pi.id = ks.pdv_indikator_id
  left join operacija_stavke os on os.id = ks.operacija_stavka_id
 where nvl(ks.valid, 'Y') = 'Y';

create or replace force view vw_if_pdv_spec as
select ks.kif_id,
       ks.pdv_indikator_id,
       pi.sifra                                        as pdv_indikator_sifra,
       pi.naziv                                        as pdv_indikator_naziv,
       nvl(ks.pdv, 0)                                  as stopa,
       sum(ks.iznos)                                   as osnovica,
       sum(round(ks.iznos * nvl(ks.pdv, 0) / 100, 2))  as pdv
  from kif_stavke ks
  left join sif.acc_pdv_indikatori pi on pi.id = ks.pdv_indikator_id
 where nvl(ks.valid, 'Y') = 'Y'
 group by ks.kif_id, ks.pdv_indikator_id, pi.sifra, pi.naziv, nvl(ks.pdv, 0);

create or replace force view vw_if_avansi as
select k.id,
       k.ooj_id,
       k.klijent_id,
       k.valuta_id,
       v.sifra                                                         as valuta_sifra,
       k.naziv_fakture,
       k.datum_fakture,
       k.iznos_fakture,
       nvl(k.valuta_iznos, k.iznos_fakture)                            as iznos_valuta,
       nvl((select sum(z.iznos) from kif_avansi_zatvaranje z
             where z.avans_id = k.id and z.storno is null), 0)         as zatvoreno,
       nvl(k.valuta_iznos, k.iznos_fakture)
         - nvl((select sum(z.iznos) from kif_avansi_zatvaranje z
                 where z.avans_id = k.id and z.storno is null), 0)     as raspolozivo,
       k.naziv_fakture || ' · ' || to_char(k.datum_fakture, 'dd.mm.yyyy') as prikaz
  from kif k
  join vw_if_vrste vr on vr.id = k.vrsta_fakture_id and vr.sifra = 'AV'
  left join sif.acc_valute v on v.id = k.valuta_id
 where k.status in ('Z', 'K')
   and nvl(k.stornirano, 'N') = 'N'
   and k.storniran_id is null;

create or replace force view vw_if_uracunati_avansi as
select z.id,
       z.faktura_id                      as kif_id,
       z.avans_id,
       a.naziv_fakture                   as avans_naziv,
       a.datum_fakture                   as avans_datum,
       z.iznos,
       z.avans_zatvaranja_id,
       zd.naziv_fakture                  as zatvaranje_naziv,
       z.datum_zatvaranja
  from kif_avansi_zatvaranje z
  join kif a on a.id = z.avans_id
  left join kif zd on zd.id = z.avans_zatvaranja_id
 where z.storno is null;

create or replace force view vw_if_artikli as
select s.id,
       s.ooj_id,
       s.sifra,
       s.naziv,
       s.sifra || ' - ' || s.naziv                                   as prikaz,
       s.tip_stavke_id,
       case when s.tip_stavke_id = 3 then 'N' else 'Y' end           as je_roba,
       case when s.serijski_broj = 'Y' then 'Y' else 'N' end         as prati_sb,
       s.jm_id,
       jm.naziv                                                      as jm_naziv,
       s.pdv_indikator_id,
       s.valid
  from sec_stavke s
  left join sif.acc_jedinice_mjere jm on jm.id = s.jm_id;

create or replace force view vw_if_forma as
select k.id,
       k.ooj_id,
       k.godina,
       k.vrsta_fakture_id,
       vr.sifra                                                      as vrsta_sifra,
       vr.naziv                                                      as vrsta_naziv,
       vr.fiskalna_sifra,
       k.faktura_broj,
       k.naziv_fakture,
       k.klijent_id,
       kl.naziv                                                      as klijent_naziv,
       kl.jib                                                        as klijent_jib,
       kl.pib                                                        as klijent_pib,
       kl.adresa                                                     as klijent_adresa,
       kl.grad                                                       as klijent_grad,
       k.datum_fakture,
       k.datum_valute,
       k.dani_dospijeca,
       k.valuta_id,
       v.sifra                                                       as valuta_sifra,
       k.valuta_kurs,
       k.tip_placanja_id,
       k.skladiste_id,
       pm.prikaz                                                     as skladiste_prikaz,
       pm.tip_cijene                                                 as skladiste_tip_cijene,
       k.tip_cijene,
       k.ugovor_id,
       k.oj_id,
       k.faktura_id                                                  as veza_id,
       f.naziv_fakture                                               as veza_naziv,
       k.pdv_indikator_id,
       k.uio_tip_dokumenta_id,
       k.posebne_napomene,
       k.print_pn,
       k.iznos_fakture_nopdv,
       k.iznos_fakture,
       k.iznos_fakture - nvl(k.iznos_fakture_nopdv, 0)               as iznos_pdv,
       k.valuta_iznos,
       k.iznos_slovima,
       nvl(k.status, 'P')                                            as status,
       k.stornirano,
       k.storniran_id,
       s.naziv_fakture                                               as storniran_naziv,
       (select max(x.id) from kif x where x.storniran_id = k.id)     as storno_id,
       (select max(x.naziv_fakture) from kif x where x.storniran_id = k.id) as storno_naziv,
       k.fiskalizovano,
       k.fiskalni_racun_broj,
       k.glavna_knjiga_id,
       k.zakljucao,
       k.zakljucano_datum,
       o.id                                                          as dokument_id,
       o.naziv                                                       as dokument_naziv,
       o.status                                                      as dokument_status,
       (select nvl(sum(z.iznos), 0) from kif_avansi_zatvaranje z
         where z.faktura_id = k.id and z.storno is null)             as uracunato_avansa
  from kif k
  left join vw_if_vrste vr on vr.id = k.vrsta_fakture_id
  left join sec_klijenti kl on kl.id = k.klijent_id
  left join sif.acc_valute v on v.id = k.valuta_id
  left join vw_if_prodajna_mjesta pm on pm.id = k.skladiste_id
  left join kif f on f.id = k.faktura_id
  left join kif s on s.id = k.storniran_id
  left join operacije o on o.faktura_id = k.id and o.storniran_id is null;

create or replace force view vw_if_lista as
select k.id,
       k.ooj_id,
       k.godina,
       k.naziv_fakture,
       k.faktura_broj,
       vr.sifra                                                      as vrsta_sifra,
       vr.naziv                                                      as vrsta_naziv,
       k.klijent_id,
       kl.naziv                                                      as klijent_naziv,
       k.datum_fakture,
       k.datum_valute,
       k.valuta_id,
       v.sifra                                                       as valuta_sifra,
       k.valuta_iznos,
       k.iznos_fakture_nopdv,
       k.iznos_fakture,
       k.skladiste_id,
       pm.prikaz                                                     as skladiste_prikaz,
       nvl(k.status, 'P')                                            as status,
       case when nvl(k.stornirano, 'N') = 'Y' or k.storniran_id is not null then 'Stornirana'
            when k.glavna_knjiga_id is not null or k.status = 'K' then 'Proknjižena'
            when k.status = 'Z' then 'Zaključena'
            else 'U pripremi' end                                    as status_naziv,
       k.stornirano,
       k.storniran_id,
       k.fiskalizovano,
       k.glavna_knjiga_id,
       o.id                                                          as dokument_id,
       o.naziv                                                       as dokument_naziv
  from kif k
  left join vw_if_vrste vr on vr.id = k.vrsta_fakture_id
  left join sec_klijenti kl on kl.id = k.klijent_id
  left join sif.acc_valute v on v.id = k.valuta_id
  left join vw_if_prodajna_mjesta pm on pm.id = k.skladiste_id
  left join operacije o on o.faktura_id = k.id and o.storniran_id is null;

-- kontrola
select sifra, naziv, brojac_sifra, fiskalna_sifra from vw_if_vrste where ooj_id = 219 order by sifra;
