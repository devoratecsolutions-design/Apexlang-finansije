/*
================================================================================
  ESSCOM Finansije - rm_podaci_za_analizu.sql   (samo čitanje, ništa ne mijenja)
  Pokrenuti kao ACCOUNTING u SQL Developeru / SQL Workshop-u (uključen ispis
  DBMS Output). Cijeli ispis kopirati i poslati.
================================================================================
*/
set serveroutput on size unlimited

declare
    procedure ispisi (p_naslov in varchar2, p_sql in varchar2) is
        l_redovi sys.odcivarchar2list;
    begin
        dbms_output.put_line('### ' || p_naslov);
        execute immediate p_sql bulk collect into l_redovi;
        for i in 1 .. l_redovi.count loop
            dbms_output.put_line(l_redovi(i));
        end loop;
        dbms_output.put_line('(' || l_redovi.count || ' redova)');
    exception
        when others then
            dbms_output.put_line('GREŠKA: ' || sqlerrm);
    end;
begin
    ispisi('ACC_MODULI', q'[
        select id || '|' || sifra || '|' || opis from sif.acc_moduli order by id]');

    ispisi('VRSTE_DOKUMENATA (ooj 219 i zajedničke)', q'[
        select vd.id || '|' || vd.ooj_id || '|' || m.sifra || '|' || vd.sifra || '|' || vd.naziv
               || '|tk=' || vd.tip_kretanja || '|vn=' || vd.vrsta_naloga_id || '|' || vd.valid
          from sif.vrste_dokumenata vd
          left join sif.acc_moduli m on m.id = vd.acc_modul_id
         where vd.ooj_id = 219 or vd.ooj_id is null
         order by m.sifra, vd.sifra]');

    ispisi('ACC_TIPOVI_KRETANJA_ROBE', q'[
        select id || '|' || sifra || '|' || naziv || '|tk=' || tip_kretanja || '|' || skracenica
               || '|vn=' || vrsta_naloga_id || '|' || valid
          from sif.acc_tipovi_kretanja_robe order by tip_kretanja, sifra]');

    ispisi('VRSTE NALOGA (iz tipova kretanja)', q'[
        select vn.id || '|' || vn.sifra || '|' || vn.naziv
          from sif.sif_vrste_naloga vn
         where vn.id in (select vrsta_naloga_id from sif.acc_tipovi_kretanja_robe)
         order by vn.id]');

    ispisi('ACC_TIPOVI_SKLADISTA', q'[
        select id || '|' || sifra || '|' || naziv from sif.acc_tipovi_skladista order by id]');

    ispisi('ACC_TIPOVI_CIJENA', q'[
        select id || '|' || sifra || '|' || naziv from sif.acc_tipovi_cijena order by id]');

    ispisi('ACC_TIPOVI_STAVKI', q'[
        select id || '|' || naziv || '|' || opis from sif.acc_tipovi_stavki order by id]');

    ispisi('CJENOVNICI (219)', q'[
        select id || '|' || sifra || '|' || naziv || '|tip=' || tip || '|' || valid
          from accounting.cjenovnici where ooj_id = 219 order by id]');

    ispisi('SKLADISTA (219)', q'[
        select s.id || '|' || s.sifra || '|' || s.naziv || '|tip=' || ts.sifra || '|cj=' || s.cjenovnik_id
               || '|tc=' || s.tip_cijene_id || '|kk=' || s.kontna_klasa_id || '|oj=' || s.oj_id || '|' || s.valid
          from accounting.skladista s
          left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
         where s.ooj_id = 219 order by s.id]');

    ispisi('OPERACIJE po tipu kretanja (219)', q'[
        select nvl(t.sifra, '-') || '|' || count(*) || '|zaklj=' || sum(case when o.zakljucano = 'Y' then 1 else 0 end)
               || '|gk=' || count(o.glavna_knjiga_id)
          from accounting.operacije o
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         where o.ooj_id = 219
         group by t.sifra order by 1]');

    ispisi('OPERACIJE ukupno po firmama (koliko podataka postoji)', q'[
        select ooj_id || '|' || count(*) from accounting.operacije group by ooj_id order by 2 desc fetch first 15 rows only]');

    ispisi('STAVKE 219: tip stavke / serijski broj', q'[
        select nvl(to_char(tip_stavke_id), '-') || '|sb=' || nvl(serijski_broj, '-') || '|' || count(*)
          from accounting.sec_stavke where ooj_id = 219
         group by tip_stavke_id, serijski_broj order by 1]');

    ispisi('BROJAČI 219 (protokoli)', q'[
        select vrsta_naloga_sifra || '|' || godina || '|' || count(*)
          from core.protokoli where ooj_id = 219 group by vrsta_naloga_sifra, godina order by 1, 2]');

    ispisi('KOLONE CORE.PROTOKOLI', q'[
        select column_name || ' ' || data_type from all_tab_columns
         where owner = 'CORE' and table_name = 'PROTOKOLI' order by column_id]');
end;
/
