# Spisak izmjena u bazi – v2 (za pripremu migracije na produkciju)

Ovaj spisak se dopunjuje uz svaku doradu. Prije migracije pokazuje šta treba uporediti sa stanjem na produkciji.

Stanje: 31.10.2026 (moduli Stavke i cjenovnici, Ulazne fakture – koraci 2, 3, 4a, 4b, 4c i 4d).

## 1. Novi objekti

Ovi objekti ne postoje u originalnom DDL-u. Rizik je mali, ali tabele i kolone koje koriste moraju postojati na produkciji (provjera: kompajliranje, status VALID).

| Skripta | Objekat | Koristi |
|---|---|---|
| 01_indeksi.sql | indeksi `*_I` na GLAVNA_KNJIGA, GLAVNA_KNJIGA_STAVKE, KIF, KUF, OPERACIJE, POPISI … | samo postojeće kolone; postojeći indeksi se preskaču |
| 02_dashboard_views.sql | VW_DASH_KIF, VW_DASH_KUF, VW_DASH_ZIRO_STANJE, VW_DASH_BLAGAJNA_STANJE, VW_DASH_BUDZET_AKTUELNI | KIF, KUF, izvodi, blagajna, budžet |
| 03_dashboard_pkg.sql | paket DASHBOARD_PKG (kpi_* za početnu i dashboarde modula, uključujući kpi_stavke) | VW_DASH_*, tabele modula, CORE.OOJ |
| 04_stavke.sql | tabele STAVKE_PKG_BACKUP_V2, STAVKE_OSTALO_V2 | pomoćne, za vraćanje |
| 06_kuf.sql | paket KUF_PKG (razlog_zabrane_brisanja, obrisi, duplikat) | KUF, UIO_KUF, GLAVNA_KNJIGA_STAVKE, KALKULACIJA_KUF, FINANSIJE_PKG.is_kuf_editable / delete_kuf, CORE.PROTOKOLI_PKG.update_brojac |
| 07_pdv_indikatori.sql (SIF) | tabela ACC_PDV_INDIKATORI_BACKUP_V2 | kopija šifarnika prije izmjena |
| 08_kuf_model.sql | tabele KUF_PDV (sa IZVOR_RED_ID), KUF_DOKUMENTI, KUF_AVANSI_ZATVARANJE, KUF_MIGRACIJA_V2; view VW_KUF_PDV_SPEC | KUF, SIF.ACC_PDV_INDIKATORI (nove kolone iz 07), SIF.VRSTE_DOKUMENATA, SIF.ACC_MODULI |
| 09_kuf_views.sql | VW_KUF_LISTA, VW_KUF_FORMA, VW_KUF_VRSTE_DOKUMENATA, VW_KUF_PDV_INDIKATORI, VW_KUF_UGOVORI, VW_KUF_VEZE, VW_KUF_DOKUMENTI, VW_KUF_AVANSI, VW_KUF_URACUNATI_AVANSI | KUF, KUF_DOKUMENTI, UIO_KUF, GLAVNA_KNJIGA(_STAVKE), UGOVORI, SEC_KLIJENTI, SIF šifarnici |
| 10_kuf_pkg.sql | KUF_PKG v2 (snimi, snimi_pdv_red, preracunaj, provjeri_zaglavlje, provjeri, zakljucaj, otkljucaj, storniraj, obrisi, dokumenti, kurs_prikaz, stope_json; avans i KO: raspolozivo_reda, preuzmi_stavke, stavke_za_preuzimanje, avans_raspolozivo, avans_info, snimi_avans_red, obrisi_avans_red, uskladi_avanse, valuta_sifra, valute_dozvoljene, veze_html) | uz gore: SIF.ACC_VALUTE (select), SIF.ACC_PKG.get_kurs_na_dan, SIF.UTILS_PKG.get_apex_file_upload, GLAVNA_KNJIGA_PKG.storniraj_glavna_knjiga, CORE.PROTOKOLI_PKG, APEX_PAGE, APEX_ESCAPE |

## 2. Izmijenjeni postojeći objekti

Ovi objekti se moraju **spojiti sa verzijom sa produkcije**, a ne samo prepisati.

### STAVKE_PKG (04_stavke.sql)

Paket je napravljen iz DDL exporta DEV-a (29.10.2026). Tačne izmijenjene linije su u `sql/04_stavke_izmjene.diff`.

| Vrsta | Procedure / funkcije |
|---|---|
| izmijenjene | get_stavka_cijene, get_stavka_cjenovnik_cijene, get_nabavna_cijena, get_stavka_cijena, insert_stavka, update_stavka, update_stavka_retroaktivno, update_klasa, delete_stavka, delete_klasa, delete_cjenovnik |
| nove | pdv_stopa, stavka_u_upotrebi, klasa_ostalo, sljedeca_sifra |

**Podaci:** stavke bez klase dobijaju klasu „Ostalo“ (po jedna klasa za svaku firmu). Svaka premještena stavka se bilježi u STAVKE_OSTALO_V2.

### SIF.ACC_PDV_INDIKATORI (07_pdv_indikatori.sql, kao SIF)

| Vrsta | Šta |
|---|---|
| nove kolone | POLJE_OSNOVICE, POLJE_PDV, POLJE_KP, PRAVO_NA_ODBITAK, PDV_DOBAVLJACU, VRSTA |
| podaci (po šifri) | ujednačeni nazivi; D5 naziv; O1 stopa 17; O6 jedan aktivan red (U); P8 i BU deaktivirani |

### KUF (08_kuf_model.sql)

| Vrsta | Šta |
|---|---|
| nove kolone | VRSTA_DOKUMENTA_ID, VEZA_KUF_ID (FK na KUF) |
| podaci | prazna GODINA iz datuma fakture; vrsta dokumenta (UF / UAV / UKO); sve evidentirano u KUF_MIGRACIJA_V2 |
| SIF.VRSTE_DOKUMENATA, CORE.PROTOKOLI | nove vrste UAV, UAVZ, UKO, UKZ za svaku firmu sa UF i brojači (preko SIF.ACC_PKG i CORE.PROTOKOLI_PKG) |

## 3. Postojeći objekti koje aplikacija v2 poziva, a ne mijenja

Na produkciji moraju postojati sa **istim parametrima** (imena i redoslijed).

| Objekat | Gdje se koristi |
|---|---|
| FINANSIJE_PKG: get_kuf, insert_kuf, update_kuf, delete_kuf, is_kuf_editable, storniraj_kuf | ulazne fakture (41, 45, 84) |
| CORE.PROTOKOLI_PKG: get_brojac, update_brojac, check_brojac | numeracija dokumenata |
| SIF.ACC_PKG: get_kurs_na_dan, get_pdv_indikator | ulazne fakture (41) |
| CORE.OOJ_PKG.get_ooj_pdv_sistem | PDV sistem firme (stavke, cijene) |
| SIF.VW_UIO_TIP_DOKUMENTA_PDV_INDIKATORI, SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI | indikatori i tip dokumenta na ulaznoj fakturi |

## 4. Postupak pripreme migracije (kad dorade budu gotove)

1. Sa produkcije pošaljite DDL (izvor) izmijenjenih paketa iz tačke 2. Potrebni su i paketi iz tačke 3, ako znate da su na produkciji mijenjani.
2. Izmjene iz `*_izmjene.diff` prenosim na verziju sa produkcije, pa za produkciju dobijate posebnu skriptu (npr. `04_stavke_prod.sql`).
3. Na produkciji pokrenite `00_provjera_prije.sql`. Skripta poredi otisak paketa i prava, a provjerava i da postoje tabele i kolone koje novi objekti koriste.
4. Aplikacija: ako je aplikacija 290 na produkciji mijenjana poslije exporta koji smo koristili, pošaljite i njen export. Te izmjene treba prenijeti u v2 prije importa, jer import zamjenjuje cijelu aplikaciju.

## 5. Materijal i oprema / zalihe, poslovni partneri (koraci R10–R19, skripte 11–20)

| Skripta | Objekat | Vrsta izmjene |
|---|---|---|
| 11_rm_model.sql | OPERACIJE (MJESTO_TROSKA_ID, ZADUZENI_RADNIK_ID, POPIS_ID, RADNIK_PRENOS_ID), POPISI (VRSTA, RADNIK_ID), POPIS_STAVKE (CIJENA, OPIS, SERIJSKI_BROJ), OPERACIJA_STAVKE (ZAMJENA_STAVKA_ID, SMJER + check, IZVOR_STAVKA_ID + indeks; R21), OPERACIJA_STAVKE (NABAVNA_MP, MPC_STARA; R23), indeksi, brojači novih vrsta u CORE.PROTOKOLI | nove kolone / indeksi / podaci brojača |
| 12_rm_pkg.sql | paket RM_DOKUMENT_PKG | novi objekat (v2) |
| 13_rm_views.sql | VW_RM_ARTIKLI, VW_RM_DOKUMENTI, VW_RM_DOKUMENT_STAVKE, VW_RM_SB, VW_RM_SB_STANJE, VW_RM_PRENOSI_CEKANJE, VW_RM_REVERS_PREOSTALO, VW_RM_SI_ZADUZENJA, VW_RM_SI_PROMET | novi objekti |
| 14_rm_skladista.sql | paket RM_SKLADISTE_PKG, VW_RM_SKLADISTE_STANJE, VW_RM_KORISNIK_SKLADISTA, VW_RM_SKLADISTA | novi objekti |
| 15_rm_kalkulacija.sql | kolone KALKULACIJA_RASPODJELA.CIJENA, KALKULACIJA_TROSKOVI.KUF_ID / SA_PDV; paket RM_KALKULACIJA_PKG, VW_RM_KALKULACIJE, VW_RM_KALK_FAKTURE, VW_RM_KALKULACIJA_STAVKE, VW_RM_KALKULACIJA_IZVORI, VW_RM_KALKULACIJA_RASPODJELA | novi objekti |
| 16_rm_vrste_izlaz.sql (SIF) | SIF.VRSTE_DOKUMENATA | podaci: nove vrste po firmi (R17: RAS, RIV, RIM; R18: PSI, RSZ, RSR; R19: RUM, RUV – VSR iz R18 se deaktivira; R21: FDK, ZSA; R23: NIVM, PIV, UIV, PVI, UVI, PVM, UVM, PMV, UMV) |
| 17_rm_izvjestaji.sql | VW_RM_PROMET, VW_RM_ZADUZENJA, VW_RM_NA_CEKANJU | novi objekti |
| 18_core_error_manager.sql (CORE) | **CORE.ERROR_MANAGER – tijelo paketa (F_APEX_ERROR_HANDLER)** | **izmijenjen postojeći objekat** – spojiti sa verzijom sa produkcije |
| 19_rm_popis.sql | paket RM_POPIS_PKG, VW_RM_POPISI, VW_RM_POPIS_STAVKE, VW_RM_POPIS_DOKUMENTI; brojač POP u CORE.PROTOKOLI (ako postoji vrsta POP) | novi objekti (koristi postojeće tabele POPISI i POPIS_STAVKE) |
| 21_rm_cjenovnik.sql | **CJENOVNIK_STAVKE – nove kolone NAPOMENA, IZVOR, KALKULACIJA_ID, OPERACIJA_ID, PRETHODNI_ID (dodaje ih već 11_rm_model.sql), unique indeks CJENOVNIK_STAVKE_AKTIVAN_UK (jedan aktivan red po artiklu); podaci: stariji duplikati aktivnih redova se deaktiviraju**; indeksi CJENOVNIK_STAVKE_CJ_ART_I, _KALK_I; paket RM_CJENOVNIK_PKG | **izmijenjena postojeća tabela** + novi paket |
| 20_partneri_konta.sql | **SEC_KLIJENT_KONTA – nova kolona PODRAZUMIJEVANO (Y/N, default N), check SEC_KLIJENT_KONTA_PODR_CK, unique indeks SEC_KLIJENT_KONTA_UK (partner, konto)**; paket SEC_PARTNER_PKG; podaci: konto sa SEC_KLIJENTI.KONTNA_KLASA_ID dodat u SEC_KLIJENT_KONTA, SEC_KLIJENTI.KONTNA_KLASA_ID = podrazumijevano konto najniže grupe | **izmijenjena postojeća tabela** + novi paket |

Storniranje dokumenata skladišta (R16) koristi postojeće kolone OPERACIJE.STORNIRANO i STORNIRAN_ID (kao stari FINANSIJE_PKG.storniraj_operacija): storniran dokument i storno dokument se ne računaju u stanje.

Popis skladišta (R17) koristi postojeće tabele POPISI i POPIS_STAVKE (PRETHODNA_KOLICINA = knjigovodstveno stanje, POPIS_KOLICINA = popisano). Dokumenti razlike inventure RIV / RIM su obični dokumenti skladišta (OPERACIJE) sa vezom POPIS_ID.
