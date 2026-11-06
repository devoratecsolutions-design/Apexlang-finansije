# Izlazne fakture v2 – dnevnik razvoja

## Izlazne fakture v2 – koraci I1–I2: model, KIF_PKG, veza sa skladištem (06.11.2026, grana claude/if-analiza)
Analiza: `v2/docs/analiza-izlazne-fakture.md`. Odluke korisnika (06.11.2026): prodajno mjesto / skladište se bira na listi faktura; faktura sadrži robu samo jednog skladišta; serijski brojevi kao na ostalim izlazima skladišta; avans i zatvaranje avansa po principu ulaznih faktura – avans ima jednu stavku (uslugu); PDV indikatori po stavci.
- **Veza sa skladištem:** robni modul ne čita KIF. Uz fakturu sa robom postoji vezani dokument skladišta – **OTP Otpremnica** (veleprodaja) ili **PMP Prodaja u maloprodaji** (po MPC) – `OPERACIJE.FAKTURA_ID`, stavke preko `KIF_STAVKE.OPERACIJA_STAVKA_ID`:
  - nastaje sa prvom robom na fakturi i prati stavke dok je faktura u pripremi (raspoloživo se odmah umanjuje; serijski brojevi se vežu za njegove stavke – isti dijalog kao kod ostalih izlaza);
  - u robnom modulu je samo za pregled (forma 331 prikazuje razlog; snimanje, stavke, zaključavanje, otključavanje i storno idu samo kroz fakturu – `RM_DOKUMENT_PKG.iz_fakture`, `razlog_veze_fakture`);
  - zaključavanje fakture zaključava dokument (cijena izlaza iz robnog modula), storno fakture pravi i storno dokumenta (vezan za storno fakturu).
- **KIF_PKG** (novi paket, logika forme): zaglavlje (broj iz brojača vrste pri snimanju, tip cijene iz cjenovnika prodajnog mjesta), stavke (cijena iz cjenovnika: VP – VPC, MP – MPC bez PDV-a; rabat; PDV po izlaznom indikatoru, firma van PDV sistema bez indikatora), avans (jedna stavka – usluga), uračunati avansi na konačnoj fakturi (pri zaključavanju automatski dokument zatvaranja AVZ sa jednom stavkom), KO / KZ samo na zaključenu fakturu istog kupca (za sada finansijski – povrat robe je sljedeći korak), zaključaj, otključaj (administrator; ne fiskalizovana / proknjižena), storno (preko postojećeg `FINANSIJE_PKG.storniraj_kif`, i zatvaranja avansa), brisanje samo u pripremi.
- **Statusi:** postojeće fakture dobijaju status Z (K proknjižene; predračuni ostaju P) – do sada je svaka faktura bila konačna odmah po unosu. Stare stranice (51–58) i dalje rade.
- **SQL (redom):** `16_rm_vrste_izlaz.sql` (SIF), pa kao ACCOUNTING `11_rm_model.sql`, `12_rm_pkg.sql`, `22_if_model.sql`, `23_if_views.sql`, `24_if_pkg.sql`. Import aplikacije nije potreban za ovaj korak (osim male izmjene p331 – razlog za vezani dokument).
- **Slijedi I3:** nove forme – lista 50 (prodajno mjesto, status, otpremnica) i forma fakture sa stavkama (IG), PDV specifikacijom, uračunatim avansima, serijskim brojevima, dugmadima Zaključaj / Otključaj / Storniraj / Fiskalizacija / Štampa.

## Odluka: storno izlazne fakture (06.11.2026)
- Storno je dokument **iste vrste i sa istog brojača** kao original (kao ulazne fakture) – nema posebnih brojača ni vrsta za storno (`ifs`, `avs`, `kos`, `kzs` se više ne koriste u v2). Iznosi i količine su sa suprotnim predznakom; storno je zaključen i vezan za original (`STORNIRAN_ID`), original dobija `STORNIRANO = Y`. Knjiženje se radi iznova, pa ga ovo ne ograničava.
- `KIF_PKG.storno_dokument` (interna) zamjenjuje poziv `FINANSIJE_PKG.storniraj_kif`; koristi se i za storno automatskog zatvaranja avansa. Proknjiženom originalu se stornira i nalog (postojeći `GLAVNA_KNJIGA_PKG.storniraj_glavna_knjiga`, bez kaskade).
- **SQL:** ponovo `24_if_pkg.sql`.
