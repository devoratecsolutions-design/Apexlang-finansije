# APEXlang – Finansije: pravila za agente

Ovaj repozitorij dijeli više agenata (Claude i drugi) i ljudi. Pročitaj ovo prije svake izmjene.

## Šta je gdje
- `finansije.zip` – ORIGINALNA aplikacija (APEX export). Ne mijenjati.
- `ddl/` – DDL šema baze (accounting, core, hrm, sif). Referenca, ne mijenjati bez dogovora.
- `PoreskiIndikatoriFMIS2_*.xlsx` – poslovna specifikacija PDV indikatora.
- `v2/` – DORAĐENA verzija:
  - `v2/izvor/` – APEXlang izvor aplikacije (app 1290, šema ACCOUNTING). Stranice u `pages/pNNNNN-*.apx`.
  - `v2/sql/` – razvojne SQL skripte (DEV).
  - `v2/produkcija/` – skripte za produkciju + `UPUTSTVO.md`, `SPISAK_IZMJENA_BAZE.md`. Kad se mijenja skripta u `v2/sql/` koja ide na produkciju, ažurirati i kopiju ovdje i UPUTSTVO.
  - `v2/import/` – fajl za import u APEX.
  - `v2/docs/` – opisi modula i dnevnici rada.
  - `v2/IZMJENE.md` – spisak svih izmjena. Svaku svoju izmjenu upiši ovdje.

## Kako radimo zajedno (obavezno)
1. **Prije početka:** `git checkout main && git pull`.
2. **Svaki zadatak na svojoj grani:** `git checkout -b <agent>/<kratak-opis>` (npr. `agent1/kuf-avansi`, `agent2/rm-kalkulacija`). Nikad ne raditi direktno na `main`.
3. **Prijavi šta zauzimaš:** u `RADNI_ZADACI.md` upiši granu, modul i fajlove (stranice/pakete) na kojima radiš, commit-uj i push-uj to ODMAH, prije samog rada. Ako je fajl već zauzet od drugog agenta – ne diraj ga, javi korisniku.
4. **Mali, česti commit-i** sa jasnom porukom na našem jeziku: `KUF: zaštita brisanja plaćenih faktura`.
5. **Kraj zadatka:** `git pull origin main` u svoju granu, riješi konflikte, push, otvori Pull Request prema `main`. Obriši svoj red iz `RADNI_ZADACI.md`.
6. Brojevi SQL skripti (`NN_naziv.sql`) – prije dodavanja nove provjeri najveći broj na `main` i u `RADNI_ZADACI.md`, i rezerviši broj tamo, da dva agenta ne uzmu isti.
7. Ne commit-ovati lozinke, connection stringove ni podatke klijenata.

## Oprez kod APEXlang fajlova
- Jedna stranica = jedan `.apx` fajl. Dva agenta ne smiju istovremeno mijenjati istu stranicu niti `shared-components/lists.apx`, `lovs.apx`, `app-processes.apx` (dijeljeni fajlovi – najavi u RADNI_ZADACI.md).
- `v2/import/finansije-v2.zip` se pravi iz `v2/izvor/` – regenerisati ga na kraju, samo na `main`, da ne nastaju konflikti u binarnom fajlu.
