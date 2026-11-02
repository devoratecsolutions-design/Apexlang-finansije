/*
================================================================================
  ESSCOM Finansije - 08_kuf_model_vracanje.sql   (SAMO U NUŽDI)
  Pokrenuti kao: ACCOUNTING. Vraća stanje prije 08, 09 i 10 (model, view-ovi, KUF_PKG v2):
    1) KUF_PKG na verziju iz 06_kuf.sql (pokrenuti 06_kuf.sql POSLIJE ove skripte)
    2) KUF.GODINA ponovo prazna tamo gdje ju je popunila skripta 08
    3) briše VW_KUF_PDV_SPEC, KUF_PDV, KUF_DOKUMENTI, KUF_AVANSI_ZATVARANJE
       i kolone VRSTA_DOKUMENTA_ID i VEZA_KUF_ID iz KUF
  Dokumenti u KUF.DOCUMENT nisu dirani (08 ih je samo kopirao).
  Vrste dokumenata UAV, UAVZ, UKO, UKZ i njihovi brojači ostaju (ne smetaju);
  po potrebi se deaktiviraju u Konfiguraciji -> Numeracija dokumenata.
  VAŽNO: vratiti i aplikaciju na verziju prije koraka 4.
================================================================================
*/
set serveroutput on
whenever sqlerror exit failure rollback

update kuf k
   set k.godina = null
 where exists (select 1 from kuf_migracija_v2 m
                where m.kuf_id = k.id and m.kolona = 'GODINA'
                  and m.nova_vrijednost = to_char(k.godina));
dbms_output.put_line('Godina vraćena na prazno: ' || sql%rowcount);
commit;

begin
    for o in (select 'VIEW' t, 'VW_KUF_PDV_SPEC' n from dual
              union all select 'VIEW', 'VW_KUF_LISTA' from dual
              union all select 'VIEW', 'VW_KUF_FORMA' from dual
              union all select 'VIEW', 'VW_KUF_VRSTE_DOKUMENATA' from dual
              union all select 'VIEW', 'VW_KUF_PDV_INDIKATORI' from dual
              union all select 'VIEW', 'VW_KUF_UGOVORI' from dual
              union all select 'VIEW', 'VW_KUF_VEZE' from dual
              union all select 'VIEW', 'VW_KUF_DOKUMENTI' from dual
              union all select 'VIEW', 'VW_KUF_AVANSI' from dual
              union all select 'VIEW', 'VW_KUF_URACUNATI_AVANSI' from dual
              union all select 'TABLE', 'KUF_PDV' from dual
              union all select 'TABLE', 'KUF_DOKUMENTI' from dual
              union all select 'TABLE', 'KUF_AVANSI_ZATVARANJE' from dual) loop
        for x in (select 1 from user_objects where object_name = o.n and object_type = o.t) loop
            execute immediate 'drop ' || o.t || ' ' || o.n || case when o.t = 'TABLE' then ' cascade constraints' end;
            dbms_output.put_line('Obrisano: ' || o.t || ' ' || o.n);
        end loop;
    end loop;

    for c in (select constraint_name from user_constraints where constraint_name = 'KUF_VEZA_KUF_FK') loop
        execute immediate 'alter table kuf drop constraint kuf_veza_kuf_fk';
    end loop;
    for c in (select column_name from user_tab_columns
               where table_name = 'KUF'
                 and column_name in ('VRSTA_DOKUMENTA_ID', 'VEZA_KUF_ID')) loop
        execute immediate 'alter table kuf drop column ' || c.column_name;
        dbms_output.put_line('Obrisana kolona KUF.' || c.column_name);
    end loop;
end;
/
-- KUF_MIGRACIJA_V2 ostaje kao zapis; po potrebi: drop table kuf_migracija_v2;
prompt Sada pokrenuti 06_kuf.sql (vraća KUF_PKG v1).
