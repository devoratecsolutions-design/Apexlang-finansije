# Izlazne fakture v2 – radni folder (razvoj u toku)

Ovaj folder sadrži **samo izmjene u toku razvoja** modula Izlazne fakture (koraci I1–I6) i veze sa Robnim modulom. Ništa iz njega nije u konačnoj verziji (`v2/`) dok se razvoj ne završi i ne testira.

## Sadržaj
| Folder / fajl | Šta je |
|---|---|
| `IZMJENE.md` | dnevnik razvoja (koraci I1, I2, …), redoslijed pokretanja skripti |
| `docs/analiza-izlazne-fakture.md` | analiza, odluke korisnika, prijedlog veze faktura – dokument skladišta |
| `sql/` | SQL skripte za DEV. **Cijele verzije** fajlova: nove (`22_if_model`, `23_if_views`, `24_if_pkg`, `if_podaci_za_analizu`) i izmijenjene postojeće (`11_rm_model`, `12_rm_pkg`, `16_rm_vrste_izlaz` – sadrže i sve iz `v2/sql`) |
| `izvor/pages/` | izmijenjene / nove APEXlang stranice (samo one koje se mijenjaju) |
| `import/` | razvojni zip za import na DEV (`v2/izvor` + stranice iz ovog foldera) |

## Pokretanje na DEV-u
Redoslijed je u `IZMJENE.md` (posljednji korak). Skripte se pokreću **iz ovog foldera**, ne iz `v2/sql`.

## Prebacivanje u konačnu verziju (kad je razvoj gotov i testiran)
1. `sql/*.sql` → `v2/sql/` i `v2/produkcija/` (zamijeniti postojeće 11, 12, 16; dodati 22–24); dopuniti `v2/produkcija/UPUTSTVO.md` i `SPISAK_IZMJENA_BAZE.md`.
2. `izvor/pages/*` → `v2/izvor/pages/` (i dijeljene komponente ako ih bude).
3. `docs/` → `v2/docs/`; sadržaj `IZMJENE.md` → kraj `v2/IZMJENE.md`.
4. Regenerisati `v2/import/finansije-v2.zip` na `main`.
5. Obrisati ovaj folder.

## Napomena za druge agente
Fajlovi `11_rm_model.sql`, `12_rm_pkg.sql`, `16_rm_vrste_izlaz.sql` i stranica `p00331` se ovdje razvijaju – ako ih mijenjate u `v2/`, javite (izmjene treba prenijeti i ovdje). Vidi `RADNI_ZADACI.md`.
