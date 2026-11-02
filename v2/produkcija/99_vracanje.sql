/*
================================================================================
  ESSCOM Finansije v2 - PRODUKCIJA - 99_vracanje.sql  (SAMO U NUŽDI)
  Pokrenuti kao: ACCOUNTING. Vraća bazu u stanje prije migracije SQL dijela:
    1) STAVKE_PKG iz rezervne kopije STAVKE_PKG_BACKUP_V2
    2) stavke premještene u "Ostalo" ponovo bez klase (iz STAVKE_OSTALO_V2)
    3) briše DASHBOARD_PKG i view-ove VW_DASH_* (nova aplikacija ih koristi!)
    4) briše KUF_PKG (ulazne fakture, skripta 06)
  Indeksi iz 01 se NE brišu (ne mijenjaju ponašanje, samo ubrzavaju);
  ako ipak treba, naredbe su na kraju, zakomentarisane.
  VAŽNO: vratiti i aplikaciju na prethodnu verziju (export prije migracije).
================================================================================
*/
set serveroutput on size unlimited

-- 1) paket STAVKE_PKG iz rezervne kopije
declare
    l_src clob;
    procedure vrati (p_type in varchar2) is
    begin
        l_src := null;
        for r in (select text from stavke_pkg_backup_v2 where type = p_type order by line) loop
            l_src := l_src || r.text;
        end loop;
        if l_src is null then
            raise_application_error(-20001, 'Rezervna kopija nema ' || p_type);
        end if;
        execute immediate 'create or replace ' || l_src;
        dbms_output.put_line('Vraćeno: STAVKE_PKG ' || p_type);
    end;
begin
    vrati('PACKAGE');
    vrati('PACKAGE BODY');
end;
/

-- 2) stavke ponovo bez klase (samo one koje je migracija premjestila i koje su još u "Ostalo")
declare
    l_broj number;
begin
    update sec_stavke s
       set s.klasa_id = null
     where exists (select 1 from stavke_ostalo_v2 o
                    where o.stavka_id = s.id and o.klasa_id = s.klasa_id);
    l_broj := sql%rowcount;
    commit;
    dbms_output.put_line('Stavke vraćene bez klase: ' || l_broj);
end;
/
-- Klase "Ostalo" koje je migracija napravila ostaju (prazne); po potrebi obrisati ručno.

-- 3) dashboard objekti
begin
    for o in (select object_name, object_type from user_objects
               where (object_name = 'DASHBOARD_PKG' and object_type = 'PACKAGE')
                  or (object_name like 'VW_DASH%' and object_type = 'VIEW')) loop
        execute immediate 'drop ' || o.object_type || ' ' || o.object_name;
        dbms_output.put_line('Obrisano: ' || o.object_type || ' ' || o.object_name);
    end loop;
end;
/

-- provjera
select object_name, object_type, status from user_objects
 where object_name = 'STAVKE_PKG' order by object_type;

-- Indeksi iz 01 (samo ako treba; izvršiti pojedinačno one koje je 01 KREIRAO):
-- drop index gks_kif_i;   drop index gks_kuf_i;   ... (lista u 00_provjera_prije.sql, tačka 7)

-- 3a) model ulaznih faktura (skripta 08): pokrenuti @08_kuf_model_vracanje.sql PRIJE ove tačke
-- 4) paket KUF_PKG (skripte 06 i 09; nova aplikacija ga koristi na formi ulazne fakture!)
begin
    for o in (select object_name from user_objects where object_name = 'KUF_PKG' and object_type = 'PACKAGE') loop
        execute immediate 'drop package kuf_pkg';
        dbms_output.put_line('Obrisano: PACKAGE KUF_PKG');
    end loop;
end;
/
