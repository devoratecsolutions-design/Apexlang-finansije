/*
================================================================================
  ESSCOM Finansije - 09_kuf_views.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 08_kuf_model.sql, PRIJE 10_kuf_pkg.sql

  Svrha: view-ovi za novu formu i listu ulaznih faktura (korak 4b).
  Stranice ne sadrže upite nad tabelama - čitaju samo ove view-ove:
    VW_KUF_LISTA             lista ulaznih faktura (str. 40); bez BLOB-a,
                             plaćanja / UIO / dokumenti preko indeksa
    VW_KUF_FORMA             jedna faktura za formu (str. 41)
    VW_KUF_VRSTE_DOKUMENATA  vrste dokumenata ulaznih faktura po firmi
    VW_KUF_PDV_INDIKATORI    ulazni PDV indikatori za unos (bez obračunskih
                             i tehničkih), sa stopom i tipom dokumenta
    VW_KUF_UGOVORI           ugovori po dobavljaču (izvršilac)
    VW_KUF_VEZE              fakture na koje se poziva KO / KZ / zatvaranje avansa
    VW_KUF_DOKUMENTI         dokumenti fakture (BLOB se čita samo pri preuzimanju)
    VW_KUF_AVANSI            zaključeni avansi i iznos koji se još može zatvoriti
    VW_KUF_URACUNATI_AVANSI  avansi uračunati u konačnu fakturu (automatska zatvaranja)
  Skripta pravi SAMO view-ove. Može se pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

create or replace force view vw_kuf_vrste_dokumenata as
select vd.id,
       vd.ooj_id,
       upper(vd.sifra) as sifra,
       vd.naziv,
       case upper(vd.sifra) when 'UF' then 10 when 'UAV' then 20 when 'UAVZ' then 30
                            when 'UKO' then 40 when 'UKZ' then 50 else 90 end as redoslijed
  from sif.vrste_dokumenata vd
  join sif.acc_moduli m on m.id = vd.acc_modul_id
 where upper(m.sifra) = 'UF'
   and vd.valid = 'Y'
   and vd.ooj_id is not null;

create or replace force view vw_kuf_pdv_indikatori as
with mapa as (
    select m.pdv_indikator_id,
           min(m.uio_tip_dokumenta_id) as uio_tip_dokumenta_id,
           count(distinct m.uio_tip_dokumenta_id) as tipova
      from sif.vw_uio_tip_dokumenta_pdv_indikatori m
      join sif.acc_uio_tipovi_dokumenata t on t.id = m.uio_tip_dokumenta_id
     where m.valid = 'Y'
       and t.ui = 'U'
     group by m.pdv_indikator_id
)
select p.id,
       p.sifra,
       p.naziv,
       p.sifra || ' - ' || p.naziv as prikaz,
       nvl(p.vrijednost, 0)        as stopa,
       p.vrsta,
       p.pravo_na_odbitak,
       p.pdv_dobavljacu,
       case when mapa.tipova = 1 then mapa.uio_tip_dokumenta_id end as uio_tip_dokumenta_id,
       t.code                      as uio_tip_code
  from sif.acc_pdv_indikatori p
  join mapa on mapa.pdv_indikator_id = p.id
  left join sif.acc_uio_tipovi_dokumenata t
         on t.id = case when mapa.tipova = 1 then mapa.uio_tip_dokumenta_id end
 where p.ui = 'U'
   and p.valid = 'Y'
   and nvl(p.vrsta, '-') not in ('OBRACUNSKI', 'TEHNICKI');

create or replace force view vw_kuf_ugovori as
select u.id,
       u.ooj_id,
       u.klijent_id,
       u.naziv || ': ' || u.predmet as prikaz,
       case when u.status = 'Z' and (u.ugovor_end is null or u.ugovor_end >= trunc(sysdate))
            then 'Y' else 'N' end as aktivan,
       u.broj
  from ugovori u
 where u.valid = 'Y'
   and u.izvrsilac_narucioc = 'I';

create or replace force view vw_kuf_veze as
select k.id,
       k.ooj_id,
       k.klijent_id,
       vd.sifra as vrsta_sifra,
       case when exists (select 1 from kuf_avansi_zatvaranje z
                          where z.faktura_id = k.id and z.storno is null
                            and z.avans_zatvaranja_id <> k.id)
            then 'Y' else 'N' end as ima_zatvaranje_avansa,
       k.naziv || ' – ' || k.naziv_fakture || ' (' || to_char(k.datum_fakture, 'DD.MM.YYYY') || ')' as prikaz,
       k.datum_fakture,
       nvl(k.status, 'P') as status,
       -- osnovica (u valuti) koja još nije preuzeta u KO / zatvaranje avansa
       greatest(nvl(abs(k.valuta_iznos_bez_pdv), 0) - nvl(pr.preuzeto, 0), 0) as raspolozivo
  from kuf k
  left join sif.vrste_dokumenata vd on vd.id = k.vrsta_dokumenta_id
  outer apply (select sum(abs(r.valuta_osnovica)) as preuzeto
                 from kuf_pdv o
                 join kuf_pdv r on r.izvor_red_id = o.id
                 join kuf d on d.id = r.kuf_id
                where o.kuf_id = k.id
                  and nvl(d.stornirano, 'N') = 'N'
                  and d.storniran_id is null) pr
 where nvl(k.stornirano, 'N') = 'N'
   and k.storniran_id is null;

create or replace force view vw_kuf_forma as
select k.id,
       k.ooj_id,
       k.godina,
       k.vrsta_dokumenta_id,
       vd.sifra                 as vrsta_sifra,
       vd.naziv                 as vrsta_naziv,
       k.klijent_id,
       k.naziv_fakture,
       k.datum_fakture,
       k.datum_prijema,
       k.datum_valute,
       k.valuta_id,
       k.tip_placanja_id,
       k.fiskalni_racun_broj,
       k.ugovor_id,
       k.veza_kuf_id,
       k.uio_tip_dokumenta_id,
       t.code || ' - ' || t.naziv as uio_tip_prikaz,
       k.naziv,
       k.broj,
       nvl(k.status, 'P')       as status,
       k.stornirano,
       k.storniran_id,
       k.glavna_knjiga_id,
       case when k.glavna_knjiga_id is not null
            then vn.sifra || '/' || gk.broj || '/' || gk.godina end as nalog,
       k.iznos_bez_pdv,
       k.iznos_sa_pdv,
       k.valuta_iznos_bez_pdv,
       k.valuta_iznos_sa_pdv,
       (select count(*) from uio_kuf u where u.faktura_id = k.id)       as uio_broj,
       (select count(*) from kuf_dokumenti d where d.kuf_id = k.id)     as dokumenata,
       s.id                     as storno_id,
       s.naziv                  as storno_naziv,
       o.naziv                  as original_naziv,
       v.naziv                  as veza_naziv,
       case when exists (select 1 from kuf_avansi_zatvaranje za
                          where za.faktura_id = k.id and za.storno is null
                            and za.avans_zatvaranja_id <> k.id)
            then 'Y' else 'N' end as ima_avans,
       case
           when k.stornirano = 'Y'           then 'Stornirana'
           when k.storniran_id is not null   then 'Storno dokument'
           when k.glavna_knjiga_id is not null then 'Proknjižena'
           when nvl(k.status, 'P') = 'Z'     then 'Zaključena'
           else 'U pripremi'
       end                      as status_naziv,
       case
           when k.stornirano = 'Y' or k.storniran_id is not null then 'void'
           when k.glavna_knjiga_id is not null then 'paid'
           when nvl(k.status, 'P') = 'Z'     then 'partial'
           else 'open'
       end                      as status_boja
  from kuf k
  left join sif.vrste_dokumenata vd on vd.id = k.vrsta_dokumenta_id
  left join sif.acc_uio_tipovi_dokumenata t on t.id = k.uio_tip_dokumenta_id
  left join glavna_knjiga gk on gk.id = k.glavna_knjiga_id
  left join sif.sif_vrste_naloga vn on vn.id = gk.vrsta_naloga_id
  left join kuf s on s.storniran_id = k.id
  left join kuf o on o.id = k.storniran_id
  left join kuf v on v.id = k.veza_kuf_id;

-- Avansne fakture (zaključene, nestornirane) i iznos koji se još može zatvoriti
-- (osnovica u valuti avansa umanjena za redove zatvaranja koji su preuzeti sa njega)
create or replace force view vw_kuf_avansi as
select k.id,
       k.ooj_id,
       k.klijent_id,
       k.naziv || ' – ' || k.naziv_fakture || ' (' || to_char(k.datum_fakture, 'DD.MM.YYYY') || ')' as prikaz,
       k.datum_fakture,
       k.valuta_id,
       va.sifra                      as valuta_sifra,
       s.red_id                      as avans_red_id,
       s.pdv_indikator_id,
       s.valuta_osnovica             as osnovica,
       nvl(z.zatvoreno, 0)           as zatvoreno,
       s.valuta_osnovica - nvl(z.zatvoreno, 0) as raspolozivo
  from kuf k
  join sif.vrste_dokumenata vd on vd.id = k.vrsta_dokumenta_id and upper(vd.sifra) = 'UAV'
  join vw_kuf_pdv_spec s on s.kuf_id = k.id
  left join sif.acc_valute va on va.id = k.valuta_id
  outer apply (select sum(abs(r.valuta_osnovica)) as zatvoreno
                 from kuf_pdv r
                 join kuf d on d.id = r.kuf_id
                where r.izvor_red_id = s.red_id
                  and nvl(d.stornirano, 'N') = 'N'
                  and d.storniran_id is null) z
 where nvl(k.stornirano, 'N') = 'N'
   and k.storniran_id is null
   and nvl(k.status, 'P') = 'Z';

-- Avansi uračunati u konačnu fakturu: jedan red = jedno automatsko zatvaranje avansa (UAVZ)
create or replace force view vw_kuf_uracunati_avansi as
select z.avans_zatvaranja_id          as id,
       z.faktura_id                   as kuf_id,
       z.avans_id,
       a.naziv                        as avans_naziv,
       va.sifra                       as valuta_sifra,
       zk.naziv                       as zatvaranje_naziv,
       nvl(zk.status, 'P')            as status,
       (select abs(sum(p.valuta_osnovica)) from kuf_pdv p where p.kuf_id = z.avans_zatvaranja_id) as iznos,
       (select abs(sum(p.osnovica))        from kuf_pdv p where p.kuf_id = z.avans_zatvaranja_id) as iznos_km
  from kuf_avansi_zatvaranje z
  join kuf a  on a.id  = z.avans_id
  join kuf zk on zk.id = z.avans_zatvaranja_id
  left join sif.acc_valute va on va.id = a.valuta_id
 where z.storno is null
   and z.avans_zatvaranja_id <> z.faktura_id;

create or replace force view vw_kuf_dokumenti as
select d.id,
       d.kuf_id,
       k.ooj_id,
       d.naziv,
       d.opis,
       d.mime_tip,
       d.velicina,
       round(d.velicina / 1024) as velicina_kb,
       d.created,
       d.created_by,
       k.datum_fakture,
       d.dokument            -- BLOB: čita se samo pri preuzimanju (str. 42, 43)
  from kuf_dokumenti d
  join kuf k on k.id = d.kuf_id;

-- Lista: bez BLOB-a; plaćanja, UIO i dokumenti preko indeksa po fakturi
-- (GKS_KUF_I, UIO_KUF_I2, KUF_DOKUMENTI_KUF_I), filtar po (ooj_id, godina).
create or replace force view vw_kuf_lista as
select k.id,
       k.ooj_id,
       k.godina,
       k.naziv,
       k.naziv_fakture,
       k.klijent_id,
       kl.naziv                       as klijent_naziv,
       k.datum_fakture,
       k.datum_prijema,
       k.datum_valute,
       k.iznos_bez_pdv,
       k.iznos_sa_pdv,
       nvl(k.iznos_sa_pdv, 0) - nvl(k.iznos_bez_pdv, 0) as pdv,
       k.valuta_id,
       va.sifra                       as valuta_sifra,
       k.valuta_iznos_sa_pdv,
       case when va.sifra <> 'BAM' then 'Y' else 'N' end as strana_valuta,
       k.uplaceno,
       nvl(g.uplaceno_izvod, 0)       as uplaceno_izvod,
       nvl(k.uplaceno_rucno, 0)       as uplaceno_rucno,
       nvl(u.uio_kuf_count, 0)        as uio_kuf_count,
       nvl(za.zatvoreno_avansom, 0)   as zatvoreno_avansom,
       nvl(d.dokumenata, 0)           as dokumenata,
       k.glavna_knjiga_id,
       k.stornirano,
       k.storniran_id,
       nvl(k.status, 'P')             as status,
       vd.sifra                       as vrsta_sifra,
       vd.naziv                       as vrsta_naziv,
       p.sifra                        as pdv_indikator_sifra
  from kuf k
  left join sec_klijenti kl on kl.id = k.klijent_id
  left join sif.vrste_dokumenata vd on vd.id = k.vrsta_dokumenta_id
  left join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
  left join sif.acc_valute va on va.id = k.valuta_id
  outer apply (select sum(abs(s.iznos)) as uplaceno_izvod
                 from glavna_knjiga_stavke s
                where s.kuf_id = k.id) g
  outer apply (select count(*) as uio_kuf_count
                 from uio_kuf x
                where x.faktura_id = k.id) u
  outer apply (select count(*) as dokumenata
                 from kuf_dokumenti x
                where x.kuf_id = k.id) d
  outer apply (select sum(z.iznos) as zatvoreno_avansom
                 from kuf_avansi_zatvaranje z
                where z.faktura_id = k.id
                  and z.storno is null
                  and z.avans_zatvaranja_id <> k.id) za;

prompt
prompt === View-ovi
select object_name, status
  from user_objects
 where object_type = 'VIEW'
   and object_name in ('VW_KUF_LISTA', 'VW_KUF_FORMA', 'VW_KUF_VRSTE_DOKUMENATA',
                       'VW_KUF_PDV_INDIKATORI', 'VW_KUF_UGOVORI', 'VW_KUF_VEZE', 'VW_KUF_DOKUMENTI', 'VW_KUF_AVANSI', 'VW_KUF_URACUNATI_AVANSI')
 order by 1;

prompt === Ulazni indikatori za unos
select sifra, stopa, uio_tip_code, prikaz from vw_kuf_pdv_indikatori order by sifra;
