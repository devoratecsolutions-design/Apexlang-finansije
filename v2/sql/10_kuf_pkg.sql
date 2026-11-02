/*
================================================================================
  ESSCOM Finansije - 10_kuf_pkg.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 08_kuf_model.sql i 09_kuf_views.sql
  (zamjenjuje paket iz 06_kuf.sql - sadrži i sve njegove funkcije)

  Svrha: KUF_PKG v2 - sva logika ulazne fakture na jednom mjestu (korak 4a)
    Zaglavlje        snimi, zakljucaj, otkljucaj, storniraj, obrisi
    Avans / KO       preuzmi_stavke, raspolozivo_reda, snimi_avans_red, uskladi_avanse (4c, 4d):
                     avans ima jednu stavku; KO i zatvaranje avansa preuzimaju
                     redove sa originala i ne mogu preći raspoloživi iznos;
                     konačna faktura i njeno zatvaranje avansa zaključavaju se,
                     storniraju i brišu zajedno; KO nije moguć uz zatvaranje
    PDV specifikacija snimi_pdv_red, obrisi_pdv_red, preracunaj,
                      pripremi_specifikaciju
    Provjere          provjeri_zaglavlje (pri snimanju), provjeri (prije
                      zaključavanja), duplikat,
                      razlog_zabrane_brisanja, je_izmjenjiva
    Pomoćne           vrsta_sifra, predznak, kurs, stopa, predlog_pdv,
                      tip_dokumenta (iz mapiranja indikatora)
    Dokumenti         dodaj_dokument (više fajlova, opis), obrisi_dokument, posalji_dokument
  Iznosi u KM se uvijek računaju iz iznosa u valuti i kursa na datum fakture
  (jedno mjesto: preracunaj). Knjižno odobrenje (UKO) i zatvaranje avansa
  (UAVZ) se čuvaju sa negativnim predznakom; korisnik unosi pozitivne iznose.
  Postojeći FINANSIJE_PKG se NE mijenja.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

create or replace package kuf_pkg as
    --------------------------------------------------------------
    -- Ulazne fakture (KUF) - v2
    --------------------------------------------------------------
    c_tolerancija_pdv constant number := 0.05;   -- dozvoljeno odstupanje PDV-a po redu (KM)

    -- pomoćne
    function vrsta_sifra (p_vrsta_dokumenta_id in number) return varchar2;
    -- broj iz teksta forme (1.234,56 / 1,234.56 / 1234.56); privremeni ID novog reda (t1000) -> null
    function broj (p_vrijednost in varchar2) return number;
    function predznak (p_vrsta_dokumenta_id in number) return number;
    function kurs (p_valuta_id in number, p_ooj_id in number, p_datum in date) return number;
    function stopa (p_pdv_indikator_id in number) return number;
    function predlog_pdv (p_pdv_indikator_id in number, p_osnovica in number) return number;
    function tip_dokumenta (p_pdv_indikator_id in number) return number;
    function je_izmjenjiva (p_id in number) return boolean;
    -- za formu: kurs kao tekst i stope indikatora kao JSON {id: {s: stopa, d: pdv_dobavljacu}}
    function kurs_prikaz (p_valuta_id in number, p_ooj_id in number, p_datum in date) return varchar2;
    function stope_json return varchar2;

    -- zaglavlje: insert kad je p_id prazan (broj iz brojača vrste dokumenta)
    function snimi (
        p_id                   in number,
        p_ooj_id               in number,
        p_godina               in number,
        p_vrsta_dokumenta_id   in number,
        p_klijent_id           in number,
        p_broj_fakture         in varchar2,
        p_datum_fakture        in date,
        p_datum_prijema        in date,
        p_datum_valute         in date,
        p_valuta_id            in number,
        p_tip_placanja_id      in number,
        p_fiskalni_racun_broj  in varchar2 default null,
        p_ugovor_id            in number default null,
        p_veza_kuf_id          in number default null,
        p_uio_tip_dokumenta_id in number default null
    ) return number;

    -- PDV specifikacija (iznosi u valuti fakture; KM računa preracunaj)
    procedure snimi_pdv_red (
        p_id               in out number,
        p_kuf_id           in number,
        p_redni_broj       in number,
        p_pdv_indikator_id in number,
        p_valuta_osnovica  in number,
        p_valuta_pdv       in number default null,  -- prazno = po stopi indikatora
        p_izvor_red_id     in number default null   -- KO / zatvaranje: red originala (novi red)
    );
    procedure obrisi_pdv_red (p_id in number);
    procedure preracunaj (p_kuf_id in number);
    -- faktura bez svojih redova (stari unos) dobija redove iz zaglavlja
    procedure pripremi_specifikaciju (p_kuf_id in number);

    -- KO i zatvaranje avansa: redovi se preuzimaju sa originala / avansa,
    -- iznos reda ne smije biti veći od raspoloživog (osnovica u valuti, pozitivno)
    function raspolozivo_reda (p_izvor_red_id in number, p_bez_reda_id in number default null) return number;
    procedure preuzmi_stavke (p_kuf_id in number);
    -- konačna faktura: uračunati avansi (svaki je automatsko zatvaranje avansa UAVZ)
    function valuta_sifra (p_valuta_id in number) return varchar2;
    function valute_dozvoljene (p_valuta_fakture in number, p_valuta_avansa in number) return varchar2;
    function avans_raspolozivo (p_avans_id in number, p_kuf_id in number) return number;
    function avans_info (p_avans_id in number, p_kuf_id in number) return varchar2;          -- JSON za formu
    procedure snimi_avans_red (p_id in out number, p_kuf_id in number, p_avans_id in number, p_iznos in number);
    procedure obrisi_avans_red (p_id in number);
    procedure uskladi_avanse (p_kuf_id in number, p_uracunat in varchar2);
    -- snimanje forme: dokument mora imati bar jedan red PDV specifikacije
    procedure provjeri_stavke (p_kuf_id in number);
    -- KO / zatvaranje avansa: stavke originala za popunjavanje forme prije snimanja (JSON)
    function stavke_za_preuzimanje (p_veza_id in number, p_vrsta_sifra in varchar2, p_kuf_id in number) return varchar2;
    -- veze dokumenta (storno, original, faktura na koju se odnosi, zatvaranje avansa) kao linkovi
    function veze_html (p_id in number, p_orig in varchar2 default null) return varchar2;

    -- provjere; vraćaju tekst greške ili null
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_klijent_id         in number,
        p_broj_fakture       in varchar2,
        p_datum_fakture      in date,
        p_datum_prijema      in date,
        p_datum_valute       in date,
        p_ugovor_id          in number,
        p_veza_kuf_id        in number,
        p_valuta_id          in number default null
    ) return varchar2;
    function provjeri (p_kuf_id in number) return varchar2;
    function razlog_zabrane_brisanja (p_id in number) return varchar2;
    function duplikat (
        p_ooj_id       in number,
        p_klijent_id   in number,
        p_broj_fakture in varchar2,
        p_godina       in number,
        p_id           in number default null,
        p_vrsta_dokumenta_id in number default null   -- duplikat se traži unutar iste vrste dokumenta
    ) return varchar2;

    -- statusi
    procedure zakljucaj (p_id in number);
    procedure otkljucaj (p_id in number);
    -- p_sa_fakturom = 'Y' samo interno: zatvaranje avansa se stornira zajedno sa konačnom fakturom
    function storniraj (p_id in number, p_datum in date, p_sa_fakturom in varchar2 default 'N') return number;
    procedure obrisi (p_id in number, p_ooj_id in number);

    -- dokumenti (p_naziv_fajla = vrijednost File Upload stavke, APEX temp files)
    procedure dodaj_dokument (p_kuf_id in number, p_naziv_fajla in varchar2, p_opis in varchar2 default null);
    procedure posalji_dokument (p_id in number, p_ooj_id in number, p_nacin in varchar2 default 'inline');
    procedure opis_dokumenta (p_id in number, p_ooj_id in number, p_opis in varchar2);
    -- KO, KZ i zatvaranje avansa nose valutu povezane fakture
    function veza_valuta (p_veza_id in number) return number;
    -- UIO KUF: samo zaključen dokument firme u PDV sistemu; null = dozvoljeno
    function razlog_zabrane_uio (p_kuf_id in number, p_ooj_id in number) return varchar2;
    procedure obrisi_dokument (p_id in number);

end kuf_pkg;
/

create or replace package body kuf_pkg as

    -- poslovna greška: CORE.ERROR_MANAGER korisniku prikazuje samo poruke koje počinju
    -- sa 'Greška CORP-' (ostale zamjenjuje generičkom porukom sa referentnim brojem)
    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20201, 'Greška CORP-KUF: ' || p_tekst);
    end greska;

    function ko_indikator (p_pdv_indikator_id in number) return number;
    procedure materijalizuj (p_kuf_id in number);

    function vrsta_sifra (p_vrsta_dokumenta_id in number) return varchar2 is
    begin
        for c in (select upper(sifra) as sifra from sif.vrste_dokumenata where id = p_vrsta_dokumenta_id) loop
            return c.sifra;
        end loop;
        return 'UF';
    end vrsta_sifra;

    function broj (p_vrijednost in varchar2) return number is
        l_t   varchar2(200) := replace(replace(trim(p_vrijednost), ' '), chr(160));
        l_neg boolean := false;
        l_dec varchar2(1);
        l_grp varchar2(1);
        l_nls varchar2(10);
        l_pt  pls_integer;
        l_cm  pls_integer;
    begin
        if l_t is null then
            return null;
        end if;
        if substr(l_t, 1, 1) in ('-', '+') then
            l_neg := substr(l_t, 1, 1) = '-';
            l_t := substr(l_t, 2);
        end if;
        if not regexp_like(l_t, '^[0-9][0-9.,]*$') then
            return null;
        end if;
        l_pt := instr(l_t, '.', -1);
        l_cm := instr(l_t, ',', -1);
        if l_pt > 0 and l_cm > 0 then
            l_dec := case when l_pt > l_cm then '.' else ',' end;
        elsif l_pt + l_cm > 0 then
            l_dec := case when l_pt > 0 then '.' else ',' end;
            select max(value) into l_nls from nls_session_parameters where parameter = 'NLS_NUMERIC_CHARACTERS';
            -- znak koji se ponavlja, ili separator hiljada iza kojeg su tačno 3 cifre = hiljade
            if regexp_count(l_t, '\' || l_dec) > 1
               or (l_dec = substr(l_nls, 2, 1) and regexp_like(l_t, '\' || l_dec || '[0-9]{3}$')) then
                l_dec := null;
            end if;
        end if;
        l_grp := case l_dec when '.' then ',' when ',' then '.' end;
        if l_dec is null then
            l_t := replace(replace(l_t, '.'), ',');
        else
            l_t := replace(replace(l_t, l_grp), l_dec, '.');
        end if;
        return case when l_neg then -1 else 1 end
               * to_number(l_t, '99999999999999999999D9999999999', 'NLS_NUMERIC_CHARACTERS=''.,''');
    exception
        when value_error or invalid_number then
            return null;
    end broj;

    function predznak (p_vrsta_dokumenta_id in number) return number is
    begin
        return case when vrsta_sifra(p_vrsta_dokumenta_id) in ('UKO', 'UAVZ') then -1 else 1 end;
    end predznak;

    function kurs (p_valuta_id in number, p_ooj_id in number, p_datum in date) return number is
    begin
        if p_valuta_id is null or p_datum is null then
            return null;
        end if;
        return sif.acc_pkg.get_kurs_na_dan(p_valuta_id, p_ooj_id, p_datum);
    end kurs;

    function stopa (p_pdv_indikator_id in number) return number is
    begin
        for c in (select vrijednost from sif.acc_pdv_indikatori where id = p_pdv_indikator_id) loop
            return nvl(c.vrijednost, 0);
        end loop;
        return 0;
    end stopa;

    function predlog_pdv (p_pdv_indikator_id in number, p_osnovica in number) return number is
    begin
        return round(nvl(p_osnovica, 0) * stopa(p_pdv_indikator_id) / 100, 2);
    end predlog_pdv;

    function tip_dokumenta (p_pdv_indikator_id in number) return number is
        l_tip number;
    begin
        select min(m.uio_tip_dokumenta_id)
          into l_tip
          from sif.vw_uio_tip_dokumenta_pdv_indikatori m
          join sif.acc_uio_tipovi_dokumenata t on t.id = m.uio_tip_dokumenta_id
         where m.pdv_indikator_id = p_pdv_indikator_id
           and m.valid = 'Y'
           and t.ui = 'U'
        having count(distinct m.uio_tip_dokumenta_id) = 1;
        return l_tip;
    exception
        when no_data_found then
            return null;
    end tip_dokumenta;

    function je_izmjenjiva (p_id in number) return boolean is
        l_status kuf.status%type;
    begin
        select status into l_status from kuf where id = p_id;
        return nvl(l_status, 'P') = 'P' and finansije_pkg.is_kuf_editable(p_id);
    exception
        when no_data_found then
            return false;
    end je_izmjenjiva;

    -- zatvaranje avansa se preračunava po kursu na dan avansa, ostali dokumenti na dan fakture
    function datum_kursa (p_kuf_id in number) return date is
    begin
        for k in (select k.datum_fakture, k.vrsta_dokumenta_id, v.datum_fakture as datum_veze
                    from kuf k left join kuf v on v.id = k.veza_kuf_id
                   where k.id = p_kuf_id) loop
            return case when vrsta_sifra(k.vrsta_dokumenta_id) = 'UAVZ'
                        then nvl(k.datum_veze, k.datum_fakture) else k.datum_fakture end;
        end loop;
        return null;
    end datum_kursa;

    function kurs_prikaz (p_valuta_id in number, p_ooj_id in number, p_datum in date) return varchar2 is
        l_kurs number := kurs(p_valuta_id, p_ooj_id, p_datum);
    begin
        if p_valuta_id is null or p_datum is null then
            return null;
        elsif l_kurs is null then
            return 'Nema kursa na datum fakture';
        end if;
        return to_char(l_kurs, 'FM999G990D000000');
    end kurs_prikaz;

    function stope_json return varchar2 is
        l_json varchar2(32767);
    begin
        select json_objectagg(key to_char(id) value json_object('s' value stopa, 'd' value pdv_dobavljacu)
                              returning varchar2(4000))
          into l_json
          from vw_kuf_pdv_indikatori;
        return nvl(l_json, '{}');
    end stope_json;

    ----------------------------------------------------------------- zaglavlje
    function snimi (
        p_id                   in number,
        p_ooj_id               in number,
        p_godina               in number,
        p_vrsta_dokumenta_id   in number,
        p_klijent_id           in number,
        p_broj_fakture         in varchar2,
        p_datum_fakture        in date,
        p_datum_prijema        in date,
        p_datum_valute         in date,
        p_valuta_id            in number,
        p_tip_placanja_id      in number,
        p_fiskalni_racun_broj  in varchar2 default null,
        p_ugovor_id            in number default null,
        p_veza_kuf_id          in number default null,
        p_uio_tip_dokumenta_id in number default null
    ) return number is
        l_id     number := p_id;
        l_sifra  varchar2(20) := lower(vrsta_sifra(p_vrsta_dokumenta_id));
        l_broj   number;
        l_naziv  varchar2(255);
        l_stara_veza number;
        l_valuta number := p_valuta_id;
    begin
        -- KO, KZ i zatvaranje avansa: valuta je uvijek valuta povezane fakture / avansa
        if l_sifra in ('uavz', 'uko', 'ukz') and p_veza_kuf_id is not null then
            select max(valuta_id) into l_valuta from kuf where id = p_veza_kuf_id;
            l_valuta := nvl(l_valuta, p_valuta_id);
        end if;
        if l_id is null then
            -- broj iz brojača vrste dokumenta, tek pri snimanju
            core.protokoli_pkg.get_brojac(
                p_ooj_id             => p_ooj_id,
                p_godina             => p_godina,
                p_vrsta_naloga_sifra => l_sifra,
                p_broj               => l_broj,
                p_naziv              => l_naziv
            );
            insert into kuf (
                ooj_id, godina, vrsta_dokumenta_id, klijent_id, naziv_fakture,
                datum_fakture, datum_prijema, datum_valute, valuta_id, tip_placanja_id,
                fiskalni_racun_broj, ugovor_id, veza_kuf_id, uio_tip_dokumenta_id,
                naziv, broj, status, stornirano, uplaceno
            ) values (
                p_ooj_id, p_godina, p_vrsta_dokumenta_id, p_klijent_id, trim(p_broj_fakture),
                p_datum_fakture, p_datum_prijema, p_datum_valute, l_valuta, p_tip_placanja_id,
                p_fiskalni_racun_broj, p_ugovor_id, p_veza_kuf_id, p_uio_tip_dokumenta_id,
                l_naziv, l_broj, 'P', 'N', case when l_sifra = 'uav' then 'Y' else 'N' end
            ) returning id into l_id;
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => l_sifra,
                p_godina             => p_godina,
                p_value              => 1
            );
        else
            if not je_izmjenjiva(l_id) then
                greska('Faktura je zaključana, proknjižena ili u zaključanom periodu i ne može se mijenjati.');
            end if;
            select veza_kuf_id into l_stara_veza from kuf where id = l_id;
            update kuf
               set klijent_id           = p_klijent_id,
                   naziv_fakture        = trim(p_broj_fakture),
                   datum_fakture        = p_datum_fakture,
                   datum_prijema        = p_datum_prijema,
                   datum_valute         = p_datum_valute,
                   valuta_id            = l_valuta,
                   tip_placanja_id      = p_tip_placanja_id,
                   fiskalni_racun_broj  = p_fiskalni_racun_broj,
                   ugovor_id            = p_ugovor_id,
                   veza_kuf_id          = p_veza_kuf_id,
                   uio_tip_dokumenta_id = nvl(p_uio_tip_dokumenta_id, uio_tip_dokumenta_id)
             where id = l_id
               and ooj_id = p_ooj_id;
            if sql%rowcount = 0 then
                greska('Faktura ne postoji ili ne pripada izabranoj firmi.');
            end if;
            -- KO / zatvaranje avansa: promijenjena veza -> redovi preuzeti sa stare veze se brišu
            -- (nove redove forma šalje kroz snimi_pdv_red sa p_izvor_red_id)
            if l_sifra in ('uko', 'uavz') and nvl(l_stara_veza, -1) <> nvl(p_veza_kuf_id, -1) then
                delete from kuf_pdv
                 where kuf_id = l_id
                   and izvor_red_id is not null
                   and izvor_red_id not in (select id from kuf_pdv where kuf_id = nvl(p_veza_kuf_id, -1));
            end if;
            preracunaj(l_id);   -- datum ili valuta su mogli promijeniti kurs
        end if;
        return l_id;
    end snimi;

    ----------------------------------------------------------------- PDV redovi
    procedure snimi_pdv_red (
        p_id               in out number,
        p_kuf_id           in number,
        p_redni_broj       in number,
        p_pdv_indikator_id in number,
        p_valuta_osnovica  in number,
        p_valuta_pdv       in number default null,
        p_izvor_red_id     in number default null
    ) is
        l_vrsta number;
        l_vrs   varchar2(20);
        l_zn    number;
        l_osn   number;
        l_pdv   number;
        l_ind   number := p_pdv_indikator_id;
        l_izvor number;
        l_rb    number;
        l_max   number;
        l_n     number;
    begin
        if not je_izmjenjiva(p_kuf_id) then
            greska('Faktura je zaključana i PDV specifikacija se ne može mijenjati.');
        end if;
        select vrsta_dokumenta_id into l_vrsta from kuf where id = p_kuf_id;
        l_vrs := vrsta_sifra(l_vrsta);
        l_zn  := predznak(l_vrsta);

        if l_vrs = 'UAV' and p_id is null then
            select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id;
            if l_n > 0 then
                greska('Avansna faktura ima samo jednu stavku.');
            end if;
        end if;

        if l_vrs in ('UKO', 'UAVZ') then
            if p_id is null then
                if p_izvor_red_id is null then
                    greska(case l_vrs
                               when 'UAVZ' then 'Stavka zatvaranja se preuzima sa avansa; novi red se ne može dodati.'
                               else 'Stavke knjižnog odobrenja se preuzimaju sa originalne fakture; novi red se ne može dodati.'
                           end);
                end if;
                select count(*) into l_n
                  from kuf_pdv r
                  join kuf k on k.id = p_kuf_id
                 where r.id = p_izvor_red_id and r.kuf_id = k.veza_kuf_id;
                if l_n = 0 then
                    greska('Preuzeta stavka ne pripada izabranoj ' || case l_vrs when 'UAVZ' then 'avansnoj' else 'originalnoj' end
                           || ' fakturi. Ponovo izaberite fakturu.');
                end if;
                select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id and izvor_red_id = p_izvor_red_id;
                if l_n > 0 then
                    greska('Ista stavka originala je već preuzeta u ovaj dokument.');
                end if;
                select pdv_indikator_id into l_ind from kuf_pdv where id = p_izvor_red_id;
                l_ind   := case when l_vrs = 'UKO' then ko_indikator(l_ind) else l_ind end;
                l_izvor := p_izvor_red_id;
                l_rb    := p_redni_broj;
            else
                -- indikator i veza ostaju kao pri preuzimanju; mijenja se samo iznos
                select pdv_indikator_id, izvor_red_id, redni_broj
                  into l_ind, l_izvor, l_rb
                  from kuf_pdv
                 where id = p_id and kuf_id = p_kuf_id;
            end if;
            if l_izvor is not null then
                l_max := raspolozivo_reda(l_izvor, p_id);
                if abs(p_valuta_osnovica) > l_max then
                    greska('Iznos u redu ' || l_rb || ' (' || to_char(abs(p_valuta_osnovica), 'FM999G999G990D00')
                           || ') veći je od raspoloživog (' || to_char(l_max, 'FM999G999G990D00') || ').');
                end if;
            end if;
        end if;

        l_osn := case when l_zn = -1 then -abs(p_valuta_osnovica) else p_valuta_osnovica end;
        l_pdv := nvl(p_valuta_pdv, predlog_pdv(l_ind, abs(p_valuta_osnovica)));
        l_pdv := case when l_zn = -1 then -abs(l_pdv) else l_pdv end;

        if p_id is null then
            insert into kuf_pdv (kuf_id, redni_broj, pdv_indikator_id, valuta_osnovica, valuta_pdv, izvor_red_id)
            values (p_kuf_id,
                    nvl(p_redni_broj, (select nvl(max(redni_broj), 0) + 1 from kuf_pdv where kuf_id = p_kuf_id)),
                    l_ind, round(l_osn, 2), round(l_pdv, 2), l_izvor)
            returning id into p_id;
        else
            update kuf_pdv
               set redni_broj       = nvl(p_redni_broj, redni_broj),
                   pdv_indikator_id = l_ind,
                   valuta_osnovica  = round(l_osn, 2),
                   valuta_pdv       = round(l_pdv, 2),
                   row_version      = row_version + 1,
                   updated          = sysdate,
                   updated_by       = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
             where id = p_id
               and kuf_id = p_kuf_id;
        end if;
    end snimi_pdv_red;

    procedure obrisi_pdv_red (p_id in number) is
        l_kuf number;
    begin
        select kuf_id into l_kuf from kuf_pdv where id = p_id;
        if not je_izmjenjiva(l_kuf) then
            greska('Faktura je zaključana i PDV specifikacija se ne može mijenjati.');
        end if;
        for k in (select vrsta_dokumenta_id from kuf where id = l_kuf) loop
            if vrsta_sifra(k.vrsta_dokumenta_id) = 'UAVZ' then
                greska('Stavka zatvaranja avansa se ne briše - promijenite iznos ili obrišite dokument.');
            end if;
        end loop;
        delete from kuf_pdv where id = p_id;
    exception
        when no_data_found then
            null;
    end obrisi_pdv_red;

    procedure preracunaj (p_kuf_id in number) is
        r_kuf   kuf%rowtype;
        l_kurs  number;
        l_glavni number;
        l_tip   number;
    begin
        select * into r_kuf from kuf where id = p_kuf_id;
        l_kurs := nvl(kurs(r_kuf.valuta_id, r_kuf.ooj_id, datum_kursa(p_kuf_id)), 1);

        update kuf_pdv
           set osnovica = round(valuta_osnovica * l_kurs, 2),
               pdv      = round(valuta_pdv * l_kurs, 2)
         where kuf_id = p_kuf_id;

        -- glavni indikator = red sa najvećom osnovicom (za postojeći kod i knjiženje)
        select max(pdv_indikator_id) keep (dense_rank first order by abs(osnovica) desc nulls last, redni_broj)
          into l_glavni
          from kuf_pdv
         where kuf_id = p_kuf_id;
        l_tip := tip_dokumenta(l_glavni);

        update kuf k
           set (k.valuta_iznos_bez_pdv, k.valuta_iznos_sa_pdv,
                k.iznos_bez_pdv, k.iznos_sa_pdv) =
               (select sum(s.valuta_osnovica),
                       sum(s.valuta_iznos_sa_pdv),   -- iznos sa fakture dobavljača
                       sum(s.osnovica),
                       sum(s.iznos_sa_pdv)
                  from vw_kuf_pdv_spec s
                 where s.kuf_id = k.id),
               k.pdv_indikator_id     = l_glavni,
               k.uio_tip_dokumenta_id = nvl(l_tip, k.uio_tip_dokumenta_id)
         where k.id = p_kuf_id;

        -- zatvaranje avansa: evidencija u KUF_AVANSI_ZATVARANJE (iznos sa PDV-om, pozitivno);
        -- faktura_id = sam dokument (ručno) ili konačna faktura (postavlja snimi_avans_red)
        if vrsta_sifra(r_kuf.vrsta_dokumenta_id) = 'UAVZ' and r_kuf.veza_kuf_id is not null then
            merge into kuf_avansi_zatvaranje z
            using (select k.id, k.ooj_id, k.veza_kuf_id, k.datum_fakture, abs(nvl(k.iznos_sa_pdv, 0)) as iznos
                     from kuf k where k.id = p_kuf_id) s
               on (z.avans_zatvaranja_id = s.id and z.storno is null)
             when matched then update
                  set z.avans_id = s.veza_kuf_id, z.datum_zatvaranja = s.datum_fakture, z.iznos = s.iznos,
                      z.row_version = z.row_version + 1, z.updated = sysdate,
                      z.updated_by = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
             when not matched then
                  insert (ooj_id, avans_id, faktura_id, avans_zatvaranja_id, datum_zatvaranja, iznos)
                  values (s.ooj_id, s.veza_kuf_id, s.id, s.id, s.datum_fakture, s.iznos);
        end if;
    end preracunaj;

    -- redovi iz zaglavlja za fakturu bez svojih redova, bez obzira na status
    -- (da bi se na red originala mogao vezati KO / zatvaranje avansa)
    procedure materijalizuj (p_kuf_id in number) is
        l_n number;
    begin
        select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id;
        if l_n = 0 then
            insert into kuf_pdv (kuf_id, redni_broj, pdv_indikator_id, osnovica, pdv, valuta_osnovica, valuta_pdv)
            select s.kuf_id, s.redni_broj, s.pdv_indikator_id, s.osnovica, s.pdv, s.valuta_osnovica, s.valuta_pdv
              from vw_kuf_pdv_spec s
             where s.kuf_id = p_kuf_id;
        end if;
    end materijalizuj;

    function raspolozivo_reda (p_izvor_red_id in number, p_bez_reda_id in number default null) return number is
        l_osn number;
        l_isk number;
    begin
        select abs(valuta_osnovica) into l_osn from kuf_pdv where id = p_izvor_red_id;
        select nvl(sum(abs(r.valuta_osnovica)), 0)
          into l_isk
          from kuf_pdv r
          join kuf d on d.id = r.kuf_id
         where r.izvor_red_id = p_izvor_red_id
           and r.id <> nvl(p_bez_reda_id, -1)
           and nvl(d.stornirano, 'N') = 'N'
           and d.storniran_id is null;
        return greatest(l_osn - l_isk, 0);
    exception
        when no_data_found then
            return 0;
    end raspolozivo_reda;

    -- indikator knjižnog odobrenja za red originalne fakture (N3 / N4 / N5)
    function ko_indikator (p_pdv_indikator_id in number) return number is
        l_sifra varchar2(10);
        l_id    number;
    begin
        for c in (select vrsta, pravo_na_odbitak from sif.acc_pdv_indikatori where id = p_pdv_indikator_id) loop
            l_sifra := case
                           when c.vrsta = 'POLJOPRIVREDNICI' then 'N4'
                           when c.pravo_na_odbitak = 'D'     then 'N3'
                           when c.pravo_na_odbitak = 'N'     then 'N5'
                       end;
        end loop;
        if l_sifra is null then
            return p_pdv_indikator_id;
        end if;
        select min(id) into l_id from sif.acc_pdv_indikatori where sifra = l_sifra and valid = 'Y';
        return nvl(l_id, p_pdv_indikator_id);
    end ko_indikator;

    procedure preuzmi_stavke (p_kuf_id in number) is
        r_kuf kuf%rowtype;
        l_vrs varchar2(20);
        l_ind number;
        l_osn number;
        l_rb  number := 0;
    begin
        select * into r_kuf from kuf where id = p_kuf_id;
        l_vrs := vrsta_sifra(r_kuf.vrsta_dokumenta_id);
        if l_vrs not in ('UKO', 'UAVZ') or r_kuf.veza_kuf_id is null then
            return;
        end if;
        materijalizuj(r_kuf.veza_kuf_id);
        delete from kuf_pdv where kuf_id = p_kuf_id;
        for r in (select id, pdv_indikator_id from kuf_pdv
                   where kuf_id = r_kuf.veza_kuf_id order by redni_broj, id) loop
            l_osn := raspolozivo_reda(r.id);
            if l_osn > 0 then
                l_rb  := l_rb + 1;
                l_ind := case when l_vrs = 'UKO' then ko_indikator(r.pdv_indikator_id) else r.pdv_indikator_id end;
                insert into kuf_pdv (kuf_id, redni_broj, pdv_indikator_id, valuta_osnovica, valuta_pdv, izvor_red_id)
                values (p_kuf_id, l_rb, l_ind, -l_osn, -predlog_pdv(l_ind, l_osn), r.id);
            end if;
        end loop;
        if l_rb = 0 then
            greska(case l_vrs when 'UAVZ' then 'Avans je već u potpunosti zatvoren.'
                              else 'Na originalnoj fakturi nema iznosa za knjižno odobrenje.' end);
        end if;
    end preuzmi_stavke;

    procedure pripremi_specifikaciju (p_kuf_id in number) is
        l_n number;
    begin
        select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id;
        if l_n = 0 and je_izmjenjiva(p_kuf_id) then
            insert into kuf_pdv (kuf_id, redni_broj, pdv_indikator_id, osnovica, pdv, valuta_osnovica, valuta_pdv)
            select s.kuf_id, s.redni_broj, s.pdv_indikator_id, s.osnovica, s.pdv, s.valuta_osnovica, s.valuta_pdv
              from vw_kuf_pdv_spec s
             where s.kuf_id = p_kuf_id;
        end if;
    end pripremi_specifikaciju;

    ----------------------------------------------------------------- provjere
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_klijent_id         in number,
        p_broj_fakture       in varchar2,
        p_datum_fakture      in date,
        p_datum_prijema      in date,
        p_datum_valute       in date,
        p_ugovor_id          in number,
        p_veza_kuf_id        in number,
        p_valuta_id          in number default null
    ) return varchar2 is
        l_dup   varchar2(255);
        l_n     number;
        l_vrs   varchar2(20) := vrsta_sifra(p_vrsta_dokumenta_id);
        l_vveza varchar2(20);
        l_zak   date;
    begin
        if p_datum_fakture is not null and extract(year from p_datum_fakture) <> p_godina then
            return 'Datum fakture mora biti u ' || p_godina || '. godini. Za drugu godinu promijenite radnu godinu.';
        end if;
        if p_datum_fakture is not null then
            select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
            if l_zak is not null and trunc(p_datum_fakture) < trunc(l_zak) then
                return 'Datum fakture je u zaključanom periodu (zaključano do ' || to_char(l_zak, 'DD.MM.YYYY') || ').';
            end if;
        end if;
        if p_datum_prijema is not null and p_datum_fakture is not null and p_datum_prijema < p_datum_fakture then
            return 'Datum prijema ne može biti prije datuma fakture.';
        end if;
        if p_valuta_id is not null and p_datum_fakture is not null
           and nvl(kurs(p_valuta_id, p_ooj_id, p_datum_fakture), 0) = 0 then
            return 'Ne postoji kurs za izabranu valutu na datum fakture. Unesite kurs pa snimite fakturu.';
        end if;
        if p_datum_valute < p_datum_fakture then
            return 'Datum valute ne može biti prije datuma fakture.';
        end if;
        l_dup := duplikat(p_ooj_id, p_klijent_id, p_broj_fakture, p_godina, p_id, p_vrsta_dokumenta_id);
        if l_dup is not null then
            return 'Faktura ovog dobavljača sa brojem ' || trim(p_broj_fakture)
                   || ' već je unesena (' || l_dup || ').';
        end if;
        if p_ugovor_id is not null then
            select count(*) into l_n from ugovori
             where id = p_ugovor_id and ooj_id = p_ooj_id and klijent_id = p_klijent_id;
            if l_n = 0 then
                return 'Izabrani ugovor ne pripada izabranom dobavljaču.';
            end if;
        end if;
        if l_vrs in ('UKO', 'UKZ', 'UAVZ') and p_veza_kuf_id is null then
            return case l_vrs when 'UAVZ' then 'Izaberite avansnu fakturu koja se zatvara.'
                              else 'Izaberite originalnu fakturu na koju se dokument odnosi.' end;
        end if;
        if p_veza_kuf_id is not null then
            begin
                select vrsta_sifra(vrsta_dokumenta_id) into l_vveza
                  from kuf
                 where id = p_veza_kuf_id and ooj_id = p_ooj_id and klijent_id = p_klijent_id;
            exception
                when no_data_found then
                    return 'Povezana faktura mora biti od istog dobavljača.';
            end;
            if l_vrs = 'UAVZ' and l_vveza <> 'UAV' then
                return 'Zatvara se samo avansna faktura (UAV).';
            end if;
            if l_vrs in ('UKO', 'UKZ') and l_vveza <> 'UF' then
                return 'Knjižno odobrenje i zaduženje se izdaju samo na ulaznu fakturu, ne na avansnu.';
            end if;
            if l_vrs in ('UKO', 'UKZ') then
                select count(*) into l_n from kuf where id = p_veza_kuf_id and nvl(status, 'P') = 'Z';
                if l_n = 0 then
                    return 'Knjižno odobrenje i zaduženje se izdaju samo na zaključenu fakturu.';
                end if;
            end if;
            if l_vrs = 'UAVZ' then
                select count(*) into l_n from kuf where id = p_veza_kuf_id and nvl(status, 'P') = 'Z';
                if l_n = 0 then
                    return 'Avans se može zatvoriti tek kada je avansna faktura zaključena.';
                end if;
            end if;
            if l_vrs = 'UKO' then
                select count(*) into l_n from kuf_avansi_zatvaranje
                 where faktura_id = p_veza_kuf_id and storno is null and avans_zatvaranja_id <> p_veza_kuf_id;
                if l_n > 0 then
                    return 'Faktura ima zatvaranje avansa - knjižno odobrenje na nju nije moguće.';
                end if;
            end if;
        end if;
        return null;
    end provjeri_zaglavlje;

    function provjeri (p_kuf_id in number) return varchar2 is
        r_kuf  kuf%rowtype;
        l_n    number;
        l_tip  number;
        l_vrs  varchar2(20);
    begin
        select * into r_kuf from kuf where id = p_kuf_id;
        l_vrs := vrsta_sifra(r_kuf.vrsta_dokumenta_id);

        select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id;
        if l_n = 0 then
            return 'Unesite bar jedan red sa iznosom fakture.';
        end if;
        if l_vrs = 'UAV' and l_n > 1 then
            return 'Avansna faktura ima samo jednu stavku.';
        end if;

        if l_vrs in ('UKO', 'UKZ', 'UAVZ') and r_kuf.veza_kuf_id is null then
            return case l_vrs when 'UAVZ' then 'Izaberite avansnu fakturu koja se zatvara.'
                              else 'Izaberite originalnu fakturu na koju se dokument odnosi.' end;
        end if;

        if nvl(kurs(r_kuf.valuta_id, r_kuf.ooj_id, datum_kursa(p_kuf_id)), 0) = 0 then
            return case when l_vrs = 'UAVZ' then 'Ne postoji kurs valute avansa na datum avansa.'
                        else 'Ne postoji kurs za izabranu valutu na datum fakture.' end;
        end if;

        -- svi indikatori moraju pripadati istom tipu dokumenta (jedan UIO zapis)
        select count(distinct tip_dokumenta(pdv_indikator_id)) into l_n
          from kuf_pdv
         where kuf_id = p_kuf_id and pdv_indikator_id is not null;
        if l_n > 1 then
            return 'Indikatori u PDV specifikaciji pripadaju različitim tipovima dokumenta. Podijelite fakturu.';
        end if;

        -- PDV mora odgovarati stopi (dozvoljeno odstupanje po redu)
        for c in (select p.redni_broj, p.valuta_osnovica, p.valuta_pdv, p.pdv_indikator_id
                    from kuf_pdv p
                   where p.kuf_id = p_kuf_id and p.pdv_indikator_id is not null) loop
            if abs(abs(nvl(c.valuta_pdv, 0)) - predlog_pdv(c.pdv_indikator_id, abs(c.valuta_osnovica))) > c_tolerancija_pdv then
                return 'PDV u redu ' || c.redni_broj || ' odstupa od stope indikatora više od '
                       || to_char(c_tolerancija_pdv, 'FM0D00') || '.';
            end if;
        end loop;
        return null;
    end provjeri;

    function razlog_zabrane_brisanja (p_id in number) return varchar2 is
        r_kuf   kuf%rowtype;
        l_count number;
    begin
        begin
            select * into r_kuf from kuf where id = p_id;
        exception
            when no_data_found then
                return 'Faktura ne postoji ili je već obrisana.';
        end;
        if r_kuf.glavna_knjiga_id is not null then
            return 'Faktura je proknjižena i ne može se obrisati.';
        end if;
        if r_kuf.stornirano = 'Y' or r_kuf.storniran_id is not null then
            return 'Stornirana faktura i storno dokument se ne brišu.';
        end if;
        select count(*) into l_count from uio_kuf where faktura_id = p_id;
        if l_count > 0 then
            return 'Faktura je unesena u UIO KUF. Prvo obrišite UIO zapis.';
        end if;
        select count(*) into l_count from glavna_knjiga_stavke where kuf_id = p_id;
        if l_count > 0 then
            return 'Na fakturu su vezana plaćanja kroz izvode.';
        end if;
        if nvl(r_kuf.uplaceno_rucno, 0) <> 0 then
            return 'Na fakturi su evidentirana ručna plaćanja.';
        end if;
        select count(*) into l_count from kalkulacija_kuf where kuf_id = p_id;
        if l_count > 0 then
            return 'Faktura je vezana za kalkulaciju.';
        end if;
        -- zavisni trošak kalkulacije kroz fakturu (kolona iz 15_rm_kalkulacija.sql - dinamički, da paket ne zavisi od redoslijeda skripti)
        begin
            execute immediate 'select count(*) from kalkulacija_troskovi where kuf_id = :1' into l_count using p_id;
        exception
            when others then
                l_count := 0;
        end;
        if l_count > 0 then
            return 'Faktura je vezana za kalkulaciju kao zavisni trošak.';
        end if;
        select count(*) into l_count from kuf where veza_kuf_id = p_id;
        if l_count > 0 then
            return 'Na fakturu se poziva drugi dokument (knjižno odobrenje, zaduženje ili zatvaranje avansa).';
        end if;
        select count(*) into l_count from kuf_avansi_zatvaranje
         where avans_id = p_id and storno is null;
        if l_count > 0 then
            return 'Avans je (djelimično) zatvoren - prvo uklonite zatvaranje.';
        end if;
        select count(*) into l_count from kuf_avansi_zatvaranje
         where avans_zatvaranja_id = p_id and faktura_id <> p_id and storno is null;
        if l_count > 0 then
            return 'Zatvaranje avansa je dio konačne fakture - briše se zajedno sa njom.';
        end if;
        select count(*) into l_count
          from kuf_avansi_zatvaranje z
          join kuf u on u.id = z.avans_zatvaranja_id
         where z.faktura_id = p_id and z.avans_zatvaranja_id <> p_id and z.storno is null
           and (nvl(u.status, 'P') <> 'P' or u.glavna_knjiga_id is not null);
        if l_count > 0 then
            return 'Zatvaranje avansa ove fakture je zaključano ili proknjiženo.';
        end if;
        if not finansije_pkg.is_kuf_editable(p_id) then
            return 'Faktura je u zaključanom periodu.';
        end if;
        return null;
    end razlog_zabrane_brisanja;

    function duplikat (
        p_ooj_id       in number,
        p_klijent_id   in number,
        p_broj_fakture in varchar2,
        p_godina       in number,
        p_id           in number default null,
        p_vrsta_dokumenta_id in number default null   -- duplikat se traži unutar iste vrste dokumenta
    ) return varchar2 is
    begin
        if p_klijent_id is null or trim(p_broj_fakture) is null then
            return null;
        end if;
        for c in (
            select nvl(naziv, to_char(broj)) as naziv
              from kuf
             where ooj_id = p_ooj_id
               and klijent_id = p_klijent_id
               and nvl(godina, extract(year from datum_fakture)) = p_godina
               and upper(trim(naziv_fakture)) = upper(trim(p_broj_fakture))
               and id <> nvl(p_id, -1)
               and nvl(stornirano, 'N') = 'N'
               and storniran_id is null
               and (p_vrsta_dokumenta_id is null or vrsta_dokumenta_id = p_vrsta_dokumenta_id)
             order by id
        ) loop
            return c.naziv;
        end loop;
        return null;
    end duplikat;

    ----------------------------------------------------------------- statusi
    procedure zakljucaj (p_id in number) is
        l_greska varchar2(400);
    begin
        if not je_izmjenjiva(p_id) then
            greska('Faktura je već zaključana ili se ne može mijenjati.');
        end if;
        preracunaj(p_id);
        l_greska := provjeri(p_id);
        if l_greska is not null then
            greska(l_greska);
        end if;
        update kuf set status = 'Z' where id = p_id;
        -- automatsko zatvaranje avansa konačne fakture zaključava se zajedno sa njom
        for z in (select z.avans_zatvaranja_id as id
                    from kuf_avansi_zatvaranje z
                    join kuf u on u.id = z.avans_zatvaranja_id
                   where z.faktura_id = p_id and z.avans_zatvaranja_id <> p_id
                     and z.storno is null and nvl(u.status, 'P') = 'P') loop
            preracunaj(z.id);
            l_greska := provjeri(z.id);
            if l_greska is not null then
                greska('Zatvaranje avansa: ' || l_greska);
            end if;
            update kuf set status = 'Z' where id = z.id;
        end loop;
    end zakljucaj;

    procedure otkljucaj (p_id in number) is
        l_status kuf.status%type;
    begin
        select status into l_status from kuf where id = p_id;
        if l_status <> 'Z' or not finansije_pkg.is_kuf_editable(p_id) then
            greska('Faktura se ne može otključati (proknjižena, unesena u UIO KUF ili u zaključanom periodu).');
        end if;
        update kuf set status = 'P' where id = p_id;
        for z in (select z.avans_zatvaranja_id as id
                    from kuf_avansi_zatvaranje z
                   where z.faktura_id = p_id and z.avans_zatvaranja_id <> p_id and z.storno is null) loop
            if finansije_pkg.is_kuf_editable(z.id) then
                update kuf set status = 'P' where id = z.id;
            end if;
        end loop;
    end otkljucaj;

    function storniraj (p_id in number, p_datum in date, p_sa_fakturom in varchar2 default 'N') return number is
        l_dummy   number;
        r_kuf     kuf%rowtype;
        l_id      number;
        l_gk_id   number;
        l_sifra   varchar2(20);
        l_broj    number;
        l_naziv   varchar2(255);
        l_godina  number := extract(year from p_datum);
        l_zak_do  date;
    begin
        select * into r_kuf from kuf where id = p_id for update;
        if r_kuf.stornirano = 'Y' or r_kuf.storniran_id is not null then
            greska('Faktura je već stornirana ili je i sama storno dokument.');
        end if;
        if nvl(r_kuf.status, 'P') = 'P' and r_kuf.glavna_knjiga_id is null then
            greska('Faktura u pripremi se ne stornira - izmijenite je ili obrišite.');
        end if;
        if nvl(p_sa_fakturom, 'N') = 'N' then
            for z in (select f.naziv from kuf_avansi_zatvaranje z join kuf f on f.id = z.faktura_id
                       where z.avans_zatvaranja_id = p_id and z.faktura_id <> p_id and z.storno is null) loop
                greska('Zatvaranje avansa je dio fakture ' || z.naziv
                       || ' - stornirajte tu fakturu (stornira oba dokumenta).');
            end loop;
        end if;
        select period_zakljucan_do into l_zak_do from core.ooj where id = r_kuf.ooj_id;
        if l_zak_do is not null and trunc(p_datum) < trunc(l_zak_do) then
            greska('Datum storna je u zaključanom periodu.');
        end if;

        if r_kuf.glavna_knjiga_id is not null then
            l_gk_id := glavna_knjiga_pkg.storniraj_glavna_knjiga(
                p_id    => r_kuf.glavna_knjiga_id,
                p_datum => p_datum,
                p_opis  => null,
                p_auto  => 'N'
            );
        end if;

        l_sifra := lower(vrsta_sifra(r_kuf.vrsta_dokumenta_id));
        core.protokoli_pkg.get_brojac(
            p_ooj_id             => r_kuf.ooj_id,
            p_godina             => l_godina,
            p_vrsta_naloga_sifra => l_sifra,
            p_broj               => l_broj,
            p_naziv              => l_naziv
        );

        insert into kuf (
            ooj_id, godina, vrsta_dokumenta_id, klijent_id, naziv_fakture,
            datum_fakture, datum_prijema, datum_valute, valuta_id, tip_placanja_id,
            fiskalni_racun_broj, ugovor_id, veza_kuf_id, uio_tip_dokumenta_id,
            pdv_indikator_id, naziv, broj, status, stornirano, storniran_id, uplaceno,
            glavna_knjiga_id,
            valuta_iznos_bez_pdv, valuta_iznos_sa_pdv, iznos_bez_pdv, iznos_sa_pdv
        ) values (
            r_kuf.ooj_id, l_godina, r_kuf.vrsta_dokumenta_id, r_kuf.klijent_id, r_kuf.naziv_fakture,
            p_datum, p_datum, p_datum, r_kuf.valuta_id, r_kuf.tip_placanja_id,
            r_kuf.fiskalni_racun_broj, r_kuf.ugovor_id, r_kuf.veza_kuf_id, r_kuf.uio_tip_dokumenta_id,
            r_kuf.pdv_indikator_id, l_naziv, l_broj, 'Z', 'N', p_id, 'Y',
            l_gk_id,
            -r_kuf.valuta_iznos_bez_pdv, -r_kuf.valuta_iznos_sa_pdv, -r_kuf.iznos_bez_pdv,
            -r_kuf.iznos_sa_pdv
        ) returning id into l_id;

        insert into kuf_pdv (kuf_id, redni_broj, pdv_indikator_id, osnovica, pdv, valuta_osnovica, valuta_pdv)
        select l_id, s.redni_broj, s.pdv_indikator_id, -s.osnovica, -s.pdv, -s.valuta_osnovica, -s.valuta_pdv
          from vw_kuf_pdv_spec s
         where s.kuf_id = p_id;

        core.protokoli_pkg.update_brojac(
            p_ooj_id             => r_kuf.ooj_id,
            p_vrsta_naloga_sifra => l_sifra,
            p_godina             => l_godina,
            p_value              => 1
        );

        update kuf set stornirano = 'Y' where id = p_id;

        -- stornirano zatvaranje avansa: avans ponovo raspoloživ
        update kuf_avansi_zatvaranje
           set storno = 'S', updated = sysdate,
               updated_by = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
         where avans_zatvaranja_id = p_id and storno is null;

        -- konačna faktura sa uračunatim avansom: stornira se i zatvaranje avansa
        for z in (select id, avans_zatvaranja_id from kuf_avansi_zatvaranje
                   where faktura_id = p_id and avans_zatvaranja_id <> p_id and storno is null) loop
            l_dummy := storniraj(z.avans_zatvaranja_id, p_datum, 'Y');
        end loop;
        return l_id;
    end storniraj;

    procedure obrisi (p_id in number, p_ooj_id in number) is
        l_razlog varchar2(400);
        l_godina number;
        l_broj   number;
        l_max    number;
        l_vrsta  number;
    begin
        begin
            select nvl(godina, extract(year from datum_fakture)), broj, vrsta_dokumenta_id
              into l_godina, l_broj, l_vrsta
              from kuf
             where id = p_id
               and ooj_id = p_ooj_id;
        exception
            when no_data_found then
                greska('Faktura ne postoji ili ne pripada izabranoj firmi.');
        end;
        l_razlog := razlog_zabrane_brisanja(p_id);
        if l_razlog is not null then
            greska(l_razlog);
        end if;

        select max(broj)
          into l_max
          from kuf
         where ooj_id = p_ooj_id
           and nvl(vrsta_dokumenta_id, -1) = nvl(l_vrsta, -1)
           and nvl(godina, extract(year from datum_fakture)) = l_godina;

        -- automatsko zatvaranje avansa (u pripremi) briše se zajedno sa fakturom
        for z in (select id, avans_zatvaranja_id from kuf_avansi_zatvaranje
                   where faktura_id = p_id and avans_zatvaranja_id <> p_id and storno is null) loop
            delete from kuf_avansi_zatvaranje where id = z.id;
            delete from kuf where id = z.avans_zatvaranja_id;
        end loop;
        delete from kuf_avansi_zatvaranje where avans_zatvaranja_id = p_id;
        finansije_pkg.delete_kuf(p_id => p_id);   -- PDV redovi i dokumenti: on delete cascade

        if l_broj is not null and l_broj = l_max then
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => lower(vrsta_sifra(l_vrsta)),
                p_godina             => l_godina,
                p_value              => -1
            );
        end if;
    end obrisi;

    ----------------------------------------------------------------- dokumenti
    procedure dodaj_dokument (p_kuf_id in number, p_naziv_fajla in varchar2, p_opis in varchar2 default null) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
        l_n        number := 0;
    begin
        if p_naziv_fajla is null then
            return;
        end if;
        -- više fajlova: File Upload stavka vraća nazive odvojene dvotačkom
        for f in (select column_value as naziv from table(apex_string.split(p_naziv_fajla, ':'))
                   where column_value is not null) loop
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => f.naziv,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );
            if l_blob is not null then
                insert into kuf_dokumenti (kuf_id, dokument, naziv, mime_tip, velicina, opis)
                values (p_kuf_id, l_blob, l_filename, l_mimetype, dbms_lob.getlength(l_blob), substr(trim(p_opis), 1, 500));
                l_n := l_n + 1;
            end if;
        end loop;
    end dodaj_dokument;

    procedure opis_dokumenta (p_id in number, p_ooj_id in number, p_opis in varchar2) is
    begin
        update kuf_dokumenti d
           set d.opis = substr(trim(p_opis), 1, 500)
         where d.id = p_id
           and exists (select 1 from kuf k where k.id = d.kuf_id and k.ooj_id = p_ooj_id);
    end opis_dokumenta;

    function razlog_zabrane_uio (p_kuf_id in number, p_ooj_id in number) return varchar2 is
        l_pdv varchar2(1);
    begin
        select max(pdv_sistem) into l_pdv from core.ooj where id = p_ooj_id;
        if nvl(l_pdv, 'N') <> 'Y' then
            return 'UIO KUF vode samo firme u sistemu PDV-a.';
        end if;
        for k in (select status, ooj_id from kuf where id = p_kuf_id) loop
            if k.ooj_id <> p_ooj_id then
                return 'Faktura ne pripada izabranoj firmi.';
            elsif nvl(k.status, 'P') <> 'Z' then
                return 'U UIO KUF se unosi samo zaključena faktura. Prvo zaključajte fakturu.';
            end if;
            return null;
        end loop;
        return 'Izaberite fakturu.';
    end razlog_zabrane_uio;

    function veza_valuta (p_veza_id in number) return number is
        l_v number;
    begin
        select max(valuta_id) into l_v from kuf where id = p_veza_id;
        return l_v;
    end veza_valuta;

    -- otvaranje (inline) ili preuzimanje (attachment) jednog dokumenta; samo dokumenti izabrane firme
    procedure posalji_dokument (p_id in number, p_ooj_id in number, p_nacin in varchar2 default 'inline') is
        l_blob  blob;
        l_naziv varchar2(255);
        l_mime  varchar2(255);
    begin
        select d.dokument, d.naziv, nvl(d.mime_tip, 'application/octet-stream')
          into l_blob, l_naziv, l_mime
          from kuf_dokumenti d
          join kuf k on k.id = d.kuf_id
         where d.id = p_id
           and k.ooj_id = p_ooj_id;
        sys.htp.init;
        owa_util.mime_header(l_mime, false);
        sys.htp.p('Content-Length: ' || dbms_lob.getlength(l_blob));
        sys.htp.p('Content-Disposition: ' || case when p_nacin = 'attachment' then 'attachment' else 'inline' end
                  || '; filename="' || replace(nvl(l_naziv, 'dokument'), '"') || '"');
        owa_util.http_header_close;
        wpg_docload.download_file(l_blob);
        apex_application.stop_apex_engine;
    exception
        when no_data_found then
            sys.htp.p('Dokument ne postoji ili ne pripada izabranoj firmi.');
            apex_application.stop_apex_engine;
    end posalji_dokument;

    procedure obrisi_dokument (p_id in number) is
        l_kuf number;
    begin
        select kuf_id into l_kuf from kuf_dokumenti where id = p_id;
        if not je_izmjenjiva(l_kuf) then
            greska('Dokument zaključane fakture se ne može obrisati.');
        end if;
        delete from kuf_dokumenti where id = p_id;
    exception
        when no_data_found then
            null;
    end obrisi_dokument;

    ----------------------------------------------------------------- avansi na konačnoj fakturi (4d)
    function valuta_sifra (p_valuta_id in number) return varchar2 is
    begin
        for v in (select upper(sifra) as sifra from sif.acc_valute where id = p_valuta_id) loop
            return v.sifra;
        end loop;
        return null;
    end valuta_sifra;

    -- kursevi se vode samo prema KM: ista valuta ili kombinacija KM - strana valuta
    function valute_dozvoljene (p_valuta_fakture in number, p_valuta_avansa in number) return varchar2 is
    begin
        if p_valuta_fakture is null or p_valuta_avansa is null
           or p_valuta_fakture = p_valuta_avansa
           or valuta_sifra(p_valuta_fakture) = 'BAM'
           or valuta_sifra(p_valuta_avansa) = 'BAM' then
            return 'Y';
        end if;
        return 'N';
    end valute_dozvoljene;

    function avans_raspolozivo (p_avans_id in number, p_kuf_id in number) return number is
        l_rasp number;
        l_ova  number;
    begin
        select max(raspolozivo) into l_rasp from vw_kuf_avansi where id = p_avans_id;
        select nvl(sum(abs(r.valuta_osnovica)), 0)
          into l_ova
          from kuf_avansi_zatvaranje z
          join kuf_pdv r on r.kuf_id = z.avans_zatvaranja_id
         where z.faktura_id = p_kuf_id
           and z.avans_id = p_avans_id
           and z.storno is null
           and z.avans_zatvaranja_id <> p_kuf_id;
        return nvl(l_rasp, 0) + l_ova;
    end avans_raspolozivo;

    function stavke_za_preuzimanje (p_veza_id in number, p_vrsta_sifra in varchar2, p_kuf_id in number) return varchar2 is
        l_vrs  varchar2(20) := upper(p_vrsta_sifra);
        l_arr  json_array_t := json_array_t();
        l_obj  json_object_t;
        l_bez  number;
        l_osn  number;
        l_ind  number;
        l_val  number;
    begin
        if p_veza_id is null or l_vrs not in ('UKO', 'UAVZ') then
            return '[]';
        end if;
        materijalizuj(p_veza_id);
        select max(valuta_id) into l_val from kuf where id = p_veza_id;
        for r in (select id, pdv_indikator_id from kuf_pdv where kuf_id = p_veza_id order by redni_broj, id) loop
            -- red ovog dokumenta koji je već vezan na isti red originala ne umanjuje raspoloživo
            select min(id) into l_bez from kuf_pdv where kuf_id = p_kuf_id and izvor_red_id = r.id;
            l_osn := raspolozivo_reda(r.id, l_bez);
            if l_osn > 0 then
                l_ind := case when l_vrs = 'UKO' then ko_indikator(r.pdv_indikator_id) else r.pdv_indikator_id end;
                l_obj := json_object_t();
                l_obj.put('izvor', r.id);
                l_obj.put('ind', l_ind);
                l_obj.put('osn', l_osn);
                l_obj.put('pdv', predlog_pdv(l_ind, l_osn));
                l_obj.put('val', l_val);
                l_arr.append(l_obj);
            end if;
        end loop;
        return l_arr.to_string;
    end stavke_za_preuzimanje;

    function avans_info (p_avans_id in number, p_kuf_id in number) return varchar2 is
        l_obj json_object_t := json_object_t();
    begin
        for a in (select valuta_sifra from vw_kuf_avansi where id = p_avans_id) loop
            l_obj.put('v', a.valuta_sifra);
        end loop;
        l_obj.put('r', avans_raspolozivo(p_avans_id, p_kuf_id));
        return l_obj.to_string;
    end avans_info;

    procedure snimi_avans_red (
        p_id       in out number,
        p_kuf_id   in number,
        p_avans_id in number,
        p_iznos    in number
    ) is
        r_kuf    kuf%rowtype;
        r_av     kuf%rowtype;
        l_n      number;
        l_vrsta  number;
        l_stara  number;
        l_av_red number;
        l_red    number;
        l_max    number;
    begin
        select * into r_kuf from kuf where id = p_kuf_id;
        if vrsta_sifra(r_kuf.vrsta_dokumenta_id) <> 'UF' then
            greska('Avans se uračunava samo u ulaznu fakturu.');
        end if;
        if not je_izmjenjiva(p_kuf_id) then
            greska('Faktura je zaključana i uračunati avansi se ne mogu mijenjati.');
        end if;
        if p_avans_id is null then
            greska('Izaberite avans koji se zatvara.');
        end if;
        if nvl(p_iznos, 0) <= 0 then
            greska('Unesite iznos avansa koji se zatvara.');
        end if;
        begin
            select * into r_av from kuf
             where id = p_avans_id and ooj_id = r_kuf.ooj_id and klijent_id = r_kuf.klijent_id;
        exception
            when no_data_found then
                greska('Avans mora biti od istog dobavljača kao faktura.');
        end;
        if vrsta_sifra(r_av.vrsta_dokumenta_id) <> 'UAV' then
            greska('Uračunati se može samo avansna faktura.');
        end if;
        if nvl(r_av.status, 'P') <> 'Z' or r_av.stornirano = 'Y' then
            greska('Avans ' || r_av.naziv || ' nije zaključen ili je storniran i ne može se uračunati.');
        end if;
        if valute_dozvoljene(r_kuf.valuta_id, r_av.valuta_id) = 'N' then
            greska('Avans ' || r_av.naziv || ' je u valuti ' || valuta_sifra(r_av.valuta_id)
                   || ', a faktura u ' || valuta_sifra(r_kuf.valuta_id)
                   || '. Dozvoljena je ista valuta ili kombinacija KM i strane valute.');
        end if;
        select count(*) into l_n
          from kuf_avansi_zatvaranje z
         where z.faktura_id = p_kuf_id and z.avans_id = p_avans_id and z.storno is null
           and z.avans_zatvaranja_id <> p_kuf_id and z.avans_zatvaranja_id <> nvl(p_id, -1);
        if l_n > 0 then
            greska('Avans ' || r_av.naziv || ' je već uračunat u ovu fakturu.');
        end if;
        select count(*) into l_n
          from kuf k
          join sif.vrste_dokumenata vd on vd.id = k.vrsta_dokumenta_id
         where k.veza_kuf_id = p_kuf_id and upper(vd.sifra) = 'UKO'
           and nvl(k.stornirano, 'N') = 'N' and k.storniran_id is null;
        if l_n > 0 then
            greska('Na ovu fakturu je izdato knjižno odobrenje, pa se avans ne može uračunati.');
        end if;

        if p_id is null then
            select min(id) into l_vrsta
              from vw_kuf_vrste_dokumenata
             where ooj_id = r_kuf.ooj_id and sifra = 'UAVZ';
            if l_vrsta is null then
                greska('Za firmu nije podešena vrsta dokumenta UAVZ (zatvaranje avansa).');
            end if;
            p_id := snimi(
                p_id                 => null,
                p_ooj_id             => r_kuf.ooj_id,
                p_godina             => r_kuf.godina,
                p_vrsta_dokumenta_id => l_vrsta,
                p_klijent_id         => r_kuf.klijent_id,
                p_broj_fakture       => substr('Zatvaranje avansa ' || r_av.naziv || ' uz ' || r_kuf.naziv_fakture, 1, 255),
                p_datum_fakture      => r_kuf.datum_fakture,
                p_datum_prijema      => r_kuf.datum_prijema,
                p_datum_valute       => r_kuf.datum_valute,
                p_valuta_id          => r_av.valuta_id,
                p_tip_placanja_id    => r_kuf.tip_placanja_id,
                p_veza_kuf_id        => p_avans_id
            );
            preuzmi_stavke(p_id);
        else
            if not je_izmjenjiva(p_id) then
                greska('Zatvaranje avansa je zaključano i ne može se mijenjati.');
            end if;
            select veza_kuf_id into l_stara from kuf where id = p_id;
            update kuf
               set veza_kuf_id   = p_avans_id,
                   valuta_id     = r_av.valuta_id,
                   datum_fakture = r_kuf.datum_fakture,
                   datum_prijema = r_kuf.datum_prijema,
                   datum_valute  = r_kuf.datum_valute
             where id = p_id;
            if nvl(l_stara, -1) <> p_avans_id then
                preuzmi_stavke(p_id);
                update kuf_avansi_zatvaranje set avans_id = p_avans_id
                 where avans_zatvaranja_id = p_id and storno is null;
            end if;
        end if;

        select min(id) into l_av_red from kuf_pdv where kuf_id = p_avans_id;
        select min(id) into l_red from kuf_pdv where kuf_id = p_id;
        l_max := raspolozivo_reda(l_av_red, l_red);
        if p_iznos > l_max then
            greska('Iznos zatvaranja avansa ' || r_av.naziv || ' (' || to_char(p_iznos, 'FM999G999G990D00')
                   || ') veći je od raspoloživog (' || to_char(l_max, 'FM999G999G990D00') || ').');
        end if;
        snimi_pdv_red(
            p_id               => l_red,
            p_kuf_id           => p_id,
            p_redni_broj       => 1,
            p_pdv_indikator_id => null,
            p_valuta_osnovica  => p_iznos
        );
        preracunaj(p_id);
        update kuf_avansi_zatvaranje
           set faktura_id = p_kuf_id
         where avans_zatvaranja_id = p_id and storno is null;
    end snimi_avans_red;

    procedure obrisi_avans_red (p_id in number) is
    begin
        for z in (select id from kuf_avansi_zatvaranje
                   where avans_zatvaranja_id = p_id and faktura_id <> p_id and storno is null) loop
            if not je_izmjenjiva(p_id) then
                greska('Zatvaranje avansa je zaključano i ne može se ukloniti.');
            end if;
            delete from kuf_avansi_zatvaranje where id = z.id;
            delete from kuf where id = p_id;
        end loop;
    end obrisi_avans_red;

    procedure uskladi_avanse (p_kuf_id in number, p_uracunat in varchar2) is
        r_kuf kuf%rowtype;
    begin
        select * into r_kuf from kuf where id = p_kuf_id;
        if vrsta_sifra(r_kuf.vrsta_dokumenta_id) <> 'UF' then
            return;
        end if;
        for z in (select z.avans_zatvaranja_id as id, a.naziv, a.valuta_id, a.klijent_id
                    from kuf_avansi_zatvaranje z
                    join kuf a on a.id = z.avans_id
                   where z.faktura_id = p_kuf_id and z.storno is null
                     and z.avans_zatvaranja_id <> p_kuf_id) loop
            if nvl(p_uracunat, 'N') <> 'Y' then
                obrisi_avans_red(z.id);
            else
                if z.klijent_id <> r_kuf.klijent_id then
                    greska('Avans ' || z.naziv || ' pripada drugom dobavljaču. Uklonite ga iz uračunatih avansa.');
                end if;
                if valute_dozvoljene(r_kuf.valuta_id, z.valuta_id) = 'N' then
                    greska('Avans ' || z.naziv || ' je u valuti ' || valuta_sifra(z.valuta_id)
                           || ', a faktura u ' || valuta_sifra(r_kuf.valuta_id)
                           || '. Dozvoljena je ista valuta ili kombinacija KM i strane valute.');
                end if;
                if je_izmjenjiva(z.id) then
                    update kuf
                       set datum_fakture = r_kuf.datum_fakture,
                           datum_prijema = r_kuf.datum_prijema,
                           datum_valute  = r_kuf.datum_valute
                     where id = z.id;
                    preracunaj(z.id);
                end if;
            end if;
        end loop;
    end uskladi_avanse;

    procedure provjeri_stavke (p_kuf_id in number) is
        l_n number;
    begin
        select count(*) into l_n from kuf_pdv where kuf_id = p_kuf_id;
        if l_n = 0 then
            greska('Dokument nema PDV specifikaciju. Unesite bar jedan red sa iznosom.');
        end if;
    end provjeri_stavke;

    function veze_html (p_id in number, p_orig in varchar2 default null) return varchar2 is
        l_html varchar2(4000);

        procedure dodaj (p_ikona in varchar2, p_tekst in varchar2, p_id_veze in number, p_naziv in varchar2) is
        begin
            if p_id_veze is null then
                return;
            end if;
            l_html := l_html || '<a class="fin-veza" href="'
                || apex_page.get_url(
                       p_page        => 41,
                       p_clear_cache => '41',
                       p_items       => 'P41_ID,P41_ORIG',
                       p_values      => p_id_veze || ',' || nvl(p_orig, '0'),
                       p_plain_url   => true)
                || '"><span class="fa ' || p_ikona || '" aria-hidden="true"></span>'
                || apex_escape.html(p_tekst || ': ' || nvl(p_naziv, to_char(p_id_veze))) || '</a>';
        end dodaj;
    begin
        for f in (select * from vw_kuf_forma where id = p_id) loop
            dodaj('fa-undo-arrow', 'Storno dokument', f.storno_id, f.storno_naziv);
            dodaj('fa-file-o', 'Stornira dokument', f.storniran_id, f.original_naziv);
            dodaj('fa-link', case f.vrsta_sifra when 'UAVZ' then 'Avans' else 'Originalna faktura' end,
                  f.veza_kuf_id, f.veza_naziv);
            for z in (select z.avans_zatvaranja_id, k.naziv
                        from kuf_avansi_zatvaranje z
                        join kuf k on k.id = z.avans_zatvaranja_id
                       where z.faktura_id = p_id and z.avans_zatvaranja_id <> p_id and z.storno is null
                       order by k.id) loop
                dodaj('fa-exchange', 'Zatvaranje avansa', z.avans_zatvaranja_id, z.naziv);
            end loop;
            if f.vrsta_sifra = 'UAVZ' then
                for u in (select z.faktura_id, k.naziv
                            from kuf_avansi_zatvaranje z
                            join kuf k on k.id = z.faktura_id
                           where z.avans_zatvaranja_id = p_id
                             and z.faktura_id <> p_id) loop
                    dodaj('fa-file-text-o', 'Uz fakturu', u.faktura_id, u.naziv);
                end loop;
            end if;
        end loop;
        return l_html;
    end veze_html;

end kuf_pkg;
/

show errors package kuf_pkg
show errors package body kuf_pkg

select object_type, status from user_objects where object_name = 'KUF_PKG' order by object_type;

declare
    l_n number;
begin
    select count(*) into l_n from user_objects where object_name = 'KUF_PKG' and status <> 'VALID';
    if l_n > 0 then
        raise_application_error(-20000, 'KUF_PKG nije VALID - pogledati greške iznad.');
    end if;
    dbms_output.put_line('KUF_PKG v2 je VALID.');
end;
/

-- Test (zamijeniti ID fakture):
--   select kuf_pkg.provjeri(<kuf_id>) as provjera,
--          kuf_pkg.razlog_zabrane_brisanja(<kuf_id>) as brisanje
--     from dual;
