/*
================================================================================
  ESSCOM Finansije v2 - PRODUKCIJA - 05_provjera_poslije.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE deploy skripte. Samo čita.
  Uslov za import aplikacije: tačka 1 - svi objekti VALID.
================================================================================
*/
set linesize 200 pagesize 200

prompt
prompt === 1. Objekti migracije (svi moraju biti VALID)
select object_name, object_type, status
  from user_objects
 where object_name in ('STAVKE_PKG', 'DASHBOARD_PKG', 'KUF_PKG', 'VW_KUF_PDV_SPEC', 'KUF_PDV', 'KUF_DOKUMENTI', 'KUF_AVANSI_ZATVARANJE')
    or object_name like 'VW_KUF%'
    or object_name like 'VW_DASH%'
 order by object_name, object_type;

prompt
prompt === 2. Greške kompajliranja (mora biti prazno)
select name, type, line, position, text
  from user_errors
 where name in ('STAVKE_PKG', 'DASHBOARD_PKG', 'KUF_PKG', 'VW_KUF_PDV_SPEC') or name like 'VW_DASH%'
 order by name, type, sequence;

prompt
prompt === 3. Neispravni objekti u šemi POSLIJE (uporediti sa tačkom 6 iz 00_provjera_prije)
select object_name, object_type
  from user_objects
 where status != 'VALID'
 order by object_type, object_name;

prompt
prompt === 4. Rezervne / pomoćne tabele migracije
select 'STAVKE_PKG_BACKUP_V2' as tabela, count(*) as redova from stavke_pkg_backup_v2
union all
select 'STAVKE_OSTALO_V2', count(*) from stavke_ostalo_v2;

prompt
prompt === 5. Stavke bez klase (očekivano 0)
select count(*) as stavke_bez_klase from sec_stavke where klasa_id is null;

prompt
prompt === 6. Brzi test funkcija (na prvoj stavci)
select stavke_pkg.pdv_stopa(min(id)) as pdv_stopa,
       stavke_pkg.stavka_u_upotrebi(min(id)) as u_upotrebi
  from sec_stavke;
