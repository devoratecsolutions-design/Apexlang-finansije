/*
================================================================================
  ESSCOM Finansije - 24_if_pkg.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 22_if_model.sql, 23_if_views.sql i 12_rm_pkg.sql

  Svrha: KIF_PKG - logika izlazne fakture v2 (korak I2)
    Zaglavlje      snimi (broj iz brojača vrste tek pri snimanju), obrisi
    Stavke         snimi_stavku, obrisi_stavku, preracunaj; cijena iz cjenovnika
                   prodajnog mjesta (VP: VPC, MP: MPC bez PDV-a), PDV po indikatoru
    Skladište      roba (tip stavke <> usluga) razdužuje izabrano prodajno mjesto:
                   vezani dokument OTP (veleprodaja) / PMP (maloprodaja) nastaje sa
                   prvom robom i prati stavke dok je faktura u pripremi (raspoloživo
                   se odmah umanjuje, serijski brojevi se vežu za njegove stavke);
                   zaključavanje fakture zaključava i dokument (cijena izlaza)
    Avansi         avansna faktura (AV) ima tačno jednu stavku - uslugu;
                   konačna faktura uračunava avanse (KIF_AVANSI_ZATVARANJE), a pri
                   zaključavanju nastaje automatski dokument zatvaranja avansa (AVZ)
    Statusi        zakljucaj, otkljucaj (administrator), storniraj
  Postojeći FINANSIJE_PKG se ne mijenja (storno fakture koristi njegov
  storniraj_kif zbog knjiženja); stare stranice i dalje rade.
================================================================================
*/
set define off
set serveroutput on

create or replace package kif_pkg as
    c_usluga constant number := 3;          -- SIF.ACC_TIPOVI_STAVKI: usluga (ne vodi se na skladištu)

    -- pomoćne
    function broj (p_vrijednost in varchar2) return number;                 -- tekst iz forme -> broj
    function vrsta_sifra (p_vrsta_id in number) return varchar2;            -- IF, AV, AVZ, KO, KZ, PR ...
    function brojac_sifra (p_vrsta_id in number) return varchar2;           -- šifra brojača (vrsta naloga)
    function vrsta_id (p_ooj_id in number, p_sifra in varchar2) return number;
    function stopa (p_pdv_indikator_id in number) return number;
    function pdv_sistem (p_ooj_id in number) return varchar2;               -- Y / N
    function tip_cijene (p_skladiste_id in number) return varchar2;         -- V / M / null
    function cijena_artikla (p_skladiste_id in number, p_stavka_id in number, p_pdv_indikator_id in number) return number;
    function artikl_info (p_kif_id in number, p_stavka_id in number, p_skladiste_id in number) return varchar2;  -- JSON
    function je_izmjenjiva (p_id in number) return boolean;
    function izmjenjiva (p_id in number) return varchar2;                   -- Y / N
    function razlog_zabrane (p_id in number) return varchar2;               -- null = može se mijenjati

    -- zaglavlje (insert kad je p_id prazan); vraća id
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_vrsta_id           in number,
        p_klijent_id         in number,
        p_datum_fakture      in date,
        p_datum_valute       in date,
        p_skladiste_id       in number,
        p_veza_id            in number
    ) return varchar2;
    function snimi (
        p_id                   in number,
        p_ooj_id               in number,
        p_godina               in number,
        p_vrsta_id             in number,
        p_klijent_id           in number,
        p_datum_fakture        in date,
        p_datum_valute         in date,
        p_valuta_id            in number,
        p_tip_placanja_id      in number,
        p_skladiste_id         in number,
        p_ugovor_id            in number default null,
        p_oj_id                in number default null,
        p_veza_id              in number default null,
        p_pdv_indikator_id     in number default null,
        p_uio_tip_dokumenta_id in number default null,
        p_posebne_napomene     in varchar2 default null,
        p_print_pn             in varchar2 default null
    ) return number;
    procedure obrisi (p_id in number, p_ooj_id in number);
    function razlog_zabrane_brisanja (p_id in number) return varchar2;

    -- stavke (iznosi u KM; cijena bez PDV-a; rabat u %)
    procedure snimi_stavku (
        p_id               in out number,
        p_kif_id           in number,
        p_stavka_id        in number,
        p_kolicina         in number,
        p_cijena           in number,
        p_rabat            in number default 0,
        p_pdv_indikator_id in number default null,
        p_opis             in varchar2 default null
    );
    procedure obrisi_stavku (p_id in number);
    procedure preracunaj (p_kif_id in number);

    -- avansi uračunati u konačnu fakturu (iznos sa PDV-om, u valuti fakture)
    function avans_raspolozivo (p_avans_id in number, p_bez_reda_id in number default null) return number;
    procedure snimi_avans_red (p_id in out number, p_kif_id in number, p_avans_id in number, p_iznos in number);
    procedure obrisi_avans_red (p_id in number);

    -- statusi
    function provjeri (p_id in number) return varchar2;                     -- prije zaključavanja; null = u redu
    procedure zakljucaj (p_id in number);
    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2;
    procedure otkljucaj (p_id in number, p_admin in varchar2);
    function razlog_zabrane_storna (p_id in number) return varchar2;
    function storniraj (p_id in number, p_datum in date) return number;     -- id storno fakture
end kif_pkg;
/

create or replace package body kif_pkg as

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20201, 'Greška CORP-IF: ' || p_tekst);
    end greska;

    function broj (p_vrijednost in varchar2) return number is
    begin
        return kuf_pkg.broj(p_vrijednost);
    end broj;

    function vrsta_sifra (p_vrsta_id in number) return varchar2 is
    begin
        for v in (select sifra from vw_if_vrste where id = p_vrsta_id) loop
            return v.sifra;
        end loop;
        return null;
    end vrsta_sifra;

    function brojac_sifra (p_vrsta_id in number) return varchar2 is
    begin
        for v in (select brojac_sifra from vw_if_vrste where id = p_vrsta_id) loop
            return v.brojac_sifra;
        end loop;
        return null;
    end brojac_sifra;

    function vrsta_id (p_ooj_id in number, p_sifra in varchar2) return number is
        l_id number;
    begin
        select max(id) into l_id from vw_if_vrste
         where ooj_id = p_ooj_id and sifra = upper(p_sifra) and valid = 'Y';
        return l_id;
    end vrsta_id;

    function stopa (p_pdv_indikator_id in number) return number is
    begin
        if p_pdv_indikator_id is null then
            return 0;
        end if;
        return kuf_pkg.stopa(p_pdv_indikator_id);
    end stopa;

    function pdv_sistem (p_ooj_id in number) return varchar2 is
        l_p varchar2(10);
    begin
        select max(pdv_sistem) into l_p from core.ooj where id = p_ooj_id;
        return case when l_p = 'Y' then 'Y' else 'N' end;
    end pdv_sistem;

    function tip_cijene (p_skladiste_id in number) return varchar2 is
    begin
        for s in (select tip_cijene from vw_if_prodajna_mjesta where id = p_skladiste_id) loop
            return s.tip_cijene;
        end loop;
        return null;
    end tip_cijene;

    -- cijena bez PDV-a iz cjenovnika prodajnog mjesta (MP: MPC / (1 + stopa))
    function cijena_artikla (p_skladiste_id in number, p_stavka_id in number, p_pdv_indikator_id in number) return number is
    begin
        for c in (select cj.tip, cs.vpc, cs.mpc
                    from skladista s
                    join cjenovnici cj on cj.id = s.cjenovnik_id
                    join cjenovnik_stavke cs on cs.cjenovnik_id = cj.id and cs.stavka_id = p_stavka_id and cs.valid = 'Y'
                   where s.id = p_skladiste_id
                   order by cs.id desc) loop
            if c.tip = 'M' then
                return round(nvl(c.mpc, 0) / (1 + stopa(p_pdv_indikator_id) / 100), 4);
            end if;
            return nvl(c.vpc, 0);
        end loop;
        return null;
    end cijena_artikla;

    function dokument_id (p_kif_id in number) return number is
        l_id number;
    begin
        select max(id) into l_id from operacije where faktura_id = p_kif_id and storniran_id is null;
        return l_id;
    end dokument_id;

    function artikl_info (p_kif_id in number, p_stavka_id in number, p_skladiste_id in number) return varchar2 is
        l_ind  number;
        l_ooj  number;
        l_cij  number;
        l_rasp number;
        l_dok  number := dokument_id(p_kif_id);
    begin
        for a in (select * from vw_if_artikli where id = p_stavka_id) loop
            l_ooj := a.ooj_id;
            l_ind := case when pdv_sistem(a.ooj_id) = 'Y' then a.pdv_indikator_id end;
            l_cij := cijena_artikla(p_skladiste_id, p_stavka_id, l_ind);
            if a.je_roba = 'Y' and p_skladiste_id is not null then
                l_rasp := rm_dokument_pkg.raspolozivo(p_skladiste_id, p_stavka_id, null, l_dok);
            end if;
            return json_object(
                'jm'     value a.jm_naziv,
                'jm_id'  value a.jm_id,
                'roba'   value a.je_roba,
                'sb'     value a.prati_sb,
                'ind'    value l_ind,
                'stopa'  value stopa(l_ind),
                'cijena' value l_cij,
                'rasp'   value l_rasp
            );
        end loop;
        return '{}';
    end artikl_info;

    function razlog_zabrane (p_id in number) return varchar2 is
        l_zak date;
    begin
        if p_id is null then
            return null;
        end if;
        for k in (select status, stornirano, storniran_id, glavna_knjiga_id, fiskalizovano, ooj_id, datum_fakture
                    from kif where id = p_id) loop
            if nvl(k.stornirano, 'N') = 'Y' or k.storniran_id is not null then
                return 'Faktura je stornirana ili je storno dokument.';
            end if;
            if k.glavna_knjiga_id is not null or k.status = 'K' then
                return 'Faktura je proknjižena.';
            end if;
            if k.fiskalizovano = 'Y' then
                return 'Faktura je fiskalizovana.';
            end if;
            if nvl(k.status, 'P') = 'Z' then
                return 'Faktura je zaključena.';
            end if;
            select max(period_zakljucan_do) into l_zak from core.ooj where id = k.ooj_id;
            if l_zak is not null and trunc(k.datum_fakture) < trunc(l_zak) then
                return 'Datum fakture je u zaključanom periodu.';
            end if;
            return null;
        end loop;
        return 'Faktura ne postoji.';
    end razlog_zabrane;

    function je_izmjenjiva (p_id in number) return boolean is
    begin
        return razlog_zabrane(p_id) is null;
    end je_izmjenjiva;

    function izmjenjiva (p_id in number) return varchar2 is
    begin
        return case when p_id is null or je_izmjenjiva(p_id) then 'Y' else 'N' end;
    end izmjenjiva;

    procedure provjeri_izmjenu (p_id in number) is
        l_r varchar2(4000) := razlog_zabrane(p_id);
    begin
        if l_r is not null then
            greska(l_r || ' Izmjene nisu moguće.');
        end if;
    end provjeri_izmjenu;

    function ima_robe (p_kif_id in number) return boolean is
        l_n number;
    begin
        select count(*) into l_n
          from kif_stavke ks join sec_stavke s on s.id = ks.stavka_id
         where ks.kif_id = p_kif_id and nvl(s.tip_stavke_id, 0) <> c_usluga and nvl(ks.valid, 'Y') = 'Y';
        return l_n > 0;
    end ima_robe;

    ------------------------------------------------------------------ vezani dokument skladišta
    -- OTP (veleprodaja) / PMP (maloprodaja); nastaje sa prvom robom, prati fakturu
    function osiguraj_dokument (p_kif_id in number) return number is
        l_dok   number := dokument_id(p_kif_id);
        l_vrsta number;
        l_sifra varchar2(10);
    begin
        if l_dok is not null then
            return l_dok;
        end if;
        for k in (select ooj_id, godina, skladiste_id, datum_fakture, klijent_id, naziv_fakture
                    from kif where id = p_kif_id) loop
            if k.skladiste_id is null then
                greska('Izaberite prodajno mjesto (skladište) sa kojeg se prodaje roba.');
            end if;
            l_sifra := case tip_cijene(k.skladiste_id) when 'M' then 'PMP' when 'V' then 'OTP' end;
            if l_sifra is null then
                greska('Prodajno mjesto nije robno skladište sa cjenovnikom - roba se ne može fakturisati sa njega.');
            end if;
            select max(vd.id) into l_vrsta
              from sif.vrste_dokumenata vd
              join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = 'MAT'
             where vd.ooj_id = k.ooj_id and upper(vd.sifra) = l_sifra and vd.valid = 'Y';
            if l_vrsta is null then
                greska('Firma nema vrstu dokumenta ' || l_sifra || ' (pokrenuti 16_rm_vrste_izlaz.sql i 11_rm_model.sql).');
            end if;
            rm_dokument_pkg.iz_fakture('Y');
            begin
                l_dok := rm_dokument_pkg.snimi(
                    p_id                 => null,
                    p_ooj_id             => k.ooj_id,
                    p_godina             => k.godina,
                    p_vrsta_dokumenta_id => l_vrsta,
                    p_skladiste_id       => k.skladiste_id,
                    p_datum              => k.datum_fakture,
                    p_klijent_id         => k.klijent_id,
                    p_otpremnica_broj    => null,
                    p_otpremnica_datum   => null,
                    p_opis               => 'Po fakturi ' || nvl(k.naziv_fakture, '')
                );
                update operacije set faktura_id = p_kif_id where id = l_dok;
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end loop;
        return l_dok;
    end osiguraj_dokument;

    -- zaglavlje dokumenta prati fakturu (datum, kupac, broj u opisu)
    procedure uskladi_dokument (p_kif_id in number) is
        l_dok number := dokument_id(p_kif_id);
        l_id  number;
    begin
        if l_dok is null then
            return;
        end if;
        for k in (select k.ooj_id, k.godina, k.skladiste_id, k.datum_fakture, k.klijent_id, k.naziv_fakture,
                         o.vrsta_dokumenta_id, o.skladiste_id as dok_skladiste
                    from kif k join operacije o on o.id = l_dok
                   where k.id = p_kif_id) loop
            if nvl(k.skladiste_id, -1) <> k.dok_skladiste then
                greska('Faktura već ima robu sa prodajnog mjesta - prodajno mjesto se ne može promijeniti. Prvo obrišite stavke robe.');
            end if;
            rm_dokument_pkg.iz_fakture('Y');
            begin
                l_id := rm_dokument_pkg.snimi(
                    p_id                 => l_dok,
                    p_ooj_id             => k.ooj_id,
                    p_godina             => k.godina,
                    p_vrsta_dokumenta_id => k.vrsta_dokumenta_id,
                    p_skladiste_id       => k.skladiste_id,
                    p_datum              => k.datum_fakture,
                    p_klijent_id         => k.klijent_id,
                    p_otpremnica_broj    => null,
                    p_otpremnica_datum   => null,
                    p_opis               => 'Po fakturi ' || nvl(k.naziv_fakture, '')
                );
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end loop;
    end uskladi_dokument;

    procedure obrisi_dokument (p_kif_id in number) is
        l_dok number := dokument_id(p_kif_id);
    begin
        if l_dok is null then
            return;
        end if;
        update kif_stavke set operacija_stavka_id = null where kif_id = p_kif_id;
        rm_dokument_pkg.iz_fakture('Y');
        begin
            rm_dokument_pkg.obrisi(l_dok);
            rm_dokument_pkg.iz_fakture('N');
        exception
            when others then
                rm_dokument_pkg.iz_fakture('N');
                raise;
        end;
    end obrisi_dokument;

    ------------------------------------------------------------------ zaglavlje
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_vrsta_id           in number,
        p_klijent_id         in number,
        p_datum_fakture      in date,
        p_datum_valute       in date,
        p_skladiste_id       in number,
        p_veza_id            in number
    ) return varchar2 is
        l_vrs varchar2(20) := vrsta_sifra(p_vrsta_id);
        l_n   number;
        l_zak date;
    begin
        if l_vrs is null then
            return 'Izaberite vrstu fakture.';
        end if;
        if l_vrs = 'AVZ' then
            return 'Zatvaranje avansa nastaje automatski - uračunajte avans na konačnoj fakturi.';
        end if;
        if p_klijent_id is null then
            return 'Kupac je obavezan.';
        end if;
        select count(*) into l_n from sec_klijenti where id = p_klijent_id and ooj_id = p_ooj_id;
        if l_n = 0 then
            return 'Kupac ne pripada firmi.';
        end if;
        if p_datum_fakture is null then
            return 'Datum fakture je obavezan.';
        end if;
        if p_datum_valute is not null and trunc(p_datum_valute) < trunc(p_datum_fakture) then
            return 'Datum valute ne može biti prije datuma fakture.';
        end if;
        select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
        if l_zak is not null and trunc(p_datum_fakture) < trunc(l_zak) then
            return 'Datum fakture je u zaključanom periodu (do ' || to_char(l_zak, 'dd.mm.yyyy') || ').';
        end if;
        if p_skladiste_id is not null then
            select count(*) into l_n from vw_if_prodajna_mjesta where id = p_skladiste_id and ooj_id = p_ooj_id and valid = 'Y';
            if l_n = 0 then
                return 'Prodajno mjesto nije aktivno robno skladište firme.';
            end if;
        end if;
        if l_vrs in ('KO', 'KZ') then
            if p_veza_id is null then
                return 'Izaberite fakturu na koju se ' || case l_vrs when 'KO' then 'odobrenje' else 'zaduženje' end || ' odnosi.';
            end if;
            select count(*) into l_n from kif
             where id = p_veza_id and ooj_id = p_ooj_id and klijent_id = p_klijent_id
               and status in ('Z', 'K') and nvl(stornirano, 'N') = 'N' and storniran_id is null;
            if l_n = 0 then
                return 'Faktura na koju se dokument odnosi mora biti zaključena, nestornirana faktura istog kupca.';
            end if;
        end if;
        return null;
    end provjeri_zaglavlje;

    function snimi (
        p_id                   in number,
        p_ooj_id               in number,
        p_godina               in number,
        p_vrsta_id             in number,
        p_klijent_id           in number,
        p_datum_fakture        in date,
        p_datum_valute         in date,
        p_valuta_id            in number,
        p_tip_placanja_id      in number,
        p_skladiste_id         in number,
        p_ugovor_id            in number default null,
        p_oj_id                in number default null,
        p_veza_id              in number default null,
        p_pdv_indikator_id     in number default null,
        p_uio_tip_dokumenta_id in number default null,
        p_posebne_napomene     in varchar2 default null,
        p_print_pn             in varchar2 default null
    ) return number is
        l_id    number := p_id;
        l_r     varchar2(4000);
        l_brs   varchar2(30) := brojac_sifra(p_vrsta_id);
        l_vrs   varchar2(20) := vrsta_sifra(p_vrsta_id);
        l_broj  number;
        l_naziv varchar2(255);
        l_tc    varchar2(1);
        l_kurs  number;
        l_veza  number := case when vrsta_sifra(p_vrsta_id) in ('KO', 'KZ') then p_veza_id end;
        l_stara number;
    begin
        if l_id is not null then
            provjeri_izmjenu(l_id);
            select vrsta_fakture_id into l_stara from kif where id = l_id;
            if l_stara <> p_vrsta_id then
                greska('Vrsta snimljene fakture se ne može promijeniti.');
            end if;
        end if;
        l_r := provjeri_zaglavlje(l_id, p_ooj_id, p_vrsta_id, p_klijent_id, p_datum_fakture, p_datum_valute,
                                  p_skladiste_id, l_veza);
        if l_r is not null then
            greska(l_r);
        end if;
        if p_tip_placanja_id is null then
            greska('Izaberite način plaćanja.');
        end if;
        if p_valuta_id is null then
            greska('Izaberite valutu.');
        end if;
        l_tc := nvl(tip_cijene(p_skladiste_id), core.ooj_pkg.get_tip_cijene(p_ooj_id => p_ooj_id));
        l_kurs := case when p_valuta_id is not null then kuf_pkg.kurs(p_valuta_id, p_ooj_id, p_datum_fakture) end;

        if l_id is null then
            if l_brs is null or not core.protokoli_pkg.check_brojac(p_ooj_id, l_brs, p_godina) then
                greska('Nije definisan brojač za vrstu ' || l_vrs || ' u ' || p_godina || '. godini. Podesite numeraciju dokumenata.');
            end if;
            core.protokoli_pkg.get_brojac(
                p_ooj_id             => p_ooj_id,
                p_godina             => p_godina,
                p_vrsta_naloga_sifra => l_brs,
                p_broj               => l_broj,
                p_naziv              => l_naziv
            );
            insert into kif (
                ooj_id, godina, vrsta_fakture_id, faktura_broj, naziv_fakture, klijent_id,
                datum_fakture, datum_valute, dani_dospijeca, valuta_id, valuta_kurs, tip_placanja_id,
                skladiste_id, tip_cijene, ugovor_id, oj_id, faktura_id, pdv_indikator_id, uio_tip_dokumenta_id,
                posebne_napomene, print_pn, status, stornirano, fiskalizovano, system, uplaceno,
                iznos_fakture, iznos_fakture_nopdv, valuta_iznos, valuta_iznos_pdv
            ) values (
                p_ooj_id, p_godina, p_vrsta_id, l_broj, l_naziv, p_klijent_id,
                trunc(p_datum_fakture), trunc(p_datum_valute),
                case when p_datum_valute is not null then trunc(p_datum_valute) - trunc(p_datum_fakture) end,
                p_valuta_id, l_kurs, p_tip_placanja_id,
                p_skladiste_id, l_tc, p_ugovor_id, p_oj_id, l_veza, p_pdv_indikator_id, p_uio_tip_dokumenta_id,
                p_posebne_napomene, nvl(p_print_pn, 'N'), 'P', 'N', 'N', 'N',
                case when l_vrs = 'AV' then 'Y' else 'N' end,
                0, 0, 0, 0
            ) returning id into l_id;
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => l_brs,
                p_godina             => p_godina,
                p_value              => 1
            );
        else
            update kif
               set klijent_id           = p_klijent_id,
                   datum_fakture        = trunc(p_datum_fakture),
                   datum_valute         = trunc(p_datum_valute),
                   dani_dospijeca       = case when p_datum_valute is not null then trunc(p_datum_valute) - trunc(p_datum_fakture) end,
                   valuta_id            = p_valuta_id,
                   valuta_kurs          = l_kurs,
                   tip_placanja_id      = p_tip_placanja_id,
                   skladiste_id         = p_skladiste_id,
                   tip_cijene           = l_tc,
                   ugovor_id            = p_ugovor_id,
                   oj_id                = p_oj_id,
                   faktura_id           = l_veza,
                   pdv_indikator_id     = p_pdv_indikator_id,
                   uio_tip_dokumenta_id = nvl(p_uio_tip_dokumenta_id, uio_tip_dokumenta_id),
                   posebne_napomene     = p_posebne_napomene,
                   print_pn             = nvl(p_print_pn, print_pn)
             where id = l_id
               and ooj_id = p_ooj_id;
            if sql%rowcount = 0 then
                greska('Faktura ne postoji ili ne pripada izabranoj firmi.');
            end if;
            uskladi_dokument(l_id);
            preracunaj(l_id);
        end if;
        return l_id;
    end snimi;

    function razlog_zabrane_brisanja (p_id in number) return varchar2 is
        l_n number;
    begin
        if razlog_zabrane(p_id) is not null then
            return razlog_zabrane(p_id) || ' Briše se samo faktura u pripremi.';
        end if;
        select count(*) into l_n from kif where faktura_id = p_id;
        if l_n > 0 then
            return 'Na fakturu je vezan drugi dokument (odobrenje / zaduženje / zatvaranje).';
        end if;
        select count(*) into l_n from kif_avansi_zatvaranje where avans_id = p_id and storno is null;
        if l_n > 0 then
            return 'Avans je uračunat u konačnu fakturu.';
        end if;
        return null;
    end razlog_zabrane_brisanja;

    procedure obrisi (p_id in number, p_ooj_id in number) is
        l_r varchar2(4000) := razlog_zabrane_brisanja(p_id);
        l_n number;
    begin
        if l_r is not null then
            greska(l_r);
        end if;
        select count(*) into l_n from kif where id = p_id and ooj_id = p_ooj_id;
        if l_n = 0 then
            greska('Faktura ne postoji ili ne pripada izabranoj firmi.');
        end if;
        obrisi_dokument(p_id);
        delete from kif_avansi_zatvaranje where faktura_id = p_id and avans_zatvaranja_id is null;
        delete from kif_stavke where kif_id = p_id;
        delete from kif where id = p_id;
    end obrisi;

    ------------------------------------------------------------------ stavke
    procedure preracunaj (p_kif_id in number) is
        l_neto  number;
        l_bruto number;
        l_kurs  number;
        l_val   varchar2(20);
        l_vnaz  varchar2(100);
    begin
        select nvl(sum(iznos), 0), nvl(sum(iznos_sa_pdv), 0)
          into l_neto, l_bruto
          from vw_if_stavke where kif_id = p_kif_id;
        for k in (select k.valuta_id, k.valuta_kurs, v.sifra, v.naziv
                    from kif k left join sif.acc_valute v on v.id = k.valuta_id
                   where k.id = p_kif_id) loop
            l_kurs := nullif(nvl(k.valuta_kurs, 1), 0);
            l_val  := k.sifra;
            l_vnaz := k.naziv;
        end loop;
        update kif
           set iznos_fakture       = l_bruto,
               iznos_fakture_nopdv = l_neto,
               valuta_iznos        = round(l_bruto / nvl(l_kurs, 1), 2),
               valuta_iznos_pdv    = round(l_neto / nvl(l_kurs, 1), 2),
               iznos_slovima       = sif.spell_pkg.spell_serbian_number(
                                         round(case when nvl(l_val, 'BAM') = 'BAM' then l_bruto else l_bruto / nvl(l_kurs, 1) end, 2),
                                         'Y', 'J', nvl(l_vnaz, 'KM'))
         where id = p_kif_id;
    end preracunaj;

    procedure snimi_stavku (
        p_id               in out number,
        p_kif_id           in number,
        p_stavka_id        in number,
        p_kolicina         in number,
        p_cijena           in number,
        p_rabat            in number default 0,
        p_pdv_indikator_id in number default null,
        p_opis             in varchar2 default null
    ) is
        l_vrs    varchar2(20);
        l_ooj    number;
        l_tip    number;
        l_jm     number;
        l_naz    varchar2(255);
        l_ind    number := p_pdv_indikator_id;
        l_st     number;
        l_iznos  number;
        l_n      number;
        l_rb     number;
        l_os     number;
        l_dok    number;
        l_stara  number;
        l_valid  varchar2(1);
    begin
        provjeri_izmjenu(p_kif_id);
        select vrsta_sifra(vrsta_fakture_id), ooj_id into l_vrs, l_ooj from kif where id = p_kif_id;
        if p_stavka_id is null then
            greska('Izaberite artikal / uslugu.');
        end if;
        begin
            select tip_stavke_id, jm_id, naziv, valid into l_tip, l_jm, l_naz, l_valid
              from sec_stavke where id = p_stavka_id and ooj_id = l_ooj;
        exception
            when no_data_found then
                greska('Artikal ne pripada firmi.');
        end;
        if l_valid <> 'Y' then
            greska('Artikal / usluga nije aktivan.');
        end if;
        if nvl(p_kolicina, 0) = 0 then
            greska('Unesite količinu.');
        end if;
        if p_cijena is null or p_cijena < 0 then
            greska('Unesite cijenu (0 ili veću).');
        end if;
        if nvl(p_rabat, 0) < 0 or nvl(p_rabat, 0) > 100 then
            greska('Rabat je između 0 i 100 %.');
        end if;
        -- avansna faktura: tačno jedna stavka - usluga
        if l_vrs = 'AV' then
            if nvl(l_tip, 0) <> c_usluga then
                greska('Avansna faktura sadrži samo jednu stavku - uslugu (npr. „Avans po ponudi“).');
            end if;
            select count(*) into l_n from kif_stavke where kif_id = p_kif_id and id <> nvl(p_id, -1);
            if l_n > 0 then
                greska('Avansna faktura ima samo jednu stavku.');
            end if;
        end if;
        -- PDV: firma van PDV sistema nema indikator; inače indikator je obavezan
        if pdv_sistem(l_ooj) = 'N' then
            l_ind := null;
        elsif l_ind is null then
            greska('Izaberite PDV indikator stavke.');
        else
            select count(*) into l_n from vw_if_pdv_indikatori where id = l_ind;
            if l_n = 0 then
                greska('PDV indikator nije izlazni indikator.');
            end if;
        end if;
        l_st := stopa(l_ind);
        l_iznos := round(p_kolicina * p_cijena * (1 - nvl(p_rabat, 0) / 100), 2);

        if p_id is null then
            select nvl(max(redni_broj), 0) + 1 into l_rb from kif_stavke where kif_id = p_kif_id;
            insert into kif_stavke (kif_id, redni_broj, stavka_id, jm_id, naziv, kolicina, cijena, rabat, pdv, iznos,
                                    pdv_indikator_id, opis, valid)
            values (p_kif_id, l_rb, p_stavka_id, l_jm, l_naz, p_kolicina, p_cijena, nvl(p_rabat, 0), l_st, l_iznos,
                    l_ind, p_opis, 'Y')
            returning id into p_id;
        else
            select stavka_id, operacija_stavka_id into l_stara, l_os from kif_stavke where id = p_id and kif_id = p_kif_id;
            -- promijenjen artikal robe: stara stavka dokumenta skladišta se briše
            if l_stara <> p_stavka_id and l_os is not null then
                update kif_stavke set operacija_stavka_id = null where id = p_id;
                rm_dokument_pkg.iz_fakture('Y');
                begin
                    rm_dokument_pkg.obrisi_stavku(l_os);
                    rm_dokument_pkg.iz_fakture('N');
                exception
                    when others then
                        rm_dokument_pkg.iz_fakture('N');
                        raise;
                end;
                l_os := null;
            end if;
            update kif_stavke
               set stavka_id = p_stavka_id, jm_id = l_jm, naziv = l_naz, kolicina = p_kolicina, cijena = p_cijena,
                   rabat = nvl(p_rabat, 0), pdv = l_st, iznos = l_iznos, pdv_indikator_id = l_ind, opis = p_opis,
                   operacija_stavka_id = l_os
             where id = p_id;
        end if;

        -- roba: stavka vezanog dokumenta skladišta (raspoloživo, serijski brojevi - provjere u RM_DOKUMENT_PKG)
        if nvl(l_tip, 0) <> c_usluga then
            -- samo faktura razdužuje skladište; predračun, avans i KO / KZ su finansijski dokumenti
            -- (povrat robe od kupca uz knjižno odobrenje je sljedeći korak)
            if l_vrs = 'IF' then
                if p_kolicina < 0 then
                    greska('Količina robe na fakturi mora biti pozitivna (povrat robe ide preko knjižnog odobrenja).');
                end if;
                l_dok := osiguraj_dokument(p_kif_id);
                select operacija_stavka_id into l_os from kif_stavke where id = p_id;
                rm_dokument_pkg.iz_fakture('Y');
                begin
                    rm_dokument_pkg.snimi_stavku(
                        p_id          => l_os,
                        p_dokument_id => l_dok,
                        p_stavka_id   => p_stavka_id,
                        p_kolicina    => p_kolicina,
                        p_opis        => p_opis
                    );
                    rm_dokument_pkg.iz_fakture('N');
                exception
                    when others then
                        rm_dokument_pkg.iz_fakture('N');
                        raise;
                end;
                update kif_stavke set operacija_stavka_id = l_os where id = p_id;
            end if;
        end if;
        -- dokument skladišta bez robe (artikal zamijenjen uslugom) se briše
        if not ima_robe(p_kif_id) then
            obrisi_dokument(p_kif_id);
        end if;
        preracunaj(p_kif_id);
    end snimi_stavku;

    procedure obrisi_stavku (p_id in number) is
        l_kif number;
        l_os  number;
    begin
        select kif_id, operacija_stavka_id into l_kif, l_os from kif_stavke where id = p_id;
        provjeri_izmjenu(l_kif);
        delete from kif_stavke where id = p_id;
        if l_os is not null then
            rm_dokument_pkg.iz_fakture('Y');
            begin
                rm_dokument_pkg.obrisi_stavku(l_os);
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end if;
        if not ima_robe(l_kif) then
            obrisi_dokument(l_kif);
        end if;
        -- redni brojevi bez rupa
        merge into kif_stavke ks
        using (select id, row_number() over (order by redni_broj, id) as rb from kif_stavke where kif_id = l_kif) s
           on (ks.id = s.id)
         when matched then update set ks.redni_broj = s.rb;
        preracunaj(l_kif);
    exception
        when no_data_found then
            null;
    end obrisi_stavku;

    ------------------------------------------------------------------ avansi
    function avans_raspolozivo (p_avans_id in number, p_bez_reda_id in number default null) return number is
        l_r number;
    begin
        select nvl(max(nvl(k.valuta_iznos, k.iznos_fakture)), 0)
               - nvl((select sum(z.iznos) from kif_avansi_zatvaranje z
                       where z.avans_id = p_avans_id and z.storno is null and z.id <> nvl(p_bez_reda_id, -1)), 0)
          into l_r
          from kif k where k.id = p_avans_id;
        return l_r;
    end avans_raspolozivo;

    procedure snimi_avans_red (p_id in out number, p_kif_id in number, p_avans_id in number, p_iznos in number) is
        l_n   number;
        l_r   number;
        l_kup number;
        l_val number;
        l_ooj number;
        l_dat date;
        l_vr  number;
    begin
        provjeri_izmjenu(p_kif_id);
        select klijent_id, valuta_id, ooj_id, datum_fakture, vrsta_fakture_id
          into l_kup, l_val, l_ooj, l_dat, l_vr from kif where id = p_kif_id;
        if nvl(vrsta_sifra(l_vr), '-') <> 'IF' then
            greska('Avans se uračunava samo u konačnu fakturu.');
        end if;
        select count(*) into l_n from vw_if_avansi
         where id = p_avans_id and ooj_id = l_ooj and klijent_id = l_kup and nvl(valuta_id, -1) = nvl(l_val, -1);
        if l_n = 0 then
            greska('Avans mora biti zaključen, nestorniran avans istog kupca u istoj valuti.');
        end if;
        if nvl(p_iznos, 0) <= 0 then
            greska('Unesite iznos avansa koji se uračunava.');
        end if;
        l_r := avans_raspolozivo(p_avans_id, p_id);
        if p_iznos > l_r then
            greska('Raspoloživo na avansu je ' || to_char(l_r, 'FM999G999G990D00') || ' - iznos ne može biti veći.');
        end if;
        if p_id is null then
            insert into kif_avansi_zatvaranje (ooj_id, avans_id, faktura_id, datum_zatvaranja, iznos, created_by)
            values (l_ooj, p_avans_id, p_kif_id, l_dat, p_iznos, coalesce(sys_context('APEX$SESSION', 'APP_USER'), user))
            returning id into p_id;
        else
            update kif_avansi_zatvaranje
               set avans_id = p_avans_id, iznos = p_iznos, datum_zatvaranja = l_dat,
                   row_version = nvl(row_version, 1) + 1,
                   updated = sysdate, updated_by = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
             where id = p_id and faktura_id = p_kif_id and avans_zatvaranja_id is null;
        end if;
    end snimi_avans_red;

    procedure obrisi_avans_red (p_id in number) is
        l_kif number;
    begin
        select faktura_id into l_kif from kif_avansi_zatvaranje where id = p_id;
        provjeri_izmjenu(l_kif);
        delete from kif_avansi_zatvaranje where id = p_id and avans_zatvaranja_id is null;
    exception
        when no_data_found then
            null;
    end obrisi_avans_red;

    -- automatsko zatvaranje avansa (AVZ): jedna stavka - usluga sa avansa, iznos sa minusom
    procedure napravi_zatvaranja (p_kif_id in number) is
        l_vrsta number;
        l_brs   varchar2(30);
        l_broj  number;
        l_naziv varchar2(255);
        l_id    number;
        l_neto  number;
        l_kurs  number;
    begin
        for k in (select * from kif where id = p_kif_id) loop
            l_vrsta := vrsta_id(k.ooj_id, 'AVZ');
            for z in (select z.id, z.avans_id, z.iznos from kif_avansi_zatvaranje z
                       where z.faktura_id = p_kif_id and z.storno is null and z.avans_zatvaranja_id is null) loop
                if l_vrsta is null then
                    greska('Firma nema vrstu dokumenta AVZ (zatvaranje avansa).');
                end if;
                l_brs := brojac_sifra(l_vrsta);
                if not core.protokoli_pkg.check_brojac(k.ooj_id, l_brs, k.godina) then
                    greska('Nije definisan brojač za zatvaranje avansa (AVZ) u ' || k.godina || '. godini.');
                end if;
                core.protokoli_pkg.get_brojac(p_ooj_id => k.ooj_id, p_godina => k.godina, p_vrsta_naloga_sifra => l_brs,
                                              p_broj => l_broj, p_naziv => l_naziv);
                for a in (select av.id, av.naziv_fakture, av.tip_placanja_id, av.uio_tip_dokumenta_id,
                                 s.stavka_id, s.jm_id, s.pdv, s.pdv_indikator_id, s.naziv as stavka_naziv
                            from kif av
                            join kif_stavke s on s.kif_id = av.id
                           where av.id = z.avans_id and rownum = 1) loop
                    l_kurs := nullif(nvl(k.valuta_kurs, 1), 0);
                    -- iznos zatvaranja je sa PDV-om (u valuti); osnovica = iznos / (1 + stopa)
                    l_neto := round(z.iznos * nvl(l_kurs, 1) / (1 + nvl(a.pdv, 0) / 100), 2);
                    insert into kif (
                        ooj_id, godina, vrsta_fakture_id, faktura_broj, naziv_fakture, klijent_id, datum_fakture, datum_valute,
                        valuta_id, valuta_kurs, tip_placanja_id, skladiste_id, tip_cijene, faktura_id, pdv_indikator_id,
                        uio_tip_dokumenta_id, posebne_napomene, status, stornirano, fiskalizovano, system, uplaceno,
                        zakljucao, zakljucano_datum, iznos_fakture, iznos_fakture_nopdv, valuta_iznos, valuta_iznos_pdv, oj_id
                    ) values (
                        k.ooj_id, k.godina, l_vrsta, l_broj, l_naziv, k.klijent_id, k.datum_fakture, k.datum_fakture,
                        k.valuta_id, k.valuta_kurs, a.tip_placanja_id, null, k.tip_cijene, a.id, a.pdv_indikator_id,
                        a.uio_tip_dokumenta_id, 'Zatvaranje avansa ' || a.naziv_fakture || ' uz fakturu ' || k.naziv_fakture,
                        'Z', 'N', 'N', 'N', 'Y',
                        coalesce(sys_context('APEX$SESSION', 'APP_USER'), user), sysdate, 0, 0, 0, 0, k.oj_id
                    ) returning id into l_id;
                    insert into kif_stavke (kif_id, redni_broj, stavka_id, jm_id, naziv, kolicina, cijena, rabat, pdv, iznos,
                                            pdv_indikator_id, valid)
                    values (l_id, 1, a.stavka_id, a.jm_id, a.stavka_naziv, -1, l_neto, 0, nvl(a.pdv, 0), -l_neto,
                            a.pdv_indikator_id, 'Y');
                    preracunaj(l_id);
                end loop;
                core.protokoli_pkg.update_brojac(p_ooj_id => k.ooj_id, p_vrsta_naloga_sifra => l_brs,
                                                 p_godina => k.godina, p_value => 1);
                update kif_avansi_zatvaranje
                   set avans_zatvaranja_id = l_id, datum_zatvaranja = k.datum_fakture
                 where id = z.id;
            end loop;
        end loop;
    end napravi_zatvaranja;

    ------------------------------------------------------------------ statusi
    function provjeri (p_id in number) return varchar2 is
        l_r    varchar2(4000) := razlog_zabrane(p_id);
        l_n    number;
        l_vrs  varchar2(20);
        l_av   number;
        l_dok  number := dokument_id(p_id);
    begin
        if l_r is not null then
            return l_r;
        end if;
        for k in (select * from kif where id = p_id) loop
            l_vrs := vrsta_sifra(k.vrsta_fakture_id);
            l_r := provjeri_zaglavlje(p_id, k.ooj_id, k.vrsta_fakture_id, k.klijent_id, k.datum_fakture, k.datum_valute,
                                      k.skladiste_id, k.faktura_id);
            if l_r is not null then
                return l_r;
            end if;
            select count(*) into l_n from kif_stavke where kif_id = p_id;
            if l_n = 0 then
                return 'Faktura nema stavki.';
            end if;
            if l_vrs = 'AV' and l_n <> 1 then
                return 'Avansna faktura ima tačno jednu stavku.';
            end if;
            if pdv_sistem(k.ooj_id) = 'Y' then
                select count(*) into l_n from kif_stavke where kif_id = p_id and pdv_indikator_id is null;
                if l_n > 0 then
                    return 'Sve stavke moraju imati PDV indikator.';
                end if;
            end if;
            if ima_robe(p_id) and l_vrs = 'IF' then
                if l_dok is null then
                    return 'Roba sa fakture nije razdužena - ponovo snimite stavke robe.';
                end if;
                select count(*) into l_n from kif_stavke ks join sec_stavke s on s.id = ks.stavka_id
                 where ks.kif_id = p_id and nvl(s.tip_stavke_id, 0) <> c_usluga and ks.operacija_stavka_id is null;
                if l_n > 0 then
                    return 'Neke stavke robe nisu razdužene na skladištu - ponovo ih snimite.';
                end if;
                l_r := rm_dokument_pkg.provjeri_zakljucavanje(l_dok);
                if l_r is not null then
                    return 'Skladište: ' || l_r;
                end if;
            end if;
            -- uračunati avansi: ne više od raspoloživog i ne više od iznosa fakture
            for z in (select z.id, z.avans_id, z.iznos from kif_avansi_zatvaranje z
                       where z.faktura_id = p_id and z.storno is null and z.avans_zatvaranja_id is null) loop
                if z.iznos > avans_raspolozivo(z.avans_id, z.id) then
                    return 'Uračunati iznos avansa je veći od raspoloživog na avansu.';
                end if;
            end loop;
            select nvl(sum(iznos), 0) into l_av from kif_avansi_zatvaranje where faktura_id = p_id and storno is null;
            if l_av > nvl(k.valuta_iznos, k.iznos_fakture) then
                return 'Uračunati avansi su veći od iznosa fakture.';
            end if;
        end loop;
        return null;
    end provjeri;

    procedure zakljucaj (p_id in number) is
        l_r   varchar2(4000);
        l_dok number;
    begin
        preracunaj(p_id);
        l_r := provjeri(p_id);
        if l_r is not null then
            greska(l_r);
        end if;
        l_dok := dokument_id(p_id);
        if l_dok is not null then
            uskladi_dokument(p_id);
            rm_dokument_pkg.iz_fakture('Y');
            begin
                rm_dokument_pkg.zakljucaj(l_dok);
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end if;
        napravi_zatvaranja(p_id);
        update kif
           set status = 'Z',
               zakljucao = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user),
               zakljucano_datum = sysdate
         where id = p_id;
    end zakljucaj;

    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2 is
        l_n   number;
        l_r   varchar2(4000);
        l_dok number := dokument_id(p_id);
    begin
        if nvl(p_admin, 'N') <> 'Y' then
            return 'Fakturu otključava administrator.';
        end if;
        for k in (select * from kif where id = p_id) loop
            if nvl(k.status, 'P') <> 'Z' then
                return 'Faktura nije zaključena.';
            end if;
            if k.glavna_knjiga_id is not null then
                return 'Faktura je proknjižena.';
            end if;
            if k.fiskalizovano = 'Y' then
                return 'Faktura je fiskalizovana - ne može se otključati (stornira se).';
            end if;
            if nvl(k.stornirano, 'N') = 'Y' or k.storniran_id is not null then
                return 'Faktura je stornirana ili je storno dokument.';
            end if;
            if vrsta_sifra(k.vrsta_fakture_id) = 'AVZ' then
                return 'Zatvaranje avansa se otključava zajedno sa konačnom fakturom.';
            end if;
            select count(*) into l_n from kif where faktura_id = p_id and nvl(stornirano, 'N') = 'N' and storniran_id is null
               and vrsta_sifra(vrsta_fakture_id) <> 'AVZ';
            if l_n > 0 then
                return 'Na fakturu je vezano knjižno odobrenje / zaduženje.';
            end if;
            select count(*) into l_n from kif_avansi_zatvaranje where avans_id = p_id and storno is null;
            if l_n > 0 then
                return 'Avans je uračunat u konačnu fakturu.';
            end if;
            select count(*) into l_n
              from kif_avansi_zatvaranje z join kif x on x.id = z.avans_zatvaranja_id
             where z.faktura_id = p_id and z.storno is null and x.glavna_knjiga_id is not null;
            if l_n > 0 then
                return 'Zatvaranje avansa uz fakturu je proknjiženo.';
            end if;
            if l_dok is not null then
                rm_dokument_pkg.iz_fakture('Y');
                l_r := rm_dokument_pkg.razlog_zabrane_otkljucavanja(l_dok, 'Y');
                rm_dokument_pkg.iz_fakture('N');
                if l_r is not null then
                    return 'Dokument skladišta: ' || l_r;
                end if;
            end if;
            return null;
        end loop;
        return 'Faktura ne postoji.';
    end razlog_zabrane_otkljucavanja;

    procedure otkljucaj (p_id in number, p_admin in varchar2) is
        l_r   varchar2(4000);
        l_dok number := dokument_id(p_id);
    begin
        l_r := razlog_zabrane_otkljucavanja(p_id, p_admin);
        if l_r is not null then
            greska(l_r);
        end if;
        if l_dok is not null then
            rm_dokument_pkg.iz_fakture('Y');
            begin
                rm_dokument_pkg.otkljucaj(l_dok, 'Y');
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end if;
        -- automatska zatvaranja avansa se brišu (nastaju ponovo zaključavanjem)
        for z in (select id, avans_zatvaranja_id from kif_avansi_zatvaranje
                   where faktura_id = p_id and storno is null and avans_zatvaranja_id is not null) loop
            update kif_avansi_zatvaranje set avans_zatvaranja_id = null where id = z.id;
            delete from kif_stavke where kif_id = z.avans_zatvaranja_id;
            delete from kif where id = z.avans_zatvaranja_id;
        end loop;
        update kif set status = 'P', zakljucao = null, zakljucano_datum = null where id = p_id;
    end otkljucaj;

    function razlog_zabrane_storna (p_id in number) return varchar2 is
        l_n   number;
        l_dok number := dokument_id(p_id);
        l_r   varchar2(4000);
    begin
        for k in (select * from kif where id = p_id) loop
            if nvl(k.stornirano, 'N') = 'Y' then
                return 'Faktura je već stornirana.';
            end if;
            if k.storniran_id is not null then
                return 'Storno dokument se ne može stornirati.';
            end if;
            if nvl(k.status, 'P') not in ('Z', 'K') then
                return 'Stornira se zaključena faktura (faktura u pripremi se briše).';
            end if;
            if vrsta_sifra(k.vrsta_fakture_id) = 'AVZ' then
                return 'Zatvaranje avansa se stornira zajedno sa konačnom fakturom.';
            end if;
            select count(*) into l_n from kif where faktura_id = p_id and nvl(stornirano, 'N') = 'N' and storniran_id is null
               and vrsta_sifra(vrsta_fakture_id) <> 'AVZ';
            if l_n > 0 then
                return 'Na fakturu je vezano knjižno odobrenje / zaduženje - prvo ga stornirajte.';
            end if;
            select count(*) into l_n from kif_avansi_zatvaranje where avans_id = p_id and storno is null;
            if l_n > 0 then
                return 'Avans je uračunat u konačnu fakturu - prvo stornirajte konačnu fakturu.';
            end if;
            if l_dok is not null then
                rm_dokument_pkg.iz_fakture('Y');
                l_r := rm_dokument_pkg.razlog_zabrane_storna(l_dok);
                rm_dokument_pkg.iz_fakture('N');
                if l_r is not null then
                    return 'Dokument skladišta: ' || l_r;
                end if;
            end if;
            return null;
        end loop;
        return 'Faktura ne postoji.';
    end razlog_zabrane_storna;

    function storniraj (p_id in number, p_datum in date) return number is
        l_r     varchar2(4000) := razlog_zabrane_storna(p_id);
        l_sto   number;
        l_dok   number := dokument_id(p_id);
        l_sdok  number;
        l_zs    number;
    begin
        if l_r is not null then
            greska(l_r);
        end if;
        -- storno fakture (i naloga glavne knjige ako je proknjižena) - postojeća logika
        l_sto := finansije_pkg.storniraj_kif(p_id => p_id, p_datum => nvl(p_datum, trunc(sysdate)), p_auto => 'Y',
                                             p_glavna_knjiga_id => null);
        update kif set status = case when glavna_knjiga_id is not null then 'K' else 'Z' end,
                       zakljucao = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user),
                       zakljucano_datum = sysdate
         where id = l_sto;
        -- storno vezanog dokumenta skladišta (roba se vraća po istoj cijeni)
        if l_dok is not null then
            rm_dokument_pkg.iz_fakture('Y');
            begin
                for o in (select ooj_id from operacije where id = l_dok) loop
                    l_sdok := rm_dokument_pkg.storniraj(l_dok, o.ooj_id, extract(year from sysdate));
                end loop;
                update operacije set faktura_id = l_sto where id = l_sdok;
                rm_dokument_pkg.iz_fakture('N');
            exception
                when others then
                    rm_dokument_pkg.iz_fakture('N');
                    raise;
            end;
        end if;
        -- automatska zatvaranja avansa se storniraju sa konačnom fakturom
        for z in (select id, avans_zatvaranja_id from kif_avansi_zatvaranje
                   where faktura_id = p_id and storno is null) loop
            if z.avans_zatvaranja_id is not null then
                l_zs := finansije_pkg.storniraj_kif(p_id => z.avans_zatvaranja_id, p_datum => nvl(p_datum, trunc(sysdate)),
                                                    p_auto => 'Y', p_glavna_knjiga_id => null);
                update kif set status = case when glavna_knjiga_id is not null then 'K' else 'Z' end where id = l_zs;
            end if;
            update kif_avansi_zatvaranje set storno = 'S', updated = sysdate,
                   updated_by = coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
             where id = z.id;
        end loop;
        return l_sto;
    end storniraj;

end kif_pkg;
/

show errors package body kif_pkg
