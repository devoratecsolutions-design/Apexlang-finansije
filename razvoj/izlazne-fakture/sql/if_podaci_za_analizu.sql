/*
================================================================================
  ESSCOM Finansije - if_podaci_za_analizu.sql   (samo čitanje, ništa ne mijenja)
  Izlazne fakture: podaci za analizu povezivanja sa Robnim modulom.
  Pokrenuti kao ACCOUNTING u SQL Developeru / SQL Workshop-u (uključen ispis
  DBMS Output). Cijeli ispis kopirati i poslati.
  Firma za detalje: 219 (promijeniti u l_ooj ako treba).
================================================================================
*/
set serveroutput on size unlimited

declare
    l_ooj constant number := 219;

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
    ispisi('VRSTE DOKUMENATA MODULA IF (firma ' || l_ooj || ' i zajedničke)', q'[
        select vd.id || '|' || vd.ooj_id || '|' || vd.sifra || '|' || vd.naziv
               || '|tk=' || vd.tip_kretanja || '|vn=' || vd.vrsta_naloga_id || '|' || vd.valid
          from sif.vrste_dokumenata vd
          join sif.acc_moduli m on m.id = vd.acc_modul_id and m.sifra = 'IF'
         where vd.ooj_id = 219 or vd.ooj_id is null
         order by vd.ooj_id nulls first, vd.sifra]');

    ispisi('KIF PO FIRMI I GODINI: broj | sa skladištem | storno | fiskalizovano | proknjiženo | status', q'[
        select ooj_id || '|' || godina || '|' || count(*) || '|skl=' || count(skladiste_id)
               || '|sto=' || sum(case when stornirano = 'Y' then 1 else 0 end)
               || '|fis=' || sum(case when fiskalizovano = 'Y' then 1 else 0 end)
               || '|gk=' || count(glavna_knjiga_id)
               || '|st=' || listagg(distinct nvl(status, '-'), ',') within group (order by status)
          from kif
         group by ooj_id, godina
         order by ooj_id, godina]');

    ispisi('KIF PO VRSTI I TIPU CIJENE (sve firme)', q'[
        select nvl(vd.sifra, '?') || '|tip_cijene=' || nvl(k.tip_cijene, '-') || '|' || count(*)
          from kif k
          left join sif.vrste_dokumenata vd on vd.id = k.vrsta_fakture_id
         group by vd.sifra, k.tip_cijene
         order by 1]');

    ispisi('STAVKE KIF PO TIPU STAVKE (roba / usluga ...)', q'[
        select nvl(to_char(s.tip_stavke_id), '-') || '|' || nvl(t.naziv, '?') || '|stavki=' || count(*)
               || '|faktura=' || count(distinct ks.kif_id)
          from kif_stavke ks
          left join sec_stavke s on s.id = ks.stavka_id
          left join sif.acc_tipovi_stavki t on t.id = s.tip_stavke_id
         group by s.tip_stavke_id, t.naziv
         order by 1]');

    ispisi('FAKTURE SA ROBOM: ima li skladište i dokument skladišta (operacije.faktura_id)', q'[
        select 'faktura sa robom=' || count(*)
               || '|sa skladištem=' || count(k.skladiste_id)
               || '|sa dokumentom skladišta=' || sum(case when exists (select 1 from operacije o where o.faktura_id = k.id) then 1 else 0 end)
          from kif k
         where exists (select 1 from kif_stavke ks join sec_stavke s on s.id = ks.stavka_id
                        where ks.kif_id = k.id and s.tip_stavke_id = 1)]');

    ispisi('SKLADIŠTA NA FAKTURAMA: tip skladišta, cjenovnik tip, tip cijene fakture', q'[
        select nvl(sk.sifra, '-') || '|' || nvl(sk.naziv, '-') || '|cjen=' || nvl(c.tip, '-')
               || '|kif.tip_cijene=' || nvl(k.tip_cijene, '-') || '|' || count(*)
          from kif k
          left join skladista sk on sk.id = k.skladiste_id
          left join cjenovnici c on c.id = sk.cjenovnik_id
         where k.ooj_id = 219
         group by sk.sifra, sk.naziv, c.tip, k.tip_cijene
         order by 1]');

    ispisi('TIP CIJENE FIRME (core.ooj_pkg.get_tip_cijene) i broj robnih skladišta po tipu cjenovnika', q'[
        select 'firma=' || core.ooj_pkg.get_tip_cijene(p_ooj_id => 219)
               || '|VP skl=' || sum(case when c.tip = 'V' then 1 else 0 end)
               || '|MP skl=' || sum(case when c.tip = 'M' then 1 else 0 end)
          from skladista sk
          join cjenovnici c on c.id = sk.cjenovnik_id
         where sk.ooj_id = 219 and sk.valid = 'Y']');

    ispisi('KASE (SEC_KASE) po firmi', q'[
        select ooj_id || '|' || count(*) || '|aktivnih=' || sum(case when valid = 'Y' then 1 else 0 end)
          from sec_kase group by ooj_id order by ooj_id]');

    ispisi('AVANSI I ZATVARANJA, KO / KZ (vezane fakture)', q'[
        select 'zatvaranja=' || (select count(*) from kif_avansi_zatvaranje)
               || '|KO/KZ sa vezom=' || (select count(*) from kif where faktura_id is not null)
               || '|iz predračuna=' || (select count(*) from kif where predracun_id is not null)
               || '|iz ugovora=' || (select count(*) from kif where ugovor_id is not null)
          from dual]');

    ispisi('BROJAČI IF 2026 (firma 219)', q'[
        select vd.sifra || '|' || p.godina || '|' || p.prefix || '|' || p.broj
          from core.protokoli p
          join sif.vrste_dokumenata vd on vd.id = p.vrsta_naloga_id
          join sif.acc_moduli m on m.id = vd.acc_modul_id and m.sifra = 'IF'
         where p.ooj_id = 219 and p.godina = 2026
         order by vd.sifra]');
end;
/
