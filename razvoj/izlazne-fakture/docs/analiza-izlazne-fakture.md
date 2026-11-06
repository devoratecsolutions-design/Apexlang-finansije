# Izlazne fakture (IF) – analiza i povezivanje sa Robnim modulom

Stanje: `main` poslije R25 (06.11.2026). Analiza obuhvata stranice aplikacije (`v2/izvor`), šemu baze (`ddl/`) i postojeće pakete. Cilj: modernizovati Izlazne fakture po obrascu Ulaznih faktura (v2) i povezati ih sa robnim skladištima (veleprodaja i maloprodaja), tako da faktura razdužuje zalihe.

---

## 1. Šta danas postoji

### 1.1 Stranice

| Stranica | Namjena | Stanje u v2 |
|---|---|---|
| 2 | Pregled modula Fakture (KPI, grafikoni) | prerađena (faza 1) |
| 50 | Lista izlaznih faktura | prerađena (pilot radne liste); filtrira po `A_SKLADISTE_ID` |
| 51 → 52 → 53 | **Čarobnjak nove fakture**: zaglavlje → stavke (APEX kolekcija `FAKTURA_STAVKE`) → pregled i snimanje | original, manje izmjene |
| 54 | Detalji fakture (modal): izmjena, štampa, slanje, fiskalizacija, knjiženje, storno, predračun | original |
| 56 | Predračun → faktura | original |
| 57, 58 | Izmjena zaglavlja / stavke postojeće fakture | original |
| 59, 60 | Knjiženje (više / jedna faktura) – `GLAVNA_KNJIGA_PKG.knjizi_kif(_single)` | original |
| 61, 105 | Fiskalizacija preko kase (middleware, `KASA_PKG`) | original |
| 62 | Storniranje (`FINANSIJE_PKG.storniraj_kif`) | original |
| 55, 64 | Slanje e-mailom i istorija slanja | original |
| 63 | Preuzimanje (download) | original |
| 65, 66 | Uplate kroz izvode i ručne uplate | original |
| 74 | Fakture po ugovoru | original |
| 3, 4, 108 | Kase (PIN, middleware, podešavanja) | original |
| 101, 102 | Izgled fakture (šablon štampe) | original |

### 1.2 Baza

- **KIF**: zaglavlje. Ima `skladiste_id`, `tip_cijene` (M / V), `status` (P / Z / K – kolona postoji, ali je aplikacija ne koristi), `vrsta_fakture_id` (SIF.VRSTE_DOKUMENATA, modul IF), `faktura_id` (veza KO / KZ / AVZ), `predracun_id`, `ugovor_id`, `pdv_indikator_id`, valuta i kurs, fiskalizacija (`fiskalizovano`, `fiskalni_racun*`), storno (`stornirano`, `storniran_id`), `glavna_knjiga_id`.
- **KIF_STAVKE**: stavka, JM, količina, cijena, rabat, PDV, iznos, PDV indikator. **Nema** skladišta po stavci, veze na dokument skladišta, nabavne cijene ni serijskih brojeva.
- **KIF_AVANSI_ZATVARANJE**: zatvaranje avansa konačnom fakturom.
- **KIF_EMAIL_HISTORY**, **SEC_KASE**, **KASA_MIDDLEWARE_LOG**, **UIO_KIF**.
- **OPERACIJE.faktura_id** postoji (dokument skladišta → faktura).
- Vrste (šifre u kodu): `if` faktura, `ifs` storno, `ko` / `kos` knjižno odobrenje, `kz` / `kzs` knjižno zaduženje, `av` / `avs` avans, `avz` zatvaranje avansa, `pr` predračun.

### 1.3 Paketi
- `FINANSIJE_PKG` (opšti paket od ~10.000 redova): `insert_kif`, `update_kif`, `calculate_kif`, `storniraj_kif`, `is_kif_editable`, `create_kif_from_predracun`, stavke, avansi, uplate.
- `GLAVNA_KNJIGA_PKG.knjizi_kif_single_if / _av`: knjiženje fakture (kupac, prihod, PDV) – **bez troška prodate robe**.
- `KASA_PKG`: JSON za fiskalni uređaj, URL middleware-a, upis fiskalnog računa.
- `SKLADISTA_PKG.insert_kif` (stari kod): pravi izlaz skladišta po fakturi – **poziv je zakomentarisan** (stranica 53 i `FINANSIJE_PKG`).

---

## 2. Nalazi

### 2.1 Veza sa skladištem – trenutno ne postoji
1. **Faktura ne razdužuje skladište.** Poziv `skladista_pkg.insert_kif` je zakomentarisan, a i stari kod koristi napuštene tipove kretanja (`ACC_TIPOVI_KRETANJA_ROBE`), ne v2 dokumente (vrste, status, cijena izlaza iz cjenovnika, serijski brojevi).
2. **Provjera stanja je nepouzdana**: kod ručnog dodavanja stavke je zakomentarisana (stranica 52), a kod dodavanja klikom na karticu artikla radi preko starog `stavke_pkg.get_stavka_stanje_kolicina` – ne preko v2 raspoloživog stanja (zaključeni ulazi − svi izlazi). Faktura može prodati robu koje nema.
3. **Tip cijene (VPC / MPC) se uzima sa firme** (`core.ooj_pkg.get_tip_cijene`), a ne sa skladišta. U robnom modulu tip određuje cjenovnik skladišta (V / M) – firma sa veleprodajom i maloprodajom ne može fakturisati ispravno iz oba.
4. **Skladište je obavezno za svaku fakturu** (`A_SKLADISTE_ID`, i lista je filtrirana po njemu): faktura za usluge mora imati skladište, a fakture drugog skladišta (ili bez skladišta) se ne vide na listi.
5. Cijena u stavkama dolazi iz cjenovnika skladišta (`stavke_pkg.get_stavka_cijena`) – to je ispravno, ali bez provjere prodaje ispod nabavne i bez veze sa zajedničkim prosjekom (R22).
6. Nema serijskih brojeva na prodaji, a robni modul ih vodi (izlaz mora imati raspoložive SB).
7. Povrat od kupca (knjižno odobrenje sa robom) ne vraća robu na skladište.

### 2.2 Struktura i kvalitet
1. **Poslovna logika je na stranicama**, protivno pravilima razvoja: snimanje fakture, stavki, brojača i zatvaranje avansa je PL/SQL proces stranice 53 (~200 redova); preračuni i provjere u dinamičkim akcijama stranica 51, 52, 58.
2. **Čarobnjak u 3 koraka sa APEX kolekcijom**: faktura ne postoji dok se ne prođe do kraja; izmjena kasnije ide kroz druge stranice (54 / 57 / 58). Ulazne fakture v2 imaju jednu formu sa IG stavkama.
3. **Status P / Z / K se ne koristi**: faktura je odmah „gotova“; zaključavanje se izvodi iz fiskalizacije i knjiženja (`is_kif_editable`).
4. **Brojač** se povećava poslije insert-a (`update_brojac`), broj se čita prije – dva korisnika istovremeno mogu dobiti isti broj.
5. PDV se čuva po stavci, ali nema PDV specifikacije fakture (kao `KUF_PDV` u Ulaznim fakturama) za UIO / PDV prijavu po indikatorima.
6. FK-ovi KIF tabela su isključeni (`DISABLE NOVALIDATE`).
7. `KIF.radni_nalog_id` referencira drugu aplikaciju (CAR_SERVICE) – mora ostati kompatibilno (`create_kif_from_predracun_car_service`).

---

## 3. Prijedlog: kako povezati IF sa Robnim modulom

### 3.1 Princip
- **Faktura je finansijski dokument, a skladište razdužuje dokument skladišta.** Zaključavanje fakture sa robom automatski pravi zaključen izlazni dokument skladišta, vezan za fakturu (`OPERACIJE.faktura_id`) – isti obrazac kao FDK / NIVM iz kalkulacije (R22 / R23).
- **Skladište se bira na fakturi** (samo robna skladišta korisnika), a ne globalno. Faktura samo sa uslugama nema skladište.
- **Tip cijene određuje cjenovnik skladišta:** veleprodaja → VPC (cijena bez PDV-a), maloprodaja → MPC (sa PDV-om).

### 3.2 Nove vrste dokumenata skladišta (robni modul)

| Vrsta | Naziv | Skladište | Tip | Cijena izlaza / ulaza |
|---|---|---|---|---|
| **OTP** | Otpremnica (prodaja) | veleprodaja | izlaz | zajednička prosječna nabavna iz cjenovnika (R22) |
| **PMP** | Prodaja u maloprodaji | maloprodaja | izlaz | MPC (zalihe MP se vode po MPC), RUC iz `NABAVNA_MP` |
| **POK** | Povrat od kupca | VP / MP | ulaz | cijena izlaza sa originalne otpremnice / prodaje |

Šifre su prijedlog. Za svaku vrstu: brojač, tip kretanja, raspoloživo, serijski brojevi, storno – kao kod ostalih izlaza.

### 3.3 Tok
1. **Faktura u pripremi (P)**: zaglavlje + stavke. Kod robe: skladište, provjera raspoloživog (zaključeni ulazi − svi izlazi), cijena iz cjenovnika (izmjenjiva po pravu), rabat, upozorenje ako je prodajna cijena ispod nabavne.
2. **Serijski brojevi**: za artikle sa SB biraju se na fakturi (isti dijalog kao p337: barkod, lista raspoloživih, QR).
3. **Zaključavanje fakture (Z)**: provjere (stanje, SB, period, PDV) → automatski **OTP / PMP** (zaključen, datum fakture, vezan za fakturu, cijena izlaza iz robnog modula). Od tog trenutka faktura se ne mijenja.
4. **Fiskalizacija** (maloprodaja, gotovinski računi): samo zaključena faktura; postojeći `KASA_PKG` ostaje.
5. **Storno fakture**: storno faktura + storno izlaznog dokumenta (roba se vraća po istoj cijeni).
6. **Knjižno odobrenje sa robom (povrat)**: količine iz originalne fakture (najviše fakturisano − već vraćeno) → **POK** na isto skladište. Knjižno odobrenje bez robe (popust) ne dira skladište.
7. **Knjiženje** (kasnija faza, zajedno sa knjiženjem dokumenata skladišta): faktura – kupac / prihod / PDV; OTP – trošak prodate robe / roba; PMP – i RUC i ukalkulisani PDV.

### 3.4 Varijanta: otpremnica prije fakture
U veleprodaji roba često izlazi otpremnicom, a faktura (zbirna) dolazi kasnije. Moguće je podržati oba smjera:
- **A – faktura pravi otpremnicu** (gornji tok) – jednostavnije, preporuka za fazu 1;
- **B – otpremnica pa faktura**: OTP u robnom modulu (kupac obavezan), faktura „Preuzmi otpremnice“ preuzima stavke jedne ili više nefakturisanih otpremnica (cijene iz cjenovnika na datum fakture).

### 3.5 Model podataka (skripta 22, prijedlog)
- `KIF_STAVKE`: `skladiste_id` (ako jedna faktura može imati više skladišta – vidi pitanje 3), `operacija_stavka_id` (veza na stavku izlaza), `nabavna_cijena` (za maržu / izvještaj), `redni_broj`, `opis`.
- `KIF_STAVKE_SB` ili korištenje `OPERACIJA_STAVKE_SB` dokumenta u pripremi (pitanje 2).
- `KIF`: koristiti postojeći `status` (P / Z / K); `zakljucano_datum`, `zakljucao`.
- `KIF_PDV` – PDV specifikacija po indikatoru (kao `KUF_PDV`).
- Novi paket **`KIF_PKG`** (v2, po uzoru na `KUF_PKG`): snimi zaglavlje / stavku, provjere, zaključaj / otključaj, storno, KO sa povratom, avansi; brojač pri zaključavanju ili snimanju sa zaključavanjem reda brojača. `RM_DOKUMENT_PKG`: vrste OTP / PMP / POK, `izlaz_po_fakturi`, `povrat_po_odobrenju`.

### 3.6 Forme (po obrascu Ulaznih faktura v2)
- **Lista (50)**: zadržati, dodati status (U pripremi / Zaključena / Fiskalizovana / Proknjižena / Stornirana), filter skladišta (opciono, ne obavezno), kolonu „Otpremnica“ (link na dokument skladišta).
- **Nova forma fakture** (jedna stranica, zamjenjuje 51 / 52 / 53 / 54 / 57 / 58): zaglavlje (kupac, vrsta, datumi, valuta, plaćanje, ugovor, skladište), IG stavke (artikal, JM, raspoloživo, količina, cijena, rabat, PDV, iznos, SB), PDV specifikacija, avansi, dokumenti; dugmad Snimi / Zaključaj / Fiskalizuj / Storniraj / Štampa / Pošalji.
- Predračun, avans i knjižno odobrenje / zaduženje ostaju vrste iste forme.
- Kase, šablon štampe i slanje se samo povezuju sa novom formom.

---

## 4. Pitanja za odluku

1. **Smjer**: faktura pravi otpremnicu (A), ili podržati i otpremnicu prije fakture (B)?
2. **Serijski brojevi**: biraju se na fakturi (preporuka), ili skladištar dopunjava otpremnicu (faktura tada pravi otpremnicu u pripremi – dva koraka)?
3. **Više skladišta na jednoj fakturi**: da (skladište po stavci), ili jedno skladište po fakturi (jednostavnije)?
4. **Izmjena cijene na fakturi**: dozvoljena svima, samo uz pravo, ili nikad (samo iz cjenovnika)? Rabat – po stavci i/ili na cijelu fakturu?
5. **Prodaja ispod nabavne / bez stanja**: zabrana ili upozorenje?
6. **Materijalna skladišta**: da li se prodaje i materijal (otpad, višak materijala) sa materijalnih skladišta?
7. **Maloprodaja**: da li se maloprodaja fakturiše pojedinačnim računima (fiskalni račun = faktura), ili dnevnim zbirnim razduženjem po fiskalnom izvještaju (kasa van aplikacije)?
8. **Predračun / ponuda**: da li predračun rezerviše robu (umanjuje raspoloživo)?
9. **Postojeće fakture**: ostaju kakve jesu (bez dokumenta skladišta), a nova logika važi od datuma prelaska?

---

## 5. Predloženi koraci (I1–I6)

| Korak | Sadržaj |
|---|---|
| I1 | Model (skripta 22): kolone KIF / KIF_STAVKE, KIF_PDV, vrste OTP / PMP / POK i brojači (SIF), migracija statusa postojećih faktura |
| I2 | `KIF_PKG` v2: snimanje, provjere, brojač, zaključavanje sa automatskim izlazom skladišta, storno |
| I3 | Nova forma fakture + lista 50 (status, skladište, otpremnica) |
| I4 | Knjižno odobrenje / zaduženje i avansi na novoj formi; povrat od kupca (POK) |
| I5 | Fiskalizacija i štampa na novoj formi; predračun → faktura; fakture iz ugovora |
| I6 | Test IF + Robni modul (zajedno sa testom R22–R25) |

Knjiženje (faktura + otpremnica + RUC) ide u posebnu fazu knjiženja dokumenata skladišta.

**Za početak:** pokrenuti `v2/sql/if_podaci_za_analizu.sql` (samo čita) i poslati ispis – pokazuje vrste IF, broj faktura sa robom i skladištem, tip cijene, kase i brojače, da se migracija i odluke zasnuju na stvarnim podacima.

---

## 6. Odluke korisnika (06.11.2026)

- **Prodajno mjesto / skladište** se bira na listi izlaznih faktura (stranica 50); izabrano skladište se upisuje u fakturu i razdužuje se ako faktura sadrži robu.
- **Serijski brojevi** na izlaznoj fakturi rade isto kao na ostalim izlaznim dokumentima skladišta (isti dijalog i pravila raspoloživih SB).
- **Jedna faktura = roba jednog skladišta.**

### Veza fakture i razduženja (prijedlog)
Robni modul **ne čita KIF direktno**. Uz fakturu postoji **vezani dokument skladišta** (OTP u veleprodaji, PMP u maloprodaji), 1 : 1 preko `OPERACIJE.faktura_id`, a stavke preko `KIF_STAVKE.operacija_stavka_id`:
- dokument nastaje kad se na fakturu doda prva roba i ostaje **u pripremi** dok je faktura u pripremi – zato odmah smanjuje raspoloživo (dvije fakture ne mogu prodati istu robu) i na njegove stavke se vežu serijski brojevi (postojeći dijalog);
- dokument se **ne mijenja u robnom modulu** (samo pregled i link na fakturu); stavke se sinhronizuju iz fakture (dodavanje, izmjena količine, brisanje), brisanje fakture briše dokument;
- **zaključavanje fakture zaključava dokument** u istoj transakciji (cijena izlaza iz cjenovnika se tada fiksira), datum dokumenta = datum fakture;
- storno fakture → storno dokumenta; knjižno odobrenje sa robom → POK (povrat od kupca) vezan za odobrenje;
- usluge ostaju samo na fakturi.

- **Storno (06.11.2026):** storno izlazne fakture je dokument iste vrste i sa istog brojača kao original, sa suprotnim predznakom (konzistentno sa ulaznim fakturama); knjiženje se radi iznova.
