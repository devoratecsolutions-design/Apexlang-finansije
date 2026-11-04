# Migracija na produkciju – SQL dio

Ovaj folder sadrži sve što se na produkciji pokreće u bazi (šema **ACCOUNTING**). Aplikacija se importuje posebno, **poslije** ovoga, klasičnim SQL exportom (produkcija je APEX 24.2).

| Fajl | Šta radi | Mijenja bazu? |
|---|---|---|
| `00_provjera_prije.sql` | provjera prije migracije: korisnik, prava, otisak paketa, broj stavki bez klase | ne |
| `01_indeksi.sql` | indeksi koji nedostaju (ONLINE, preskače postojeće) | da – samo indeksi |
| `02_dashboard_views.sql` | nova view-ova `VW_DASH_*` za dashboarde | da – novi objekti |
| `03_dashboard_pkg.sql` | novi paket `DASHBOARD_PKG` | da – novi objekat |
| `04_stavke.sql` | nova verzija `STAVKE_PKG` + klasa „Ostalo“ za stavke bez klase | da – paket i podaci |
| `06_kuf.sql` | novi paket `KUF_PKG` (ulazne fakture: zaštita brisanja, duplikati) | da – samo novi paket |
| `07_pdv_indikatori.sql` | **kao korisnik SIF, prije deploy skripte:** pravila PDV-a u šifarniku `SIF.ACC_PDV_INDIKATORI` (nove kolone, ujednačeni nazivi, D5, O1, O6, deaktivacija P8 i BU); rezervna kopija `ACC_PDV_INDIKATORI_BACKUP_V2` | da – kolone i podaci šifarnika |
| `07_pdv_indikatori_vracanje.sql` | vraćanje skripte 07 (kao SIF) | da |
| `08_kuf_model.sql` | ulazne fakture: tabele KUF_PDV, KUF_DOKUMENTI, KUF_AVANSI_ZATVARANJE; kolone VRSTA_DOKUMENTA_ID i VEZA_KUF_ID u KUF; vrste dokumenata UAV, UAVZ, UKO, UKZ i brojači; popunjava praznu godinu i vrstu dokumenta; kopira dokumente | da – struktura i podaci (evidencija u KUF_MIGRACIJA_V2) |
| `08_kuf_model_vracanje.sql` | vraćanje skripte 08 | da |
| `09_kuf_views.sql` | view-ovi za listu i formu ulaznih faktura (VW_KUF_*) | da – novi objekti |
| `10_kuf_pkg.sql` | KUF_PKG v2 (zamjenjuje paket iz 06) | da – paket |
| `05_provjera_poslije.sql` | provjera da je sve ispravno | ne |
| `99_vracanje.sql` | vraćanje u stanje prije migracije (samo u nuždi) | da |
| `deploy_prod.sql` | pokreće 00 → 05 redom, sa zapisnikom, staje na prvoj grešci | da |

**Jedina izmjena postojećih podataka:** stavke bez klase dobijaju klasu „Ostalo“ (pravi se po jedna za svaku firmu). Svaka premještena stavka se bilježi u `STAVKE_OSTALO_V2`, pa se može vratiti. Postojeće tabele se strukturno ne mijenjaju.

## Korak 1 – nekoliko dana prije migracije

1. Na **produkciji** pokrenuti `00_provjera_prije.sql` i poslati ispis.
2. Na **DEV-u** uzeti otisak paketa kakav je bio prije naše izmjene. Ako `04_stavke.sql` na DEV-u još nije pokrenut, dovoljno je pokrenuti `00_provjera_prije.sql` i na DEV-u. Ako jeste, pokrenuti ovaj upit (čita rezervnu kopiju):
   ```sql
   select type, count(*) as linija, sum(length(text)) as znakova,
          sum(ora_hash(rtrim(text, chr(10) || chr(13) || ' '))) as otisak
     from stavke_pkg_backup_v2
    group by type order by type;
   ```
3. Ako se tačka 3 iz provjere na produkciji (otisak `STAVKE_PKG`) **ne poklapa** sa DEV-om, paket na produkciji je drugačiji. Tada pošaljite izvor paketa sa produkcije, pa pripremam `04_stavke.sql` za nju; **ne pokretati** postojeću 04.
4. Ako u tački 5 neki objekat ima `PRAVO = NE`, DBA treba dati grant (npr. `grant execute on core.ooj_pkg to accounting;`, `grant select on sif.acc_valute to accounting;`) prije migracije.

## Korak 2 – dan migracije

1. **Backup:** export aplikacije 290 (SQL) i, ako je moguće, Data Pump export šeme ACCOUNTING ili bar izvor paketa `STAVKE_PKG`.
2. Van radnog vremena (indeksi i statistika opterećuju bazu), kao ACCOUNTING, iz ovog foldera:
   ```
   @deploy_prod.sql
   ```
   (SQLcl, SQL*Plus, SQL Developer – Run Script F5, ili PL/SQL Developer – Command Window)
3. Pregledati kraj zapisnika `deploy_prod.log`: u tački 1 svi objekti **VALID**, tačka 2 prazna. Zapisnik poslati.
4. Tek tada import aplikacije preko ID-a 290.

**Ako se koristi APEX SQL Workshop** (SQL Scripts): pokretati fajlove pojedinačno redom 00, 01, 02, 03, 04, 05. SQL Workshop preskače SQL*Plus naredbe i ne staje sam na grešci, pa poslije svakog fajla provjeriti da je „Errors: 0“; ako nije, stati i javiti.

## Ako nešto pođe po zlu

- Greška u 01: indeks koji ne prođe ispisuje se kao „GREŠKA …“, ostali se prave dalje; ne utiče na aplikaciju (indeks se može napraviti kasnije). Na bazi bez Enterprise Edition `ONLINE` nije dozvoljen – javiti, pa šaljem verziju bez ONLINE.
- Greška u 02–04: `deploy_prod.sql` staje. Poslati zapisnik. Aplikaciju **ne importovati**.
- Potpuno vraćanje SQL dijela: `@99_vracanje.sql` (vraća `STAVKE_PKG` iz rezervne kopije, stavke iz „Ostalo“ ponovo bez klase, briše `DASHBOARD_PKG`, `VW_DASH_*` i `KUF_PKG`). Uz to vratiti i prethodnu verziju aplikacije iz backup exporta, jer nova aplikacija koristi nove objekte.

Skripte 01–04 u ovom folderu su iste kao one pokrenute na DEV-u. Ako se do migracije doda nova SQL izmjena, ovaj folder se ažurira i UPUTSTVO dopunjava.

## Skripta 07 (šema SIF)

`07_pdv_indikatori.sql` mijenja šifarnik u šemi **SIF**, pa se ne pokreće iz `deploy_prod.sql` (koji radi kao ACCOUNTING). Pokrenite je kao SIF neposredno prije `deploy_prod.sql`. Skripta radi po šifri indikatora, pa ne zavisi od ID-jeva na produkciji; prije toga ipak pokrenite `sql/kuf_provjera_indikatora.sql` na produkciji i pošaljite ispis.

## DDL trigger LOKI

Na DEV-u je `ACCOUNTING.LOKI_BEFORE_DDL_TGR` pri prvom pokretanju skripte 08 zaustavio `comment on table` nad tek napravljenom tabelom (ORA-04088, LOKI_LOCK: no data found). Ako na produkciji postoji isti trigger, novi objekti moraju prvo biti registrovani u LOKI-ju (kao na DEV-u), pa se skripta pokreće ponovo. Skripte 08–10 se mogu pokretati više puta.

## Materijal i oprema / zalihe – skripte 11–19 (koraci R10–R18)

Pokreću se **poslije** skripti 00–10, redom, pa se tek onda importuje aplikacija:

| Redoslijed | Fajl | Šema | Šta radi |
|---|---|---|---|
| 1 | `16_rm_vrste_izlaz.sql` | **SIF** | nove vrste dokumenata skladišta (IZD, IIN, IOS, ISI, MPR, MPP, REV, REVP, RSV, RSVP, RAS, RIV, RIM, PSI, RSZ, RSR, VSR) za svaku firmu sa PRI |
| 2 | `18_core_error_manager.sql` | **CORE** | poruke grešaka u aplikaciji (poslovne sa stvarnim razlogom, sistemske prema vrsti greške + referentni broj); mijenja samo `F_APEX_ERROR_HANDLER` |
| 3 | `11_rm_model.sql` | ACCOUNTING | kolone i indeksi dokumenata skladišta, kalkulacije i popisa (OPERACIJE.POPIS_ID, POPIS_STAVKE.CIJENA / OPIS / SERIJSKI_BROJ, OPERACIJE.RADNIK_PRENOS_ID, POPISI.VRSTA / RADNIK_ID), brojači novih vrsta |
| 4 | `12_rm_pkg.sql` | ACCOUNTING | RM_DOKUMENT_PKG (dokumenti, zaključavanje, prenosi, reversi, serijski brojevi, storniranje, rashod, razlike inventure, zabrana datuma prije popisa) |
| 5 | `13_rm_views.sql` | ACCOUNTING | view-ovi dokumenata skladišta |
| 6 | `14_rm_skladista.sql` | ACCOUNTING | RM_SKLADISTE_PKG i view-ovi skladišta |
| 7 | `15_rm_kalkulacija.sql` | ACCOUNTING | kolone kalkulacije, RM_KALKULACIJA_PKG i view-ovi kalkulacije |
| 8 | `10_kuf_pkg.sql` | ACCOUNTING | KUF_PKG (provjera brisanja fakture u kalkulaciji) – ako nije već pokrenut |
| 9 | `17_rm_izvjestaji.sql` | ACCOUNTING | view-ovi izvještaja (VW_RM_PROMET, VW_RM_ZADUZENJA, VW_RM_NA_CEKANJU) |
| 10 | `19_rm_popis.sql` | ACCOUNTING | popis skladišta i popis sitnog inventara kod radnika: RM_POPIS_PKG, VW_RM_POPISI, VW_RM_POPIS_STAVKE, VW_RM_POPIS_DOKUMENTI, brojač POP (ako firma ima vrstu POP) |

**`18_core_error_manager.sql` mijenja postojeći paket u šemi CORE** koji koriste sve aplikacije. Tijelo paketa je preuzeto iz `ddl/core_ddl.sql`; prije pokretanja na produkciji uporediti tijelo `CORE.ERROR_MANAGER` u bazi sa tim DDL-om (npr. `select count(*), sum(ora_hash(text)) from all_source where owner = 'CORE' and name = 'ERROR_MANAGER' and type = 'PACKAGE BODY'` na obje baze) i sačuvati izvor iz baze. Ako se razlikuje – poslati izvor sa produkcije, pa se izmjena funkcije prenosi na tu verziju. Vraćanje: `18_core_error_manager_vracanje.sql`.
