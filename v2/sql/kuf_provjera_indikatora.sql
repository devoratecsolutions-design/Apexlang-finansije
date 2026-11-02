/*
================================================================================
  ESSCOM Finansije v2 - kuf_provjera_indikatora.sql    (generisano iz Excel tabele
  PoreskiIndikatoriFMIS2_tip_dokumenta_fin_v4.xlsx; ne mijenjati ručno)

  Pokrenuti kao ACCOUNTING (SQL Workshop > SQL Scripts ili SQL Developer).
  Skripta SAMO ČITA - ne mijenja ni jedan red. Rezultate (ispis) poslati nazad.

  Dijelovi:
    A. PDV indikatori u bazi naspram Excel tabele
    B. Mapiranje indikator -> UIO tip dokumenta naspram Excel tabele
    C. Vrste dokumenata / naloga za ulazne fakture (za uvođenje UF, UAV, UAVZ, UKO, UKZ)
    D. Ulazne fakture na koje utiču nalazi iz analize (brojevi po firmi)
================================================================================
*/
set echo off
set linesize 250 pagesize 500
column naziv_baza format a60
column naziv_excel format a60
column napomena format a60

prompt
prompt === A1. Indikatori iz Excel tabele kojih NEMA u bazi (ili su nevažeći)
with xl as (
    select 'A1' sifra, '17% izdate fakture za robu i usluge PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'A2' sifra, '17% po osnovu potrošnje u neposlovne svrhe' naziv, 'I' ui, 17 stopa, '02' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A3' sifra, '17% PDV po osn. utvrđenih manjkova na teret rashoda perio' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A4' sifra, '17% PDV po osn. utvrđenih manjkova na teret odgov.lica' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A5' sifra, '17% u gotovinskim računima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A6' sifra, '17% usluge inodobavljača' naziv, 'I' ui, 17 stopa, '05' tip, '' polje_osn, '51' polje_pdv from dual
    union all
    select 'A7' sifra, '17% PDV na primljene avanse' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'B1' sifra, '17% izdate fakture za usluge PDV neobveznicima  RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B2' sifra, '17% izdate fakture za usluge PDV neobveznicima  Federacija BIH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B3' sifra, '17% izdate fakture za usluge PDV neobveznicima  Brćko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'B4' sifra, '17% PDV na primljene avanse od PDV neobveznika RS' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B5' sifra, '17% PDV na primljene avanse od PDV neobveznika FBiH' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B6' sifra, '17% PDV na primljene avanse od PDV neobveznika Brčko' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'C1' sifra, '0% izdate fakture za robu (obveznici i neobveznici)' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'C4' sifra, '0% PDV na automobile' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C5' sifra, '0% PDV na isporuke izvršene EUFOR-u i NATO' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C6' sifra, '0% primljeni avans - IPA fond' naziv, 'I' ui, 0 stopa, '03' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C7' sifra, '0% prodaja nepokretnosti' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'D1' sifra, '17% knjižna odobrenja izdata PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'D2' sifra, '17% knjižna odobrenja izdata PDV neobvez. RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'D3' sifra, '17% knjižna odobrenja izdata PDV neobvez. FBiH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'D4' sifra, '17% knjižna odobrenja izdata PDV neobvez. Brčko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'D5' sifra, '0% knjižna odobrenja za isporuke oslob. PDV-a' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'EX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'EZ' sifra, 'Nije poreski relevantno - Migracija izlazni' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'I1' sifra, '0% izvoz' naziv, 'I' ui, 0 stopa, '04' tip, '12' polje_osn, '' polje_pdv from dual
    union all
    select 'O1' sifra, '17% obračunski na primljene avanse' naziv, 'I' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'N1' sifra, '17% nabavka nepokr. imovine sa pravom na odb. PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N2' sifra, '17% nabavka opreme sa pravom na odbitak PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N3' sifra, '17% knjižna odobrenja sa pravom na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N4' sifra, '5% knjižna odobrenja poljopr. sa pravom na odbitak' naziv, 'U' ui, 5 stopa, '06' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'N5' sifra, '17% knjižna odobrenja bez prava na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'O2' sifra, '17% obračunski na date avanse' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O3' sifra, '17% obračunski prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O4' sifra, '17% obračunski prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O6' sifra, '17% obračunski odobrenja kupcima' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O7' sifra, '17% prim fakt bez prava na odb prethodna godina' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'P1' sifra, '17% primljene fakture za obrtna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P2' sifra, '17% primljene fakture za osnovna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P3' sifra, '17% dati avansi potpuni odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P4' sifra, '5% na primljene fakture od poljoprivrednika' naziv, 'U' ui, 5 stopa, '01' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'P5' sifra, '17% na usluge ino lica za nabavku obrtnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P6' sifra, '17% na usluge ino lica za nabavku stalnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P7' sifra, '17% na usluge ino lica koje terete rashode' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'R1' sifra, '17% primljene fakture bez prava na odbitak' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R2' sifra, '17% prim fak bez prava na odbitak - ino usluge' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R3' sifra, '17% dati avans bez prava na odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R4' sifra, '17 % primljene fakture uvoz nema prava odbitka' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'S1' sifra, '0% nabavka oslobođena PDV-a' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S2' sifra, '0% dobavljač nije PDV obveznik' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S3' sifra, '0% nabavka oslobođena PDV-a - ino usluge' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S4' sifra, '0% ino usluge bez PDV-a' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'U1' sifra, '17% akontirani PDV plaćen prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U2' sifra, '17% akontirani PDV plaćen prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U5' sifra, '17% akont.PDV plaćen prilikom uvoza - IM6' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U7' sifra, '17% uvoz bez prava odbitka - RUCNI' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'XY' sifra, 'Nije poreski relevantno - KONTRASTAV U6' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XZ' sifra, 'Nije poreski relevantno - Migracija ulazni' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
)
select x.sifra, x.naziv as naziv_excel, x.ui, x.stopa,
       case when p.id is null then 'nema u bazi' else 'u bazi valid = N' end as napomena
  from xl x
  left join sif.acc_pdv_indikatori p on p.sifra = x.sifra
 where p.id is null or p.valid <> 'Y'
 order by x.sifra;

prompt
prompt === A2. Aktivni indikatori u bazi kojih NEMA u Excel tabeli ili su u njoj izbačeni
with xl as (
    select 'A1' sifra, '17% izdate fakture za robu i usluge PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'A2' sifra, '17% po osnovu potrošnje u neposlovne svrhe' naziv, 'I' ui, 17 stopa, '02' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A3' sifra, '17% PDV po osn. utvrđenih manjkova na teret rashoda perio' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A4' sifra, '17% PDV po osn. utvrđenih manjkova na teret odgov.lica' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A5' sifra, '17% u gotovinskim računima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A6' sifra, '17% usluge inodobavljača' naziv, 'I' ui, 17 stopa, '05' tip, '' polje_osn, '51' polje_pdv from dual
    union all
    select 'A7' sifra, '17% PDV na primljene avanse' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'B1' sifra, '17% izdate fakture za usluge PDV neobveznicima  RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B2' sifra, '17% izdate fakture za usluge PDV neobveznicima  Federacija BIH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B3' sifra, '17% izdate fakture za usluge PDV neobveznicima  Brćko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'B4' sifra, '17% PDV na primljene avanse od PDV neobveznika RS' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B5' sifra, '17% PDV na primljene avanse od PDV neobveznika FBiH' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B6' sifra, '17% PDV na primljene avanse od PDV neobveznika Brčko' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'C1' sifra, '0% izdate fakture za robu (obveznici i neobveznici)' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'C4' sifra, '0% PDV na automobile' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C5' sifra, '0% PDV na isporuke izvršene EUFOR-u i NATO' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C6' sifra, '0% primljeni avans - IPA fond' naziv, 'I' ui, 0 stopa, '03' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C7' sifra, '0% prodaja nepokretnosti' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'D1' sifra, '17% knjižna odobrenja izdata PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'D2' sifra, '17% knjižna odobrenja izdata PDV neobvez. RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'D3' sifra, '17% knjižna odobrenja izdata PDV neobvez. FBiH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'D4' sifra, '17% knjižna odobrenja izdata PDV neobvez. Brčko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'D5' sifra, '0% knjižna odobrenja za isporuke oslob. PDV-a' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'EX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'EZ' sifra, 'Nije poreski relevantno - Migracija izlazni' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'I1' sifra, '0% izvoz' naziv, 'I' ui, 0 stopa, '04' tip, '12' polje_osn, '' polje_pdv from dual
    union all
    select 'O1' sifra, '17% obračunski na primljene avanse' naziv, 'I' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'N1' sifra, '17% nabavka nepokr. imovine sa pravom na odb. PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N2' sifra, '17% nabavka opreme sa pravom na odbitak PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N3' sifra, '17% knjižna odobrenja sa pravom na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N4' sifra, '5% knjižna odobrenja poljopr. sa pravom na odbitak' naziv, 'U' ui, 5 stopa, '06' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'N5' sifra, '17% knjižna odobrenja bez prava na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'O2' sifra, '17% obračunski na date avanse' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O3' sifra, '17% obračunski prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O4' sifra, '17% obračunski prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O6' sifra, '17% obračunski odobrenja kupcima' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O7' sifra, '17% prim fakt bez prava na odb prethodna godina' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'P1' sifra, '17% primljene fakture za obrtna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P2' sifra, '17% primljene fakture za osnovna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P3' sifra, '17% dati avansi potpuni odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P4' sifra, '5% na primljene fakture od poljoprivrednika' naziv, 'U' ui, 5 stopa, '01' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'P5' sifra, '17% na usluge ino lica za nabavku obrtnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P6' sifra, '17% na usluge ino lica za nabavku stalnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P7' sifra, '17% na usluge ino lica koje terete rashode' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'R1' sifra, '17% primljene fakture bez prava na odbitak' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R2' sifra, '17% prim fak bez prava na odbitak - ino usluge' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R3' sifra, '17% dati avans bez prava na odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R4' sifra, '17 % primljene fakture uvoz nema prava odbitka' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'S1' sifra, '0% nabavka oslobođena PDV-a' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S2' sifra, '0% dobavljač nije PDV obveznik' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S3' sifra, '0% nabavka oslobođena PDV-a - ino usluge' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S4' sifra, '0% ino usluge bez PDV-a' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'U1' sifra, '17% akontirani PDV plaćen prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U2' sifra, '17% akontirani PDV plaćen prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U5' sifra, '17% akont.PDV plaćen prilikom uvoza - IM6' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U7' sifra, '17% uvoz bez prava odbitka - RUCNI' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'XY' sifra, 'Nije poreski relevantno - KONTRASTAV U6' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XZ' sifra, 'Nije poreski relevantno - Migracija ulazni' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
)
select p.id, p.sifra, p.naziv as naziv_baza, p.ui, p.vrijednost,
       case when p.sifra in ('P9', 'U3', 'U4', 'U6', 'A8', 'C2', 'C3') then 'izbačen u Excel tabeli - treba deaktivirati'
            else 'nema ga u Excel tabeli' end as napomena
  from sif.acc_pdv_indikatori p
 where p.valid = 'Y'
   and not exists (select 1 from xl x where x.sifra = p.sifra)
 order by p.sifra;

prompt
prompt === A3. Razlike u stopi, smjeru (U/I) i nazivu
with xl as (
    select 'A1' sifra, '17% izdate fakture za robu i usluge PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'A2' sifra, '17% po osnovu potrošnje u neposlovne svrhe' naziv, 'I' ui, 17 stopa, '02' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A3' sifra, '17% PDV po osn. utvrđenih manjkova na teret rashoda perio' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A4' sifra, '17% PDV po osn. utvrđenih manjkova na teret odgov.lica' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A5' sifra, '17% u gotovinskim računima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A6' sifra, '17% usluge inodobavljača' naziv, 'I' ui, 17 stopa, '05' tip, '' polje_osn, '51' polje_pdv from dual
    union all
    select 'A7' sifra, '17% PDV na primljene avanse' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'B1' sifra, '17% izdate fakture za usluge PDV neobveznicima  RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B2' sifra, '17% izdate fakture za usluge PDV neobveznicima  Federacija BIH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B3' sifra, '17% izdate fakture za usluge PDV neobveznicima  Brćko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'B4' sifra, '17% PDV na primljene avanse od PDV neobveznika RS' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B5' sifra, '17% PDV na primljene avanse od PDV neobveznika FBiH' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B6' sifra, '17% PDV na primljene avanse od PDV neobveznika Brčko' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'C1' sifra, '0% izdate fakture za robu (obveznici i neobveznici)' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'C4' sifra, '0% PDV na automobile' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C5' sifra, '0% PDV na isporuke izvršene EUFOR-u i NATO' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C6' sifra, '0% primljeni avans - IPA fond' naziv, 'I' ui, 0 stopa, '03' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C7' sifra, '0% prodaja nepokretnosti' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'D1' sifra, '17% knjižna odobrenja izdata PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'D2' sifra, '17% knjižna odobrenja izdata PDV neobvez. RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'D3' sifra, '17% knjižna odobrenja izdata PDV neobvez. FBiH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'D4' sifra, '17% knjižna odobrenja izdata PDV neobvez. Brčko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'D5' sifra, '0% knjižna odobrenja za isporuke oslob. PDV-a' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'EX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'EZ' sifra, 'Nije poreski relevantno - Migracija izlazni' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'I1' sifra, '0% izvoz' naziv, 'I' ui, 0 stopa, '04' tip, '12' polje_osn, '' polje_pdv from dual
    union all
    select 'O1' sifra, '17% obračunski na primljene avanse' naziv, 'I' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'N1' sifra, '17% nabavka nepokr. imovine sa pravom na odb. PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N2' sifra, '17% nabavka opreme sa pravom na odbitak PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N3' sifra, '17% knjižna odobrenja sa pravom na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N4' sifra, '5% knjižna odobrenja poljopr. sa pravom na odbitak' naziv, 'U' ui, 5 stopa, '06' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'N5' sifra, '17% knjižna odobrenja bez prava na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'O2' sifra, '17% obračunski na date avanse' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O3' sifra, '17% obračunski prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O4' sifra, '17% obračunski prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O6' sifra, '17% obračunski odobrenja kupcima' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O7' sifra, '17% prim fakt bez prava na odb prethodna godina' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'P1' sifra, '17% primljene fakture za obrtna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P2' sifra, '17% primljene fakture za osnovna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P3' sifra, '17% dati avansi potpuni odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P4' sifra, '5% na primljene fakture od poljoprivrednika' naziv, 'U' ui, 5 stopa, '01' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'P5' sifra, '17% na usluge ino lica za nabavku obrtnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P6' sifra, '17% na usluge ino lica za nabavku stalnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P7' sifra, '17% na usluge ino lica koje terete rashode' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'R1' sifra, '17% primljene fakture bez prava na odbitak' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R2' sifra, '17% prim fak bez prava na odbitak - ino usluge' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R3' sifra, '17% dati avans bez prava na odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R4' sifra, '17 % primljene fakture uvoz nema prava odbitka' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'S1' sifra, '0% nabavka oslobođena PDV-a' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S2' sifra, '0% dobavljač nije PDV obveznik' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S3' sifra, '0% nabavka oslobođena PDV-a - ino usluge' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S4' sifra, '0% ino usluge bez PDV-a' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'U1' sifra, '17% akontirani PDV plaćen prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U2' sifra, '17% akontirani PDV plaćen prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U5' sifra, '17% akont.PDV plaćen prilikom uvoza - IM6' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U7' sifra, '17% uvoz bez prava odbitka - RUCNI' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'XY' sifra, 'Nije poreski relevantno - KONTRASTAV U6' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XZ' sifra, 'Nije poreski relevantno - Migracija ulazni' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
)
select p.sifra,
       p.vrijednost as stopa_baza, x.stopa as stopa_excel,
       p.ui as ui_baza, x.ui as ui_excel,
       p.naziv as naziv_baza, x.naziv as naziv_excel,
       p.kontna_klasa_prefix as klasa_baza
  from sif.acc_pdv_indikatori p
  join xl x on x.sifra = p.sifra
 where p.valid = 'Y'
   and (   nvl(p.vrijednost, -1) <> x.stopa
        or nvl(p.ui, '-') <> x.ui
        or upper(regexp_replace(p.naziv, '\s+', ' ')) <> upper(regexp_replace(x.naziv, '\s+', ' ')))
 order by p.sifra;

prompt
prompt === A4. Duplikati šifri u bazi (više aktivnih redova sa istom šifrom)
select sifra, count(*) as redova, listagg(id, ', ') within group (order by id) as id_lista
  from sif.acc_pdv_indikatori
 where valid = 'Y'
 group by sifra
having count(*) > 1;

prompt
prompt === B1. Mapiranje indikator -> tip dokumenta: razlike prema Excel tabeli
with xl as (
    select 'A1' sifra, '17% izdate fakture za robu i usluge PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'A2' sifra, '17% po osnovu potrošnje u neposlovne svrhe' naziv, 'I' ui, 17 stopa, '02' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A3' sifra, '17% PDV po osn. utvrđenih manjkova na teret rashoda perio' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A4' sifra, '17% PDV po osn. utvrđenih manjkova na teret odgov.lica' naziv, 'I' ui, 17 stopa, '07' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A5' sifra, '17% u gotovinskim računima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'A6' sifra, '17% usluge inodobavljača' naziv, 'I' ui, 17 stopa, '05' tip, '' polje_osn, '51' polje_pdv from dual
    union all
    select 'A7' sifra, '17% PDV na primljene avanse' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'B1' sifra, '17% izdate fakture za usluge PDV neobveznicima  RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B2' sifra, '17% izdate fakture za usluge PDV neobveznicima  Federacija BIH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B3' sifra, '17% izdate fakture za usluge PDV neobveznicima  Brćko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'B4' sifra, '17% PDV na primljene avanse od PDV neobveznika RS' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'B5' sifra, '17% PDV na primljene avanse od PDV neobveznika FBiH' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'B6' sifra, '17% PDV na primljene avanse od PDV neobveznika Brčko' naziv, 'I' ui, 17 stopa, '03' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'C1' sifra, '0% izdate fakture za robu (obveznici i neobveznici)' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'C4' sifra, '0% PDV na automobile' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C5' sifra, '0% PDV na isporuke izvršene EUFOR-u i NATO' naziv, 'I' ui, 0 stopa, '01' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C6' sifra, '0% primljeni avans - IPA fond' naziv, 'I' ui, 0 stopa, '03' tip, '11' polje_osn, '' polje_pdv from dual
    union all
    select 'C7' sifra, '0% prodaja nepokretnosti' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'D1' sifra, '17% knjižna odobrenja izdata PDV obveznicima' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '51' polje_pdv from dual
    union all
    select 'D2' sifra, '17% knjižna odobrenja izdata PDV neobvez. RS' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '33/51' polje_pdv from dual
    union all
    select 'D3' sifra, '17% knjižna odobrenja izdata PDV neobvez. FBiH' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '32/51' polje_pdv from dual
    union all
    select 'D4' sifra, '17% knjižna odobrenja izdata PDV neobvez. Brčko' naziv, 'I' ui, 17 stopa, '01' tip, '11' polje_osn, '34/51' polje_pdv from dual
    union all
    select 'D5' sifra, '0% knjižna odobrenja za isporuke oslob. PDV-a' naziv, 'I' ui, 0 stopa, '01' tip, '13' polje_osn, '' polje_pdv from dual
    union all
    select 'EX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'EZ' sifra, 'Nije poreski relevantno - Migracija izlazni' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'I1' sifra, '0% izvoz' naziv, 'I' ui, 0 stopa, '04' tip, '12' polje_osn, '' polje_pdv from dual
    union all
    select 'O1' sifra, '17% obračunski na primljene avanse' naziv, 'I' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XX' sifra, 'Nije poreski revevantno – tehnički indikator' naziv, 'I' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'N1' sifra, '17% nabavka nepokr. imovine sa pravom na odb. PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N2' sifra, '17% nabavka opreme sa pravom na odbitak PDV' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N3' sifra, '17% knjižna odobrenja sa pravom na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'N4' sifra, '5% knjižna odobrenja poljopr. sa pravom na odbitak' naziv, 'U' ui, 5 stopa, '06' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'N5' sifra, '17% knjižna odobrenja bez prava na odbitak' naziv, 'U' ui, 17 stopa, '06' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'O2' sifra, '17% obračunski na date avanse' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O3' sifra, '17% obračunski prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O4' sifra, '17% obračunski prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O6' sifra, '17% obračunski odobrenja kupcima' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'O7' sifra, '17% prim fakt bez prava na odb prethodna godina' naziv, 'U' ui, 17 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'P1' sifra, '17% primljene fakture za obrtna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P2' sifra, '17% primljene fakture za osnovna sredstva' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P3' sifra, '17% dati avansi potpuni odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P4' sifra, '5% na primljene fakture od poljoprivrednika' naziv, 'U' ui, 5 stopa, '01' tip, '23' polje_osn, '43' polje_pdv from dual
    union all
    select 'P5' sifra, '17% na usluge ino lica za nabavku obrtnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P6' sifra, '17% na usluge ino lica za nabavku stalnih sredstava' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'P7' sifra, '17% na usluge ino lica koje terete rashode' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '41' polje_pdv from dual
    union all
    select 'R1' sifra, '17% primljene fakture bez prava na odbitak' naziv, 'U' ui, 17 stopa, '01' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R2' sifra, '17% prim fak bez prava na odbitak - ino usluge' naziv, 'U' ui, 17 stopa, '05' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R3' sifra, '17% dati avans bez prava na odbitak' naziv, 'U' ui, 17 stopa, '03' tip, '21' polje_osn, '33' polje_pdv from dual
    union all
    select 'R4' sifra, '17 % primljene fakture uvoz nema prava odbitka' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'S1' sifra, '0% nabavka oslobođena PDV-a' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S2' sifra, '0% dobavljač nije PDV obveznik' naziv, 'U' ui, 0 stopa, '01' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S3' sifra, '0% nabavka oslobođena PDV-a - ino usluge' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'S4' sifra, '0% ino usluge bez PDV-a' naziv, 'U' ui, 0 stopa, '05' tip, '21' polje_osn, '' polje_pdv from dual
    union all
    select 'U1' sifra, '17% akontirani PDV plaćen prilikom uvoza obrtnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U2' sifra, '17% akontirani PDV plaćen prilikom uvoza stalnih sredstava' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U5' sifra, '17% akont.PDV plaćen prilikom uvoza - IM6' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '42' polje_pdv from dual
    union all
    select 'U7' sifra, '17% uvoz bez prava odbitka - RUCNI' naziv, 'U' ui, 17 stopa, '04' tip, '22' polje_osn, '33' polje_pdv from dual
    union all
    select 'XY' sifra, 'Nije poreski relevantno - KONTRASTAV U6' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
    union all
    select 'XZ' sifra, 'Nije poreski relevantno - Migracija ulazni' naziv, 'U' ui, 0 stopa, '' tip, '' polje_osn, '' polje_pdv from dual
),
baza as (select pdv_indikator_sifra sifra,
                listagg(distinct tp_code, ',') within group (order by tp_code) tipovi
           from sif.vw_uio_tip_dokumenta_pdv_indikatori
          where valid = 'Y'
          group by pdv_indikator_sifra)
select x.sifra, x.ui, x.tip as tip_excel, b.tipovi as tip_baza,
       case when b.tipovi is null and x.tip is not null then 'nedostaje mapiranje'
            when x.tip is null and b.tipovi is not null then 'u Excelu ne ulazi u KIF/KUF'
            else 'različito' end as napomena
  from xl x
  left join baza b on b.sifra = x.sifra
 where nvl(x.tip, '-') <> nvl(b.tipovi, '-')
 order by x.ui, x.sifra;

prompt
prompt === B2. Tipovi UIO dokumenata u bazi (provjera da postoje KUF 06 i KIF 07)
select ui, code, naziv, valid
  from sif.acc_uio_tipovi_dokumenata
 order by ui, code;

prompt
prompt === C1. Moduli i vrste naloga (za vrste dokumenata ulaznih faktura)
select id, sifra, opis, valid from sif.acc_moduli order by sifra;

select vn.ooj_id, vn.sifra, vn.naziv, vn.acc_modul_id, vn.valid
  from sif.sif_vrste_naloga vn
 where upper(vn.sifra) like 'UF%' or upper(vn.sifra) in ('AV', 'AVZ', 'KO', 'KZ', 'IF')
 order by vn.ooj_id nulls first, vn.sifra;

prompt
prompt === C2. Vrste dokumenata po modulu (DEFAULT = šablon, KOPIJA/VLASTITI = firma)
select m.sifra as modul, vd.sifra, vd.naziv, vn.sifra as vrsta_naloga,
       case when vd.ooj_id is null then 'DEFAULT' else 'FIRMA' end as tip_zapisa,
       count(*) as redova
  from sif.vrste_dokumenata vd
  join sif.acc_moduli m on m.id = vd.acc_modul_id
  left join sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id
 where vd.valid = 'Y'
   and m.sifra in ('UF', 'IF')
 group by m.sifra, vd.sifra, vd.naziv, vn.sifra, case when vd.ooj_id is null then 'DEFAULT' else 'FIRMA' end
 order by 1, 2, 5;

prompt
prompt === D1. Ulazne fakture po firmi i godini
select k.ooj_id, extract(year from k.datum_fakture) as godina, count(*) as faktura,
       sum(case when k.stornirano = 'Y' then 1 else 0 end) as storniranih,
       sum(case when k.storniran_id is not null then 1 else 0 end) as storno_dok,
       sum(case when k.glavna_knjiga_id is not null then 1 else 0 end) as proknjizenih,
       sum(case when k.document is not null then 1 else 0 end) as sa_dokumentom,
       round(sum(nvl(dbms_lob.getlength(k.document), 0)) / 1024 / 1024, 1) as dokumenti_mb
  from kuf k
 group by k.ooj_id, extract(year from k.datum_fakture)
 order by 1, 2;

prompt
prompt === D2. (N-02) Obrnuta naplata / uvoz: PDV dodat na iznos prema dobavljaču
select k.ooj_id, p.sifra, count(*) as faktura,
       sum(k.iznos_sa_pdv - k.iznos_bez_pdv) as pdv_na_obavezi_km
  from kuf k
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 where p.sifra in ('P5','P6','P7','R2','S3','S4','U1','U2','U5','R4','U7')
   and k.iznos_sa_pdv <> k.iznos_bez_pdv
 group by k.ooj_id, p.sifra
 order by 1, 2;

prompt
prompt === D3. (N-04) UIO KUF zapisi čiji PDV ne odgovara stopi indikatora fakture
select k.ooj_id, p.sifra, p.vrijednost as stopa, count(*) as zapisa
  from uio_kuf u
  join kuf k on k.id = u.faktura_id
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 where abs(nvl(to_broj(u.iznos_ulaznog_pdv), 0)
           - round(nvl(to_broj(u.iznos_fakture_bezpdv), 0) * nvl(p.vrijednost, 0) / 100, 2)) > 0.05
 group by k.ooj_id, p.sifra, p.vrijednost
 order by 1, 2;

prompt
prompt === D4. (N-06) Godina fakture različita od godine datuma fakture
select ooj_id, godina, extract(year from datum_fakture) as godina_datuma, count(*) as faktura
  from kuf
 where godina <> extract(year from datum_fakture)
 group by ooj_id, godina, extract(year from datum_fakture)
 order by 1, 2;

prompt
prompt === D5. (N-07) Isti interni broj više puta (firma, godina, broj)
select ooj_id, godina, broj, count(*) as puta, listagg(id, ', ') within group (order by id) as id_lista
  from kuf
 where storniran_id is null
 group by ooj_id, godina, broj
having count(*) > 1
 order by 1, 2, 3;

prompt
prompt === D6. (N-08) Mogući duplikati: isti dobavljač i broj fakture
select k.ooj_id, k.klijent_id, upper(trim(k.naziv_fakture)) as broj_fakture,
       count(*) as puta, listagg(k.id, ', ') within group (order by k.id) as id_lista
  from kuf k
 where k.stornirano = 'N' and k.storniran_id is null
 group by k.ooj_id, k.klijent_id, upper(trim(k.naziv_fakture))
having count(*) > 1
 order by 1, 4 desc;

prompt
prompt === D7. (N-09) Stavke izvoda / kalkulacije vezane za nepostojeću ulaznu fakturu
select 'glavna_knjiga_stavke' as tabela, count(*) as redova
  from glavna_knjiga_stavke s
 where s.kuf_id is not null and not exists (select 1 from kuf k where k.id = s.kuf_id)
union all
select 'kalkulacija_kuf', count(*)
  from kalkulacija_kuf c
 where c.kuf_id is not null and not exists (select 1 from kuf k where k.id = c.kuf_id);

prompt
prompt === D8. (N-13) Indikator fakture koji nije mapiran na tip dokumenta fakture
select k.ooj_id, p.sifra as indikator, t.code as tip, count(*) as faktura
  from kuf k
  join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
  left join sif.acc_uio_tipovi_dokumenata t on t.id = k.uio_tip_dokumenta_id
 where not exists (select 1
                     from sif.vw_uio_tip_dokumenta_pdv_indikatori m
                    where m.pdv_indikator_id = k.pdv_indikator_id
                      and m.uio_tip_dokumenta_id = k.uio_tip_dokumenta_id
                      and m.valid = 'Y')
 group by k.ooj_id, p.sifra, t.code
 order by 1, 2;

prompt
prompt === D9. Fakture po indikatoru (za prenos u PDV specifikaciju i vrste dokumenata)
select p.sifra, p.ui, count(*) as faktura
  from kuf k
  left join sif.acc_pdv_indikatori p on p.id = k.pdv_indikator_id
 group by p.sifra, p.ui
 order by 1;

prompt
prompt === Kraj provjere. Ništa nije izmijenjeno.
