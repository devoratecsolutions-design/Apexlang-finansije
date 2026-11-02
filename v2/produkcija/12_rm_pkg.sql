/*
================================================================================
  ESSCOM Finansije - 12_rm_pkg.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 11_rm_model.sql, PRIJE 13_rm_views.sql

  RM_DOKUMENT_PKG - dokumenti skladišta (v2, korak R1: prijemnica;
  R11: izdatnica IZD i izlaz na investiciju u toku IIN - samo materijalna skladišta,
  mjesto troška obavezno za dvojno knjigovodstvo, cijena = prosječna cijena skladišta
  na datum dokumenta, zaključavanje / otključavanje izlaznih dokumenata;
  R12: izlaz na osnovno sredstvo IOS i na sitni inventar ISI (+ zaduženi radnik),
  međuskladišni prenos MPR (izlaz na drugo skladište) i međuskladišni prijem MPP
  koji nastaje samo preuzimanjem zaključenog prenosa i odmah je zaključen;
  dvojno knjigovodstvo se čita iz firme u bazi).
  Sva pravila su u bazi; stranice 330/331/337 samo pozivaju paket.
    - vrsta dokumenta iz SIF.VRSTE_DOKUMENATA (modul MAT); tip kretanja po šifri
    - prijemnica: zaglavlje, stavke, serijski brojevi; zaključava je kalkulacija
    - dok je dokument u pripremi može se mijenjati i brisati; uključen u
      kalkulaciju ili zaključen - ne može
================================================================================
*/
set define off

create or replace package rm_dokument_pkg as

    -- vrste dokumenata
    function tip_kretanja (p_vrsta_sifra in varchar2) return varchar2;       -- U / I / N / null
    function podrzana (p_vrsta_sifra in varchar2) return varchar2;            -- Y = radi na novoj formi
    function vrsta_sifra (p_vrsta_dokumenta_id in number) return varchar2;
    -- vrsta u modulu (ROB / MAT): izdatnica i izlaz na investiciju samo u materijalnom
    function u_modulu (p_vrsta_sifra in varchar2, p_modul in varchar2) return varchar2;          -- Y / N
    -- mjesto troška: vrsta ga ima (Y / N) i obavezno je (dvojno knjigovodstvo: doo, ad, vsp_dvojno)
    function ima_mjesto_troska (p_vrsta_sifra in varchar2) return varchar2;
    function mjesto_troska_obavezno (p_vrsta_sifra in varchar2, p_tip_preduzetnika in varchar2,
                                     p_ooj_id in number default null) return varchar2;
    -- dvojno knjigovodstvo firme (doo, ad, vsp dvojno): iz baze; ako se ne može pročitati - iz p_tip
    function dvojno (p_ooj_id in number, p_tip_preduzetnika in varchar2 default null) return varchar2;
    -- zaduženi radnik (SIF.ACC_RADNICI): izlaz na osnovno sredstvo i sitni inventar - obavezan
    function ima_radnika (p_vrsta_sifra in varchar2) return varchar2;
    -- međuskladišni prenos (MPR) / prijem (MPP): drugo skladište
    function ima_skladiste_prenosa (p_vrsta_sifra in varchar2) return varchar2;

    -- status
    function je_izmjenjiv (p_id in number) return boolean;
    function izmjenjiv (p_id in number) return varchar2;                      -- Y / N (za stranicu)
    function razlog_zabrane (p_id in number) return varchar2;                 -- null = može se mijenjati

    -- zaglavlje: provjera (poruka ili null) i snimanje (insert kad je p_id prazan)
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_skladiste_id       in number,
        p_datum              in date,
        p_klijent_id         in number,
        p_otpremnica_datum   in date,
        p_ugovor_id          in number default null,
        p_mjesto_troska_id   in number default null,
        p_tip_preduzetnika   in varchar2 default null,
        p_radnik_id          in number default null,
        p_skladiste_prenos_id in number default null
    ) return varchar2;

    function snimi (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_skladiste_id       in number,
        p_datum              in date,
        p_klijent_id         in number,
        p_otpremnica_broj    in varchar2,
        p_otpremnica_datum   in date,
        p_opis               in varchar2,
        p_ugovor_id          in number default null,
        p_mjesto_troska_id   in number default null,
        p_tip_preduzetnika   in varchar2 default null,
        p_radnik_id          in number default null,
        p_skladiste_prenos_id in number default null
    ) return number;

    procedure obrisi (p_id in number);

    -- stavke
    procedure snimi_stavku (
        p_id           in out number,
        p_dokument_id  in number,
        p_stavka_id    in number,
        p_kolicina     in number,
        p_cijena       in number default null,     -- ulaz: unosi korisnik; izlaz: prosječna cijena (računa paket)
        p_opis         in varchar2 default null
    );
    procedure obrisi_stavku (p_id in number);

    -- količine artikla na skladištu:
    --   stanje      = svi ulazi - svi izlazi (i nezaključeni)
    --   obrađeno    = zaključeni ulazi - zaključeni izlazi
    --   raspoloživo = zaključeni ulazi - svi izlazi (nezaključeni izlaz odmah smanjuje raspoloživo)
    -- p_datum: do datuma (uključivo), p_bez_dok: bez zadatog dokumenta
    function stanje (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number;
    function obradjeno (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number;
    function raspolozivo (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number;
    -- jedinična prosječna cijena na datum: samo zaključeni dokumenti (vrijednost / količina)
    function prosjecna_cijena (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null) return number;
    function artikl_info (p_stavka_id in number, p_dokument_id in number, p_skladiste_id in number, p_datum in date) return varchar2;   -- JSON za formu

    -- serijski brojevi: tekst (ručno, barkod, QR opseg sa razdjelnicima) ili fajl (xlsx / csv, prva kolona)
    function dodaj_sb (p_stavka_dok_id in number, p_tekst in varchar2) return varchar2;      -- poruka o rezultatu
    function dodaj_sb_fajl (p_stavka_dok_id in number, p_naziv_fajla in varchar2) return varchar2;
    procedure obrisi_sb (p_id in number);
    procedure obrisi_sve_sb (p_stavka_dok_id in number);
    -- barkod / ručni unos jednog broja i stanje unosa: JSON {"ok":bool,"poruka":"..","n":uneseno,"k":količina}
    function dodaj_sb_json (p_stavka_dok_id in number, p_sb in varchar2) return varchar2;
    function sb_stanje_json (p_stavka_dok_id in number) return varchar2;
    -- izlaz: serijski broj raspoloživ na skladištu (zaključeni ulazi - svi izlazi), bez zadatog dokumenta
    function sb_raspoloziv (p_skladiste_id in number, p_stavka_id in number, p_sb in varchar2, p_bez_dok in number default null) return number;

    -- provjera kompletnosti (za kalkulaciju / zaključavanje): poruka ili null
    function provjeri_kompletnost (p_id in number) return varchar2;

    -- izlazni dokumenti (izdatnica, izlaz na investiciju): zaključavanje skida robu sa obrađenog stanja;
    -- prijemnicu zaključava kalkulacija
    function moze_zakljucati (p_id in number) return varchar2;                 -- Y / N (dugme)
    function provjeri_zakljucavanje (p_id in number, p_tip_preduzetnika in varchar2 default null) return varchar2;
    procedure zakljucaj (p_id in number, p_tip_preduzetnika in varchar2 default null);
    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2;
    procedure otkljucaj (p_id in number, p_admin in varchar2);

    -- međuskladišni prijem: preuzimanje zaključenog prenosa na skladište p_skladiste_id; vraća id prijema
    function prenos_preuzet (p_prenos_id in number) return varchar2;        -- naziv prijema ili null
    function preuzmi_prenos (p_prenos_id in number, p_ooj_id in number, p_godina in number,
                             p_skladiste_id in number) return number;

end rm_dokument_pkg;
/

create or replace package body rm_dokument_pkg as

    c_modul constant varchar2(10) := 'MAT';

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20201, 'Greška CORP-RM: ' || p_tekst);
    end greska;

    --------------------------------------------------------------------- vrste dokumenata
    function tip_kretanja (p_vrsta_sifra in varchar2) return varchar2 is
    begin
        return case upper(p_vrsta_sifra)
                   when 'PRI'  then 'U'
                   when 'IZD'  then 'I'
                   when 'IIN'  then 'I'
                   when 'IOS'  then 'I'
                   when 'ISI'  then 'I'
                   when 'MPR'  then 'I'
                   when 'MPP'  then 'U'
                   when 'PRRO' then 'U'
                   when 'POV'  then 'U'
                   when 'IZRO' then 'I'
                   when 'OT'   then 'I'
                   when 'POM'  then 'I'
                   when 'PRZA' then 'I'
                   when 'NIV'  then 'N'
               end;
    end tip_kretanja;

    function podrzana (p_vrsta_sifra in varchar2) return varchar2 is
    begin
        return case when upper(p_vrsta_sifra) in ('PRI', 'IZD', 'IIN', 'IOS', 'ISI', 'MPR', 'MPP') then 'Y' else 'N' end;
    end podrzana;

    function u_modulu (p_vrsta_sifra in varchar2, p_modul in varchar2) return varchar2 is
    begin
        return case when upper(p_vrsta_sifra) in ('IZD', 'IIN', 'IOS', 'ISI') and nvl(upper(p_modul), 'ROB') <> 'MAT' then 'N' else 'Y' end;
    end u_modulu;

    function ima_mjesto_troska (p_vrsta_sifra in varchar2) return varchar2 is
    begin
        return case when upper(p_vrsta_sifra) in ('IZD', 'IIN', 'IOS', 'ISI') then 'Y' else 'N' end;
    end ima_mjesto_troska;

    function ima_radnika (p_vrsta_sifra in varchar2) return varchar2 is
    begin
        return case when upper(p_vrsta_sifra) in ('IOS', 'ISI') then 'Y' else 'N' end;
    end ima_radnika;

    function ima_skladiste_prenosa (p_vrsta_sifra in varchar2) return varchar2 is
    begin
        return case when upper(p_vrsta_sifra) in ('MPR', 'MPP') then 'Y' else 'N' end;
    end ima_skladiste_prenosa;

    function dvojno (p_ooj_id in number, p_tip_preduzetnika in varchar2 default null) return varchar2 is
        l_s varchar2(64);
        l_d varchar2(1);
    begin
        if p_ooj_id is not null then
            begin
                -- dinamički: paket ne zavisi od prava na CORE.FIRME u trenutku prevođenja
                execute immediate
                    'select max(lower(replace(tp.sifra, ''.'', ''''))), max(f.dvojno_knjigovodstvo)
                       from core.ooj o
                       join core.firme f on f.id = o.firma_id
                       left join sif.sif_tipovi_preduzetnika tp on tp.id = f.tip_preduzetnika_id
                      where o.id = :1'
                    into l_s, l_d using p_ooj_id;
                if l_s is not null then
                    return case when l_s in ('doo', 'ad', 'vsp_dvojno') or (l_s = 'vsp' and l_d = 'Y') then 'Y' else 'N' end;
                end if;
            exception
                when others then
                    null;
            end;
        end if;
        if p_tip_preduzetnika is not null then
            return case when lower(p_tip_preduzetnika) in ('doo', 'ad', 'vsp_dvojno') then 'Y' else 'N' end;
        end if;
        return 'Y';                                      -- tip firme nepoznat: mjesto troška se traži
    end dvojno;

    function mjesto_troska_obavezno (p_vrsta_sifra in varchar2, p_tip_preduzetnika in varchar2,
                                     p_ooj_id in number default null) return varchar2 is
    begin
        return case when ima_mjesto_troska(p_vrsta_sifra) = 'Y' and dvojno(p_ooj_id, p_tip_preduzetnika) = 'Y'
                    then 'Y' else 'N' end;
    end mjesto_troska_obavezno;

    -- modul skladišta: robno (ROB) ili materijalno (sve ostalo)
    function modul_skladista (p_skladiste_id in number) return varchar2 is
        l_s varchar2(64);
    begin
        select max(upper(ts.sifra)) into l_s
          from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
         where s.id = p_skladiste_id;
        return case when l_s is null then null when l_s = 'ROB' then 'ROB' else 'MAT' end;
    end modul_skladista;

    function vrsta_sifra (p_vrsta_dokumenta_id in number) return varchar2 is
        l_sifra varchar2(64);
    begin
        select max(upper(vd.sifra)) into l_sifra
          from sif.vrste_dokumenata vd
          join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = c_modul
         where vd.id = p_vrsta_dokumenta_id;
        return l_sifra;
    end vrsta_sifra;

    function tip_dokumenta_sifra (p_dokument_id in number) return varchar2 is
        l_s varchar2(64);
    begin
        select max(upper(vd.sifra)) into l_s
          from operacije o join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
         where o.id = p_dokument_id;
        return l_s;
    end tip_dokumenta_sifra;

    --------------------------------------------------------------------- status
    function razlog_zabrane (p_id in number) return varchar2 is
        l_kalk varchar2(255);
    begin
        for o in (select o.status, o.zakljucano, o.stornirano, o.storniran_id, o.glavna_knjiga_id,
                         o.kalkulacija_id, o.datum, o.ooj_id
                    from operacije o where o.id = p_id) loop
            if o.glavna_knjiga_id is not null then
                return 'Dokument je proknjižen.';
            end if;
            if nvl(o.stornirano, 'N') = 'Y' or o.storniran_id is not null then
                return 'Dokument je storniran ili je storno dokument.';
            end if;
            if nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z' then
                return 'Dokument je zaključen.';
            end if;
            if tip_dokumenta_sifra(p_id) = 'MPP' then
                return 'Međuskladišni prijem se ne može mijenjati.';
            end if;
            select max(k.naziv) into l_kalk
              from kalkulacija_operacije ko join kalkulacije k on k.id = ko.kalkulacija_id
             where ko.operacija_id = p_id;
            if l_kalk is not null or o.kalkulacija_id is not null then
                return 'Prijemnica je uključena u kalkulaciju ' || nvl(l_kalk, '') || '. Za izmjenu je prvo uklonite iz kalkulacije.';
            end if;
            for p in (select period_zakljucan_do from core.ooj where id = o.ooj_id) loop
                if p.period_zakljucan_do is not null and trunc(o.datum) < trunc(p.period_zakljucan_do) then
                    return 'Dokument je u zaključanom periodu.';
                end if;
            end loop;
            return null;
        end loop;
        return 'Dokument ne postoji.';
    end razlog_zabrane;

    function je_izmjenjiv (p_id in number) return boolean is
    begin
        return razlog_zabrane(p_id) is null;
    end je_izmjenjiv;

    function izmjenjiv (p_id in number) return varchar2 is
    begin
        return case when p_id is null or je_izmjenjiv(p_id) then 'Y' else 'N' end;
    end izmjenjiv;

    procedure provjeri_izmjenu (p_id in number) is
        l_razlog varchar2(4000) := razlog_zabrane(p_id);
    begin
        if l_razlog is not null then
            greska(l_razlog || ' Izmjene nisu moguće.');
        end if;
    end provjeri_izmjenu;

    --------------------------------------------------------------------- količine i cijena
    -- n = U (ulaz), I (izlaz), N (nivelacija: mijenja samo vrijednost)
    function kolicina_vrsta (p_skladiste_id in number, p_stavka_id in number, p_datum in date, p_bez_dok in number,
                             p_ulaz_zakljucan in varchar2, p_izlaz_zakljucan in varchar2) return number is
        l_n number;
    begin
        select nvl(sum(case
                           when k.tk = 'U' and (p_ulaz_zakljucan = 'N' or k.st = 'Z') then os.kolicina
                           when k.tk = 'I' and (p_izlaz_zakljucan = 'N' or k.st = 'Z') then -os.kolicina
                           else 0
                       end), 0)
          into l_n
          from operacija_stavke os
          join operacije o on o.id = os.operacija_id
          left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         cross apply (select coalesce(tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                             nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                        from dual) k
         where os.stavka_id = p_stavka_id
           and o.skladiste_id = p_skladiste_id
           and nvl(o.stornirano, 'N') = 'N'
           and (p_datum is null or o.datum <= p_datum)
           and (p_bez_dok is null or o.id <> p_bez_dok);
        return l_n;
    end kolicina_vrsta;

    function stanje (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number is
    begin
        return kolicina_vrsta(p_skladiste_id, p_stavka_id, p_datum, p_bez_dok, 'N', 'N');
    end stanje;

    function obradjeno (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number is
    begin
        return kolicina_vrsta(p_skladiste_id, p_stavka_id, p_datum, p_bez_dok, 'Y', 'Y');
    end obradjeno;

    function raspolozivo (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null, p_bez_dok in number default null) return number is
    begin
        return kolicina_vrsta(p_skladiste_id, p_stavka_id, p_datum, p_bez_dok, 'Y', 'N');
    end raspolozivo;

    function prosjecna_cijena (p_skladiste_id in number, p_stavka_id in number, p_datum in date default null) return number is
        l_kol number;
        l_vr  number;
    begin
        select sum(case k.tk when 'U' then os.kolicina when 'I' then -os.kolicina else 0 end),
               sum(case k.tk when 'U' then os.kolicina * nvl(os.nabavna_cijena, 0)
                             when 'I' then -os.kolicina * nvl(os.nabavna_cijena, 0)
                             when 'N' then os.kolicina * nvl(os.nabavna_cijena, 0) else 0 end)
          into l_kol, l_vr
          from operacija_stavke os
          join operacije o on o.id = os.operacija_id
          left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         cross apply (select coalesce(tip_kretanja(vd.sifra), t.tip_kretanja) as tk from dual) k
         where os.stavka_id = p_stavka_id
           and o.skladiste_id = p_skladiste_id
           and nvl(o.stornirano, 'N') = 'N'
           and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
           and (p_datum is null or o.datum <= p_datum);
        if nvl(l_kol, 0) <= 0 then
            return 0;
        end if;
        return round(l_vr / l_kol, 6);
    end prosjecna_cijena;

    function tip_dokumenta (p_dokument_id in number) return varchar2 is
        l_tk varchar2(1);
    begin
        select max(coalesce(tip_kretanja(vd.sifra), t.tip_kretanja))
          into l_tk
          from operacije o
          left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         where o.id = p_dokument_id;
        return l_tk;
    end tip_dokumenta;

    --------------------------------------------------------------------- zaglavlje
    function provjeri_zaglavlje (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_skladiste_id       in number,
        p_datum              in date,
        p_klijent_id         in number,
        p_otpremnica_datum   in date,
        p_ugovor_id          in number default null,
        p_mjesto_troska_id   in number default null,
        p_tip_preduzetnika   in varchar2 default null,
        p_radnik_id          in number default null,
        p_skladiste_prenos_id in number default null
    ) return varchar2 is
        l_vrs   varchar2(64) := vrsta_sifra(p_vrsta_dokumenta_id);
        l_n     number;
        l_zak   date;
        l_stara number;
    begin
        if l_vrs is null then
            return 'Izaberite vrstu dokumenta skladišta.';
        end if;
        if podrzana(l_vrs) = 'N' then
            return 'Vrsta dokumenta ' || l_vrs || ' još nije podržana na novoj formi.';
        end if;
        if p_skladiste_id is null then
            return 'Izaberite skladište (meni Skladište u zaglavlju aplikacije).';
        end if;
        select count(*) into l_n from skladista where id = p_skladiste_id and ooj_id = p_ooj_id and valid = 'Y';
        if l_n = 0 then
            return 'Skladište ne pripada firmi ili nije aktivno.';
        end if;
        if p_datum is null then
            return 'Datum dokumenta je obavezan.';
        end if;
        if extract(year from p_datum) <> p_godina then
            return 'Datum dokumenta mora biti u ' || p_godina || '. godini. Za drugu godinu promijenite radnu godinu.';
        end if;
        if trunc(p_datum) > trunc(sysdate) then
            return 'Datum dokumenta ne može biti u budućnosti.';
        end if;
        select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
        if l_zak is not null and trunc(p_datum) < trunc(l_zak) then
            return 'Datum dokumenta je u zaključanom periodu (zaključano do ' || to_char(l_zak, 'DD.MM.YYYY') || ').';
        end if;
        if u_modulu(l_vrs, modul_skladista(p_skladiste_id)) = 'N' then
            return 'Dokument se izdaje samo sa materijalnog skladišta (modul Materijal i oprema).';
        end if;
        if ima_mjesto_troska(l_vrs) = 'Y' then
            if p_mjesto_troska_id is null and mjesto_troska_obavezno(l_vrs, p_tip_preduzetnika, p_ooj_id) = 'Y' then
                return 'Mjesto troška je obavezno.';
            end if;
            if p_mjesto_troska_id is not null then
                select count(*) into l_n from sif.acc_mjesta_troska
                 where id = p_mjesto_troska_id and ooj_id = p_ooj_id and valid = 'Y';
                if l_n = 0 then
                    return 'Mjesto troška ne pripada firmi ili nije aktivno.';
                end if;
            end if;
        end if;
        if ima_radnika(l_vrs) = 'Y' then
            if p_radnik_id is null then
                return 'Zaduženi radnik je obavezan.';
            end if;
            select count(*) into l_n from sif.acc_radnici where id = p_radnik_id and ooj_id = p_ooj_id and valid = 'Y';
            if l_n = 0 then
                return 'Zaduženi radnik ne pripada firmi ili nije aktivan.';
            end if;
        end if;
        if l_vrs = 'MPP' and p_id is null then
            return 'Međuskladišni prijem nastaje samo preuzimanjem međuskladišnog prenosa.';
        end if;
        if l_vrs = 'MPR' then
            if p_skladiste_prenos_id is null then
                return 'Izaberite skladište na koje se roba prenosi.';
            end if;
            if p_skladiste_prenos_id = p_skladiste_id then
                return 'Roba se ne može prenijeti na isto skladište.';
            end if;
            select count(*) into l_n from skladista where id = p_skladiste_prenos_id and ooj_id = p_ooj_id and valid = 'Y';
            if l_n = 0 then
                return 'Skladište na koje se roba prenosi ne pripada firmi ili nije aktivno.';
            end if;
        end if;
        if l_vrs = 'PRI' then
            if p_klijent_id is null then
                return 'Dobavljač je obavezan.';
            end if;
            select count(*) into l_n from sec_klijenti where id = p_klijent_id and ooj_id = p_ooj_id;
            if l_n = 0 then
                return 'Dobavljač ne pripada firmi.';
            end if;
            if p_otpremnica_datum is not null and trunc(p_otpremnica_datum) > trunc(p_datum) then
                return 'Datum otpremnice ne može biti poslije datuma prijema.';
            end if;
        end if;
        if p_ugovor_id is not null then
            select count(*) into l_n from ugovori
             where id = p_ugovor_id and ooj_id = p_ooj_id
               and (p_klijent_id is null or klijent_id = p_klijent_id);
            if l_n = 0 then
                return 'Ugovor ne pripada firmi ili izabranom dobavljaču.';
            end if;
        end if;
        if p_id is not null then
            select max(skladiste_id) into l_stara from operacije where id = p_id;
            if nvl(l_stara, -1) <> p_skladiste_id then
                select count(*) into l_n from operacija_stavke where operacija_id = p_id;
                if l_n > 0 then
                    return 'Skladište se ne može promijeniti dok dokument ima stavke.';
                end if;
            end if;
        end if;
        return null;
    end provjeri_zaglavlje;

    function snimi (
        p_id                 in number,
        p_ooj_id             in number,
        p_godina             in number,
        p_vrsta_dokumenta_id in number,
        p_skladiste_id       in number,
        p_datum              in date,
        p_klijent_id         in number,
        p_otpremnica_broj    in varchar2,
        p_otpremnica_datum   in date,
        p_opis               in varchar2,
        p_ugovor_id          in number default null,
        p_mjesto_troska_id   in number default null,
        p_tip_preduzetnika   in varchar2 default null,
        p_radnik_id          in number default null,
        p_skladiste_prenos_id in number default null
    ) return number is
        l_id     number := p_id;
        l_mt     number := case when ima_mjesto_troska(vrsta_sifra(p_vrsta_dokumenta_id)) = 'Y' then p_mjesto_troska_id end;
        l_rad    number := case when ima_radnika(vrsta_sifra(p_vrsta_dokumenta_id)) = 'Y' then p_radnik_id end;
        l_skp    number := case when upper(vrsta_sifra(p_vrsta_dokumenta_id)) = 'MPR' then p_skladiste_prenos_id end;
        l_sifra  varchar2(64) := lower(vrsta_sifra(p_vrsta_dokumenta_id));
        l_poruka varchar2(4000);
        l_broj   number;
        l_naziv  varchar2(255);
        l_oj     number;
    begin
        if l_id is not null then
            provjeri_izmjenu(l_id);
        end if;
        l_poruka := provjeri_zaglavlje(l_id, p_ooj_id, p_godina, p_vrsta_dokumenta_id, p_skladiste_id,
                                       p_datum, p_klijent_id, p_otpremnica_datum, p_ugovor_id,
                                       p_mjesto_troska_id, p_tip_preduzetnika, p_radnik_id, p_skladiste_prenos_id);
        if l_poruka is not null then
            greska(l_poruka);
        end if;
        select oj_id into l_oj from skladista where id = p_skladiste_id;

        if l_id is null then
            if not core.protokoli_pkg.check_brojac(p_ooj_id, l_sifra, p_godina) then
                greska('Nije definisan brojač za vrstu dokumenta ' || upper(l_sifra) || ' u ' || p_godina
                       || '. godini. Podesite numeraciju dokumenata.');
            end if;
            core.protokoli_pkg.get_brojac(
                p_ooj_id             => p_ooj_id,
                p_godina             => p_godina,
                p_vrsta_naloga_sifra => l_sifra,
                p_broj               => l_broj,
                p_naziv              => l_naziv
            );
            insert into operacije (
                ooj_id, godina, vrsta_dokumenta_id, skladiste_id, oj_id, datum, klijent_id,
                otpremnica_broj, otpremnica_datum, opis, broj, naziv, status, zakljucano, stornirano, ugovor_id,
                mjesto_troska_id, zaduzeni_radnik_id, skladiste_prenos_id
            ) values (
                p_ooj_id, p_godina, p_vrsta_dokumenta_id, p_skladiste_id, l_oj, trunc(p_datum), p_klijent_id,
                trim(p_otpremnica_broj), p_otpremnica_datum, p_opis, l_broj, l_naziv, 'P', 'N', 'N', p_ugovor_id,
                l_mt, l_rad, l_skp
            ) returning id into l_id;
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => l_sifra,
                p_godina             => p_godina,
                p_value              => 1
            );
        else
            update operacije
               set skladiste_id     = p_skladiste_id,
                   oj_id            = l_oj,
                   datum            = trunc(p_datum),
                   klijent_id       = p_klijent_id,
                   otpremnica_broj  = trim(p_otpremnica_broj),
                   otpremnica_datum = p_otpremnica_datum,
                   opis             = p_opis,
                   ugovor_id        = p_ugovor_id,
                   mjesto_troska_id = l_mt,
                   zaduzeni_radnik_id = l_rad,
                   skladiste_prenos_id = l_skp
             where id = l_id;
            -- izlaz: jedinična cijena je prosječna na datum dokumenta
            if tip_kretanja(l_sifra) = 'I' then
                update operacija_stavke os
                   set os.nabavna_cijena = prosjecna_cijena(p_skladiste_id, os.stavka_id, trunc(p_datum))
                 where os.operacija_id = l_id;
            end if;
        end if;
        return l_id;
    end snimi;

    procedure obrisi (p_id in number) is
    begin
        provjeri_izmjenu(p_id);
        delete from operacija_stavke_sb
         where operacija_stavka_id in (select id from operacija_stavke where operacija_id = p_id);
        delete from operacija_stavke where operacija_id = p_id;
        delete from operacije where id = p_id;
    end obrisi;

    --------------------------------------------------------------------- stavke
    procedure snimi_stavku (
        p_id           in out number,
        p_dokument_id  in number,
        p_stavka_id    in number,
        p_kolicina     in number,
        p_cijena       in number default null,
        p_opis         in varchar2 default null
    ) is
        l_tk     varchar2(1) := tip_dokumenta(p_dokument_id);
        l_skl    number;
        l_datum  date;
        l_cijena number := p_cijena;
        l_rasp   number;
        l_ooj   number;
        l_tip   number;
        l_sb    varchar2(1);
        l_valid varchar2(1);
        l_n     number;
        l_stara number;
    begin
        provjeri_izmjenu(p_dokument_id);
        if p_stavka_id is null then
            greska('Izaberite artikal.');
        end if;
        select ooj_id, skladiste_id, datum into l_ooj, l_skl, l_datum from operacije where id = p_dokument_id;
        begin
            select tip_stavke_id, case when serijski_broj = 'Y' then 'Y' else 'N' end, valid
              into l_tip, l_sb, l_valid
              from sec_stavke where id = p_stavka_id and ooj_id = l_ooj;
        exception
            when no_data_found then
                greska('Artikal ne pripada firmi.');
        end;
        if l_valid <> 'Y' then
            greska('Artikal nije aktivan.');
        end if;
        if l_tip = 3 then
            greska('Usluga se ne vodi na skladištu.');
        end if;
        if p_kolicina is null or p_kolicina <= 0 then
            greska('Količina mora biti veća od nule.');
        end if;
        if l_sb = 'Y' and p_kolicina <> trunc(p_kolicina) then
            greska('Artikal se prati po serijskom broju - količina mora biti cijeli broj.');
        end if;
        select count(*) into l_n
          from operacija_stavke
         where operacija_id = p_dokument_id and stavka_id = p_stavka_id and id <> nvl(p_id, -1);
        if l_n > 0 then
            greska('Artikal je već u dokumentu. Promijenite količinu na postojećoj stavci.');
        end if;

        if l_tk = 'U' then
            if l_cijena is null or l_cijena < 0 then
                greska('Unesite jediničnu cijenu (0 ili veću).');
            end if;
        elsif l_tk = 'I' then
            -- izlaz: prosječna cijena na datum dokumenta, količina najviše do raspoloživog
            l_cijena := prosjecna_cijena(l_skl, p_stavka_id, l_datum);
            l_rasp := raspolozivo(l_skl, p_stavka_id, null, p_dokument_id);
            if p_kolicina > l_rasp then
                greska('Na skladištu je raspoloživo ' || to_char(l_rasp, 'FM999G999G990D999') || ' - količina ne može biti veća.');
            end if;
        end if;

        if p_id is null then
            insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, opis, redni_broj)
            values (p_dokument_id, p_stavka_id, p_kolicina, round(l_cijena, 6), p_opis,
                    (select nvl(max(redni_broj), 0) + 1 from operacija_stavke where operacija_id = p_dokument_id))
            returning id into p_id;
        else
            select stavka_id into l_stara from operacija_stavke where id = p_id and operacija_id = p_dokument_id;
            select count(*) into l_n from operacija_stavke_sb where operacija_stavka_id = p_id;
            if l_stara <> p_stavka_id and l_n > 0 then
                greska('Stavka ima serijske brojeve - artikal se ne može promijeniti. Obrišite stavku i dodajte novu.');
            end if;
            if l_n > p_kolicina then
                greska('Uneseno je ' || l_n || ' serijskih brojeva - prvo obrišite višak pa smanjite količinu.');
            end if;
            update operacija_stavke
               set stavka_id      = p_stavka_id,
                   kolicina       = p_kolicina,
                   nabavna_cijena = round(l_cijena, 6),
                   opis           = p_opis
             where id = p_id;
        end if;
    end snimi_stavku;

    procedure obrisi_stavku (p_id in number) is
        l_dok number;
    begin
        select operacija_id into l_dok from operacija_stavke where id = p_id;
        provjeri_izmjenu(l_dok);
        delete from operacija_stavke_sb where operacija_stavka_id = p_id;
        delete from operacija_stavke where id = p_id;
    exception
        when no_data_found then
            null;
    end obrisi_stavku;

    function artikl_info (p_stavka_id in number, p_dokument_id in number, p_skladiste_id in number, p_datum in date) return varchar2 is
        l_json varchar2(4000);
    begin
        select json_object('jm'     value jm.naziv,
                           'sb'     value case when s.serijski_broj = 'Y' then 'Y' else 'N' end,
                           'stanje' value stanje(p_skladiste_id, p_stavka_id, null, p_dokument_id),
                           'obr'    value obradjeno(p_skladiste_id, p_stavka_id, null, p_dokument_id),
                           'rasp'   value raspolozivo(p_skladiste_id, p_stavka_id, null, p_dokument_id),
                           'cijena' value prosjecna_cijena(p_skladiste_id, p_stavka_id, nvl(p_datum, trunc(sysdate))))
          into l_json
          from sec_stavke s
          left join sif.acc_jedinice_mjere jm on jm.id = s.jm_id
         where s.id = p_stavka_id;
        return l_json;
    exception
        when no_data_found then
            return '{}';
    end artikl_info;

    --------------------------------------------------------------------- serijski brojevi
    -- koliko puta je SB "na stanju" u firmi (ulazi - izlazi), bez zadatog dokumenta
    function sb_u_upotrebi (p_ooj_id in number, p_stavka_id in number, p_sb in varchar2, p_bez_dok in number) return number is
        l_n number;
    begin
        select nvl(sum(case coalesce(tip_kretanja(vd.sifra), t.tip_kretanja) when 'U' then 1 when 'I' then -1 else 0 end), 0)
          into l_n
          from operacija_stavke_sb sb
          join operacija_stavke os on os.id = sb.operacija_stavka_id
          join operacije o on o.id = os.operacija_id
          left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         where sb.serijski_broj = p_sb
           and os.stavka_id = p_stavka_id
           and o.ooj_id = p_ooj_id
           and o.id <> p_bez_dok
           and nvl(o.stornirano, 'N') = 'N'
           and o.storniran_id is null;
        return l_n;
    end sb_u_upotrebi;

    function sb_raspoloziv (p_skladiste_id in number, p_stavka_id in number, p_sb in varchar2, p_bez_dok in number default null) return number is
        l_n number;
    begin
        select nvl(sum(case
                           when k.tk = 'U' and k.st = 'Z' then 1
                           when k.tk = 'I' then -1
                           else 0
                       end), 0)
          into l_n
          from operacija_stavke_sb sb
          join operacija_stavke os on os.id = sb.operacija_stavka_id
          join operacije o on o.id = os.operacija_id
          left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
          left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
         cross apply (select coalesce(tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                             nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                        from dual) k
         where sb.serijski_broj = p_sb
           and os.stavka_id = p_stavka_id
           and o.skladiste_id = p_skladiste_id
           and nvl(o.stornirano, 'N') = 'N'
           and o.storniran_id is null
           and (p_bez_dok is null or o.id <> p_bez_dok);
        return l_n;
    end sb_raspoloziv;

    function dodaj_sb_lista (p_stavka_dok_id in number, p_lista in apex_t_varchar2) return varchar2 is
        l_tk       varchar2(1);
        l_skl      number;
        l_nema     number := 0;
        l_dok      number;
        l_stavka   number;
        l_kolicina number;
        l_ooj      number;
        l_prati    varchar2(1);
        l_imamo    number;
        l_dodato   number := 0;
        l_dupli    number := 0;
        l_zauzeti  number := 0;
        l_visak    number := 0;
        l_primjer  varchar2(400);
        l_sb       varchar2(4000);
        l_n        number;
    begin
        select os.operacija_id, os.stavka_id, os.kolicina, o.ooj_id,
               case when s.serijski_broj = 'Y' then 'Y' else 'N' end, o.skladiste_id
          into l_dok, l_stavka, l_kolicina, l_ooj, l_prati, l_skl
          from operacija_stavke os
          join operacije o on o.id = os.operacija_id
          join sec_stavke s on s.id = os.stavka_id
         where os.id = p_stavka_dok_id;
        provjeri_izmjenu(l_dok);
        if l_prati = 'N' then
            greska('Artikal se ne prati po serijskom broju.');
        end if;
        select count(*) into l_imamo from operacija_stavke_sb where operacija_stavka_id = p_stavka_dok_id;
        l_tk := tip_dokumenta(l_dok);

        for i in 1 .. p_lista.count loop
            l_sb := trim(p_lista(i));
            continue when l_sb is null;
            if length(l_sb) > 255 then
                greska('Serijski broj je duži od 255 znakova: ' || substr(l_sb, 1, 40) || '...');
            end if;
            select count(*) into l_n from operacija_stavke_sb
             where operacija_stavka_id = p_stavka_dok_id and serijski_broj = l_sb;
            if l_n > 0 then
                l_dupli := l_dupli + 1;
            elsif l_tk = 'I' and sb_raspoloziv(l_skl, l_stavka, l_sb, l_dok) <= 0 then
                -- izlaz: samo serijski broj koji je raspoloživ na skladištu
                l_nema := l_nema + 1;
                if l_primjer is null then
                    l_primjer := l_sb;
                end if;
            elsif l_tk <> 'I' and sb_u_upotrebi(l_ooj, l_stavka, l_sb, l_dok) > 0 then
                l_zauzeti := l_zauzeti + 1;
                if l_primjer is null then
                    l_primjer := l_sb;
                end if;
            elsif l_imamo >= l_kolicina then
                l_visak := l_visak + 1;
            else
                insert into operacija_stavke_sb (operacija_stavka_id, serijski_broj) values (p_stavka_dok_id, l_sb);
                l_imamo  := l_imamo + 1;
                l_dodato := l_dodato + 1;
            end if;
        end loop;

        return 'Dodato: ' || l_dodato || ' (ukupno ' || l_imamo || ' od ' || l_kolicina || ').'
               || case when l_dupli > 0 then ' Već uneseno u ovu stavku: ' || l_dupli || '.' end
               || case when l_zauzeti > 0 then ' Već na stanju ili u drugom dokumentu: ' || l_zauzeti
                                               || ' (npr. ' || l_primjer || ').' end
               || case when l_nema > 0 then ' Nije raspoloživ na skladištu: ' || l_nema
                                            || ' (npr. ' || l_primjer || ').' end
               || case when l_visak > 0 then ' Preskočeno jer bi premašilo količinu: ' || l_visak || '.' end;
    end dodaj_sb_lista;

    function dodaj_sb (p_stavka_dok_id in number, p_tekst in varchar2) return varchar2 is
        l_tekst varchar2(32767);
    begin
        -- razdjelnici: novi red, tab, ; , : / i razmak (QR opseg)
        l_tekst := regexp_replace(p_tekst, '[;,:/[:space:]]+', chr(10));
        return dodaj_sb_lista(p_stavka_dok_id, apex_string.split(l_tekst, chr(10)));
    end dodaj_sb;

    function dodaj_sb_fajl (p_stavka_dok_id in number, p_naziv_fajla in varchar2) return varchar2 is
        l_lista apex_t_varchar2 := apex_t_varchar2();
        l_ima   boolean := false;
    begin
        for f in (select blob_content, filename
                    from apex_application_temp_files
                   where name = p_naziv_fajla) loop
            l_ima := true;
            for r in (select p.col001
                        from table(apex_data_parser.parse(
                                 p_content         => f.blob_content,
                                 p_file_name       => f.filename,
                                 p_skip_rows       => 0,
                                 p_max_rows        => 100000)) p) loop
                apex_string.push(l_lista, r.col001);
            end loop;
        end loop;
        if not l_ima then
            greska('Fajl nije pronađen. Izaberite fajl ponovo.');
        end if;
        return dodaj_sb_lista(p_stavka_dok_id, l_lista);
    end dodaj_sb_fajl;

    function sb_stanje_json (p_stavka_dok_id in number) return varchar2 is
        l_json varchar2(400);
    begin
        select json_object('n' value (select count(*) from operacija_stavke_sb where operacija_stavka_id = os.id),
                           'k' value os.kolicina)
          into l_json
          from operacija_stavke os where os.id = p_stavka_dok_id;
        return l_json;
    exception
        when no_data_found then
            return '{"n":0,"k":0}';
    end sb_stanje_json;

    function dodaj_sb_json (p_stavka_dok_id in number, p_sb in varchar2) return varchar2 is
        l_poruka varchar2(4000);
        l_ok     varchar2(5);
        l_st     varchar2(400);
    begin
        if trim(p_sb) is null then
            return '{"ok":false,"poruka":"Unesite serijski broj."}';
        end if;
        begin
            l_poruka := dodaj_sb_lista(p_stavka_dok_id, apex_t_varchar2(trim(p_sb)));
            l_ok := case when l_poruka like 'Dodato: 1 %' then 'true' else 'false' end;
            if l_ok = 'true' then
                l_poruka := 'Serijski broj ' || trim(p_sb) || ' je dodat.';
            end if;
        exception
            when others then
                l_ok := 'false';
                l_poruka := regexp_replace(sqlerrm, '^ORA-[0-9]+: (Greška CORP-RM: )?', '');
        end;
        l_st := sb_stanje_json(p_stavka_dok_id);
        return '{"ok":' || l_ok || ',"poruka":"' || apex_escape.json(l_poruka) || '",'
               || substr(l_st, 2);
    end dodaj_sb_json;

    procedure obrisi_sb (p_id in number) is
        l_dok number;
    begin
        select os.operacija_id into l_dok
          from operacija_stavke_sb sb join operacija_stavke os on os.id = sb.operacija_stavka_id
         where sb.id = p_id;
        provjeri_izmjenu(l_dok);
        delete from operacija_stavke_sb where id = p_id;
    exception
        when no_data_found then
            null;
    end obrisi_sb;

    procedure obrisi_sve_sb (p_stavka_dok_id in number) is
        l_dok number;
    begin
        select operacija_id into l_dok from operacija_stavke where id = p_stavka_dok_id;
        provjeri_izmjenu(l_dok);
        delete from operacija_stavke_sb where operacija_stavka_id = p_stavka_dok_id;
    exception
        when no_data_found then
            null;
    end obrisi_sve_sb;

    --------------------------------------------------------------------- kompletnost
    function provjeri_kompletnost (p_id in number) return varchar2 is
        l_n number;
    begin
        select count(*) into l_n from operacija_stavke where operacija_id = p_id;
        if l_n = 0 then
            return 'Dokument nema stavki.';
        end if;
        select count(*) into l_n from operacija_stavke where operacija_id = p_id and nvl(kolicina, 0) <= 0;
        if l_n > 0 then
            return 'Sve stavke moraju imati količinu veću od nule.';
        end if;
        for s in (select a.sifra, a.naziv, os.kolicina,
                         (select count(*) from operacija_stavke_sb x where x.operacija_stavka_id = os.id) as n
                    from operacija_stavke os
                    join sec_stavke a on a.id = os.stavka_id
                   where os.operacija_id = p_id and a.serijski_broj = 'Y') loop
            if s.n <> s.kolicina then
                return 'Artikal ' || s.sifra || ' ' || s.naziv || ': uneseno ' || s.n || ' serijskih brojeva, a količina je '
                       || s.kolicina || '.';
            end if;
        end loop;
        return null;
    end provjeri_kompletnost;

    --------------------------------------------------------------------- zaključavanje izlaza
    function moze_zakljucati (p_id in number) return varchar2 is
    begin
        return case when p_id is not null and tip_dokumenta(p_id) = 'I' and razlog_zabrane(p_id) is null then 'Y' else 'N' end;
    end moze_zakljucati;

    function provjeri_zakljucavanje (p_id in number, p_tip_preduzetnika in varchar2 default null) return varchar2 is
        l_poruka varchar2(4000);
        l_vrs    varchar2(64);
        l_obr    number;
    begin
        l_poruka := razlog_zabrane(p_id);
        if l_poruka is not null then
            return l_poruka;
        end if;
        if tip_dokumenta(p_id) <> 'I' then
            return 'Prijemnica se zaključava kroz kalkulaciju.';
        end if;
        for o in (select o.skladiste_id, o.datum, o.mjesto_troska_id, o.vrsta_dokumenta_id, o.ooj_id,
                         o.zaduzeni_radnik_id, o.skladiste_prenos_id
                    from operacije o where o.id = p_id) loop
            l_vrs := vrsta_sifra(o.vrsta_dokumenta_id);
            if o.mjesto_troska_id is null and mjesto_troska_obavezno(l_vrs, p_tip_preduzetnika, o.ooj_id) = 'Y' then
                return 'Mjesto troška je obavezno.';
            end if;
            if o.zaduzeni_radnik_id is null and ima_radnika(l_vrs) = 'Y' then
                return 'Zaduženi radnik je obavezan.';
            end if;
            if o.skladiste_prenos_id is null and l_vrs = 'MPR' then
                return 'Izaberite skladište na koje se roba prenosi.';
            end if;
            l_poruka := provjeri_kompletnost(p_id);
            if l_poruka is not null then
                return l_poruka;
            end if;
            -- izlaz samo iz obrađenog stanja (zaključeni ulazi - zaključeni izlazi) na datum dokumenta
            for s in (select os.stavka_id, a.sifra, a.naziv, sum(os.kolicina) as kol
                        from operacija_stavke os join sec_stavke a on a.id = os.stavka_id
                       where os.operacija_id = p_id
                       group by os.stavka_id, a.sifra, a.naziv) loop
                l_obr := obradjeno(o.skladiste_id, s.stavka_id, o.datum, p_id);
                if s.kol > l_obr then
                    return 'Artikal ' || s.sifra || ' ' || s.naziv || ': na datum dokumenta obrađeno (zaključeno) stanje je '
                           || to_char(l_obr, 'FM999G999G990D999') || ' - prvo zaključite prijem (kalkulaciju).';
                end if;
            end loop;
        end loop;
        return null;
    end provjeri_zakljucavanje;

    procedure zakljucaj (p_id in number, p_tip_preduzetnika in varchar2 default null) is
        l_poruka varchar2(4000) := provjeri_zakljucavanje(p_id, p_tip_preduzetnika);
    begin
        if l_poruka is not null then
            greska(l_poruka);
        end if;
        -- cijena = prosječna cijena skladišta na datum dokumenta (u trenutku zaključavanja)
        for o in (select skladiste_id, datum from operacije where id = p_id) loop
            update operacija_stavke os
               set os.nabavna_cijena = round(prosjecna_cijena(o.skladiste_id, os.stavka_id, o.datum), 6)
             where os.operacija_id = p_id;
        end loop;
        update operacije set status = 'Z', zakljucano = 'Y' where id = p_id;
    end zakljucaj;

    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2 is
    begin
        for o in (select o.status, o.glavna_knjiga_id, o.stornirano, o.storniran_id, o.datum, o.ooj_id
                    from operacije o where o.id = p_id) loop
            if nvl(o.status, 'P') <> 'Z' then
                return 'Dokument nije zaključen.';
            end if;
            if tip_dokumenta_sifra(p_id) = 'MPP' then
                return 'Međuskladišni prijem se ne može otključati.';
            end if;
            if tip_dokumenta(p_id) <> 'I' then
                return 'Prijemnica se otključava kroz kalkulaciju.';
            end if;
            if prenos_preuzet(p_id) is not null then
                return 'Prenos je preuzet (' || prenos_preuzet(p_id) || ') - ne može se otključati.';
            end if;
            if nvl(p_admin, 'N') <> 'Y' then
                return 'Zaključen dokument može otključati samo administrator.';
            end if;
            if o.glavna_knjiga_id is not null then
                return 'Dokument je proknjižen.';
            end if;
            if nvl(o.stornirano, 'N') = 'Y' or o.storniran_id is not null then
                return 'Dokument je storniran ili je storno dokument.';
            end if;
            for p in (select period_zakljucan_do from core.ooj where id = o.ooj_id) loop
                if p.period_zakljucan_do is not null and trunc(o.datum) < trunc(p.period_zakljucan_do) then
                    return 'Dokument je u zaključanom periodu.';
                end if;
            end loop;
            return null;
        end loop;
        return 'Dokument ne postoji.';
    end razlog_zabrane_otkljucavanja;

    procedure otkljucaj (p_id in number, p_admin in varchar2) is
        l_poruka varchar2(4000) := razlog_zabrane_otkljucavanja(p_id, p_admin);
    begin
        if l_poruka is not null then
            greska(l_poruka);
        end if;
        update operacije set status = 'P', zakljucano = 'N' where id = p_id;
    end otkljucaj;

    --------------------------------------------------------------------- međuskladišni prijem
    function prenos_preuzet (p_prenos_id in number) return varchar2 is
        l_n varchar2(255);
    begin
        select max(o.naziv) into l_n
          from operacije o join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
         where o.veza_id = p_prenos_id and upper(vd.sifra) = 'MPP' and nvl(o.stornirano, 'N') = 'N';
        return l_n;
    end prenos_preuzet;

    function preuzmi_prenos (p_prenos_id in number, p_ooj_id in number, p_godina in number,
                             p_skladiste_id in number) return number is
        l_vrsta  number;
        l_broj   number;
        l_naziv  varchar2(255);
        l_id     number;
        l_oj     number;
        l_datum  date := trunc(sysdate);
        l_zak    date;
        l_st     number;
    begin
        for pr in (select o.id, o.naziv, o.datum, o.skladiste_id, o.skladiste_prenos_id, o.ooj_id,
                          nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as status,
                          nvl(o.stornirano, 'N') as stornirano
                     from operacije o
                    where o.id = p_prenos_id) loop
            if tip_dokumenta_sifra(pr.id) <> 'MPR' or pr.ooj_id <> p_ooj_id then
                greska('Dokument nije međuskladišni prenos firme.');
            end if;
            if pr.stornirano = 'Y' then
                greska('Prenos je storniran.');
            end if;
            if pr.status <> 'Z' then
                greska('Prenos još nije zaključen na skladištu pošiljaocu.');
            end if;
            if pr.skladiste_prenos_id <> p_skladiste_id then
                greska('Prenos nije upućen na izabrano skladište.');
            end if;
            if prenos_preuzet(pr.id) is not null then
                greska('Prenos je već preuzet (' || prenos_preuzet(pr.id) || ').');
            end if;
            -- datum prijema = danas (ne prije datuma prenosa), u radnoj godini
            l_datum := greatest(l_datum, trunc(pr.datum));
            if extract(year from l_datum) <> p_godina then
                greska('Prijem se pravi u tekućoj godini - promijenite radnu godinu na ' || extract(year from l_datum) || '.');
            end if;
            select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
            if l_zak is not null and l_datum < trunc(l_zak) then
                greska('Datum prijema je u zaključanom periodu.');
            end if;
            select max(vd.id) into l_vrsta
              from sif.vrste_dokumenata vd join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = c_modul
             where vd.ooj_id = p_ooj_id and upper(vd.sifra) = 'MPP' and vd.valid = 'Y';
            if l_vrsta is null then
                greska('Firma nema vrstu dokumenta MPP (Međuskladišni prijem).');
            end if;
            if not core.protokoli_pkg.check_brojac(p_ooj_id, 'mpp', p_godina) then
                greska('Nije definisan brojač za vrstu dokumenta MPP u ' || p_godina || '. godini. Podesite numeraciju dokumenata.');
            end if;
            select oj_id into l_oj from skladista where id = p_skladiste_id;
            core.protokoli_pkg.get_brojac(
                p_ooj_id             => p_ooj_id,
                p_godina             => p_godina,
                p_vrsta_naloga_sifra => 'mpp',
                p_broj               => l_broj,
                p_naziv              => l_naziv
            );
            insert into operacije (
                ooj_id, godina, vrsta_dokumenta_id, skladiste_id, oj_id, datum, opis, broj, naziv,
                status, zakljucano, stornirano, skladiste_prenos_id, veza_id
            ) values (
                p_ooj_id, p_godina, l_vrsta, p_skladiste_id, l_oj, l_datum, 'Prijem po prenosu ' || pr.naziv, l_broj, l_naziv,
                'Z', 'Y', 'N', pr.skladiste_id, pr.id
            ) returning id into l_id;
            core.protokoli_pkg.update_brojac(
                p_ooj_id             => p_ooj_id,
                p_vrsta_naloga_sifra => 'mpp',
                p_godina             => p_godina,
                p_value              => 1
            );
            -- stavke sa količinama i cijenama iz prenosa, serijski brojevi
            for s in (select id, stavka_id, kolicina, nabavna_cijena, opis, redni_broj
                        from operacija_stavke where operacija_id = pr.id order by redni_broj, id) loop
                insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, opis, redni_broj)
                values (l_id, s.stavka_id, s.kolicina, s.nabavna_cijena, s.opis, s.redni_broj)
                returning id into l_st;
                insert into operacija_stavke_sb (operacija_stavka_id, serijski_broj)
                select l_st, sb.serijski_broj from operacija_stavke_sb sb where sb.operacija_stavka_id = s.id;
            end loop;
            return l_id;
        end loop;
        greska('Prenos ne postoji.');
        return null;
    end preuzmi_prenos;

end rm_dokument_pkg;
/

show errors package body rm_dokument_pkg
