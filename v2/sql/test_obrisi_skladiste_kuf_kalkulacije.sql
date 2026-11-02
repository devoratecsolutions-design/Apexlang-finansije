/*
================================================================================
  ESSCOM Finansije - test_obrisi_skladiste_kuf_kalkulacije.sql   (SAMO DEV / TEST)
  Pokrenuti kao: ACCOUNTING.
  Briše za jednu firmu (OOJ, podrazumijevano 219):
    1) sve kalkulacije: KALKULACIJA_RASPODJELA, KALKULACIJA_TROSKOVI,
       KALKULACIJA_STAVKE, KALKULACIJA_KUF, KALKULACIJA_OPERACIJE, KALKULACIJE
    2) sve dokumente skladišta: OPERACIJA_STAVKE_SB, OPERACIJA_STAVKE, OPERACIJE
       (veza trebovanja na dokument - TREBOVANJA.VEZA_ID - se uklanja)
    3) sve ulazne dokumente (UF, UAV, UAVZ, UKO, UKZ): KUF_AVANSI_ZATVARANJE,
       UIO_KUF, KUF_MIGRACIJA_V2, KUF (KUF_PDV i KUF_DOKUMENTI kaskadno)
  Stavke naloga glavne knjige se NE brišu - samo im se uklanja veza na fakturu
  (KUF_ID = null), da nalozi ostanu u ravnoteži. Dokumenti skladišta koji imaju
  nalog (GLAVNA_KNJIGA_ID) se brišu, a nalog ostaje.
  Brojači (CORE.PROTOKOLI) se ne vraćaju.
  1. dio samo prikazuje šta će biti obrisano; 2. dio briše, BEZ commit-a:
  pogledati ispis pa ručno COMMIT ili ROLLBACK.
================================================================================
*/
set serveroutput on

-- 1. Pregled (ništa ne mijenja)
select (select count(*) from kalkulacije where ooj_id = 219)                                     as kalkulacija,
       (select count(*) from operacije where ooj_id = 219)                                       as dokumenata_skladista,
       (select count(*) from operacija_stavke os join operacije o on o.id = os.operacija_id
         where o.ooj_id = 219)                                                                   as stavki_dokumenata,
       (select count(*) from operacija_stavke_sb sb join operacija_stavke os on os.id = sb.operacija_stavka_id
          join operacije o on o.id = os.operacija_id where o.ooj_id = 219)                        as serijskih_brojeva,
       (select count(*) from operacije where ooj_id = 219 and glavna_knjiga_id is not null)      as proknjizenih_dokumenata,
       (select count(*) from kuf where ooj_id = 219)                                             as ulaznih_dokumenata,
       (select count(*) from kuf where ooj_id = 219 and glavna_knjiga_id is not null)            as proknjizenih_kuf
  from dual;

-- 2. Brisanje
declare
    c_ooj constant number := 219;
    l_kalk sys.odcinumberlist;
    l_ops  sys.odcinumberlist;
    l_kuf  sys.odcinumberlist;
begin
    execute immediate 'alter session disable parallel dml';

    ------------------------------------------------------------------ 1) kalkulacije
    select id bulk collect into l_kalk from kalkulacije where ooj_id = c_ooj;
    dbms_output.put_line('Kalkulacija za brisanje: ' || l_kalk.count);
    if l_kalk.count > 0 then
        delete from kalkulacija_raspodjela where kalkulacija_id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJA_RASPODJELA: ' || sql%rowcount);
        delete from kalkulacija_troskovi where kalkulacija_id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJA_TROSKOVI: ' || sql%rowcount);
        delete from kalkulacija_stavke where kalkulacija_id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJA_STAVKE: ' || sql%rowcount);
        delete from kalkulacija_kuf where kalkulacija_id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJA_KUF: ' || sql%rowcount);
        delete from kalkulacija_operacije where kalkulacija_id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJA_OPERACIJE: ' || sql%rowcount);
        update operacije set kalkulacija_id = null where kalkulacija_id in (select column_value from table(l_kalk));
        delete from kalkulacije where id in (select column_value from table(l_kalk));
        dbms_output.put_line('KALKULACIJE: ' || sql%rowcount);
    end if;

    ------------------------------------------------------------------ 2) dokumenti skladišta
    select id bulk collect into l_ops from operacije where ooj_id = c_ooj;
    dbms_output.put_line('Dokumenata skladišta za brisanje: ' || l_ops.count);
    if l_ops.count > 0 then
        -- veze iz drugih firmi / tabela na ove dokumente
        delete from kalkulacija_operacije where operacija_id in (select column_value from table(l_ops));
        delete from kalkulacija_stavke
         where operacija_stavka_id in (select os.id from operacija_stavke os
                                        where os.operacija_id in (select column_value from table(l_ops)));
        update trebovanja set veza_id = null where veza_id in (select column_value from table(l_ops));
        dbms_output.put_line('TREBOVANJA (uklonjena veza): ' || sql%rowcount);
        -- veze unutar dokumenata (storno, prenos -> prijem)
        update operacije set storniran_id = null, veza_id = null where ooj_id = c_ooj;
        delete from operacija_stavke_sb
         where operacija_stavka_id in (select os.id from operacija_stavke os
                                        where os.operacija_id in (select column_value from table(l_ops)));
        dbms_output.put_line('OPERACIJA_STAVKE_SB: ' || sql%rowcount);
        delete from operacija_stavke where operacija_id in (select column_value from table(l_ops));
        dbms_output.put_line('OPERACIJA_STAVKE: ' || sql%rowcount);
        delete from operacije where id in (select column_value from table(l_ops));
        dbms_output.put_line('OPERACIJE: ' || sql%rowcount);
    end if;

    ------------------------------------------------------------------ 3) ulazni dokumenti (KUF)
    select id bulk collect into l_kuf from kuf where ooj_id = c_ooj;
    dbms_output.put_line('Ulaznih dokumenata za brisanje: ' || l_kuf.count);
    if l_kuf.count > 0 then
        delete from kuf_avansi_zatvaranje z
         where z.avans_id            in (select column_value from table(l_kuf))
            or z.faktura_id          in (select column_value from table(l_kuf))
            or z.avans_zatvaranja_id in (select column_value from table(l_kuf));
        dbms_output.put_line('KUF_AVANSI_ZATVARANJE: ' || sql%rowcount);
        delete from uio_kuf where faktura_id in (select column_value from table(l_kuf));
        dbms_output.put_line('UIO_KUF: ' || sql%rowcount);
        -- veze kalkulacija drugih firmi (ne bi trebalo da postoje)
        delete from kalkulacija_kuf where kuf_id in (select column_value from table(l_kuf));
        delete from kalkulacija_troskovi where kuf_id in (select column_value from table(l_kuf));
        update glavna_knjiga_stavke set kuf_id = null where kuf_id in (select column_value from table(l_kuf));
        dbms_output.put_line('GLAVNA_KNJIGA_STAVKE (uklonjena veza): ' || sql%rowcount);
        delete from kuf_migracija_v2 where kuf_id in (select column_value from table(l_kuf));
        dbms_output.put_line('KUF_MIGRACIJA_V2: ' || sql%rowcount);
        -- KUF_PDV i KUF_DOKUMENTI se brišu kaskadno; prvo veze unutar KUF
        update /*+ noparallel(kuf) */ kuf set storniran_id = null, veza_kuf_id = null where ooj_id = c_ooj;
        delete /*+ noparallel(kuf) */ from kuf where ooj_id = c_ooj;
        dbms_output.put_line('KUF: ' || sql%rowcount);
    end if;

    dbms_output.put_line('Gotovo. Provjerite ispis pa COMMIT ili ROLLBACK.');
end;
/
