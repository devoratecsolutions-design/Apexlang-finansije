/*
  ESSCOM Finansije v2 - kuf_provjera_dio2.sql
  Nastavak provjere (dijelovi C2 i D) - pokrenuti kao ACCOUNTING. SAMO ČITA.
*/
set echo off
set linesize 250 pagesize 500
prompt
prompt === C2. Vrste dokumenata po modulu (DEFAULT = šablon, KOPIJA/VLASTITI = firma)
select m.sifra as modul, vd.sifra, vd.naziv, vn.sifra as vrsta_naloga,
       case when vd.ooj_id is null then 'DEFAULT' else 'FIRMA' end as tip_zapisa,
       count(*) as redova
  from sif.vrste_dokumenata vd
  join sif.acc_moduli m on m.id = vd.acc_modul_id
  left join sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id
 where vd.valid = 'Y'
   and m.sifra in ('UF', 'IF')
 group by m.sifra, vd.sifra, vd.naziv, vn.sifra, case when vd.ooj_id is null then 'DEFAULT' else 'FIRMA' end
 order by 1, 2, 5;

prompt
prompt === D1. Ulazne fakture po firmi i godini
select k.ooj_id, extract(year from k.datum_fakture) as godina, count(*) as faktura,
       sum(case when k.stornirano = 'Y' then 1 else 0 end) as storniranih,
       sum(case when k.storniran_id is not null then 1 else 0 end) as storno_dok,
       sum(case when k.glavna_knjiga_id is not null then 1 else 0 end) as proknjizenih,
       sum(case when k.document is not null then 1 else 0 end) as sa_dokumentom,
       round(sum(nvl(dbms_lob.getlength(k.document), 0)) / 1024 / 1024, 1) as dokumenti_mb
  from kuf k
 group by k.ooj_id, extract(year from k.datum_fakture)
 order by 1, 2;

prompt
prompt === D2. (N-02) Obrnuta naplata / uvoz: PDV dodat na iznos prema dobavljaču
select k.ooj_id, p.sifra, count(*) as faktura,
       sum(k.iznos_sa_pdv - k.iznos_bez_pdv) as pdv_na_obavezi_km
  from kuf k
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 where p.sifra in ('P5','P6','P7','R2','S3','S4','U1','U2','U5','R4','U7')
   and k.iznos_sa_pdv <> k.iznos_bez_pdv
 group by k.ooj_id, p.sifra
 order by 1, 2;

prompt
prompt === D3. (N-04) UIO KUF zapisi čiji PDV ne odgovara stopi indikatora fakture
select k.ooj_id, p.sifra, p.vrijednost as stopa, count(*) as zapisa
  from uio_kuf u
  join kuf k on k.id = u.faktura_id
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 where abs(nvl(to_broj(u.iznos_ulaznog_pdv), 0)
           - round(nvl(to_broj(u.iznos_fakture_bezpdv), 0) * nvl(p.vrijednost, 0) / 100, 2)) > 0.05
 group by k.ooj_id, p.sifra, p.vrijednost
 order by 1, 2;

prompt
prompt === D4. (N-06) Godina fakture različita od godine datuma fakture
select ooj_id, godina, extract(year from datum_fakture) as godina_datuma, count(*) as faktura
  from kuf
 where godina <> extract(year from datum_fakture)
 group by ooj_id, godina, extract(year from datum_fakture)
 order by 1, 2;

prompt
prompt === D5. (N-07) Isti interni broj više puta (firma, godina, broj)
select ooj_id, godina, broj, count(*) as puta, listagg(id, ', ') within group (order by id) as id_lista
  from kuf
 where storniran_id is null
 group by ooj_id, godina, broj
having count(*) > 1
 order by 1, 2, 3;

prompt
prompt === D6. (N-08) Mogući duplikati: isti dobavljač i broj fakture
select k.ooj_id, k.klijent_id, upper(trim(k.naziv_fakture)) as broj_fakture,
       count(*) as puta, listagg(k.id, ', ') within group (order by k.id) as id_lista
  from kuf k
 where k.stornirano = 'N' and k.storniran_id is null
 group by k.ooj_id, k.klijent_id, upper(trim(k.naziv_fakture))
having count(*) > 1
 order by 1, 4 desc;

prompt
prompt === D7. (N-09) Stavke izvoda / kalkulacije vezane za nepostojeću ulaznu fakturu
select 'glavna_knjiga_stavke' as tabela, count(*) as redova
  from glavna_knjiga_stavke s
 where s.kuf_id is not null and not exists (select 1 from kuf k where k.id = s.kuf_id)
union all
select 'kalkulacija_kuf', count(*)
  from kalkulacija_kuf c
 where c.kuf_id is not null and not exists (select 1 from kuf k where k.id = c.kuf_id);

prompt
prompt === D8. (N-13) Indikator fakture koji nije mapiran na tip dokumenta fakture
select k.ooj_id, p.sifra as indikator, t.code as tip, count(*) as faktura
  from kuf k
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
  left join sif.acc_uio_tipovi_dokumenata t on t.id = k.uio_tip_dokumenta_id
 where not exists (select 1
                     from sif.vw_uio_tip_dokumenta_pdv_indikatori m
                    where m.pdv_indikator_id = k.pdv_indikator_id
                      and m.uio_tip_dokumenta_id = k.uio_tip_dokumenta_id
                      and m.valid = 'Y')
 group by k.ooj_id, p.sifra, t.code
 order by 1, 2;

prompt
prompt === D9. Fakture po indikatoru (za prenos u PDV specifikaciju i vrste dokumenata)
select p.sifra, p.ui, count(*) as faktura
  from kuf k
  left join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 group by p.sifra, p.ui
 order by 1;

prompt
prompt === Kraj provjere. Ništa nije izmijenjeno.
