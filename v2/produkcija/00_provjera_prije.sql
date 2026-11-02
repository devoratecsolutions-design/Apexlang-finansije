/*
================================================================================
  ESSCOM Finansije v2 - PRODUKCIJA - 00_provjera_prije.sql
  Pokrenuti kao: ACCOUNTING, PRIJE migracije. Skripta SAMO ČITA (ne mijenja ništa).
  Rezultat (cijeli ispis / spool) poslati prije pokretanja deploy skripte.
================================================================================
*/
set serveroutput on size unlimited
set linesize 200 pagesize 200
column zadnja_izmjena format a20
column objekat format a40

prompt
prompt === 1. Baza i korisnik (korisnik mora biti ACCOUNTING)
select sys_context('userenv', 'db_name') as baza, user as korisnik,
       to_char(sysdate, 'DD.MM.YYYY HH24:MI') as vrijeme
  from dual;

prompt
prompt === 2. Objekti koje migracija pravi ili mijenja (prije migracije)
select object_name, object_type, status,
       to_char(last_ddl_time, 'DD.MM.YYYY HH24:MI') as zadnja_izmjena
  from user_objects
 where object_name in ('STAVKE_PKG', 'DASHBOARD_PKG', 'STAVKE_PKG_BACKUP_V2', 'STAVKE_OSTALO_V2', 'KUF_PKG')
    or object_name like 'VW_DASH%'
 order by object_name, object_type;

prompt
prompt === 3. Otisak paketa STAVKE_PKG (mora se poklapati sa DEV-om; vidi UPUTSTVO)
select type, count(*) as linija, sum(length(text)) as znakova,
       sum(ora_hash(rtrim(text, chr(10) || chr(13) || ' '))) as otisak
  from user_source
 where name = 'STAVKE_PKG'
 group by type
 order by type;

prompt
prompt === 4. Podaci koje mijenja skripta 04 (klasa "Ostalo")
select count(*) as stavke_bez_klase, count(distinct ooj_id) as firmi
  from sec_stavke
 where klasa_id is null;

select count(*) as firmi_bez_klase_ostalo
  from (select distinct ooj_id from sec_stavke where ooj_id is not null) f
 where not exists (select 1
                     from sec_klase_stavki k
                    where k.ooj_id = f.ooj_id
                      and k.nadredjeno_id is null
                      and upper(trim(k.naziv)) = 'OSTALO');

prompt
prompt === 5. Direktna prava na objekte drugih šema (paketi i view-ovi ih traže)
prompt     Svaki red mora imati PRAVO = DA; NE -> DBA daje grant prije migracije.
select o.objekat,
       case when exists (select 1
                           from user_tab_privs p
                          where p.owner || '.' || p.table_name = o.objekat
                            and p.privilege in ('SELECT', 'EXECUTE', 'READ'))
            then 'DA' else 'NE' end as pravo
  from (select column_value as objekat
          from table(sys.odcivarchar2list(
               'CORE.OOJ_PKG', 'SIF.ACC_PDV_INDIKATORI', 'SIF.ACC_VALUTE',
               'SIF.SIF_VRSTE_NALOGA', 'SIF.SIF_ZIRO_RACUNI', 'SIF.VRSTE_DOKUMENATA',
               'SIF.ACC_JEDINICE_MJERE', 'SIF.ACC_GRUPE_STAVKI_KONTA',
               'SIF.VW_UIO_TIP_DOKUMENTA_PDV_INDIKATORI', 'SIF.ACC_UIO_TIPOVI_DOKUMENATA',
               'CORE.PROTOKOLI_PKG'))) o
 order by 1;

prompt     (SIF.SIF_MODULI_CIJENE paket koristi dinamički - grant nije obavezan)

prompt
prompt === 6. Neispravni objekti u šemi PRIJE migracije (za poređenje poslije)
select object_name, object_type
  from user_objects
 where status != 'VALID'
 order by object_type, object_name;

prompt
prompt === 7. Indeksi iz skripte 01 koji već postoje
select index_name, table_name
  from user_indexes
 where index_name in (
       'GKS_GLAVNA_KNJIGA_I', 'GKS_KIF_I', 'GKS_KUF_I', 'GKS_KONTNA_KLASA_I', 'GKS_KLIJENT_I',
       'GKS_OSNOVNO_SREDSTVO_I', 'GLAVNA_KNJIGA_OOJ_GOD_I', 'GLAVNA_KNJIGA_STORNIRAN_I',
       'GLAVNA_KNJIGA_OOJ_BANKA_I', 'KIF_OOJ_GOD_I', 'KIF_STORNIRAN_I', 'KIF_FAKTURA_I',
       'KIF_SKLADISTE_I', 'KIF_VRSTA_FAKTURE_I', 'KUF_OOJ_GOD_I', 'KUF_STORNIRAN_I',
       'OPERACIJE_SKLADISTE_I', 'OPERACIJE_KALKULACIJA_I', 'OPERACIJE_VEZA_I',
       'TREBOVANJA_SKLADISTE_I', 'POPISI_SKLADISTE_I', 'SEC_STAVKE_GRUPA_I',
       'SEC_OS_KLASA_I', 'SEC_OS_HISTORY_I', 'SEC_OS_PRIPREMA_I')
 order by table_name, index_name;

prompt
prompt === Kraj provjere. Pošaljite cijeli ispis.
