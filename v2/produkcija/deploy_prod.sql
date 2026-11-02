/*
================================================================================
  ESSCOM Finansije v2 - PRODUKCIJA - deploy_prod.sql
  Glavna skripta SQL dijela migracije (aplikacija se importuje posebno, POSLIJE).
  Pokrenuti kao ACCOUNTING iz SQLcl / SQL*Plus / SQL Developer (Run Script F5)
  / PL/SQL Developer (Command Window), iz foldera u kojem su skripte:
      @deploy_prod.sql
  Zapisnik se upisuje u deploy_prod.log (u istom folderu) - poslati ga poslije.
================================================================================
*/
set serveroutput on size unlimited
set echo off feedback on timing on
set define off
spool deploy_prod.log

prompt PRIJE OVE SKRIPTE: 07_pdv_indikatori.sql kao korisnik SIF (08 koristi nove kolone šifarnika).

prompt ===== 00 provjera prije =====
@@00_provjera_prije.sql

-- Od ovdje svaka greška prekida migraciju
whenever sqlerror exit failure rollback

prompt ===== 01 indeksi =====
@@01_indeksi.sql
prompt ===== 02 view-ovi za dashboarde =====
@@02_dashboard_views.sql
prompt ===== 03 DASHBOARD_PKG =====
@@03_dashboard_pkg.sql
prompt ===== 04 STAVKE_PKG i klasa Ostalo =====
@@04_stavke.sql
prompt ===== 06 KUF_PKG (ulazne fakture) =====
@@06_kuf.sql
prompt ===== 08 model ulaznih faktura (tabele, vrste dokumenata, prenos) =====
@@08_kuf_model.sql
prompt ===== 09 view-ovi ulaznih faktura =====
@@09_kuf_views.sql
prompt ===== 10 KUF_PKG v2 =====
@@10_kuf_pkg.sql

whenever sqlerror continue
prompt ===== 05 provjera poslije =====
@@05_provjera_poslije.sql

spool off
prompt Gotovo. Ako su u tački 1 provjere svi objekti VALID, importujte aplikaciju.
