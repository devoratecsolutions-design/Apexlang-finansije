/*
================================================================================
  ESSCOM Finansije - 07_pdv_indikatori_vracanje.sql   (SAMO U NUŽDI)
  Pokrenuti kao: SIF. Vraća naziv, stopu, smjer i status indikatora iz
  ACC_PDV_INDIKATORI_BACKUP_V2 i briše kolone koje je dodala skripta 07.
  VAŽNO: vratiti i aplikaciju na prethodnu verziju ako je nova koristi kolone.
================================================================================
*/
set serveroutput on
whenever sqlerror exit failure rollback

update acc_pdv_indikatori p
   set (p.naziv, p.vrijednost, p.ui, p.valid) =
       (select b.naziv, b.vrijednost, b.ui, b.valid
          from acc_pdv_indikatori_backup_v2 b
         where b.id = p.id)
 where exists (select 1 from acc_pdv_indikatori_backup_v2 b where b.id = p.id);
commit;

begin
    for c in (select column_name from user_tab_columns
               where table_name = 'ACC_PDV_INDIKATORI'
                 and column_name in ('POLJE_OSNOVICE', 'POLJE_PDV', 'POLJE_KP',
                                     'PRAVO_NA_ODBITAK', 'PDV_DOBAVLJACU', 'VRSTA')) loop
        execute immediate 'alter table acc_pdv_indikatori drop column ' || c.column_name;
        dbms_output.put_line('Obrisana kolona ' || c.column_name);
    end loop;
end;
/
-- Rezervna kopija ostaje; po potrebi: drop table acc_pdv_indikatori_backup_v2;
