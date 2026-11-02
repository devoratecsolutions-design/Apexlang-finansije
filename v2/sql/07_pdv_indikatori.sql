/*
================================================================================
  ESSCOM Finansije - 07_pdv_indikatori.sql        (generisano; ne mijenjati ručno)
  Pokrenuti kao: SIF (vlasnik šifarnika), PRIJE importa aplikacije.

  Svrha: pravila PDV-a po indikatoru prelaze iz koda u šifarnik.
    Nove kolone u SIF.ACC_PDV_INDIKATORI:
      POLJE_OSNOVICE   polje PDV prijave za osnovicu (11, 12, 13, 21, 22, 23)
      POLJE_PDV        polje PDV prijave za iznos PDV-a (41, 42, 43, 51)
      POLJE_KP         krajnja potrošnja: 32 / 33 / 34, ili KP = prema
                       entitetu sjedišta firme (32 FBiH, 33 RS, 34 Brčko)
      PRAVO_NA_ODBITAK D / N (ulazni)
      PDV_DOBAVLJACU   D = PDV je dio obaveze prema dobavljaču,
                       N = obrnuta naplata ili uvoz (PDV se ne plaća dobavljaču)
      VRSTA            REDOVAN, AVANS, UVOZ, INO_USLUGA, KNJIZNO_ODOBRENJE,
                       POLJOPRIVREDNICI, OSLOBODJENO, IZVOZ, MANJAK,
                       VLASTITA_POTROSNJA, OBRACUNSKI, TEHNICKI
    Izmjene podataka (odluke 30.10.2026):
      - ujednačeni nazivi (cijele riječi, bez skraćenica)
      - D5 ispravan naziv; O1 stopa 17; O6 jedan aktivan red, smjer U
      - deaktivirani P8 i BU (XI i XU ostaju)
    Mapiranje indikator / tip dokumenta se NE mijenja (provjera: bez razlika).

  Prije izmjena čuva se kopija tabele u ACC_PDV_INDIKATORI_BACKUP_V2.
  Vraćanje: 07_pdv_indikatori_vracanje.sql (kao SIF).
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) rezervna kopija (samo prvi put)
declare
    l_n number;
begin
    select count(*) into l_n from user_tables where table_name = 'ACC_PDV_INDIKATORI_BACKUP_V2';
    if l_n = 0 then
        execute immediate 'create table acc_pdv_indikatori_backup_v2 as
                           select sysdate as sacuvano, p.* from acc_pdv_indikatori p';
        dbms_output.put_line('Rezervna kopija napravljena: ACC_PDV_INDIKATORI_BACKUP_V2');
    else
        dbms_output.put_line('Rezervna kopija već postoji - ne prepisuje se.');
    end if;
end;
/

-- 2) nove kolone (samo ako ne postoje)
declare
    procedure kolona (p_ime in varchar2, p_def in varchar2) is
        l_n number;
    begin
        select count(*) into l_n from user_tab_columns
         where table_name = 'ACC_PDV_INDIKATORI' and column_name = p_ime;
        if l_n = 0 then
            execute immediate 'alter table acc_pdv_indikatori add (' || p_ime || ' ' || p_def || ')';
            dbms_output.put_line('Dodata kolona ' || p_ime);
        end if;
    end;
begin
    kolona('POLJE_OSNOVICE',   'varchar2(4 char)');
    kolona('POLJE_PDV',        'varchar2(4 char)');
    kolona('POLJE_KP',         'varchar2(4 char)');
    kolona('PRAVO_NA_ODBITAK', 'varchar2(1 char) constraint acc_pdv_ind_odbitak_ck check (pravo_na_odbitak in (''D'', ''N''))');
    kolona('PDV_DOBAVLJACU',   'varchar2(1 char) constraint acc_pdv_ind_dobavljac_ck check (pdv_dobavljacu in (''D'', ''N''))');
    kolona('VRSTA',            'varchar2(30 char)');
end;
/

comment on column acc_pdv_indikatori.polje_osnovice is 'Polje PDV prijave za osnovicu (11, 12, 13, 21, 22, 23)';
comment on column acc_pdv_indikatori.polje_pdv is 'Polje PDV prijave za iznos PDV-a (41, 42, 43, 51)';
comment on column acc_pdv_indikatori.polje_kp is 'Krajnja potrošnja: 32/33/34, KP = prema entitetu sjedišta firme';
comment on column acc_pdv_indikatori.pravo_na_odbitak is 'D/N - pravo na odbitak ulaznog PDV-a';
comment on column acc_pdv_indikatori.pdv_dobavljacu is 'D = PDV je dio obaveze prema dobavljaču; N = obrnuta naplata ili uvoz';
comment on column acc_pdv_indikatori.vrsta is 'Vrsta indikatora (REDOVAN, AVANS, UVOZ, INO_USLUGA, KNJIZNO_ODOBRENJE, ...)';

-- 3) podaci
declare
    l_n    number;
    l_keep number;
begin
    -- O6: jedan aktivan red (prednost ulaznom, pa najstarijem)
    select min(id) keep (dense_rank first order by case ui when 'U' then 0 else 1 end, id)
      into l_keep
      from acc_pdv_indikatori
     where sifra = 'O6' and valid = 'Y';
    if l_keep is not null then
        update acc_pdv_indikatori set valid = 'N'
         where sifra = 'O6' and valid = 'Y' and id <> l_keep;
        dbms_output.put_line('O6 - deaktivirano duplih redova: ' || sql%rowcount || ' (ostaje id ' || l_keep || ')');
    end if;

    -- deaktivacija P8 i BU
    update acc_pdv_indikatori set valid = 'N'
     where sifra in ('P8', 'BU') and valid = 'Y';
    dbms_output.put_line('Deaktivirano (P8, BU): ' || sql%rowcount);

    -- O1 stopa
    update acc_pdv_indikatori set vrijednost = 17
     where sifra = 'O1' and valid = 'Y' and nvl(vrijednost, -1) <> 17;
    dbms_output.put_line('O1 - ispravljena stopa: ' || sql%rowcount);

    -- nazivi, smjer i pravila iz Excel tabele (samo aktivni redovi)
    l_n := 0;
    for r in (
    select 'A1' sifra, 'I' ui, '17% izdate fakture za robu i usluge PDV obveznicima' naziv, '11' polje_osnovice, '51' polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'A2' sifra, 'I' ui, '17% potrošnja u neposlovne svrhe' naziv, '11' polje_osnovice, '51' polje_pdv, 'KP' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'VLASTITA_POTROSNJA' vrsta from dual
    union all
    select 'A3' sifra, 'I' ui, '17% utvrđeni manjkovi na teret rashoda perioda' naziv, '11' polje_osnovice, '51' polje_pdv, 'KP' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'MANJAK' vrsta from dual
    union all
    select 'A4' sifra, 'I' ui, '17% utvrđeni manjkovi na teret odgovornog lica' naziv, '11' polje_osnovice, '51' polje_pdv, 'KP' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'MANJAK' vrsta from dual
    union all
    select 'A5' sifra, 'I' ui, '17% gotovinski računi' naziv, '11' polje_osnovice, '51' polje_pdv, 'KP' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'A6' sifra, 'I' ui, '17% usluge inostranih dobavljača (obrnuta naplata)' naziv, null polje_osnovice, '51' polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'A7' sifra, 'I' ui, '17% primljeni avansi' naziv, '11' polje_osnovice, '51' polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'B1' sifra, 'I' ui, '17% izdate fakture PDV neobveznicima – Republika Srpska' naziv, '11' polje_osnovice, '51' polje_pdv, '33' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'B2' sifra, 'I' ui, '17% izdate fakture PDV neobveznicima – Federacija Bosne i Hercegovine' naziv, '11' polje_osnovice, '51' polje_pdv, '32' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'B3' sifra, 'I' ui, '17% izdate fakture PDV neobveznicima – Brčko distrikt' naziv, '11' polje_osnovice, '51' polje_pdv, '34' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'B4' sifra, 'I' ui, '17% primljeni avansi od PDV neobveznika – Republika Srpska' naziv, '11' polje_osnovice, '51' polje_pdv, '33' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'B5' sifra, 'I' ui, '17% primljeni avansi od PDV neobveznika – Federacija Bosne i Hercegovine' naziv, '11' polje_osnovice, '51' polje_pdv, '32' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'B6' sifra, 'I' ui, '17% primljeni avansi od PDV neobveznika – Brčko distrikt' naziv, '11' polje_osnovice, '51' polje_pdv, '34' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'C1' sifra, 'I' ui, '0% izdate fakture za robu – PDV obveznici i neobveznici' naziv, '13' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'C4' sifra, 'I' ui, '0% isporuka automobila' naziv, '11' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'C5' sifra, 'I' ui, '0% isporuke snagama EUFOR-a i NATO-a' naziv, '11' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'C6' sifra, 'I' ui, '0% primljeni avans – IPA fond' naziv, '11' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'C7' sifra, 'I' ui, '0% prodaja nepokretnosti' naziv, '13' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'D1' sifra, 'I' ui, '17% izdata knjižna odobrenja PDV obveznicima' naziv, '11' polje_osnovice, '51' polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'D2' sifra, 'I' ui, '17% izdata knjižna odobrenja PDV neobveznicima – Republika Srpska' naziv, '11' polje_osnovice, '51' polje_pdv, '33' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'D3' sifra, 'I' ui, '17% izdata knjižna odobrenja PDV neobveznicima – Federacija Bosne i Hercegovine' naziv, '11' polje_osnovice, '51' polje_pdv, '32' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'D4' sifra, 'I' ui, '17% izdata knjižna odobrenja PDV neobveznicima – Brčko distrikt' naziv, '11' polje_osnovice, '51' polje_pdv, '34' polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'D5' sifra, 'I' ui, '0% izdata knjižna odobrenja za isporuke oslobođene PDV-a' naziv, '13' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'I1' sifra, 'I' ui, '0% izvoz' naziv, '12' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'IZVOZ' vrsta from dual
    union all
    select 'O1' sifra, 'I' ui, '17% obračunski PDV na primljene avanse' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'XI' sifra, 'I' ui, 'Bez PDV indikatora – izlazni' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'TEHNICKI' vrsta from dual
    union all
    select 'N1' sifra, 'U' ui, '17% nabavka nepokretne imovine sa pravom na odbitak' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'N2' sifra, 'U' ui, '17% nabavka opreme sa pravom na odbitak' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'N3' sifra, 'U' ui, '17% primljena knjižna odobrenja sa pravom na odbitak' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'N4' sifra, 'U' ui, '5% primljena knjižna odobrenja od poljoprivrednika sa pravom na odbitak' naziv, '23' polje_osnovice, '43' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'N5' sifra, 'U' ui, '17% primljena knjižna odobrenja bez prava na odbitak' naziv, '21' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'D' pdv_dobavljacu, 'KNJIZNO_ODOBRENJE' vrsta from dual
    union all
    select 'O2' sifra, 'U' ui, '17% obračunski PDV na date avanse' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'O3' sifra, 'U' ui, '17% obračunski PDV pri uvozu obrtnih sredstava' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'O4' sifra, 'U' ui, '17% obračunski PDV pri uvozu stalnih sredstava' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'O6' sifra, 'U' ui, '17% obračunski PDV na odobrenja kupcima' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'O7' sifra, 'U' ui, '17% primljene fakture bez prava na odbitak iz prethodne godine' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OBRACUNSKI' vrsta from dual
    union all
    select 'P1' sifra, 'U' ui, '17% primljene fakture za obrtna sredstva' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'P2' sifra, 'U' ui, '17% primljene fakture za osnovna sredstva' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'P3' sifra, 'U' ui, '17% dati avansi sa punim odbitkom' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'P4' sifra, 'U' ui, '5% primljene fakture od poljoprivrednika (paušalna naknada)' naziv, '23' polje_osnovice, '43' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'D' pdv_dobavljacu, 'POLJOPRIVREDNICI' vrsta from dual
    union all
    select 'P5' sifra, 'U' ui, '17% usluge inostranih lica za nabavku obrtnih sredstava' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'P6' sifra, 'U' ui, '17% usluge inostranih lica za nabavku stalnih sredstava' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'P7' sifra, 'U' ui, '17% usluge inostranih lica koje terete rashode' naziv, '21' polje_osnovice, '41' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'R1' sifra, 'U' ui, '17% primljene fakture bez prava na odbitak' naziv, '21' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'D' pdv_dobavljacu, 'REDOVAN' vrsta from dual
    union all
    select 'R2' sifra, 'U' ui, '17% usluge inostranih lica bez prava na odbitak' naziv, '21' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'N' pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'R3' sifra, 'U' ui, '17% dati avansi bez prava na odbitak' naziv, '21' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'D' pdv_dobavljacu, 'AVANS' vrsta from dual
    union all
    select 'R4' sifra, 'U' ui, '17% uvoz bez prava na odbitak' naziv, '22' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'N' pdv_dobavljacu, 'UVOZ' vrsta from dual
    union all
    select 'S1' sifra, 'U' ui, '0% nabavka oslobođena PDV-a' naziv, '21' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'S2' sifra, 'U' ui, '0% dobavljač nije PDV obveznik' naziv, '21' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'OSLOBODJENO' vrsta from dual
    union all
    select 'S3' sifra, 'U' ui, '0% usluge inostranih lica oslobođene PDV-a' naziv, '21' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'S4' sifra, 'U' ui, '0% usluge inostranih lica bez PDV-a' naziv, '21' polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'INO_USLUGA' vrsta from dual
    union all
    select 'U1' sifra, 'U' ui, '17% PDV plaćen pri uvozu obrtnih sredstava' naziv, '22' polje_osnovice, '42' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'UVOZ' vrsta from dual
    union all
    select 'U2' sifra, 'U' ui, '17% PDV plaćen pri uvozu stalnih sredstava' naziv, '22' polje_osnovice, '42' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'UVOZ' vrsta from dual
    union all
    select 'U5' sifra, 'U' ui, '17% PDV plaćen pri uvozu – obrazac IM6' naziv, '22' polje_osnovice, '42' polje_pdv, null polje_kp, 'D' pravo_na_odbitak, 'N' pdv_dobavljacu, 'UVOZ' vrsta from dual
    union all
    select 'U7' sifra, 'U' ui, '17% uvoz bez prava na odbitak – ručni obračun' naziv, '22' polje_osnovice, null polje_pdv, 'KP' polje_kp, 'N' pravo_na_odbitak, 'N' pdv_dobavljacu, 'UVOZ' vrsta from dual
    union all
    select 'XU' sifra, 'U' ui, 'Bez PDV indikatora – ulazni' naziv, null polje_osnovice, null polje_pdv, null polje_kp, null pravo_na_odbitak, null pdv_dobavljacu, 'TEHNICKI' vrsta from dual
    ) loop
        update acc_pdv_indikatori p
           set p.naziv            = r.naziv,
               p.ui               = r.ui,
               p.polje_osnovice   = r.polje_osnovice,
               p.polje_pdv        = r.polje_pdv,
               p.polje_kp         = r.polje_kp,
               p.pravo_na_odbitak = r.pravo_na_odbitak,
               p.pdv_dobavljacu   = r.pdv_dobavljacu,
               p.vrsta            = r.vrsta
         where p.sifra = r.sifra
           and p.valid = 'Y';
        l_n := l_n + sql%rowcount;
    end loop;
    dbms_output.put_line('Ažurirano indikatora: ' || l_n);

    commit;
end;
/

-- 4) provjera
prompt
prompt === Aktivni indikatori poslije izmjene
column naziv format a70
select sifra, ui, vrijednost, polje_osnovice as osn, polje_pdv as pdv, polje_kp as kp,
       pravo_na_odbitak as odb, pdv_dobavljacu as dob, vrsta, naziv
  from acc_pdv_indikatori
 where valid = 'Y'
 order by ui, sifra;

prompt
prompt === Aktivni indikatori bez popunjene vrste (očekivano prazno)
select id, sifra, ui, naziv from acc_pdv_indikatori where valid = 'Y' and vrsta is null;
