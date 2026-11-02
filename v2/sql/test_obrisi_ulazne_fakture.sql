/*
================================================================================
  ESSCOM Finansije - test_obrisi_ulazne_fakture.sql   (SAMO DEV / TEST)
  Pokrenuti kao: ACCOUNTING.
  Briše SVE ulazne dokumente (UF, UAV, UAVZ, UKO, UKZ) jedne firme i sve vezano:
  KUF_PDV, KUF_DOKUMENTI, KUF_AVANSI_ZATVARANJE, UIO_KUF, KALKULACIJA_KUF (veza),
  KUF_MIGRACIJA_V2. Stavke naloga glavne knjige se NE brišu - samo im se
  uklanja veza na fakturu (KUF_ID = null), da nalozi ostanu u ravnoteži.
  Brojači (CORE.PROTOKOLI) se ne vraćaju.
  1. dio samo prikazuje šta će biti obrisano; 2. dio briše, bez commit-a:
  pogledati ispis pa ručno COMMIT ili ROLLBACK.
================================================================================
*/
set serveroutput on

-- 1. Pregled (ništa ne mijenja)
select (select count(*) from kuf where ooj_id = 219)                                  as dokumenata,
       (select count(*) from kuf where ooj_id = 219 and glavna_knjiga_id is not null) as proknjizenih,
       (select count(*) from kuf_pdv p join kuf k on k.id = p.kuf_id where k.ooj_id = 219)        as pdv_redova,
       (select count(*) from kuf_dokumenti d join kuf k on k.id = d.kuf_id where k.ooj_id = 219)  as skeniranih,
       (select count(*) from uio_kuf u join kuf k on k.id = u.faktura_id where k.ooj_id = 219)    as uio_kuf,
       (select count(*) from kalkulacija_kuf c join kuf k on k.id = c.kuf_id where k.ooj_id = 219) as kalkulacija_veza,
       (select count(*) from glavna_knjiga_stavke s join kuf k on k.id = s.kuf_id where k.ooj_id = 219) as gk_stavki
  from dual;

-- 2. Brisanje
declare
    c_ooj constant number := 219;
    l_ids sys.odcinumberlist;
begin
    -- KUF se mijenja više puta u istoj transakciji: bez paralelnog DML-a (ORA-12839)
    execute immediate 'alter session disable parallel dml';
    select id bulk collect into l_ids from kuf where ooj_id = c_ooj;
    dbms_output.put_line('Dokumenata za brisanje: ' || l_ids.count);
    if l_ids.count = 0 then
        return;
    end if;

    delete from kuf_avansi_zatvaranje z
     where z.avans_id            in (select column_value from table(l_ids))
        or z.faktura_id          in (select column_value from table(l_ids))
        or z.avans_zatvaranja_id in (select column_value from table(l_ids));
    dbms_output.put_line('KUF_AVANSI_ZATVARANJE: ' || sql%rowcount);

    delete from uio_kuf where faktura_id in (select column_value from table(l_ids));
    dbms_output.put_line('UIO_KUF: ' || sql%rowcount);

    delete from kalkulacija_kuf where kuf_id in (select column_value from table(l_ids));
    dbms_output.put_line('KALKULACIJA_KUF: ' || sql%rowcount);

    update glavna_knjiga_stavke set kuf_id = null where kuf_id in (select column_value from table(l_ids));
    dbms_output.put_line('GLAVNA_KNJIGA_STAVKE (uklonjena veza): ' || sql%rowcount);

    delete from kuf_migracija_v2 where kuf_id in (select column_value from table(l_ids));
    dbms_output.put_line('KUF_MIGRACIJA_V2: ' || sql%rowcount);

    -- KUF_PDV i KUF_DOKUMENTI se brišu kaskadno; prvo veze unutar KUF
    update /*+ noparallel(kuf) */ kuf set storniran_id = null, veza_kuf_id = null where ooj_id = c_ooj;
    delete /*+ noparallel(kuf) */ from kuf where ooj_id = c_ooj;
    dbms_output.put_line('KUF: ' || sql%rowcount);

    dbms_output.put_line('Gotovo. Provjerite ispis pa COMMIT ili ROLLBACK.');
end;
/
