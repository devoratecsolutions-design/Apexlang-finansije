# Finansije v2 – faza 1: navigacija, dashboardi, uniformne forme

Datum: 29.10.2026 · Osnova: APEXlang export aplikacije 290 (APEX 26.1) + DDL šema ACCOUNTING, SIF, CORE, HRM

## Sadržaj isporuke

| Fajl / folder | Šta je |
|---|---|
| `finansije-v2.zip` | Kompletna izmijenjena aplikacija (APEXlang, ista struktura kao originalni export) |
| `sql/01_indeksi.sql` | Indeksi koji nedostaju (najveći dobitak na performansama) |
| `sql/02_dashboard_views.sql` | Lagani view-ovi za dashboarde (`VW_DASH_*`) |
| `sql/03_dashboard_pkg.sql` | Paket `ACCOUNTING.DASHBOARD_PKG` – svi KPI brojevi na jednom mjestu |
| `forms_log.md` | Spisak svih automatskih izmjena na formama (stranica / stavka / dugme) |

## Redoslijed instalacije (DEV)

1. Kao **ACCOUNTING**, iz UTF-8 klijenta (SQLcl / SQL Developer / PL/SQL Developer sa UTF-8):
   1. `01_indeksi.sql` – po mogućnosti van radnog vremena (kreira indekse ONLINE i skuplja statistiku)
   2. `02_dashboard_views.sql` – na kraju ispisuje status view-ova; svi moraju biti `VALID`
   3. `03_dashboard_pkg.sql` – mora se kompajlirati bez grešaka
   4. Test: `select dashboard_pkg.kpi_fakture(<ooj_id>, 2026) from dual;` vraća HTML
2. Import `finansije-v2.zip` **pod novim ID-jem** (npr. 1290):
   - promijeniti alias (npr. `FINANSIJE_V2`) – alias mora biti jedinstven u workspace-u
   - **odmah isključiti automatizacije u kopiji** (Shared Components → Automations: amortizacija, održavanje OS, zaključavanje perioda), da se ne izvršavaju dvaput
   - pri testiranju paziti na fiskalizaciju, slanje faktura i mailove (kopija koristi iste servise)
3. Kad se odobri – import preko ID-ja 290 (prvo DEV, pa produkcija), uz prethodni backup export.

SQL skripte ne mijenjaju ništa što postojeća aplikacija koristi – stara verzija radi isto i nakon njih.

## Šta je urađeno

### 1. Navigacija i podjela modula
- Glavni meni poredan po grupama: **Poslovanje** (Fakture, Klijenti, Ugovori, Stavke i cjenovnici) → **Finansije** (Glavna knjiga, Izvodi i banke, Blagajna, PDV/UIO) → **Imovina i zalihe** (Osnovna sredstva, Robno-materijalno, Proizvodnja) → **Planiranje** (Budžet) → Konfiguracija, Administracija sistema.
- Jedinstvene Font APEX ikone (ranije miks slika i font ikona; Robno i UIO su imali istu ikonu).
- U svakom modulu sa podmenijem prva stavka je **Pregled** (dashboard modula) – iz bilo kog ekrana modula korisnik se jednim klikom vraća na pregled.

### 2. Početna stranica
- **Pregled poslovanja** – traka sa 5 pokazatelja: fakturisano u godini, ulazne fakture, potraživanja (+ dospjelo), obaveze (+ dospjelo), novčana sredstva (banka + blagajna). Svaki pokazatelj vodi na odgovarajući ekran, ali samo ako korisnik ima pravo na taj ekran.
- Grafikon **izlazne i ulazne fakture po mjesecima** i **starost potraživanja** (nije dospjelo / 1-30 / 31-60 / 61-90 / preko 90 dana).
- **Moduli po grupama** – kartice sa opisom, poštuju postojeće autorizacije i uslove (npr. Osnovna sredstva samo za doo/ad/vsp…).
- Zadržano: obavještenja, izbor godine / skladišta / kase, period zaključan do, brzi pristup.
- Preseljeno na **Glavna knjiga → Pregled**: salda po grupama konta (novčana sredstva, PDV, obaveze, potraživanja) i grafikon kretanja stanja na računu.
- Uklonjeni stari grafikoni neplaćenih faktura po klijentu (zamijenjeni preglednijim tabelama na dashboardu Faktura).

### 3. Dashboardi modula

| Modul | Stranica | Sadržaj |
|---|---|---|
| Fakture | 2 | 5 pokazatelja (KIF, KUF, nenaplaćeno, neplaćeno, za obradu: nefiskalizovano + neproknjiženo), starost potraživanja i obaveza, 10 najvećih kupaca, dospjela potraživanja po kupcu, dospjele obaveze |
| Glavna knjiga | 199 | nalozi u godini, neproknjiženi, stavke GK, posljednja PDV prijava; salda po grupama konta; kretanje stanja na računu; nalozi po vrsti |
| Blagajna | 450 | stanje, prijem/plaćanja ovog mjeseca, neproknjiženi dnevnici; promet po mjesecima; stanje po blagajnama |
| Robno-materijalno | 300 | dokumenti, otvorena trebovanja, otvorene kalkulacije, popisi u toku, skladišta; dokumenti po mjesecima; posljednji dokumenti |
| Proizvodnja | 400 | radni nalozi, planirana količina, normativi; nalozi po statusu; posljednji nalozi |
| Budžet | 500 | planirano, realizovano, % realizacije; plan i realizacija po org. jedinicama |
| PDV / UIO | 80 | UIO KIF, UIO KUF, posljednji generisani fajl; zapisi po mjesecima |
| Konfiguracija | 100 | sve postavke kao mreža kartica |
| Osnovna sredstva | 250 | traka pokazatelja iznad postojećih izvještaja (aktivna, knjigovodstvena vrijednost, u pripremi, otpisana) |
| Izvodi, Klijenti, Ugovori, Stavke | 1010, 10, 70, 20 | traka pokazatelja iznad postojeće liste |

Svi brojevi se računaju u `DASHBOARD_PKG` (jedno mjesto za izmjenu poslovne logike), a izgled određuje `css/finansije-ui.css`.

### 4. Uniformne forme
Forme su već ~80% bile ujednačene (drawer, plutajuće labele, dugmad u footeru). Ispravljena su odstupanja:
- 23 dugmeta sa engleskim nazivima → standard: **Odustani / Kreiraj / Ažuriraj / Obriši**
- 25 dugmadi bez ikone → standardni izgled (tekst + ikona, iste opcije kao ostatak aplikacije)
- 6 dugmadi **Obriši bez potvrde** → dodata potvrda (`APP_TEXT$DELETE_MSG`)
- 7 drawer-a osnovnih sredstava otvarao se s lijeve strane → sada svi s desne
- 10 polja koja su obavezna (bezuslovna NOT NULL validacija) a nisu bila tako označena → oznaka obaveznog polja
- 2 polja sa labelom iznad → plutajuća labela (PDV obrazac i administratorske stranice namjerno nisu dirane)
- Zajednički CSS: oznaka obaveznog polja, razmak polja, poravnanje cifara u iznosima

## Nalazi analize (za naredne faze)

**Performanse**
- `GLAVNA_KNJIGA_STAVKE` nije imala indekse na `GLAVNA_KNJIGA_ID`, `KIF_ID`, `KUF_ID`, `KONTNA_KLASA_ID`, `KLIJENT_ID`. `VW_KIF`/`VW_KUF` za svaku fakturu sumiraju uplate iz te tabele → bez indeksa full scan po redu. Riješeno skriptom 01.
- `VW_KIF` po svakom redu poziva `spell_pkg`, `acc_pkg.convert_bam` i 3 skalarna podupita, a liste faktura je koriste za prikaz. Preporuka za fazu 2: liste prebaciti na lakši view, a "iznos slovima" računati samo na štampi.
- `VW_OSNOVNA_SREDSTVA` po redu zove 7 funkcija iz `os_pkg` – lista OS će biti spora sa većim brojem sredstava.
- `deployments/default.json` ima `debugging: true` – na produkciji isključiti.

**Integritet podataka**
- 77 stranih ključeva bez indeksa, a većina FK-ova je **DISABLED** (npr. sve veze `GLAVNA_KNJIGA_STAVKE` → KIF/KUF/nalog). Baza ne čuva konzistentnost – preporuka: provjeriti siroče zapise i uključiti FK-ove (`ENABLE NOVALIDATE` kao prvi korak).
- `KIF.RADNI_NALOG_ID` referencira `CAR_SERVICE.RADNI_NALOZI` (druga aplikacija) – zavisnost između aplikacija.
- Uplate iz izvoda se u `VW_KIF` računaju kao `SUM(ABS(iznos))` – kad se nalog sa uplatom stornira, storno stavke (-iznos) se broje kao dodatna uplata. Dashboard view-ovi to ispravno isključuju; postojeći `VW_KIF`/`check_kif_uplaceno` imaju istu grešku (predlog za ispravku u fazi 2).

**Struktura aplikacije**
- Vjerovatno duplirane stranice: 408–412 (`radni-nalozi1` …, generisane forme sa engleskim nazivima) uz 401–407, te izvodi na dva mjesta – modul Izvodi (1010–1012) i Glavna knjiga → Izvodi (220–222). Treba odlučiti koje ostaju.
- 255 stranica, 167 modalnih; samo 5 koristi nativni Form region – sve ostalo ide kroz pakete (get/insert/update procedure). To je dosljedno i ostaje tako.

## Za potvrdu (poslovna logika KPI-jeva)
- Fakturisano/potraživanja uključuju fakture u statusu **P (u pripremi)**. Ako treba samo zaključene/proknjižene – jedna izmjena u `VW_DASH_KIF`/`VW_DASH_KUF`.
- Predračuni (vrsta naloga `pr`) su isključeni iz svih iznosa.
- Iznosi su u KM (`valuta_id = 1`); devizni računi i blagajne nisu uključeni u zbir.
- Budžet: uzima se posljednja verzija nakon rebalansa (`VW_DASH_BUDZET_AKTUELNI`).

## Pilot: Izlazne fakture (stranica 50) – nova radna lista

Uzorak za sve radne liste (fakture, nalozi, izvodi...). Kompatibilno sa APEX 24.2.

- **Filteri iznad liste (Smart Filters)** umjesto lijeve kolone: pretraga + chipovi Period, Naplata, Kupac, Vrsta fakture, Org. jedinica, Proknjiženo, Fiskalizovano, Stornirano (+ Sistemska samo za ESSCOM). Desno polje **Sortiraj**. Uklonjeni lijeva kolona i dugme za njeno skrivanje.
- **Lista**: broj fakture je link na detalje (vrsta ispod broja), datum sa valutom, iznosi poravnati desno sa zbirom, **status naplate** kao badge (Naplaćena / Djelimično / Nenaplaćena / Dospjela N d / Predračun / Stornirana), uplate kroz izvod i ručno kao obojeni iznosi (klik otvara isti dijalog kao ranije), **status** kao chipovi (Za knjiženje – klik vodi na knjiženje / Proknjižena, Fiskalizovana, UIO), **akcije** kopiraj / el. štampa / štampa sa potpisom u jednoj koloni. Uklonjene PNG ikone.
- Paginacija "1 – 50 od N" sa brojevima stranica.
- Ispravke usput: filter "Proknjiženo" ranije nije radio (kolona je u upitu bila URL, ne D/N); dugmad za štampu su imala isti HTML id u svakom redu – sada klase.
- Filter "Uplaćeno" (D/N) zamijenjen filterom **Naplata** sa 6 stanja; filter "Kreirao nalog" je i ranije bio isključen pa nije prenesen.

## Radne liste po obrascu pilota (12 stranica) + bočni meni

Obrazac sa stranice 50 primijenjen na sve radne liste koje su imale lijevi panel sa filterima:

| Stranica | Lista |
|---|---|
| 10 | Klijenti |
| 20 | Stavke |
| 40 | Ulazne fakture – **isti prikaz kao izlazne**: status plaćanja (Plaćena / Djelimično / Neplaćena / Dospjela N d / Stornirana), plaćanja kroz izvod i ručno, status knjiženja i UIO, pregled dokumenta |
| 70 | Ugovori |
| 200 | Nalozi za knjiženje |
| 271 | Održavanja osnovnih sredstava |
| 320 | Trebovanja |
| 330 | Operacije (dokumenti skladišta) |
| 350 | Nivelacija cijena |
| 1001 | Žiro računi |
| 1010 | Izvodi |
| 1900 | Kursna lista |

Na svim: filteri iznad liste (Smart Filters), bez lijeve kolone i dugmeta za njeno skrivanje, izgled liste kao na p50 (zaglavlje, razmaci, poravnanje cifara), ikona olovke umjesto slika, help tekst prilagođen.
Filteri koji nisu preneseni: rasponi iznosa na ulaznim fakturama (iznos se traži kroz pretragu), dva filtera po boji uplate na ulaznim (zamijenjeni filterom **Plaćanje**) i jedan filter koji je i ranije bio isključen (p350).

Namjerno nisu dirane: **251** Lista osnovnih sredstava (prebacivanje mapa/lista sa dva seta filtera), **371/372** materijalni i robni izvještaji (lijevo se bira izvještaj i parametri – tu panel ima smisla) i stranice sa lijevom kolonom bez filtera (izvještaji GK, izvodi u GK, skladišta, radni nalozi, budžet...).

**Bočni meni:** hover je sada neutralno siv (ranije zelen iz teme), aktivna stranica ima blagu sivu pozadinu i tanku zelenu liniju, a modul u kojem se korisnik nalazi samo podebljan tekst.

## Sve ostale pregledne stranice (55) + svjetliji hover u meniju

**Liste bez filtera** – dodata pretraga iznad liste i moderan izgled: 27 Lista cjenovnika, 72 Dokumentacija ugovora, 101 Izgled faktura, 103 Numeracija, 114 Grupe stavki, 121 Banke, 123 Potpisi, 263 Amortizacija, 277 Zajednički indikatori, 340 Kalkulacije, 360 Popisi, 401 Radni nalozi, 453 Tipovi promjena, 503 Budžeti. Liste u obliku "media list" (konfiguracija) dobile izgled redova sa naslovom i opisom.

**Izvještaji i filteri sa lijeve strane prebačeni iznad sadržaja:**
- 251 Lista osnovnih sredstava – "Pregledaj kao" i "Dodatna polja" u traci, filteri za mapu i listu iznad sadržaja (Prostorija više ne zavisi od Lokacije – prikazuju se prostorije iz rezultata; ranija kaskada na mapi je koristila pogrešnu stavku)
- 371 Materijalni i 372 Robni izvještaji – izbor izvještaja (i datum) u traci, filteri iznad svakog izvještaja
- 459 Izvještaji blagajne – izbor izvještaja, blagajna i period u traci

**Stabla** (109 Kontni okvir, 116 Klase OS, 125 Klase stavki, 130 Mjesta troška) – jedinstvena traka: pretraga dok se kuca (označava pogotke, otvara grane, broj rezultata, Esc briše), Proširi sve / Skupi sve. Logika je u novom zajedničkom fajlu `js/finansije-ui.js`; stare pretrage na stranicama uklonjene.

**Master-detail stranice ostaju sa lijevim panelom** (tu je to pravi obrazac – lijevo izbor, desno detalji), ali sa novim izgledom: 210 Izvještaji GK (meni izvještaja), 220 Izvodi (kalendar izvoda), 310 Skladišta, 421 Normativi, 509/519/521 Budžet po OJ.

**Izgled svih ostalih tabela** na preglednim i detaljnim stranicama: classic report (fin-list), Interactive Report (fin-ir), Interactive Grid (fin-grid) – ujednačena zaglavlja, razmaci, poravnanje cifara, ikona olovke.

**Bočni meni:** hover je vrlo svijetla zelena (#eef8f5) sa tamnim tekstom, aktivna stranica malo jača nijansa + tanka zelena linija.

Spisak po stranicama: `docs/pregledi_log.md`.

## Modul Stavke i cjenovnici (dorada po analizi i odlukama O-02 – O-10)

Analiza, opis korisnika i odluke: dokument „Stavke i cjenovnici – analiza i prijedlog modula“.

**Redoslijed instalacije:** `sql/04_stavke.sql` kao ACCOUNTING **prije** importa (forme koriste nove funkcije paketa; postojeće tabele se ne mijenjaju). Skripta prvo sačuva trenutni izvor paketa u `STAVKE_PKG_BACKUP_V2`, prikazuje greške kompajliranja i staje prije izmjene podataka ako paket nije ispravan. Jedina izmjena podataka: stavke bez klase premještaju se u klasu „Ostalo“ (ispisuje broj).

- **Meni modula:** Pregled, Stavke, Cjenovnici, Cijene, Klase stavki, Grupe za knjiženje (samo dvojno knjigovodstvo). Klase i grupe uklonjene iz Konfiguracije.
- **Stavka (22):** sekcije Osnovni podaci / Klasifikacija / Porez (samo PDV sistem) / Praćenje i status; šifra se predlaže (najveća numerička + 1, npr. 000011) i mora biti jedinstvena; klasa obavezna (podrazumijevano „Ostalo“); JM podrazumijevano „kom“; serijski broj za sve tipove; upozorenje kad grupa nema podešena konta; dugme Obriši samo za stavku koja se ne koristi u dokumentima; retroaktivni naziv samo na nefiskalizovanim i neproknjiženim fakturama. **Ispravljeno P-01:** proces brisanja više se ne izvršava pri „Ažuriraj“.
- **Cijena (26):** sekcije; nabavna opciona (usluge), marža samo kao pomoć za račun – ne čuva se (za postojeću cijenu računa se iz nabavne i VPC, inače prijedlog sa stavke), VPC obavezna; račun u pregledaču u oba smjera (nabavna + marža → VPC → MPC, ili MPC → VPC); van PDV sistema samo „Prodajna cijena“ (MPC = VPC); upozorenje kad je prodajna ispod nabavne.
- **Cjenovnik (28), Klasa (126), Grupa (115):** obavezna i jedinstvena šifra; brisanje samo kad nema cijena/stavki/podklasa; zabrana petlje u klasama.
- **Liste Stavke (21) i Cijene (25):** obrazac sa filterima iznad (kao izlazne fakture); stavke sa oznakom „Bez cijene“; cijene sa prekidačem „Prikaži istoriju cijena“ i oznakom „ispod nabavne“.
- **Paket STAVKE_PKG:** MPC po stopi stavke i PDV sistemu (ranije fiksno 1,17 – utiče i na zaključavanje kalkulacije), uvijek posljednja aktivna cijena, zaštite pri brisanju, nove funkcije `pdv_stopa`, `stavka_u_upotrebi`, `sljedeca_sifra`, `klasa_ostalo`.

**Za module koji slijede (nije dirano):** O-01 maloprodajni cjenovnik na fakturi (MPC kao osnovica + PDV), P-14 neispravan poziv `get_stavka_cijena` na stranici 52, nivelacija pri promjeni MPC, poreska oznaka za fiskalni uređaj.

### Stavke i cjenovnici – drugi krug (povratne informacije)
- **Pregled (20)** više ne prikazuje izlazne fakture. Sada: pokazatelji kataloga (aktivne stavke, bez cijene, aktivni cjenovnici, promjene cijena u 30 dana), stavke po tipu i po klasama, aktivne stavke bez cijene (klik otvara stavku), posljednje promjene cijena, aktivni cjenovnici. Pokazatelji su u `DASHBOARD_PKG.kpi_stavke` → **ponovo pokrenuti `sql/03_dashboard_pkg.sql`** (DEV i produkcija).
- **Lista stavki (21):** uklonjena kolona i filter „Cijene“; PDV kolona i filter samo za firme u PDV sistemu.
- **Cjenovnici (27, 28):** lista kao ostale liste modula (filteri iznad, vrsta, broj cijena, prodajna mjesta, status); forma u sekcijama.
- **Forme modula (22, 26, 28, 115, 126):** labele iznad polja, niža polja (36 px), bijela pozadina sa tankim okvirom i plavim fokusom umjesto sivih „plutajućih“ polja; obavezno prazno polje više nije obojeno roza.

### Stavke i cjenovnici – treći krug (izgled formi, nabavna cijena)
- **Forme:** svaka sekcija je svijetla kartica sa istaknutim naslovom (zelena oznaka, tamni podebljani tekst); polja preko cijele širine kolone (naziv stavke u punoj širini), labela iznad polja, crvena zvjezdica uz svako obavezno polje, manji razmaci, sve poravnato po istoj lijevoj liniji; Da/Ne izbori kao segmentirani prekidač.
- **Cijena (26):** nabavna cijena se samo prikazuje („iz kalkulacije“) i pri snimanju se uzima iz baze (posljednja aktivna cijena), ne iz forme – mijenja je samo kalkulacija u modulu Robno-materijalno. Marža ostaje pomoć za račun VPC.

## Modul Ulazne fakture – korak 2: hitne ispravke (30.10.2026)

Analiza, odluke i plan: dokument „Ulazne fakture – analiza i prijedlozi dorada“. Opis oba modula: `docs/Opis modula - Stavke i Ulazne fakture.docx`.

**Redoslijed instalacije:** `sql/06_kuf.sql` kao ACCOUNTING **prije** importa (forma ulazne fakture koristi novi paket `KUF_PKG`). Skripta pravi samo novi paket; postojeći paketi, tabele i podaci se ne mijenjaju. Na produkciji je uključena u `deploy_prod.sql`.

- **Preuzmi KUF (43):** ZIP sadrži samo dokumente izabrane firme (ranije svih firmi za taj mjesec).
- **Ulazna faktura (41):**
  - datum fakture mora biti u radnoj godini;
  - datum prijema i datum valute ne mogu biti prije datuma fakture;
  - isti dobavljač i isti broj fakture ne mogu se unijeti dva puta u istoj godini (stornirane fakture se ne računaju);
  - interni broj se uzima iz brojača tek pri snimanju, pa dva korisnika ne mogu dobiti isti broj;
  - PDV indikatori se nude iz mapiranja tip dokumenta/indikator, pa nema obračunskih i tehničkih indikatora; tip dokumenta se postavlja sam, a kombinacija se provjerava;
  - ugovor se bira samo među ugovorima izabranog dobavljača;
  - dokument nije obavezan i može imati do 10 MB.
- **Brisanje:** provjera je sada i na serveru (`KUF_PKG.obrisi`). Ne briše se faktura koja je proknjižena ili stornirana (i storno dokument), ima UIO zapis, plaćanja ili kalkulaciju, ili je u zaključanom periodu. Poruka kaže razlog. Brojač se vraća samo za godinu fakture.
- **Pregled dokumenta (42):** samo za fakturu izabrane firme.
- **`sql/kuf_provjera_indikatora.sql`:** skripta koja samo čita. Poredi PDV indikatore i mapiranje u bazi sa Excel tabelom i broji fakture na koje utiču nalazi. Pokrenuti je na DEV-u (po želji i na produkciji) i poslati ispis.

**Slijedi (koraci 3–5):**
- PDV pravila u šifarniku;
- PDV specifikacija fakture;
- vrste dokumenata (UF, UAV, UAVZ, UKO, UKZ);
- zatvaranje avansa;
- dokumenti u posebnoj tabeli;
- nova forma i prilagođavanje tipu preduzetnika;
- UIO KUF iz specifikacije.

## Pravila razvoja (dogovoreno 30.10.2026)
- Poslovna logika ide u bazu (paketi i view-ovi), a ne u SQL i PL/SQL napisan direktno na stranicama. Stranica samo poziva paket ili čita view: LOV-ovi preko view-a ili funkcije, validacije preko funkcija paketa, procesi preko procedura.
- Upiti moraju biti optimizovani: bez skalarnih podupita po redu tamo gdje ide join ili agregat, filteri po indeksiranim kolonama (ooj_id, godina), bez funkcija nad kolonama u WHERE, BLOB-ovi se ne čitaju u listama.
- SIF objekti se čitaju samo kroz objekte na koje ACCOUNTING ima pravo (view-ovi i paketi, ne tabele).

## Modul Ulazne fakture – korak 3: PDV pravila u šifarniku (30.10.2026)

**Rezultat provjere (DEV):**
- mapiranje indikator / tip dokumenta se potpuno slaže sa Excel tabelom;
- u KUF-u 216 od 222 fakture nema PDV indikator, a `KUF.godina` je kod starijih faktura često prazna;
- 5 grupa mogućih duplikata (dobavljač + broj fakture);
- jedna faktura ima S1 sa tipom 07.

**`sql/07_pdv_indikatori.sql`** pokrenuti kao **SIF**, prije importa:
- nove kolone `POLJE_OSNOVICE`, `POLJE_PDV`, `POLJE_KP` (32/33/34 ili KP = prema entitetu firme), `PRAVO_NA_ODBITAK`, `PDV_DOBAVLJACU`, `VRSTA`;
- nazivi su ujednačeni, cijelim riječima;
- D5 je dobio ispravan naziv, O1 stopu 17;
- O6 ima jedan aktivan red (ulazni);
- P8 i BU su deaktivirani, a XI i XU ostaju;
- rezervna kopija je u `ACC_PDV_INDIKATORI_BACKUP_V2`, a vraćanje ide skriptom `07_pdv_indikatori_vracanje.sql`.

**`sql/06_kuf.sql` (ponovo pokrenuti):** kada je `KUF.godina` prazna, provjera duplikata i vraćanje brojača uzimaju godinu iz datuma fakture.

## Modul Ulazne fakture – korak 4a: model podataka i KUF_PKG v2 (30.10.2026)

Korak 3 je pokrenut na DEV-u i prošao je bez greške. Ažurirano je 56 indikatora, a P8, BU i duplikat O6 su deaktivirani.

**`sql/08_kuf_model.sql`** (ACCOUNTING; poslije 07):
- nove tabele `KUF_PDV` (PDV specifikacija), `KUF_DOKUMENTI`, `KUF_AVANSI_ZATVARANJE` i `KUF_MIGRACIJA_V2`;
- nove kolone `KUF.VRSTA_DOKUMENTA_ID` i `VEZA_KUF_ID`. `IZNOS_SA_PDV` je uvijek iznos sa fakture dobavljača: kod obrnute naplate i uvoza jednak je iznosu bez PDV-a, a obračunati PDV za UIO postoji samo u PDV specifikaciji;
- vrste dokumenata UAV, UAVZ, UKO i UKZ za svaku firmu, sa brojačima (prefiks prema UF);
- prazna godina se popunjava iz datuma fakture;
- svaka faktura dobija vrstu dokumenta;
- dokumenti se kopiraju u `KUF_DOKUMENTI`;
- view `VW_KUF_PDV_SPEC` daje specifikaciju za svaku fakturu. Ako faktura nema svoje redove, specifikacija se izvodi iz zaglavlja, pa postojeća forma i knjiženje rade kao i do sada.
- Vraćanje: `08_kuf_model_vracanje.sql`, pa `06_kuf.sql`.

**`sql/09_kuf_pkg.sql`** (ACCOUNTING; poslije 08): `KUF_PKG` v2 sa svom logikom forme:
- `snimi` (broj iz brojača vrste dokumenta tek pri snimanju);
- `snimi_pdv_red`, `obrisi_pdv_red`, `preracunaj` (KM iz iznosa u valuti i kursa);
- `pripremi_specifikaciju`, `provjeri`, `zakljucaj`, `otkljucaj`;
- `storniraj` (sopstveni datum i broj, bez kopije dokumenta, negativni PDV redovi);
- `obrisi`, `dodaj_dokument` i `obrisi_dokument`.

Paket je kompatibilan sa trenutnom formom.

**Slijedi:** 4b (nova forma 41 i lista 40, na `KUF_PKG` i view-ovima) i 4c (zatvaranje avansa).

## Modul Ulazne fakture – korak 4b: nova forma i lista (30.10.2026)

Skripte 08 i 09 (stara numeracija) prošle su na DEV-u. Dodato je 64 vrste dokumenata i 36 brojača, popunjena je godina kod 216 faktura, a kopirano je 70 dokumenata.

**Nova numeracija SQL skripti:** `08_kuf_model.sql` → `09_kuf_views.sql` (novo) → `10_kuf_pkg.sql` (ranije 09). Stari `09_kuf_pkg.sql` je zastario.

- **`09_kuf_views.sql`:** `VW_KUF_LISTA`, `VW_KUF_FORMA`, `VW_KUF_VRSTE_DOKUMENATA`, `VW_KUF_PDV_INDIKATORI`, `VW_KUF_UGOVORI`, `VW_KUF_VEZE`, `VW_KUF_DOKUMENTI`. Stranice ne čitaju tabele direktno.
- **`10_kuf_pkg.sql`:** dodati su `provjeri_zaglavlje`, `kurs_prikaz` i `stope_json`, a redni broj PDV reda se dodjeljuje automatski.
- **Ulazna faktura (41), nova forma:**
  - stil `fin-form` sa sekcijama „Dokument i dobavljač“, „Datumi“, „Iznosi i PDV“ i „Skenirani dokument“;
  - traka sa brojem i statusom;
  - vrsta dokumenta i polje „Odnosi se na fakturu“ (KO, KZ, zatvaranje avansa);
  - PDV specifikacija kao tabela, sa PDV-om po stopi i zbirovima izračunatim u pregledaču;
  - kurs na datum fakture;
  - više dokumenata uz fakturu;
  - zaključana, proknjižena ili stornirana faktura je samo za čitanje;
  - firme van PDV sistema nemaju PDV indikatore ni UIO;
  - sva logika je u `KUF_PKG`.
- **Lista (40):**
  - čita `VW_KUF_LISTA` (bez BLOB-a);
  - status prikazuje „U pripremi“ i vrstu dokumenta;
  - novi filteri su Vrsta dokumenta i Status;
  - „Proknjiženo“ i „Za knjiženje“ vide se samo kod dvojnog knjigovodstva.
- **Pregled (42) i Preuzmi KUF (43):** dokumenti se čitaju iz `KUF_DOKUMENTI`.

## Modul Ulazne fakture – korak 4c: storno veze, avans, knjižno odobrenje, meni (31.10.2026)

**Baza** (pokrenuti ponovo kao ACCOUNTING: 08 → 09 → 10; sve se može pokretati više puta)

- 08: `KUF_PDV.IZVOR_RED_ID` (red originala / avansa iz kojeg je red preuzet) + indeks; kolona i u `VW_KUF_PDV_SPEC`.
- 09: `VW_KUF_FORMA` dobija veze (storno, original, faktura na koju se odnosi, zatvaranje avansa i iznos), `VW_KUF_VEZE.ima_zatvaranje_avansa`, `VW_KUF_LISTA.zatvoreno_avansom`, novi `VW_KUF_AVANSI` (zaključeni nestornirani avansi i raspoloživi iznos).
- 10 (KUF_PKG): `raspolozivo_reda`, `preuzmi_stavke`, `uskladi_avans`, `avans_raspolozivo`, `avans_za_zatvaranje`, `provjeri_avans`, `veze_html`; izmijenjeni `snimi`, `snimi_pdv_red`, `preracunaj`, `provjeri_zaglavlje`, `provjeri`, `zakljucaj`, `otkljucaj`, `storniraj`, `obrisi`, `razlog_zabrane_brisanja`.

**Pravila**

- Avansna faktura (UAV) ima tačno jednu stavku.
- Zatvaranje avansa (UAVZ) i knjižno odobrenje (UKO): stavke se pri snimanju preuzimaju sa avansa / originalne fakture (KO dobija indikator N3 / N4 / N5). Novi red se ne može dodati, indikator se ne mijenja, iznos se može samo smanjiti – najviše do raspoloživog (kolona *Raspoloživo* u specifikaciji).
- Ulazna faktura: prekidač *Faktura je konačna i u nju je uračunat avans* → izbor avansa istog dobavljača, prikaz raspoloživog, iznos (predlaže se raspoloživo, ne može biti veći). Pri snimanju se automatski pravi / mijenja / briše dokument zatvaranja avansa; zaključava se i otključava zajedno sa fakturom.
- Faktura sa zatvaranjem avansa ne može dobiti KO (nije u izboru i paket odbija); faktura sa KO ne može uračunati avans.
- Storno ulazne fakture stornira i njeno automatsko zatvaranje avansa; automatsko zatvaranje se ne stornira samostalno.
- U traci dokumenta su linkovi na povezane dokumente: storno dokument / stornirani original, originalna faktura ili avans, zatvaranje avansa, faktura uz koju je zatvaranje napravljeno.
- Lista (40): zatvaranje avansom ulazi u status plaćanja; storno dokument se prikazuje kao storniran.

**Meni:** modernizovan bočni meni – neutralni hover (#f1f3f6), aktivna stranica vrlo svijetla mint (#eaf8f2) sa tankom linijom #2fbf8f, ikona aktivnog modula zelena; nigdje više puna tamna zelena sa bijelim tekstom.

## Modul Ulazne fakture – korak 4d: valute, preuzimanje stavki u formi, više avansa (31.10.2026)

**Baza** (kao ACCOUNTING: 09 → 10; 08 se ne pokreće ponovo)

- 09: `VW_KUF_LISTA` dobija valutu i iznos u valuti; `VW_KUF_AVANSI` valutu; novi `VW_KUF_URACUNATI_AVANSI`; `VW_KUF_FORMA` umjesto jednog avansa ima `IMA_AVANS` (više avansa po fakturi).
- 10 (KUF_PKG): nove `valuta_sifra`, `valute_dozvoljene`, `avans_info`, `stavke_za_preuzimanje`, `snimi_avans_red`, `obrisi_avans_red`, `uskladi_avanse`; izbačene `uskladi_avans`, `avans_za_zatvaranje`, `provjeri_avans`; `snimi_pdv_red` prima `p_izvor_red_id`; `snimi` više sam ne preuzima stavke (dolaze iz forme), kod promjene veze briše redove stare veze; zatvaranje avansa je u valuti avansa i preračunava se po kursu na dan avansa.

**Forma 41**

- KO i zatvaranje avansa: stavke se popune u tabeli čim se izabere faktura (bez snimanja). Iznos se može samo smanjiti (provjera odmah u tabeli i u bazi), red se može obrisati, novi se ne dodaje, indikator se ne mijenja. Kolona *Raspoloživo* vidi se samo kod ova dva dokumenta; širine kolona smanjene da nema skrolovanja.
- Konačna faktura: tabela *Uračunati avansi* – više avansa, za svaki valuta, raspoloživo, iznos koji se zatvara (predlaže se raspoloživo) i iznos u KM. Iznosi se mogu ispravljati sve dok faktura nije zaključana; svaki red je automatski dokument zatvaranja avansa.
- Valute: avans i faktura moraju biti u istoj valuti ili u kombinaciji KM – strana valuta (npr. USD faktura i EUR avans nije dozvoljeno). U izboru se nude samo dozvoljeni avansi.
- Ispravljena greška „Set value not allowed for field“ pri izmjeni snimljenog reda: PDV kolona više nije zaključana na serveru (zaključava je pregledač), pa se izračun može upisati.

**Lista 40:** kod strane valute ispod iznosa u KM piše iznos u valuti; novi filter *Valuta* (nudi samo valute koje firma koristi).

## Modul Ulazne fakture – korak 4e: ispravke poslije prvog testa 4d (31.10.2026)

- Forma više ne skače na tabelu pri izboru vrste dokumenta (uzrok: ponovno iscrtavanje kolona u tabeli), pa se dobavljač i faktura mogu normalno izabrati.
- KO / zatvaranje avansa: bez automatskog praznog reda (zato su bila dva reda); preuzimanje važi samo za posljednji izbor fakture; red zatvaranja avansa se ne može obrisati; greška za prekoračen iznos se prikazuje jednom.
- Izbor fakture za KO i zatvaranje nudi samo fakture sa raspoloživim iznosom (prikazan u izboru); avans se zatvara/uračunava samo kad je zaključen.
- Dokument bez PDV specifikacije se ne može snimiti.
- Obavještenje o preuzetim stavkama je kratka napomena ispod tabele.
- Tabela uračunatih avansa: bez praznog reda, uže kolone; izbor avansa radi i prije izbora valute.
- Avansna faktura i storno dokument su podrazumijevano plaćeni (novi dokumenti u bazi, a lista ih tako prikazuje i za postojeće).
- Baza: `VW_KUF_VEZE` (status, raspoloživo), KUF_PKG (`provjeri_stavke`, provjere zaključenog avansa, brisanje reda zatvaranja, `uplaceno` za avans i storno).

## Modul Ulazne fakture – testiranje u pregledaču i ispravke 4f (31.10.2026)

Testirano u Chrome-u (firma 219, debug log): avans (unos, jedna stavka, zaključavanje), konačna faktura sa dva avansa (snimanje, ispravka iznosa, zaključavanje, storno sa oba zatvaranja), KO (preuzimanje, limit, raspoloživo za drugi KO), KO se ne nudi na fakturu sa zatvaranjem ni na avans, ručno zatvaranje avansa, valute (EUR faktura vidi EUR i KM avanse, USD faktura ne vidi EUR avans), prazan dokument, statusi u listi, automatsko zatvaranje poruke.

Ispravke:
- ORA-06502 pri snimanju novih redova: vrijednosti iz tabela idu kroz `kuf_pkg.broj` (tekst → broj, privremeni ID novog reda → null).
- Poslovne poruke paketa šalju se kao „Greška CORP-KUF: …“ (zbog CORE.ERROR_MANAGER) – vidi otvoreno pitanje ispod.
- Duplikat broja fakture traži se samo unutar iste vrste dokumenta; automatsko zatvaranje dobija opis „Zatvaranje avansa … uz …“.
- KO i KZ samo na ulaznu fakturu (izbor i baza); poruke se same zatvaraju nakon 5 s; jasan status u listi (U pripremi / Zaključena / Proknjižena).
- Avans: „Dodaj red“ nestaje kad postoji red; izbor avansa širi, bez duplog naslova; lista avansa se osvježi po promjeni dobavljača ili valute; dugme „Novi“ dobavljač skriveno na zaključenom dokumentu; valuta KO / zatvaranja se popuni prema izabranoj fakturi.

Odloženo (odluka 31.10.2026 – za sada ostaje ovako): CORE.ERROR_MANAGER poredi `p_error.message` (koji počinje sa „ORA-20201: “) sa 'Greška CORP-%', pa poslovne poruke i dalje vide kao generičku grešku. Potrebna jednoredna izmjena u handleru (poređenje preko `apex_error.get_first_ora_error_text`).

## Modul Ulazne fakture – korak 4g: dokumenti, zaključene veze, datum prijema (31.10.2026)

- KO, KZ i zatvaranje avansa samo na **zaključene** fakture (izbor u formi i `provjeri_zaglavlje`).
- Datum prijema ne može biti prije datuma fakture (kalendar i `provjeri_zaglavlje`).
- Dokumenti: više fajlova odjednom uz komentar (`KUF_DOKUMENTI.OPIS`, 08), mogu se dodavati i na zaključenu fakturu (dugme „Dodaj dokumente“), brisanje iz liste dok je faktura u pripremi; prikaz kao kartice (ikona po tipu, komentar, datum, veličina).
- Lista (40): kolona **Dokumenti** umjesto Akcije – ikonica spajalice sa brojem dokumenata; otvara stranicu 42.
- Stranica 42 je sada pregled svih dokumenata fakture (Otvori u novom tabu / Preuzmi) preko aplikacijskog procesa `KUF_DOKUMENT` i `kuf_pkg.posalji_dokument` (provjera firme, bez BLOB-a u listi).
- Baza: 08 (kolona OPIS), 09 (`VW_KUF_DOKUMENTI.opis`), 10 (`dodaj_dokument` sa više fajlova i opisom, `posalji_dokument`, nove provjere).

## Modul Ulazne fakture – korak 4h: kompaktni dokumenti, komentar po dokumentu, valuta veze (31.10.2026)

- Dokumenti u formi: manja zona za dodavanje (jedan red), lista jedan red po dokumentu; komentar se upisuje u redu za svaki dokument i snima odmah (`kuf_pkg.opis_dokumenta`), polje komentara na nivou fakture uklonjeno.
- KO, KZ i zatvaranje avansa preuzimaju valutu sa povezane fakture / avansa i polje se ne može mijenjati (forma: `VEZA_VALUTA`; baza: `snimi` uvijek upisuje valutu veze).
- Ispravljeno iz testa 4g: kartice dokumenata imaju svoju klasu (`fin-prilog`, ranije se sudarale sa `fin-doc` u listama), forma ne skače pri izboru KO, naslov sekcije Dokumenti.

## Modul Ulazne fakture – korak 4i: UIO samo za zaključene + analiza UIO KUF (31.10.2026)

- Provjereno u pregledaču (4h): kompaktni dokumenti, komentar po dokumentu se snima, valuta zaključana kod KO bez skakanja forme.
- UIO: izbačeno dugme „Snimi i unesi u UIO KUF“ (nova faktura je u pripremi); dugme „UIO KUF“ samo za zaključenu fakturu u PDV sistemu; str. 84 nudi samo zaključene fakture i provjerava `kuf_pkg.razlog_zabrane_uio`; meni PDV / UIO vidi svaka firma u PDV sistemu (ranije samo dvojno knjigovodstvo).

Analiza UIO KUF (stanje): ručni unos (84) računa PDV fiksno 17 % i ne koristi PDV specifikaciju; automatski unos (90, `nalog_to_kuf_uio`) radi samo iz proknjiženih naloga (nema za prosto knjigovodstvo), indikatori su zakucani u kodu, poreski period po datumu fakture, KO/negativni iznosi zakomentarisani; iznosi su tekst (VARCHAR2); nema veze reda UIO sa stavkama, ni zabrane izmjene fakture poslije unosa u UIO osim provjere u brisanju. Prijedlog: UIO KUF iz `KUF_PDV` + polja indikatora (POLJE_OSNOVICE/POLJE_PDV/POLJE_KP, PRAVO_NA_ODBITAK, PDV_DOBAVLJACU), period po datumu prijema, automatski pri zaključavanju ili grupno po periodu, KO/storno kao negativni slogovi.

Odluka (31.10.2026): UIO moduli se za sada ne diraju. Dorada UIO KUF (iz PDV specifikacije, period po datumu prijema – Pravilnik čl. 66; avansi po plaćanju – čl. 67; KO/KZ po promjeni osnovice – čl. 69) radi se zajedno sa PDV prijavom, nakon modula knjiženja. Redoslijed: ulazne fakture → knjiženje → PDV prijava + UIO.

## Ulazne fakture – datumi na našem jeziku (31.10.2026)
- Forma 41: uklonjene APEX provjere min. datuma (poruke na engleskom). Datum prijema, datum valute i zaključan period provjerava KUF_PKG.provjeri_zaglavlje (nova poruka: „Datum fakture je u zaključanom periodu (zaključano do …)“).

## Modul Robno-materijalno – korak R1: dokumenti skladišta, prijemnica (31.10.2026)
- Odluke: vrste dokumenata iz SIF.VRSTE_DOKUMENATA (modul MAT); prijemnicu pravi skladištar ručno, zaključava je kalkulacija; zaglavlje: skladište, broj, datum, dobavljač (obavezan), broj i datum otpremnice, opis; stare stranice 330/331 zamijenjene odmah.
- SQL (redom): 11_rm_model.sql (kolone VRSTA_DOKUMENTA_ID, STATUS, OTPREMNICA_BROJ/DATUM, REDNI_BROJ, indeksi, brojač PRI, stare prijemnice -> PRI), 12_rm_pkg.sql (RM_DOKUMENT_PKG), 13_rm_views.sql (VW_RM_*).
- p330 Dokumenti skladišta: filteri vrsta / status / dobavljač, statusi U pripremi / U kalkulaciji / Zaključen / Proknjižen / Storniran, upozorenje za nekompletne serijske brojeve, dugme „Novi dokument“ (meni vrsta koje nova forma podržava – za sada Prijemnica). Stari dokumenti se otvaraju na pregledu (p332).
- p331 Dokument skladišta: zaglavlje, stavke (artikal, JM, količina, SB, napomena), pregled serijskih brojeva po stavci.
- p337 Serijski brojevi: barkod / ručni unos / QR opseg (razdjelnici novi red, razmak, ; , : /), uvoz iz xlsx/csv (prva kolona), brisanje; provjera duplikata i SB koji je već na stanju; ne može više SB od količine.
- Pravila u bazi: usluga se ne prima; količina > 0 (cijela za SB artikle); artikal jednom po dokumentu; datum ne u budućnosti / zaključanom periodu / drugoj godini; otpremnica ne poslije prijema; skladište se ne mijenja dok ima stavki; dokument u kalkulaciji ili zaključen se ne mijenja ni briše.

## Modul Robno-materijalno – korak R2: skladišta i izbor skladišta (31.10.2026)
- Uzrok poruke „Neophodno je da konfigurišete formu numeracije“ na ulaznim fakturama: APP_GODINA = najveća godina sa aktivnim brojačem, a 11_rm_model je napravio brojač PRI i za 2027. 14_rm_skladista.sql ga uklanja (broj 0); 11_rm_model ubuduće pravi brojače samo do tekuće godine. Poslije skripte ponovo se prijaviti.
- Izbor skladišta premješten sa početne stranice u module: na stranicama Robno-materijalno (300, 320–372) i Izlazne fakture (50) je izbornik „Skladište“ (globalna stranica). Aplikacijska kalkulacija A_SKLADISTE_ID bira važeće skladište korisnika (prvo po šifri ako nijedno nije izabrano).
- p310 Skladišta: nova lista (vrsta Robno/Materijalno + cjenovnik, OJ, zaduženi radnik, konto samo za dvojno, broj artikala i vrijednost na stanju, korisnici, status), filteri, link na stanje.
- p311 Skladište: sekcije Osnovni podaci / Organizacija / Adresa / Korisnici skladišta; cjenovnik samo za robno (obavezan); tip cijene i valuta se više ne biraju; konto samo za dvojno knjigovodstvo; zaduženi radnik iz SIF.ACC_RADNICI; kad skladište ima dokumente mijenjaju se samo radnik, adresa, fax, napomena i aktivnost; deaktivacija nije moguća dok ima robe; brisanje samo bez dokumenata i podređenih skladišta.
- p312 Dodavanje korisnika skladišta (više odjednom); p313 Stanje skladišta (interaktivni izvještaj – šifra i naziv odvojeno, izvoz u Excel/PDF).
- Navigacija: Robno-materijalno → Dokumenti → Svi dokumenti / Prijemnice / Nova prijemnica.
- SQL: 14_rm_skladista.sql (radnik HRM -> SIF.ACC_RADNICI sa mapiranjem po imenu, SKLADISTA_MIGRACIJA_V2, VW_SKLADISTA, VW_RM_SKLADISTA, VW_RM_SKLADISTE_STANJE, RM_SKLADISTE_PKG).

## Zalihe robe / Materijal i oprema – korak R3 (31.10.2026)
- Modul Robno-materijalno razdvojen na dva modula u meniju i na početnoj: „Zalihe robe“ (robna skladišta: dokumenti, kalkulacije, nivelacije, popis, skladišta, robni izvještaji) i „Materijal i oprema“ (ostala skladišta: dokumenti, trebovanja, kalkulacije, popis, skladišta, materijalni izvještaji). Kontekst modula: A_RM_MODUL (ROB/MAT) iz linkova menija; skladište se pamti posebno po modulu (A_SKL_ROB / A_SKL_MAT); aplikacijski proces RM_KONTEKST.
- Izbor skladišta: oznaka u traci naslova (ikona, „Skladište“, šifra · naziv) sa padajućom listom i pretragom (procesi RM_SKLADISTA / RM_SKLADISTE_IZBOR); nudi samo skladišta modula dodijeljena korisniku. Izlazne fakture rade sa robnim skladištima.
- Podmeni sa vrstama dokumenata uklonjen iz navigacije (dokumenti se biraju na listi dugmetom „Novi dokument“).
- Dokument (p331): stavke kao kod ulaznih faktura (tabela u sekciji forme, bez trake za pretragu), kolone Na skladištu, Jed. cijena, Iznos, ukupno ispod tabele. Ulaz: cijenu unosi korisnik (predlaže se prosječna). Izlaz: jedinična prosječna cijena na datum dokumenta (samo zaključeni dokumenti), količina najviše do raspoloživog.
- Količine (RM_DOKUMENT_PKG.stanje / obradjeno / raspolozivo): stanje = svi ulazi i izlazi; obrađeno = zaključeni; raspoloživo = zaključeni ulazi − svi izlazi (nezaključeni izlaz odmah smanjuje raspoloživo). Stanje skladišta (p313) prikazuje sve tri količine, prosječnu cijenu i vrijednost (zaključeno).
- Forma skladišta: „Skladište je aktivno“ u posebnom redu; tip skladišta nudi samo tipove modula; novo skladište dobija tip modula.
- SQL ponovo: 12_rm_pkg.sql, 13_rm_views.sql, 14_rm_skladista.sql.
- Ispravka R3: linkovi menija modula više ne prenose A_RM_MODUL u URL-u (greška checksum-a na stranicama 300–372); modul se postavlja AJAX-om (proces RM_MODUL, finRm.idi) pa se otvara stranica bez argumenata.

## Zalihe robe / Materijal i oprema – korak R4 (01.11.2026)
- Dokument (p331): šira forma (xl), sekcije „Dokument“ i „Dobavljač i ugovor“ jedna pored druge; polje „Opis / komentar“ (višeredno); polje Ugovor (ugovori izabranog dobavljača) – i na listi dokumenata; iz stavki uklonjena Napomena.
- Količine i cijene: unos prihvata 23.45 i 23,45 (tačka ili zarez), prikaz bez prateće tačke (23 umjesto 23.); isto pravilo u JS (finIg.num) i u bazi (kuf_pkg.broj).
- Zatvaranje bilo kog modalnog prozora (snimi, obriši, zatvori, X) ponovo učitava stranicu ispod – na svim stranicama modula (300–372, 311, 331).
- Serijski brojevi (p337): odvojeni „Barkod čitač ili ručni unos“ (Enter odmah snima broj i osvježava listu, AJAX) i „QR kod“ (opseg, dugme); brisanje broja osvježava samo listu i brojač; zatvaranje osvježava dokument.
- Pregled modula (p300) i KPI (dashboard_pkg.kpi_zalihe): samo skladišta korisnika u tom modulu (VW_RM_KORISNIK_SKLADISTA); naslov modula u putanji (&A_RM_NAZIV.).
- Skladište: zaduženi radnik je obavezan.
- SQL ponovo, ovim redom: 12_rm_pkg.sql, 13_rm_views.sql, 14_rm_skladista.sql, 03_dashboard_pkg.sql.

## Korak R5 – serijski brojevi i cijena (01.11.2026)
- Serijski brojevi (p337): izbor načina unosa (Barkod / ručno – podrazumijevano, Iz liste raspoloživih – samo izlazni dokumenti, QR kod, Excel / CSV); vidi se samo izabrana sekcija. Lista raspoloživih serijskih brojeva skladišta (VW_RM_SB_STANJE) sa pretragom i dodavanjem jednim klikom; izlaz prima samo raspoložive serijske brojeve (RM_DOKUMENT_PKG.sb_raspoloziv).
- Zatvaranje unosa serijskih brojeva osvježava samo regione dokumenta (stavke, serijski brojevi), ne cijelu stranicu.
- Jedinična cijena na stavkama formatirana (hiljade, 2 decimale; više samo kad postoje).
- SQL ponovo: 12_rm_pkg.sql, 13_rm_views.sql.

## Kalkulacija – korak R6 (01.11.2026)
- Odluke: nabavnu vrijednost stavke čine raspoređeni iznosi svih faktura i zavisnih troškova; kalkulacija obuhvata više prijemnica istog skladišta; datum kalkulacije nije datum prijemnice (ne smije biti prije); cjenovnik se ne mijenja (cijene se samo čitaju za prijedlog); otključavanje samo administrator, samo materijalna skladišta i dok roba nije izdata; štampa u sljedećoj fazi; uvoz/JCI i naknadni trošak se ne rade.
- 15_rm_kalkulacija.sql: kolone KALKULACIJE (skladiste_id, status, nacin_raspodjele), KALKULACIJA_KUF (iznos, sa_pdv), KALKULACIJA_STAVKE (osnovica, ručni iznos, nabavna vrijednost/cijena, marža, VPC, PDV, MPC, ulazna cijena prijemnice), tabela KALKULACIJA_TROSKOVI, brojač KALK, paket RM_KALKULACIJA_PKG, view-ovi VW_RM_KALKULACIJE, VW_RM_KALK_FAKTURE, VW_RM_KALKULACIJA_STAVKE.
- Fakture: samo zaključene UF sa raspoloživim iznosom; firma van PDV sistema raspoređuje sa PDV-om, firma u PDV sistemu bira; jedna faktura na više kalkulacija (iskorišteni udio). Zavisni troškovi bez fakture (opis, iznos).
- Raspodjela: po vrijednosti (podrazumijevano), po količini, linearno, ručno; razlika zaokruživanja na stavku najveće vrijednosti.
- Robna skladišta: marža %, VPC, MPC (MPC = VPC + PDV artikla), međusobni preračun u formi, upozorenje na negativnu maržu; prijedlog VPC/MPC iz važećeg cjenovnika skladišta.
- Zaključavanje: cijene u prijemnice (nabavna; za robna i marža, PDV, MPC), prijemnice zaključene (roba raspoloživa). Otključavanje vraća ulazne cijene prijemnica.
- p340 lista (prijemnice, fakture, nabavna vrijednost, status) i p341 forma: osnovni podaci + pregled iznosa (fakture, troškovi, za raspodjelu, raspoređeno, razlika), tabovi Prijemnice / Fakture i troškovi / Stavke i cijene.

## Kalkulacija – korak R7: raspodjela po fakturi / trošku (01.11.2026)
- Način raspodjele se bira za svaku fakturu i svaki zavisni trošak (po vrijednosti, po količini, linearno, ručno); svaki izvor se posebno raspoređuje na stavke prijemnica (nova tabela KALKULACIJA_RASPODJELA). Nabavna vrijednost / cijena stavke = zbir raspodjela svih izvora; na tabu cijena se vidi i sastav nabavne cijene po izvorima.
- Dodavanje ili uklanjanje prijemnice, dodavanje fakture ili troška poništava dotadašnju raspodjelu; izmjena iznosa, PDV opcije ili načina raspodjele poništava raspodjelu tog izvora.
- Novi tab „Raspodjela“: lista izvora sa stanjem (raspoređeno / nije), dugme „Raspodijeli fakture i troškove“, tabela raspodjele izabranog izvora (ručni unos iznosa kod ručne raspodjele).
- Tab „Nabavne i prodajne cijene“: marža, VPC i MPC se unose tek kad su svi izvori raspoređeni; zaključavanje provjerava da je svaki izvor potpuno raspoređen.
- SQL ponovo: 15_rm_kalkulacija.sql.

## Kalkulacija – korak R8: nova forma (01.11.2026)
- Kalkulacija više nije modalni prozor nego obična stranica (dugmad u traci naslova, povratak na listu).
- Prvi tab „Prijemnice, fakture i troškovi“ radi i za novu kalkulaciju: prijemnice se biraju u tabeli (kao fakture), zajedno sa fakturama i troškovima, pa se sve snima odjednom.
- Tab „Raspodjela“: lijevo fakture i troškovi sa obojenim indikatorom (zeleno = raspoređeno, žuto = nije); klik učitava samo panel raspodjele (AJAX) sa izabranim načinom raspodjele; raspodjela po artiklima (zbirno iz svih prijemnica, iznos se dijeli na redove prijemnica srazmjerno količini); dugme „Sačuvaj raspodjelu“ čuva bez ponovnog učitavanja; „Raspodijeli sve automatske“.
- Tab „Nabavne i prodajne cijene“: cijene po artiklu (bez prijemnice i vrijednosti prijemnice), kolone nabavna cijena pa nabavna vrijednost; poseban region „Sastav nabavne cijene“ – klik na artikal prikazuje fakture/troškove i raspoređene iznose.
- SQL ponovo: 15_rm_kalkulacija.sql (RM_KALKULACIJA_PKG: izvor_json, snimi_raspodjelu_izvora, rasporedi_json, stanje_json, snimi_prijemnicu_red, snimi_cijene_artikla).

## Test Zalihe robe / Materijal i oprema – korak R9 (01.11.2026)
Testirano na DEV 1290 (firma 219): pregled, izbor skladišta i modula, dokumenti (nova prijemnica, stavke sa decimalnom količinom i cijenom, ugovor, snimanje), serijski brojevi (barkod + Enter, duplikat, zatvaranje), skladišta i stanje, kalkulacija od kreiranja do zaključavanja (prijemnica + faktura, raspodjela po vrijednosti, marža/VPC/MPC, sastav nabavne cijene). Računica raspodjele i iznosa provjerena (npr. 23,45 × 1.234,50 = 28.949,03; 1.000 KM po vrijednosti → 935,38 + 64,62).

**Pronađene greške i ispravke**
- **Poslovne poruke iz tabela (IG) bile su skrivene:** greška iz paketa pri snimanju stavki (npr. „Prijemnica je uključena u kalkulaciju…“, „Unesite jediničnu cijenu…“) prikazivala se kao „Greška CORP-… kontaktirajte administratora“. Procesi redova (stavke dokumenta, sve tabele kalkulacije) sada prikazuju tekst greške; neočekivane greške i dalje idu u log sa referentnim brojem.
- **Bočni meni:** u modulu Materijal i oprema bila je označena stavka Zalihe robe (oba modula dijele stranice) – podmeni je sada vidljiv samo za aktivni modul. Na podstranicama (stanje skladišta, forma kalkulacije, dokument, serijski brojevi) meni je gubio označenu stavku – stavke menija su sada aktivne i za svoje podstranice.
- **Bočni meni – kontrast:** otvoreni podmeni je imao zelenu podlogu teme sa tamnim tekstom; podloga uklonjena (svijetli meni kao ostatak aplikacije).
- **Naslov kartice pregledača** na pregledu modula: „Zalihe robe“ / „Materijal i oprema“ umjesto „Robno - materijalno“.
- **Poruke na engleskom:** „… must have some value“, „1 error has occurred“ → „… je obavezno polje.“, „Pronađena je 1 greška.“, „Broj grešaka: %0.“
- **Stavke dokumenta:** na ulaznom dokumentu cijena se više ne popunjava sa „0.00“ (polje ostaje prazno za unos; prijedlog samo kad postoji prosječna cijena); unesena cijena se formatira (12,4 → 12.40).
- **Ugovor** na dokumentu izgledao je kao onemogućeno (sivo) polje – izbor iz liste sada ima bijelu pozadinu.
- **Serijski brojevi:** u izboru načina unosa bio je prazan prvi segment – uklonjen.
- **Stanje skladišta (313):** količine su se prikazivale sa tačkom na kraju („3.“) – sada 3 decimale („3.000“).
- **Lista skladišta:** „u sastavu: -“ više se ne prikazuje kad skladište nema nadređeno.
- **Kalkulacija – cijene:** tabela cijena preko cijele širine (ranije su VPC/PDV/MPC bili skriveni horizontalnim skrolom), sastav nabavne cijene ispod; VPC iz marže zaokružen na 2 decimale, marža na 2 decimale (ranije se poslije snimanja prikazivalo 19.9999 umjesto 20).

**Provjereno – radi ispravno:** KPI i grafikon po modulu i skladištima korisnika, izbor skladišta, lista dokumenata i meni „Novi dokument“, decimalna količina, iznos i zbir, osvježavanje liste po zatvaranju forme, serijski brojevi (Enter, duplikat odbijen, osvježavanje regiona), stanje/obrađeno/raspoloživo, kreiranje kalkulacije u prvom koraku, KUF sa raspoloživim iznosom i PDV opcijom, raspodjela i indikatori, zaključavanje (prijemnica zaključena, vrijednost zaliha 1.000 KM).

**Napomene (nije greška):** filteri liste dokumenata se pojavljuju kao prijedlozi pri kucanju u pretragu (isto kao ostale liste); izbor modula i skladišta je vezan za sesiju – dva taba iste prijave dijele izabrani modul.

**SQL ponovo:** `14_rm_skladista.sql` (view VW_RM_SKLADISTA – nadređeno), `03_dashboard_pkg.sql` (poslije 14, kao i ranije), `15_rm_kalkulacija.sql` (zaokruživanje marže/VPC). Zatim import aplikacije.

## Kalkulacija – korak R10: prijemnice, načini raspodjele, zavisni troškovi kroz fakturu (02.11.2026)
- **Lista prijemnica** (izbor u tabeli prijemnica): šifra skladišta · broj · datum · dobavljač (bez broja stavki i vrijednosti). Kolona „Stavki“ uklonjena iz tabele.
- **Izbor prijemnice odmah popunjava red** (datum, dobavljač, vrijednost) – ranije su polja ostajala prazna do snimanja (AJAX `PRI_INFO`, `RM_KALKULACIJA_PKG.prijemnica_info`).
- **Načini raspodjele:** Ručno – ukupan iznos (R, kao do sada), **Ručno – jedinična cijena (J, novo)**, Automatski – po vrijednosti / po količini / linearno.
  - Jedinična cijena: na tabu Raspodjela unosi se cijena po artiklu, iznos reda = cijena × količina, a ukupan iznos izvora (fakture / troška) se sam preračunava i upisuje u izvor (ne može preći raspoloživo fakture). Iznos u tabeli fakture / troška kod ovog načina nije obavezan. Unesena cijena se čuva (KALKULACIJA_RASPODJELA.cijena).
- **Automatski po vrijednosti** raspoređuje srazmjerno vrijednosti stavke do tada raspoređenoj iz ostalih izvora (ručni, po količini, linearno), a ne vrijednosti prijemnice (koja je najčešće 0). Ako ništa nije raspoređeno – po vrijednosti prijemnice, pa po količini. „Raspodijeli sve automatske“ ide redom: po količini / linearno, pa po vrijednosti; poslije snimanja ručne raspodjele izvori po vrijednosti se automatski preračunavaju. U panelu raspodjele kolona „Do sada raspoređeno“ (umjesto „Vrijednost prijemnica“).
- Dodavanje novog izvora više ne briše ručno upisane raspodjele drugih izvora – poništava se samo raspodjela izvora po vrijednosti (njihov ključ se mijenja). Dodavanje/uklanjanje prijemnice i dalje poništava sve.
- **Zavisni troškovi kroz fakturu:** sekcija „Zavisni troškovi“ ima kolonu „Ulazna faktura (opciono)“ – izabrana zaključena UF (prevoz, carina...) sa raspoloživim iznosom, sa/bez PDV-a, kao kod faktura; bez fakture ostaje ručni unos (opis + iznos). Opis se popunjava brojem fakture i dobavljačem ako se ne upiše. Raspoloživo fakture uzima u obzir i fakture i zavisne troškove svih kalkulacija; ista faktura ne može dva puta u istu kalkulaciju. Nove kolone KALKULACIJA_TROSKOVI.kuf_id (FK na KUF), sa_pdv.
- KUF_PKG: faktura vezana za kalkulaciju kao zavisni trošak ne može se obrisati (provjera dinamičkim SQL-om, da 10 ne zavisi od 15).
- JS `finansije-ui.js` (finRmKalk) i `.min.js`, verzija u application.apx.
- **SQL ponovo:** `15_rm_kalkulacija.sql`, zatim `10_kuf_pkg.sql` (samo paket). Zatim import aplikacije.
- **Git:** `v2/izvor` u Git-u je bio stariji od službenog `v2/import/finansije-v2.zip` (01.11.2026) – stranice 0, 1, 311, 312, 330, 340, app-items, app-processes, breadcrumbs, ikone. Na ovoj grani izvor je usklađen sa zip-om (zip je osnova), pa su na to dodate R10 izmjene. Dorade se ubuduće rade na sadržaju službenog zip-a.

## Kalkulacija – ispravke poslije testa R10 i izlazni dokumenti – korak R11 (02.11.2026)
**Kalkulacija (ispravke)**
- Promjena „Iznos“ (sa / bez PDV-a) ili fakture odmah upisuje raspoloživi iznos u kolonu „Raspoređuje se“ (ranije se mijenjalo samo raspoloživo).
- Ručno upisan iznos se više ne snima kao 0: kod načina „Ručno – jedinična cijena“ upisani iznos ostaje (početni), a preračunava se tek kad se unesu cijene na tabu Raspodjela. Podrazumijevani način raspodjele novog reda je „Automatski – po vrijednosti“, a iznos „Bez PDV-a“.
- Lista kalkulacija (340): ispod broja je prikazivan tekst „{if OPIS/}“ umjesto opisa – ispravljeno.

**Izlazni dokumenti materijalnog skladišta (R11)**
- Nove vrste dokumenata (modul MAT): **IZD – Izdatnica** i **IIN – Izlaz na investiciju u toku** (`16_rm_vrste_izlaz.sql`, kao SIF: dodaje vrste svakoj firmi koja ima vrstu PRI), brojači IZD- / IIN- (`11_rm_model.sql`).
- Samo u materijalnom modulu: meni „Novi dokument“ ih prikazuje samo u modulu Materijal i oprema, a paket odbija dokument na robnom skladištu.
- **Mjesto troška** (SIF.ACC_MJESTA_TROSKA, nova kolona OPERACIJE.MJESTO_TROSKA_ID): za firme sa dvojnim knjigovodstvom (doo, a.d., SP dvojno) obavezno polje; ostalima se ne prikazuje. Na listi dokumenata se vidi u koloni „Dobavljač / mjesto troška“.
- Cijena stavke je prosječna cijena skladišta na datum dokumenta i ne može se mijenjati (računa paket; ponovo se računa pri izmjeni datuma i pri zaključavanju). Količina najviše do raspoloživog.
- Forma dokumenta (331): kod izlaza nema sekcije „Dobavljač i ugovor“ (ni obaveznog dobavljača); „Datum prijema“ → „Datum dokumenta“. Novo dugme **Zaključaj** za izlazne dokumente (provjera stavki i serijskih brojeva, mjesta troška i obrađenog stanja na datum dokumenta; cijene po prosjeku na datum) i **Otključaj** (samo administrator, dok dokument nije proknjižen). Prijemnicu i dalje zaključava kalkulacija.
- **SQL (redoslijed):** `16_rm_vrste_izlaz.sql` (SIF) → `11_rm_model.sql` → `12_rm_pkg.sql` → `13_rm_views.sql` → `15_rm_kalkulacija.sql` (ACCOUNTING). Zatim import aplikacije.

## Dokumenti skladišta – korak R12 (02.11.2026)
- **Mjesto troška se nije prikazivalo:** forma je zavisila od `APP_TIP_PREDUZETNIKA_SIFRA` (puni ga glavna aplikacija 200 pri prijavi; u aplikaciji 1290 bez prijave preko 200 je prazan). Dvojno knjigovodstvo se sada čita iz firme u bazi (`RM_DOKUMENT_PKG.dvojno`: CORE.FIRME + SIF.SIF_TIPOVI_PREDUZETNIKA – doo, ad, vsp sa dvojnim knjigovodstvom); stavka aplikacije je samo rezerva, a ako se tip firme ne može utvrditi, mjesto troška se traži.
- **Izlaz na osnovno sredstvo (IOS)** i **Izlaz na sitni inventar (ISI)** – samo materijalna skladišta, mjesto troška kao kod izdatnice, **zaduženi radnik** (SIF.ACC_RADNICI, nova kolona OPERACIJE.ZADUZENI_RADNIK_ID) obavezan.
- **Međuskladišni prenos (MPR)** – izlaz sa skladišta na drugo skladište firme (polje „Na skladište“, obavezno; cijena = prosječna cijena na datum). Zaključavanjem prenos postaje „na čekanju“ za prijem; preuzet prenos se ne može otključati.
- **Međuskladišni prijem (MPP)** – ne unosi se ručno: izborom „Međuskladišni prijem“ u meniju Novi dokument prikazuju se zaključeni prenosi upućeni na izabrano skladište koji još nisu preuzeti, sa svim stavkama (količina × cijena). „Preuzmi“ pravi prijem sa količinama, cijenama i serijskim brojevima iz prenosa (datum = danas, ne prije datuma prenosa), veza na prenos (OPERACIJE.VEZA_ID) i odmah je zaključen – izmjene, brisanje i otključavanje nisu mogući. Na dokumentu se vidi „Sa skladišta“ i veza na prenos. Nema mjesta troška ni zaduženog radnika.
- Lista dokumenata (330): kolona „Dobavljač / veza“ prikazuje i zaduženog radnika i prenos (na / sa skladišta, preuzeto / čeka prijem).
- Novi view VW_RM_PRENOSI_CEKANJE; VW_RM_DOKUMENTI: zaduženi radnik, skladište prenosa, veza, preuzeto.
- **SQL (redoslijed):** `16_rm_vrste_izlaz.sql` (SIF) → `11_rm_model.sql` → `12_rm_pkg.sql` → `13_rm_views.sql` (ACCOUNTING). Zatim import aplikacije.

## Dokumenti skladišta – korak R13: reversi, unos po serijskom broju, ispravka zaključavanja (02.11.2026)
- **Greška pri „Zaključaj“:** paket je cijene stavki računao funkcijom koja čita OPERACIJA_STAVKE unutar UPDATE iste tabele (ORA-04091 – mutating table); isto i pri izmjeni datuma izlaznog dokumenta. Sada se cijena računa u petlji, pa upisuje. Procesi Zaključaj / Otključaj / Obriši prikazuju poslovnu poruku umjesto opšte greške.
- **Revers (REV)** i **Revers – povrat (REVP)** – obavezan zaduženi radnik. **Revers servis (RSV)** i **Revers servis – povrat (RSVP)** – obavezan komitent (SEC_KLIJENTI, OPERACIJE.KLIJENT_ID). Svi moduli.
- **Povrat:** dostupno za povrat = zaključeni reversi tog radnika / komitenta – svi povrati (bez tekućeg dokumenta), po artiklu; veća količina se odbija (stavka i zaključavanje). Cijena povrata = prosječna cijena sa reversa partnera (ne mijenja se). Kolona „Raspoloživo“ prikazuje dostupno za povrat; izbor artikla (poslije snimanja zaglavlja) nudi samo artikle dostupne za povrat. Dugme **Preuzmi dostupno za povrat** dodaje / dopunjava sve dostupne artikle. Serijski broj na povratu mora biti zadužen reversom kod istog partnera. Radnik / komitent se ne mijenja dok povrat ima stavke. Povrat se zaključava dugmetom Zaključaj; revers na koji postoji povrat se ne može otključati.
- **Unos izlaza po serijskom broju** (snimljen izlazni dokument u pripremi): polje „Serijski broj (barkod / QR)“ iznad stavki – skeniranje / Enter (ili Dodaj). Artikal se prepoznaje po serijskom broju raspoloživom na skladištu; postojećoj stavci se povećava količina, inače se dodaje nova stavka (količina 1), i upisuje se serijski broj. QR kod može sadržati više brojeva (razdjelnici razmak, novi red, ; , : /). Neraspoloživ, dupli ili višeznačan broj se prijavljuje.
- **SQL (redoslijed):** `16_rm_vrste_izlaz.sql` (SIF) → `11_rm_model.sql` → `12_rm_pkg.sql` (ACCOUNTING). Zatim import aplikacije (`13_rm_views.sql` nije mijenjan od R12).

## Dokumenti skladišta – korak R14 (02.11.2026)
- Reversi (REV, REVP, RSV, RSVP) samo u materijalnom modulu (meni i paket).
- **Međuskladišni prijem:** dvije forme – gore zaglavlja prenosa na čekanju (klik na prenos ga bira, „Preuzmi“ pravi prijem), dolje stavke izabranog prenosa (šifra, artikal, JM, količina, cijena, iznos, serijski brojevi).
- **Povrati reversa:** region „Preostalo za povrat po reversima“ – svaki zaključeni revers radnika / komitenta sa izdatom i preostalom količinom po artiklu (povrati se raspoređuju na najstarije reverse); osvježava se pri promjeni radnika / komitenta. Novi view VW_RM_REVERS_PREOSTALO.
- **Lista dokumenata (330):** pored izbora skladišta je izbor vrste dokumenta; „Novi dokument“ odmah otvara izabranu vrstu (bez menija sa svim vrstama; izbor se pamti u pregledaču). Kolona „Opis“ je odmah iza kolone „Dobavljač / veza“.
- **Izbor skladišta:** meni se otvara udesno (ranije se dio sa šiframa skrivao ispod raširenog navigacionog menija), šire polje, šifra se ne lomi.
- **SQL:** `12_rm_pkg.sql`, `13_rm_views.sql` (ACCOUNTING). Zatim import aplikacije.

## Dokumenti i izvještaji skladišta – korak R15 (02.11.2026)
- **Lista dokumenata (330):** promjena vrste dokumenta odmah osvježava listu i prikazuje samo dokumente te vrste; „Novi dokument“ otvara izabranu vrstu (URL sa kontrolnom sumom daje proces NOVI_DOKUMENT_URL). Podrazumijevana vrsta je prva po redu (ulazi, pa izlazi), izbor se pamti u pregledaču.
- **Tabelarne popup liste** (novi dijeljeni LOV-ovi `rm-*` u lovs.apx): prijemnice u kalkulaciji (skladište, broj, datum, dobavljač), fakture u kalkulaciji i zavisnim troškovima (broj, dobavljač, broj fakture, datum, raspoloživo), artikli na dokumentu (artikal, JM, serijski broj), dobavljač, mjesto troška (šifra, naziv, OJ), zaduženi radnik (ime, interni broj, email), komitent (naziv, JIB, PIB, grad), skladište prenosa (šifra, naziv, vrsta).
- **Međuskladišni prenos:** lista skladišta na koja se prenosi više ne sadrži skladište sa kog se prenosi (i za novi dokument).
- **Izvještaji (371) – nova stranica.** Ranije: izbor iz liste (zavisila od tipa firme iz glavne aplikacije, pa je u 1290 bila prazna), stari pogledi bez novih vrsta dokumenata, dva prazna izvještaja (popisne liste, zaduženja sitnog inventara). Sada katalog po grupama (po uzoru na Odoo / Business Central: stanje, kretanje, vrednovanje, starost zaliha) i zajednički parametri (skladište ili sva skladišta modula, datum / period, artikal, mjesto troška, vrsta):
  - Stanje i vrijednost: **Stanje zaliha na dan** (količina, prosječna cijena, vrijednost), **Popisna lista** (umjesto praznog izvještaja; polja Popisano / Razlika za štampu), **Starost zaliha** (novo: artikli na stanju bez izlaza duže od N dana).
  - Promet: **Kartica artikla** (početno stanje, hronološki ulazi / izlazi sa stanjem količine i vrijednosti), **Promet po artiklima** (novo: početno, ulaz, izlaz, krajnje – količina i vrijednost), **Pregled dokumenata** (sve vrste v2, status, partner / MT / radnik, otvaranje dokumenta).
  - Potrošnja i zaduženja: **Potrošnja po mjestu troška** (izdatnice, investicija, OS, sitni inventar – zamjenjuje stari „finansijski promet po kontima i mjestu troška“), **Zaduženja** (otvoreni reversi po radniku / komitentu i zaduženja OS / sitnog inventara – zamjenjuje prazan „Pregled zaduženja sitnog inventara“).
  - Kontrola: **Dokumenti na čekanju** (dokumenti u pripremi, prijemnice bez kalkulacije ili sa nezaključenom kalkulacijom, prenosi koji čekaju prijem – zamjenjuje stari pregled trebovanja).
  - Izvještaji koriste zaključene dokumente (knjigovodstveno stanje). Štampa preko Jasper servera (dugme sa stare stranice, radila samo za KP) nije prenesena.
- Novi view-ovi (`17_rm_izvjestaji.sql`): VW_RM_PROMET, VW_RM_ZADUZENJA, VW_RM_NA_CEKANJU.
- **SQL:** `17_rm_izvjestaji.sql` (ACCOUNTING, poslije 12 i 13). Zatim import aplikacije.

## Dorade poslije testa Materijalnog modula – korak R16 (03.11.2026)
Po testu iz R15 i odgovorima korisnika (K = kritično, V = važno, S = sitnije, N = novi zahtjev).
- **Poruke grešaka (V5) – `CORE.ERROR_MANAGER.F_APEX_ERROR_HANDLER` (`18_core_error_manager.sql`, šema CORE):**
  - poslovne poruke iz paketa (`raise_application_error` -20000 … -20999, npr. „Za povrat je dostupno 2 – količina ne može biti veća“, „Na revers postoji povrat…“, „Iznos troška je veći od raspoloživog…“) prikazuju se sa stvarnim tekstom – bez ORA- koda, prefiksa „Greška CORP-RM:“ i steka; ne loguju se kao sistemske. Uzrok ranije opšte poruke: kad proces pozove `apex_error.add_error` u exception bloku, APEX grešci dodijeli i SQL kod (-20201), pa je handler takvu poruku tretirao kao sistemsku.
  - sistemske greške se i dalje loguju u ERROR_LOG, a korisnik dobija poruku prema vrsti greške (obavezno polje, preduga vrijednost, format broja / datuma, zapis ne postoji, zapis zaključan od drugog korisnika, povezani zapisi, nedostupan paket, nema prava…) uz referentni broj CORP-<id>.
  - vraćanje: `18_core_error_manager_vracanje.sql` (tijelo paketa iz ddl/core_ddl.sql).
- **Kalkulacija:**
  - **K3 – „Automatski – po vrijednosti“:** faktura robe se raspoređuje po vrijednosti prijemnice (količina × cijena prijemnice); zavisni trošak po vrijednosti – po vrijednosti koju su artiklima rasporedile fakture robe (dok one nisu raspoređene – po vrijednosti prijemnice). „Raspodijeli sve automatske“: prvo fakture robe, pa zavisni troškovi (po vrijednosti zadnji). Promjena raspodjele fakture robe preračunava već raspoređene zavisne troškove po vrijednosti.
  - **Novi način „Automatski – cijene sa prijemnice“ (P, samo za fakturu robe):** iznos po artiklu = vrijednost sa prijemnice; iznos fakture u kalkulaciji = zbir vrijednosti prijemnica (ne smije preći raspoloživo fakture).
  - **Poništavanje raspodjele:** dugmad „Poništi raspodjelu“ (izabrani izvor) i „Poništi sve raspodjele“. Poništavanje ručne raspodjele (ili fakture robe) poništava i automatske raspodjele koje od nje zavise; dodavanje, brisanje ili izmjena izvora poništava sve automatske raspodjele (ponovo „Raspodijeli sve automatske“).
  - **S3:** kolona „Raspoređeno iz ostalih izvora“ (ranije „Do sada raspoređeno“) ne uključuje izabrani izvor.
  - **V9:** zaključena kalkulacija koja se ne može otključati prikazuje razlog (npr. roba je već izdavana).
  - **S15:** tab „Nabavne cijene“ u materijalnom modulu („Nabavne i prodajne cijene“ ostaje u robnom).
- **Dokumenti skladišta:**
  - **K4:** izlaz se provjerava i na datum dokumenta (raspoloživo tog dana) i ukupno; stavka izlaza i zaključavanje se odbijaju kad artikal na datum dokumenta nema nabavnu cijenu (ranije snimljeno sa 0,00).
  - **N3 – datum:** datum bira korisnik samo na prijemnici; svi ostali dokumenti imaju današnji datum (datum unosa) koji se ne mijenja (polje je samo za čitanje, provjera i u paketu).
  - **N3 – storniranje:** dugme „Storniraj“ na zaključenom izlaznom dokumentu (IZD, IIN, IOS, ISI, MPR, REV, RSV) bez veznog dokumenta (prenos nije preuzet, na revers nema povrata, nije proknjižen). Pravi se storno dokument iste vrste sa današnjim datumom (količine sa suprotnim predznakom, zaključen), original dobija status „Storniran“. Storniran dokument i storno se ne računaju u stanje, prosječnu cijenu, raspoloživo, serijske brojeve i izvještaje (kao do sada za storno; dopunjeno da storno dokument ni u jednom proračunu ne utiče na stanje). RM_DOKUMENT_PKG: `razlog_zabrane_storna`, `storniraj`, `datum_slobodan`.
  - **V6:** unos po serijskom broju samo Enterom (dugme uklonjeno); stavke, serijski brojevi i zbir se osvježavaju bez ponovnog učitavanja stranice, polje se prazni (ranije se poslije ponovnog učitavanja nova stavka nije vidjela). Region serijskih brojeva postoji na svakom izlazu u pripremi.
  - **V8:** mjesto troška se prikazuje za sve tipove firme na IZD / IIN / IOS / ISI; obavezno ostaje samo za dvojno knjigovodstvo.
  - **P2:** međuskladišni prenos samo na skladište istog modula (lista i provjera u paketu); prenos materijal ↔ roba dolazi kroz posebne dokumente.
  - **S1 / S2:** jedinstven format brojeva 123,000.00 (početni zbir više nije „0,00“); cijene na 4 decimale (prosječna cijena, cijena povrata, nabavna cijena kalkulacije, prikaz); iznos dokumenta = zbir zaokruženih iznosa redova.
  - **S4 / S5:** lista – „1 stavka / 3 stavke / 5 stavki“; izbor „— sve vrste —“ (lista svih dokumenata skladišta; za novi dokument treba izabrati vrstu); lista prikazuje i storno / storniran.
  - **S6:** kolona „Stanje“ na ulazima, „Raspoloživo“ na izlazima, „Dostupno za povrat“ na povratima; na zaključenom dokumentu se ne prikazuje.
  - **S7:** povrat – „Nema preostalih količina za povrat kod izabranog radnika / komitenta…“.
  - **S13:** serijski broj – „ne postoji na skladištu“ / „nije raspoloživ (već je izdat ili prijem nije zaključen)“; poruka bez vodećeg razmaka.
  - **S14:** naslov regiona: „Mjesto troška“ (IZD, IIN), „Mjesto troška i zaduženje“ (IOS, ISI), „Zaduženje“ (reversi).
  - **S17:** tabela stavki u dijalogu preračunava širine kolona poslije otvaranja (prazna tabela više nema skupljene kolone).
- **Izvještaji (371):**
  - **K1:** parametri bez fiksnih širina (automatski raspored) – „Potrošnja po mjestu troška“ više ne ruši stranicu; nepoznat izbor izvještaja vodi na prvi u katalogu.
  - **K2:** stari izvještaji uklonjeni iz menija (Materijal i oprema → Izvještaji otvara katalog).
  - **N1:** svi izvještaji su interaktivni (pretraga, filter, sortiranje, grupisanje, zbirovi, preuzimanje Excel / PDF preko „Akcije → Preuzmi“) + dugme „Štampaj“ (štampa samo izvještaj sa nazivom i parametrima).
  - **N2:** „— sva skladišta modula —“ se pamti (ranije se poslije Prikaži vraćalo trenutno skladište).
  - **S8 / S9:** izbor drugog izvještaja briše filtere prethodnog (artikal, mjesto troška, vrsta) i postavlja trenutno skladište.
  - **S10:** skladišta samo ona na koja korisnik ima pravo (i u „sva skladišta modula“).
  - **S11:** brojač redova „1 - 4“ bez engleskog teksta; prevedeni tekstovi interaktivnih izvještaja (text messages APEXIR_*: Akcije, Preuzmi / štampaj, Kolone, Filter, …).
  - **S12:** kartica artikla – za prenos / prijem kolona partnera prikazuje skladište („na skladište …“ / „sa skladišta …“). VW_RM_PROMET: nove kolone SKLADISTE_PRENOS_ID, SKLADISTE_PRENOS_NAZIV.
- **V7** (stavke izabranog prenosa na MPP): poslije V5 region prikazuje razlog greške i referentni broj – uzrok se ispravlja u sljedećem koraku.
- **SQL (redom):** `18_core_error_manager.sql` (CORE), pa kao ACCOUNTING `12_rm_pkg.sql`, `13_rm_views.sql`, `14_rm_skladista.sql`, `15_rm_kalkulacija.sql`, `17_rm_izvjestaji.sql`. Zatim import aplikacije.

## Popis skladišta i rashod – korak R17 (03.11.2026)
- **Nova forma Popis skladišta** (meni Materijal i oprema → Popis; stranice 364 lista, 365 popis, 366 novi popis). Stari popis (360–363) ostaje u robnom modulu.
  - **Novi popis (366):** datum popisa i izbor jednog, više ili svih skladišta modula kojima korisnik ima pristup (kvačice, „Sva skladišta koja se mogu popisati“). Za svako skladište se vidi broj artikala na stanju i da li se može popisati (nema stanja, već otvoren popis, kasniji popis). Otvara se po jedan popis za svako izabrano skladište (sve ili ništa); poruka navodi otvorene popise.
  - **Knjigovodstveno stanje** = svi ulazi (zaključani ili ne) − zaključani izlazi do datuma popisa, uključivo (`RM_DOKUMENT_PKG.knjigovodstveno`). Stavke se kreiraju sa tim količinama i prosječnom cijenom na datum popisa.
  - **Popis (365):** tabela stavki – knjigovodstveno (samo čitanje), **Popisano** (unosi knjigovođa), razlika, prosječna cijena, vrijednost razlike, napomena; sažetak (artikala, nepopisano, višak, manjak, vrijednost manjka) se računa odmah. „Dodaj artikal (nije na stanju)“ za višak artikla bez stanja. Dugmad: „Prepiši knjigovodstveno“ (gdje popisano nije uneseno), „Osvježi stanje“ (ponovo računa knjigovodstveno stanje, dodaje nove artikle, čuva popisane količine), Snimi, Zaključaj popis, Obriši popis, Otključaj popis (administrator).
  - **Na jednom skladištu samo jedan aktivan (otvoren) popis.**
  - **Zaključavanje:** sve popisane količine unesene; knjigovodstveno stanje nepromijenjeno od otvaranja / osvježavanja; nema izlaza u pripremi do datuma popisa; manjak mora biti na zaključenom stanju i imati prosječnu cijenu. Razlike se knjiže automatskim dokumentima sa datumom popisa:
    - **RIV – Razlika inventure - višak** (popisano > knjigovodstveno): ulaz u pripremi; knjigovođa na dokumentu unosi samo cijene i zaključuje ga (artikli i količine se ne mijenjaju, nema dodavanja / brisanja stavki ni brisanja dokumenta);
    - **RIM – Razlika inventure - manjak** (popisano < knjigovodstveno): izlaz po prosječnoj cijeni na datum popisa, odmah zaključen.
    Poslije zaključavanja poruka i region „Dokumenti razlike inventure“ prikazuju kreirane dokumente (sa linkom na dokument). RIV / RIM se ne prave ručno („Novi dokument“ javlja da nastaju iz popisa), ne otključavaju se i ne storniraju.
  - **Otključavanje popisa** (administrator): dok dokument viška nije zaključen, nije proknjižen i nema kasnijeg / otvorenog popisa; dokumenti razlike se brišu.
  - **Datum prije popisa:** kad na skladištu postoji popis, nijedan dokument (novi, promjena datuma prijemnice, međuskladišni prijem) ne može imati datum prije datuma posljednjeg popisa. Ulazi sa datumom prije popisa ne mijenjaju količine / stavke i ne brišu se (cijena da); izlazi sa datumom prije popisa se ne zaključavaju, ne otključavaju i ne storniraju.
- **Rashod (RAS):** nova izlazna vrsta u materijalnom modulu – ponaša se kao izdatnica (mjesto troška, prosječna cijena, raspoloživo, zaključavanje, storno); uključen u izvještaj „Potrošnja po mjestu troška“.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `13_rm_views.sql`, `15_rm_kalkulacija.sql`, `19_rm_popis.sql`. Zatim import aplikacije.
- **R17 – dorade poslije prvog pregleda (03.11.2026):**
  - **Broj dokumenta po skladištu:** dokumenti skladišta (robno i materijalno), kalkulacije i popisi se numerišu po skladištu i godini (ranije po firmi): broj = najveći broj iste vrste na skladištu + 1, naziv = prefiks i dužina iz brojača vrste + `/šifra skladišta` (npr. `IZD-000001/MAG1`). `RM_DOKUMENT_PKG.novi_broj` (koriste ga snimanje dokumenta, storno, međuskladišni prijem, kalkulacija, popis i dokumenti razlike); brojač u CORE.PROTOKOLI se više ne uvećava, služi samo za format.
  - **Novi popis (366):** polja u istom rasporedu i stilu kao ostale forme (sekcije „Popis“ i „Skladišta za popis“).
  - **Popis (365):** uklonjena „vrijednost manjka“ iz sažetka; veći sažetak i tekst tabele; ćelija Razlika obojena – zelena (jednako), plava (višak), crvena (manjak); ćelije za unos (Popisano, Napomena) bijele, ostale sive.
  - **Lista popisa (364)** se osvježava kad se zatvori popis ili novi popis (i tasterom Esc).
  - Boje ćelije Razlika i bijele ćelije za unos se postavljaju direktno na ćelije tabele (prva verzija preko opcije kolone nije radila).
  - Novi popis: pretraga skladišta (šifra, naziv) iznad liste; „Sva prikazana skladišta…“ označava samo filtrirana skladišta.

## Sitni inventar kod radnika – korak R18 (04.11.2026)
Sitni inventar ostaje u materijalnom poslovanju. Zaduženje radnika se vodi na nivou firme (kao reversi): **zaduženje = Izlaz na sitni inventar (ISI) + prezaduženje na radnika + višak iz popisa − prezaduženje sa radnika − rashod kod radnika**. Serije i rokovi upotrebe se još ne uvode.
- **Nove vrste dokumenata** (16_rm_vrste_izlaz.sql, samo materijalni modul):
  - **PSI – Prezaduženje sitnog inventara:** sa radnika na radnika. Bira se radnik „sa“ i radnik „na“; region „Zaduženje radnika – sitni inventar“ prikazuje šta radnik ima (količina, raspoloživo, serijski brojevi). Stavke: dugme „Preuzmi zaduženja radnika“ (sve količine i serijski brojevi; višak se briše), izbor artikla iz liste zaduženog, ili unos / skeniranje tačnog serijskog broja (artikal se prepoznaje). Količina najviše do zaduženog; serijski broj mora biti kod radnika. Ne mijenja stanje skladišta i ne knjiži se (tip kretanja „Z“).
  - **RSZ – Rashod sitnog inventara sa zaliha:** izlaz sa skladišta, kao rashod (mjesto troška, prosječna cijena, raspoloživo, storno).
  - **RSR – Rashod sitnog inventara kod radnika:** razduženje radnika, isti unos kao prezaduženje; ne mijenja stanje skladišta. Cijena = prosječna cijena zaduženja radnika.
  - **VSR – Višak sitnog inventara kod radnika:** nastaje samo zaključavanjem popisa SI.
- **Zaštita zaduženja:** storno i otključavanje izlaza na SI ili prezaduženja nisu dozvoljeni ako je radnik taj inventar već prezadužio ili rashodovao; dokumenti iz popisa se ne otključavaju i ne storniraju; prezaduženje i rashod se mogu stornirati.
- **Popis sitnog inventara kod radnika** (meni Materijal i oprema → Popis sitnog inventara; stranice 367 lista, 368 popis, 369 novi popis), po uzoru na popis skladišta:
  - novi popis: datum + jedan, više ili svi radnici sa zaduženjem (pretraga, kvačice); jedan otvoren popis po radniku; broj POPSI-000001;
  - stavke: zaduženje radnika na datum popisa (zaključeni dokumenti); artikal sa serijskim brojem – jedan red po komadu (popisano 1 = pronađen, 0 = nije); „Dodaj pronađen artikal / serijski broj“ za višak;
  - zaključavanje: manjak → **RSR**, višak → **VSR** (zaključeni, sa serijskim brojevima, datum popisa); provjera da se zaduženje nije promijenilo i da nema dokumenata zaduženja u pripremi; otključavanje (administrator) briše te dokumente.
- **Izvještaj zaduženja** (VW_RM_ZADUZENJA): sitni inventar po stvarnom zaduženju (poslije prezaduženja i rashoda), ne više po izlaznim dokumentima.
- **Baza:** OPERACIJE.RADNIK_PRENOS_ID, POPISI.VRSTA / RADNIK_ID, POPIS_STAVKE.SERIJSKI_BROJ; VW_RM_SI_ZADUZENJA; RM_DOKUMENT_PKG (si_saldo, si_sb, si_cijena, si_popis_blokada), RM_POPIS_PKG (kreiraj_si i popis SI). Popis skladišta i zabrana datuma prije popisa uzimaju samo popise skladišta.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `13_rm_views.sql`, `14_rm_skladista.sql`, `17_rm_izvjestaji.sql`, `19_rm_popis.sql`. Zatim import aplikacije.

## Dorade poslije testa R18, poslovni partneri – korak R19 (04.11.2026)
- **Izlazni dokumenti skladišta:** unos količine veće od raspoložive – uz poruku se količina stavke vraća na 0.
- **Modalne forme:** zatvaranje bilo kog dijaloga (X, Esc ili snimanje) osvježava preglednu formu ispod (opšte rješenje u `finansije-ui.js` – `finDijalogOsvjezi`; tabela sa nesnimljenim izmjenama se ne osvježava). Dugmad „Zatvori / Odustani“ uklonjena, a X vraćen na formama dokumenta skladišta (331), skladišta (311), popisa zaliha (365, 366), popisa SI (368, 369) i poslovnog partnera (11).
- **Prezaduženje sitnog inventara (PSI):** izborom radnika sa kojeg se prezadužuje stavke se odmah pune svim njegovim zaduženjima sa količinom 0; korisnik u koloni Količina unosi koliko prenosi. Stavke sa količinom 0 se ne prenose (brišu se pri zaključavanju). Region „Zaduženje radnika – sitni inventar“ i dugme „Preuzmi“ za PSI uklonjeni. Na listi dokumenata piše „prezaduženje sa radnik1 na radnik2“. Poruke potvrde bez cijena i skladišta.
- **Materijalni modul – nazivi:** poruke i pomoć govore o materijalu / artiklima, ne o robi (potvrde zaključavanja, otključavanja i storna zavise od modula skladišta; prenosi, kalkulacija, deaktivacija skladišta).
- **Popis SI – „Popis ne postoji“ pri snimanju:** stranica 368 je poslije snimanja preusmjeravala na stranicu 365 (popis zaliha) – ispravljeno na 368.
- **Razlike popisa SI:** dokumenti VSR (višak) / RSR (rashod) iz popisa zamijenjeni novim vrstama **RUM – Razlika inventure sitnog inventara u upotrebi – manjak** i **RUV – … – višak**; nastaju samo kad se popisane i knjigovodstvene količine ne slažu. VSR se deaktivira (16). Tekstovi na listi i popisu SI ispravljeni.
- **Meni:** „Popis“ → **Popis zaliha**, „Popis sitnog inventara“ → **Popis sitnog inventara u upotrebi**; „Klijenti“ → **Poslovni partneri** (meni, naslov, putanja).
- **Izvještaji (371) – nova grupa Sitni inventar:** SI u upotrebi po radniku (radnik, materijal, količina, vrijednost, zadnje zaduženje), SI u upotrebi po materijalu (ukupno, broj radnika), Kartica SI radnika (početno stanje, zaduženja, prezaduženja, rashodi, razlike popisa, serijski brojevi, tekuće stanje po materijalu). Novi view **VW_RM_SI_PROMET** (13).
- **Poslovni partneri (10, 11):** lista i forma u stilu ostalih modula (sekcije Osnovni podaci, Adresa i kontakt, Konta za knjiženje; status, kontakt i konta na listi). **Šablon za knjiženje ukinut** na formi i listi – nikad nije obavezan (kolona u bazi ostaje). Dvojno knjigovodstvo: partner može imati više konta; u svakoj kontnoj grupi (prva cifra) jedno je **podrazumijevano** (označavanjem novog ranije se isključuje; bez oznake – prvo po šifri). `SEC_KLIJENTI.KONTNA_KLASA_ID` se puni podrazumijevanim kontom (stari kod ga čita).
- **Baza:** `20_partneri_konta.sql` – SEC_KLIJENT_KONTA.PODRAZUMIJEVANO, jedinstveno konto po partneru, paket **SEC_PARTNER_PKG** (snimi_konto, uskladi, konto(partner, grupa), konta_opis).
- **Otvoreno:** postojeće procedure knjiženja (uparivanje po kontu partnera traži tačno jedno konto u grupi; konto dobavljača uzima prvo iz grupe 4) treba prebaciti na `sec_partner_pkg.konto(partner, grupa)` da bi više konta po grupi radilo – to su postojeći paketi van v2, rade se posebnim korakom.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `13_rm_views.sql`, `14_rm_skladista.sql`, `15_rm_kalkulacija.sql`, `19_rm_popis.sql`, `20_partneri_konta.sql`. Zatim import aplikacije.

## Izgled izvještaja, cijena na ulazu – korak R20 (05.11.2026)
- **Izvještaji materijalnog modula (371):**
  - parametri u posebnoj kartici „Parametri izvještaja“: labela iznad polja, polja u jednom redu sa širinom prema sadržaju (skladište, artikal, mjesto troška šira; datumi uži), na telefonu jedno ispod drugog; dugme **Prikaži izvještaj** na kraju reda;
  - ispod parametara opis izvještaja i prikazani parametri (npr. „sva skladišta modula · period 01.01. – 05.11.“);
  - tabele (interaktivni izvještaji) u stilu aplikacije: kartica sa okvirom, mirnije zaglavlje, blago prugasti redovi, isticanje reda, istaknuti zbirovi i prelomi grupa, uredna paginacija;
  - dugme **Štampaj** ukinuto (štampa preko Actions → Download PDF / Excel).
- **Ulazni dokumenti sa ručnom cijenom:** izborom artikla cijena se predlaže kao 0 (ne prosječna). Dokument Razlika inventure – višak (RIV) iz popisa nastaje sa cijenom 0 na stavkama; zaključavanje i dalje traži cijenu veću od nule.
- **Međuskladišni prijem – greška u „Stavke izabranog prenosa“ (ORA-01722):** veza za izbor prenosa je u `data-id` dobijala HTML kolone ID (dugme Preuzmi) umjesto broja prenosa, pa je izvještaj stavki pucao. Dodate čiste skrivene kolone PRENOS_ID / PRENOS_NAZIV za veze i dugme, a upit stavki pretvara vrijednost sigurno (`kuf_pkg.broj`). Ista vrsta greške uklonjena i u oznaci kvačice na novom popisu (366, 369).
- **SQL:** samo `19_rm_popis.sql` (cijena 0 na RIV). Zatim import aplikacije.

## Finansijsko doknjiženje, zamjena šifara, kartica serijskog broja – korak R21 (05.11.2026)
- **FDK – Finansijsko doknjiženje** (robna i materijalna skladišta, Novi dokument): mijenja samo vrijednost zaliha, ne količinu – time se povećava / smanjuje prosječna cijena artikla na skladištu.
  - stavka: artikal i **iznos doknjiženja** (+ povećava, − smanjuje); kolona količine se ne prikazuje, uz artikal se vidi stanje i trenutna vrijednost zaliha;
  - pravila: artikal mora imati zaključeno stanje na datum dokumenta; smanjenje ne smije biti veće od vrijednosti zaliha; ne može se zaključiti ako poslije datuma doknjiženja postoji zaključen izlaz tog artikla (izlaz bi ostao po staroj cijeni); datum ne može biti prije popisa;
  - zaključava se dugmetom Zaključaj; otključavanje (administrator) i storno nisu dozvoljeni ako je artikal poslije datuma dokumenta izdavan;
  - u izvještajima: povećanje je ulaz vrijednosti, smanjenje izlaz vrijednosti (kartica artikla, promet, stanje).
- **ZSA – Zamjena šifara artikla:** izlaz jednog artikla i ulaz drugog u istoj količini po istoj (prosječnoj) cijeni.
  - stavka: artikal koji se skida sa stanja, **zamjenski artikal** (dodaje se) i količina (najviše do raspoloživog);
  - **serijski brojevi** (unose se na stavci, kao i do sada; broj brojeva = količina):
    - oba artikla se prate po SB: unose se raspoloživi brojevi artikla koji se skida, a zaključavanjem **isti brojevi prelaze na zamjenski artikal** (broj ne smije već postojati na stanju zamjenskog);
    - prati se samo artikal koji se skida: brojevi se skidaju sa stanja, zamjenski artikal ulazi bez brojeva;
    - prati se samo zamjenski artikal: unose se **novi brojevi zamjenskog artikla** (kao na ulazu); zaključavanjem prelaze na ulaz, otključavanjem se vraćaju na stavku;
    - skeniranje serijskog broja na dokumentu se za zamjenu šifara ne koristi (artikal i zamjenski artikal se biraju u tabeli);
  - zaključavanjem se artikal skida po prosječnoj cijeni, a za svaku stavku nastaje (skrivena) stavka ulaza zamjenskog artikla sa istom cijenom; otključavanje je briše;
  - otključavanje / storno nisu dozvoljeni ako je zamjenski artikal u međuvremenu izdat; zaključavanje nije dozvoljeno ako zamjenski artikal ima zaključen izlaz poslije datuma zamjene.
- **Baza:** OPERACIJA_STAVKE.ZAMJENA_STAVKA_ID, SMJER (U / I – smjer stavke kada se razlikuje od vrste dokumenta), IZVOR_STAVKA_ID; svi proračuni stanja, vrijednosti, prosječne cijene, popisa i serijskih brojeva uzimaju smjer stavke. RM_DOKUMENT_PKG: VRIJEDNOST_ZALIHA, IZLAZ_POSLIJE, pravila FDK / ZSA. VW_RM_DOKUMENT_STAVKE prikazuje zamjenski artikal (bez generisanih stavki).
- **Izvještaji – Kartica serijskog broja** (grupa Promet): sva kretanja serijskog broja (ili dijela broja, najmanje 3 znaka) – ulazi, izlazi, prenosi, reversi, zaduženja i prezaduženja radnika, rashodi i popisi SI u upotrebi, sa statusom dokumenta (u pripremi, zaključen, storniran) i vezom na dokument; filter i po artiklu.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF – vrste FDK, ZSA), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `13_rm_views.sql`, `14_rm_skladista.sql`, `15_rm_kalkulacija.sql`, `17_rm_izvjestaji.sql`, `19_rm_popis.sql`. Zatim import aplikacije.
- **Kalkulacija – način raspodjele „cijena sa prijemnice“:**
  - na tabu Raspodjela se kod fakture sada vidi izabrani način (ranije je pisalo „ručno – ukupan iznos“);
  - način je preimenovan u **Ručno – cijena sa prijemnice** i radi kao Ručno – jedinična cijena: jedinične cijene se predlažu (prekopiraju) sa prijemnice, korisnik ih po potrebi mijenja i snima; iznos fakture u kalkulaciji = zbir (cijena × količina), najviše do raspoloživog fakture. Više se ne raspoređuje dugmetom „Raspodijeli sve automatske“.
  - SQL: `15_rm_kalkulacija.sql`.
- **Ispravka importa (ORA-00001 WWV_FLOW_WORKSHEET_RPTS_UK):** nova kartica serijskog broja je pomjerila identifikatore sačuvanih izvještaja na str. 371; APEX po njima čuva izvještaje korisnika pri ponovnom importu. Identifikatori su sada stalni po izvještaju (generator `gen_p371_izvjestaji.py`, tabela RID), nova kartica dobija sljedeći slobodan broj.

**Službeni import (05.11.2026):** `v2/import/finansije-v2.zip` regenerisan na `main` iz `v2/izvor` poslije spajanja PR #1 (materijalni modul R10–R21, poslovni partneri); isti sadržaj kao provjereni import R21 na DEV-u.

## Robni modul – kalkulacija cijena i cjenovnik – korak R22 (05.11.2026, grana claude/robno-cijene)
Odluke (korisnik, 05.11.2026): interna (materijalna) skladišta – prosječna cijena po skladištu (bez promjene); veleprodajna robna skladišta – **jedna prosječna nabavna cijena za sva skladišta istog cjenovnika**; maloprodaja se vodi po MP cijeni, RUC kasnije; bez retroaktivnog preračuna – nova cijena i automatski dokumenti nastaju na datum zaključavanja; automatski dokumenti su zaključeni i vezani za kalkulaciju; PDV po indikatoru artikla (pun iznos 17 %, poseban – stopa indikatora).
- **Kalkulacija – tab Cijene (robna skladišta):**
  - unosi se jedno od: **marža %**, **marža (KM)**, **VPC** ili **MPC** – ostalo se izračuna (VPC = nabavna + marža; MPC = VPC + PDV; kod unosa MPC: VPC = MPC / (1 + PDV));
  - nove kolone: **Prosječna (cjenovnik)** – trenutna prosječna nabavna u cjenovniku, **Nova prosječna** – zajednička prosječna poslije ove kalkulacije, **VPC / MPC (cjenovnik)** – važeće cijene;
  - VPC i MPC se i dalje predlažu iz cjenovnika skladišta pri dodavanju prijemnice (marža se preračunava prema novoj nabavnoj cijeni); PDV po indikatoru artikla.
- **Zaključavanje kalkulacije (robno skladište):**
  - nova prosječna = (vrijednost svih skladišta cjenovnika + vrijednost kalkulacije) / (količina svih skladišta + količina kalkulacije), na stanje u trenutku zaključavanja;
  - **cjenovnik**: stari red se deaktivira, novi (nova prosječna, VPC, MPC) se aktivira sa napomenom „Kalkulacija X“ i vezom na kalkulaciju;
  - **veleprodajni cjenovnik**: vrijednost svakog skladišta cjenovnika koje ima stanje usklađuje se automatskim, zaključenim dokumentom **Finansijsko doknjiženje** (FDK, današnji datum, vezan za kalkulaciju; jedan po skladištu); zbir doknjiženja je 0 (razlika zaokruživanja na skladište sa najvećom količinom);
  - maloprodajni cjenovnik: samo cjenovnik (nivelacija je sljedeći korak).
- **Otključavanje kalkulacije robnog skladišta** (administrator) je sada moguće: briše automatska doknjiženja i vraća prethodne cijene u cjenovniku – samo ako cijena u cjenovniku nije u međuvremenu ponovo mijenjana i ako artikli poslije usklađivanja nisu izdavani.
- **Izlazi veleprodajnih robnih skladišta** uzimaju jedinstvenu prosječnu cijenu iz cjenovnika (kad je red cjenovnika nastao u v2); ostala skladišta – prosječna cijena skladišta. Izlaz cijele preostale količine uzima tačno preostalu vrijednost.
- **Baza:** CJENOVNIK_STAVKE.NAPOMENA, IZVOR (K / R / U), KALKULACIJA_ID, OPERACIJA_ID, PRETHODNI_ID; jedan aktivan red po artiklu i cjenovniku (stari duplikati se deaktiviraju – ostaje najnoviji); paket **RM_CJENOVNIK_PKG**; RM_DOKUMENT_PKG.CIJENA_IZLAZA; RM_KALKULACIJA_PKG.PDV_STOPA, NOVA_PROSJECNA.
- **SQL (redom, kao ACCOUNTING):** `11_rm_model.sql`, `12_rm_pkg.sql`, **`21_rm_cjenovnik.sql`**, `15_rm_kalkulacija.sql` (15 koristi paket iz 21). Zatim import aplikacije.
- **Sljedeći koraci:** ostali ulazi u veleprodaji (višak iz popisa, povrat, zamjena šifara, prijem sa drugog cjenovnika) kroz isti mehanizam; maloprodaja po MP cijeni i nivelacija; ručna izmjena cjenovnika sa napomenom.

## Maloprodaja po MP cijeni i nivelacija – korak R23 (05.11.2026)
- **Maloprodajna robna skladišta (cjenovnik tip M) vode zalihu po MPC:**
  - kalkulacija upisuje u prijemnicu MPC kao cijenu zalihe (`NABAVNA_CIJENA`), a stvarnu nabavnu cijenu u novu kolonu `NABAVNA_MP` (uz maržu i PDV) – za kasniji obračun RUC;
  - izlazi i povrat dobavljaču idu po važećoj MPC iz cjenovnika (izlaz cijele preostale količine – preostala vrijednost);
  - višak iz popisa na maloprodajnom skladištu predlaže važeću MPC;
  - stanje, vrijednost, kartice i popisi maloprodaje su po MPC;
  - zamjena šifara u maloprodaji samo između artikala iste MPC (razlika bi bila RUC / PDV).
- **Nivelacija cijena (NIVM)** – nova vrsta (samo robna skladišta, nastaje automatski):
  - pri zaključavanju kalkulacije maloprodajnog skladišta, za svaki artikal kojem se MPC mijenja, postojeće zalihe **svih maloprodajnih skladišta tog cjenovnika** se niveliraju na novu MPC – prije prijema nove robe;
  - jedan zaključen dokument po skladištu, današnji datum, vezan za kalkulaciju; stavka: količina, stara MPC, nova MPC, razlika po jedinici i ukupno, PDV u razlici (razlika × stopa / (100 + stopa));
  - otključavanje kalkulacije briše nivelacije (ako artikli poslije nisu izdavani) i vraća cjenovnik.
- Cjenovnik maloprodaje dobija nabavnu cijenu iz kalkulacije (zajednička prosječna nabavna je samo za veleprodaju).
- **Baza:** OPERACIJA_STAVKE.NABAVNA_MP, MPC_STARA; vrsta NIVM i brojač; RM_CJENOVNIK_PKG.NIVELISI, PDV_STOPA; RM_DOKUMENT_PKG.JE_MP i MP grana u CIJENA_IZLAZA.
- **Napomena:** postojeće (stare) zalihe maloprodajnih skladišta su vođene po nabavnoj cijeni – prije stvarnog rada u maloprodaji treba ih jednom nivelisati na MPC: snimiti važeću MPC u cjenovniku (ručna izmjena) – nivelacija nastaje automatski.
- **Prenosi između tipova skladišta** (M = skladište materijala, V = veleprodaja, MP = maloprodaja) – vrsta dokumenta pokazuje prelaz između modula:

  | Smjer | Izlaz | Prijem | Cijena |
  |---|---|---|---|
  | isti tip (M→M, V→V, MP→MP) | MPR Međuskladišni prenos | MPP Međuskladišni prijem | cijena izlaza; V/MP: cjenovnik odredišta |
  | M → V | PIV Prenos materijala u veleprodaju | UIV Prijem materijala u veleprodaju | prosječna materijala → novi zajednički prosjek VP |
  | V → M | PVI Prenos robe u skladište materijala | UVI Prijem robe u skladište materijala | prosječna VP |
  | V → MP | PVM Prenos robe u maloprodaju | UVM Prijem u maloprodaju | zaliha po MPC cjenovnika MP, nabavna = cijena izlaza (bez MPC u cjenovniku prijem nije moguć) |
  | MP → V | PMV Povrat iz maloprodaje u veleprodaju | UMV Prijem povrata iz maloprodaje | izlaz po MPC, prijem po prosječnoj VP (razlika = RUC / PDV za knjiženje) |

  - M → MP nije predviđen (ide preko veleprodaje); prenos se nudi samo na skladišta čiji tip odgovara vrsti (pogrešna vrsta → poruka koju vrstu koristiti);
  - prijem nastaje preuzimanjem prenosa sa liste „Prenosi na čekanju“ (Novi dokument → vrsta prijema), zaključen, kao i do sada;
  - **promjena cijene dok je roba na putu:** poslije svakog prijema na veleprodajno skladište računa se zajednički prosjek iz stvarnih vrijednosti svih skladišta cjenovnika i vrijednost se usklađuje automatskim finansijskim doknjiženjem; na maloprodajno skladište – primljena roba se automatski nivelira na važeću MPC (dokumenti vezani za prijem, datum prijema).
- **Ručna izmjena cijene u cjenovniku** (Cjenovnik → artikal): novo polje **Napomena** (u istoriji cjenovnika i u opisu automatskih dokumenata); **prosječna nabavna** se može ispraviti:
  - veleprodaja: vrijednost zaliha svih skladišta cjenovnika se usklađuje sa (novom) prosječnom cijenom automatskim finansijskim doknjiženjem – isto služi i za početno usklađivanje skladišta;
  - maloprodaja: izmjena MPC nivelira zalihe svih maloprodajnih skladišta cjenovnika (NIVM) – isto služi i za početnu nivelaciju starih zaliha na MPC;
  - promjena VPC (veleprodaja) ili nabavne (maloprodaja) mijenja samo cjenovnik.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `13_rm_views.sql`, `21_rm_cjenovnik.sql`, `15_rm_kalkulacija.sql`, `17_rm_izvjestaji.sql`, `19_rm_popis.sql`. Zatim import aplikacije. (Uključuje i R22.)

## Serijski brojevi, marža u cjenovniku, MPC na prijemu u maloprodaju – korak R24 (05.11.2026)
- **Izbor serijskih brojeva iz liste** (dijalog serijskih brojeva stavke, način „Iz liste“):
  - pretraga po dijelu broja ide na server – pretražuje se cijela lista raspoloživih brojeva (ne samo prikazani redovi), prikaz do 1000 redova;
  - kvadratić uz svaki broj, dugmad **Označi sve prikazane** i **Dodaj označene (n)** – više brojeva se dodaje odjednom (`RM_DOKUMENT_PKG.DODAJ_SB_VISE_JSON`), „+“ za pojedinačni broj ostaje.
- **Cjenovnik → artikal:** marža (%) se preračunava pri svakoj izmjeni nabavne cijene, VPC ili MPC (= (VPC − nabavna) / nabavna × 100); izmjena marže i dalje računa VPC i MPC; marža se prikazuje i pri otvaranju postojeće cijene. Nabavna cijena iz cjenovnika se učitava sa 4 decimale.
- **Finansijsko doknjiženje (FDK) i nivelacija (NIVM):** bez serijskih brojeva – nema kolone SB, regiona serijskih brojeva, upozorenja „SB“ na listi dokumenata ni provjere pri zaključavanju (dokumenti mijenjaju samo vrijednost).
- **Prijem u maloprodaju (UVM) za artikle bez MPC u cjenovniku:** preuzimanje prenosa više ne javlja grešku – prijem nastaje **u pripremi** (status „Čeka MPC“), količine i serijski brojevi su iz prenosa i ne mijenjaju se:
  - region **MPC za prijem u maloprodaju**: nabavna (cijena izlaza iz veleprodaje), MPC iz cjenovnika, polje **MPC na prijemu** i marža (%) – MPC se snima pri izlasku iz polja / Enter;
  - **Zaključaj prijem**: provjera da sve stavke imaju MPC, nova ili promijenjena MPC se upisuje u cjenovnik maloprodaje (VPC = MPC / (1 + PDV), napomena „MPC sa prijema …“), postojeće zalihe ostalih maloprodajnih skladišta tog cjenovnika se prethodno niveliraju (NIVM), prijem se zaključuje sa datumom zaključavanja;
  - prijem koji čeka MPC se može obrisati – prenos se vraća na listu „Prenosi na čekanju“;
  - kada svi artikli imaju MPC u cjenovniku, prijem se kao i do sada odmah zaključuje.
- **Greška pri Snimi na dokumentima skladišta** (ERR-1002 Unable to find item ID for item "ZAMJENA_STAVKA_ID"): proces snimanja stavki je navodio kolonu zamjenskog artikla koja postoji samo na zamjeni šifara (R21), pa je snimanje izmijenjenih stavki na svim ostalim dokumentima javljalo grešku. Snimanje stavki je razdvojeno u tri procesa: opšti, zamjena šifara (ZSA) i finansijsko doknjiženje (FDK, bez kolone količine).
- **Baza:** RM_DOKUMENT_PKG (DODAJ_SB_VISE_JSON, PREUZMI_PRENOS, RAZLOG_ZABRANE, OBRISI, PROVJERI_KOMPLETNOST), RM_CJENOVNIK_PKG (UVM_MPC_JSON, ZAKLJUCAJ_UVM), pogledi VW_RM_DOKUMENTI i VW_RM_DOKUMENT_STAVKE. Bez novih kolona.
- **SQL (redom, kao ACCOUNTING):** `12_rm_pkg.sql`, `13_rm_views.sql`, `21_rm_cjenovnik.sql`. Zatim import aplikacije.
