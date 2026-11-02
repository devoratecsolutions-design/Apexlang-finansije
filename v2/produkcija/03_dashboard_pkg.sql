/*
================================================================================
  ESSCOM Finansije - 03_dashboard_pkg.sql
  Pokrenuti kao: ACCOUNTING
  Redoslijed:    POSLIJE 02_dashboard_views.sql, PRIJE importa aplikacije

  Svrha:
    Jedan paket koji računa i iscrtava KPI pločice za sve dashboarde
    (početna i početne stranice modula). APEX stranice samo pozivaju:
        RETURN dashboard_pkg.kpi_<modul>(:APP_OOJ_ID, :APP_GODINA);
    Tako je sva logika brojeva na jednom mjestu, lako se testira iz SQL-a:
        select dashboard_pkg.kpi_fakture(132, 2026) from dual;
    a izgled određuje CSS fajl aplikacije (css/finansije-ui.css).

    Pločica sa linkom se prikazuje kao link samo ako korisnik ima pravo
    (APEX authorization scheme) na ciljnu stranicu.
================================================================================
*/

create or replace package accounting.dashboard_pkg authid definer as

    -- Formatiranje brojeva u lokalnom formatu (1.234.567,89)
    function fmt_iznos (p_iznos in number, p_decimale in pls_integer default 2) return varchar2;
    function fmt_broj  (p_broj  in number) return varchar2;

    -- KPI trake (vraćaju HTML)
    function kpi_pocetna          (p_ooj_id in number, p_godina in number) return clob;
    function kpi_fakture          (p_ooj_id in number, p_godina in number) return clob;
    function kpi_glavna_knjiga    (p_ooj_id in number, p_godina in number) return clob;
    function kpi_izvodi           (p_ooj_id in number, p_godina in number) return clob;
    function kpi_blagajna         (p_ooj_id in number, p_godina in number) return clob;
    function kpi_osnovna_sredstva (p_ooj_id in number) return clob;
    function kpi_robno            (p_ooj_id in number, p_godina in number) return clob;
    -- v2: Zalihe robe (ROB) / Materijal i oprema (MAT) - samo skladišta korisnika u modulu
    function kpi_zalihe           (p_ooj_id in number, p_godina in number, p_korisnik_id in number, p_modul in varchar2) return clob;
    function kpi_proizvodnja      (p_ooj_id in number, p_godina in number) return clob;
    function kpi_budzet           (p_ooj_id in number, p_godina in number) return clob;
    function kpi_uio              (p_ooj_id in number, p_godina in number) return clob;
    function kpi_klijenti         (p_ooj_id in number, p_godina in number) return clob;
    function kpi_ugovori          (p_ooj_id in number) return clob;
    function kpi_stavke           (p_ooj_id in number) return clob;

end dashboard_pkg;
/

create or replace package body accounting.dashboard_pkg as

    c_nls constant varchar2(40) := 'NLS_NUMERIC_CHARACTERS='',.''';
    c_km  constant varchar2(10) := 'KM';

    type t_kpi is record (
        label varchar2(200),
        value varchar2(100),
        unit  varchar2(20),
        icon  varchar2(100),
        tone  varchar2(20),   -- primary | success | warning | danger | info | neutral
        hint  varchar2(400),
        url   varchar2(4000)
    );
    type t_kpi_tab is table of t_kpi index by pls_integer;

    --------------------------------------------------------------------------
    -- pomoćne
    --------------------------------------------------------------------------
    function fmt_iznos (p_iznos in number, p_decimale in pls_integer default 2) return varchar2 is
    begin
        if p_decimale = 0 then
            return to_char(round(coalesce(p_iznos, 0)), 'FM999G999G999G999G990', c_nls);
        end if;
        return to_char(round(coalesce(p_iznos, 0), 2), 'FM999G999G999G999G990D00', c_nls);
    end fmt_iznos;

    function fmt_broj (p_broj in number) return varchar2 is
    begin
        return to_char(coalesce(p_broj, 0), 'FM999G999G999G990', c_nls);
    end fmt_broj;

    function ima_pravo (p_scheme in varchar2) return boolean is
    begin
        if p_scheme is null then
            return true;
        end if;
        return apex_authorization.is_authorized(p_authorization_name => p_scheme);
    exception
        when others then
            return false;
    end ima_pravo;

    function url_za (
        p_page   in number,
        p_scheme in varchar2 default null,
        p_items  in varchar2 default null,
        p_values in varchar2 default null
    ) return varchar2 is
    begin
        if not ima_pravo(p_scheme) then
            return null;
        end if;
        return apex_page.get_url(
                   p_page        => p_page,
                   p_items       => p_items,
                   p_values      => p_values,
                   p_clear_cache => case when p_items is not null then to_char(p_page) end
               );
    exception
        when others then
            return null;
    end url_za;

    procedure add_kpi (
        p_k     in out nocopy t_kpi_tab,
        p_label in varchar2,
        p_value in varchar2,
        p_unit  in varchar2 default null,
        p_icon  in varchar2 default 'fa-bar-chart',
        p_tone  in varchar2 default 'primary',
        p_hint  in varchar2 default null,
        p_url   in varchar2 default null
    ) is
        l_kpi t_kpi;
    begin
        l_kpi.label := p_label;
        l_kpi.value := p_value;
        l_kpi.unit  := p_unit;
        l_kpi.icon  := p_icon;
        l_kpi.tone  := p_tone;
        l_kpi.hint  := p_hint;
        l_kpi.url   := p_url;
        p_k(p_k.count + 1) := l_kpi;
    end add_kpi;

    function render (p_k in t_kpi_tab) return clob is
        l_html clob;
        l_tag  varchar2(10);
        procedure w (p in varchar2) is
        begin
            dbms_lob.writeappend(l_html, length(p), p);
        end w;
    begin
        dbms_lob.createtemporary(l_html, true, dbms_lob.call);
        w('<div class="fin-kpis">');
        for i in 1 .. p_k.count loop
            l_tag := case when p_k(i).url is not null then 'a' else 'div' end;
            w('<' || l_tag || ' class="fin-kpi fin-kpi--' || apex_escape.html_attribute(p_k(i).tone) || '"');
            if p_k(i).url is not null then
                w(' href="' || apex_escape.html_attribute(p_k(i).url) || '"');
            end if;
            w('>');
            w('<span class="fin-kpi__icon fa ' || apex_escape.html_attribute(p_k(i).icon) || '" aria-hidden="true"></span>');
            w('<span class="fin-kpi__body">');
            w('<span class="fin-kpi__label">' || apex_escape.html(p_k(i).label) || '</span>');
            w('<span class="fin-kpi__value">' || apex_escape.html(p_k(i).value));
            if p_k(i).unit is not null then
                w(' <small>' || apex_escape.html(p_k(i).unit) || '</small>');
            end if;
            w('</span>');
            if p_k(i).hint is not null then
                w('<span class="fin-kpi__hint">' || apex_escape.html(p_k(i).hint) || '</span>');
            end if;
            w('</span>');
            if p_k(i).url is not null then
                w('<span class="fin-kpi__go fa fa-chevron-right" aria-hidden="true"></span>');
            end if;
            w('</' || l_tag || '>');
        end loop;
        w('</div>');
        return l_html;
    end render;

    function render_greska (p_modul in varchar2, p_greska in varchar2) return clob is
    begin
        apex_debug.error('dashboard_pkg.%s: %s', p_modul, p_greska);
        return '<div class="fin-kpis fin-kpis--error">'
            || '<span class="fa fa-warning" aria-hidden="true"></span> '
            || 'Pokazatelji trenutno nisu dostupni.</div>';
    end render_greska;

    --------------------------------------------------------------------------
    -- POČETNA
    --------------------------------------------------------------------------
    function kpi_pocetna (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_kif_iznos  number; l_kif_broj number;
        l_kuf_iznos  number; l_kuf_broj number;
        l_potr       number; l_potr_dosp number; l_potr_dosp_br number;
        l_obav       number; l_obav_dosp number;
        l_banka      number; l_blagajna number;
    begin

        select coalesce(sum(case when godina = p_godina and je_predracun = 'N' then iznos end), 0),
               count(case when godina = p_godina and je_predracun = 'N' then 1 end),
               coalesce(sum(case when je_predracun = 'N' then otvoreno end), 0),
               coalesce(sum(case when je_predracun = 'N' and datum_valute < trunc(sysdate) then otvoreno end), 0),
               count(case when je_predracun = 'N' and otvoreno > 0 and datum_valute < trunc(sysdate) then 1 end)
          into l_kif_iznos, l_kif_broj, l_potr, l_potr_dosp, l_potr_dosp_br
          from vw_dash_kif
         where ooj_id = p_ooj_id;

        select coalesce(sum(case when godina = p_godina then iznos end), 0),
               count(case when godina = p_godina then 1 end),
               coalesce(sum(otvoreno), 0),
               coalesce(sum(case when datum_valute < trunc(sysdate) then otvoreno end), 0)
          into l_kuf_iznos, l_kuf_broj, l_obav, l_obav_dosp
          from vw_dash_kuf
         where ooj_id = p_ooj_id;

        select coalesce(sum(stanje), 0) into l_banka
          from vw_dash_ziro_stanje
         where ooj_id = p_ooj_id and valuta_id = 1;

        select coalesce(sum(stanje), 0) into l_blagajna
          from vw_dash_blagajna_stanje
         where ooj_id = p_ooj_id and valuta_id = 1;

        add_kpi(k, 'Fakturisano ' || p_godina, fmt_iznos(l_kif_iznos, 0), c_km, 'fa-arrow-up', 'primary',
            fmt_broj(l_kif_broj) || ' izlaznih faktura', url_za(50, 'Fakture - KIF'));
        add_kpi(k, 'Ulazne fakture ' || p_godina, fmt_iznos(l_kuf_iznos, 0), c_km, 'fa-arrow-down', 'info',
            fmt_broj(l_kuf_broj) || ' ulaznih faktura', url_za(40, 'Fakture - KUF'));
        add_kpi(k, 'Potraživanja', fmt_iznos(l_potr, 0), c_km, 'fa-hand-o-left',
            case when l_potr_dosp > 0 then 'warning' else 'success' end,
            'Dospjelo: ' || fmt_iznos(l_potr_dosp, 0) || ' ' || c_km
                || case when l_potr_dosp_br > 0 then ' (' || fmt_broj(l_potr_dosp_br) || ' fakt.)' end,
            url_za(50, 'Fakture - KIF'));
        add_kpi(k, 'Obaveze', fmt_iznos(l_obav, 0), c_km, 'fa-hand-o-right',
            case when l_obav_dosp > 0 then 'danger' else 'success' end,
            'Dospjelo: ' || fmt_iznos(l_obav_dosp, 0) || ' ' || c_km,
            url_za(40, 'Fakture - KUF'));
        add_kpi(k, 'Novčana sredstva', fmt_iznos(l_banka + l_blagajna, 0), c_km, 'fa-bank', 'success',
            'Banka ' || fmt_iznos(l_banka, 0) || ', Blagajna ' || fmt_iznos(l_blagajna, 0),
            url_za(1010, 'Glavna knjiga - Nalozi'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_pocetna', sqlerrm);
    end kpi_pocetna;

    --------------------------------------------------------------------------
    -- FAKTURE
    --------------------------------------------------------------------------
    function kpi_fakture (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_kif number; l_kif_br number; l_kif_mj number;
        l_kuf number; l_kuf_br number; l_kuf_mj number;
        l_nenapl number; l_nenapl_dosp number;
        l_neplac number; l_neplac_dosp number;
        l_nefisk number; l_neprokn number;
    begin

        select coalesce(sum(case when je_predracun = 'N' then iznos end), 0),
               count(case when je_predracun = 'N' then 1 end),
               coalesce(sum(case when je_predracun = 'N'
                                  and trunc(datum_fakture, 'MM') = trunc(sysdate, 'MM') then iznos end), 0),
               count(case when je_predracun = 'N'
                           and coalesce(fiskalna_sifra, 'x') in ('Normal', 'Advance')
                           and fiskalizovano = 'N' then 1 end),
               count(case when je_predracun = 'N' and glavna_knjiga_id is null then 1 end)
          into l_kif, l_kif_br, l_kif_mj, l_nefisk, l_neprokn
          from vw_dash_kif
         where ooj_id = p_ooj_id
           and godina = p_godina;

        select coalesce(sum(otvoreno), 0),
               coalesce(sum(case when datum_valute < trunc(sysdate) then otvoreno end), 0)
          into l_nenapl, l_nenapl_dosp
          from vw_dash_kif
         where ooj_id = p_ooj_id
           and je_predracun = 'N';

        select coalesce(sum(iznos), 0),
               count(*),
               coalesce(sum(case when trunc(datum_fakture, 'MM') = trunc(sysdate, 'MM') then iznos end), 0)
          into l_kuf, l_kuf_br, l_kuf_mj
          from vw_dash_kuf
         where ooj_id = p_ooj_id
           and godina = p_godina;

        select coalesce(sum(otvoreno), 0),
               coalesce(sum(case when datum_valute < trunc(sysdate) then otvoreno end), 0)
          into l_neplac, l_neplac_dosp
          from vw_dash_kuf
         where ooj_id = p_ooj_id;

        add_kpi(k, 'Izlazne fakture ' || p_godina, fmt_iznos(l_kif, 0), c_km, 'fa-arrow-up', 'primary',
            fmt_broj(l_kif_br) || ' faktura, ovaj mjesec ' || fmt_iznos(l_kif_mj, 0), url_za(50, 'Fakture - KIF'));
        add_kpi(k, 'Ulazne fakture ' || p_godina, fmt_iznos(l_kuf, 0), c_km, 'fa-arrow-down', 'info',
            fmt_broj(l_kuf_br) || ' faktura, ovaj mjesec ' || fmt_iznos(l_kuf_mj, 0), url_za(40, 'Fakture - KUF'));
        add_kpi(k, 'Nenaplaćeno', fmt_iznos(l_nenapl, 0), c_km, 'fa-hourglass-half',
            case when l_nenapl_dosp > 0 then 'warning' else 'success' end,
            'Od toga dospjelo ' || fmt_iznos(l_nenapl_dosp, 0), url_za(50, 'Fakture - KIF'));
        add_kpi(k, 'Neplaćeno', fmt_iznos(l_neplac, 0), c_km, 'fa-clock-o',
            case when l_neplac_dosp > 0 then 'danger' else 'success' end,
            'Od toga dospjelo ' || fmt_iznos(l_neplac_dosp, 0), url_za(40, 'Fakture - KUF'));
        add_kpi(k, 'Za obradu', fmt_broj(l_nefisk + l_neprokn), null, 'fa-tasks',
            case when l_nefisk + l_neprokn > 0 then 'warning' else 'neutral' end,
            fmt_broj(l_nefisk) || ' nefiskalizovano, ' || fmt_broj(l_neprokn) || ' neproknjiženo',
            url_za(50, 'Fakture - KIF'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_fakture', sqlerrm);
    end kpi_fakture;

    --------------------------------------------------------------------------
    -- GLAVNA KNJIGA
    --------------------------------------------------------------------------
    function kpi_glavna_knjiga (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_nalozi number; l_neprokn number; l_mj number; l_stavki number;
        l_pdv_period date; l_pdv_iznos number;
    begin

        select count(*),
               count(case when coalesce(proknjizeno, 'N') = 'N' then 1 end),
               count(case when trunc(datum_dokumenta, 'MM') = trunc(sysdate, 'MM') then 1 end)
          into l_nalozi, l_neprokn, l_mj
          from glavna_knjiga
         where ooj_id = p_ooj_id
           and godina = p_godina
           and valid = 'Y'
           and coalesce(stornirano, 'N') = 'N';

        select count(*)
          into l_stavki
          from glavna_knjiga_stavke gks
          join glavna_knjiga gk on gk.id = gks.glavna_knjiga_id
         where gk.ooj_id = p_ooj_id
           and gk.godina = p_godina
           and gk.valid = 'Y'
           and coalesce(gk.stornirano, 'N') = 'N';

        begin
            select poreski_period, pdv_uplata_povrat_p71
              into l_pdv_period, l_pdv_iznos
              from (
                    select poreski_period, pdv_uplata_povrat_p71
                      from pdv_prijave
                     where ooj_id = p_ooj_id
                       and coalesce(valid, 'Y') = 'Y'
                     order by poreski_period desc
                   )
             where rownum = 1;
        exception
            when no_data_found then
                null;
        end;

        add_kpi(k, 'Nalozi ' || p_godina, fmt_broj(l_nalozi), null, 'fa-book', 'primary',
            'Ovaj mjesec: ' || fmt_broj(l_mj), url_za(200, 'Glavna knjiga - Nalozi'));
        add_kpi(k, 'Neproknjiženi nalozi', fmt_broj(l_neprokn), null, 'fa-pencil-square-o',
            case when l_neprokn > 0 then 'warning' else 'success' end,
            case when l_neprokn > 0 then 'Čekaju knjiženje' else 'Sve je proknjiženo' end,
            url_za(200, 'Glavna knjiga - Nalozi'));
        add_kpi(k, 'Stavke glavne knjige', fmt_broj(l_stavki), null, 'fa-list-ul', 'info',
            'Poslovna ' || p_godina || '. godina', null);
        add_kpi(k, 'Posljednja PDV prijava',
            case when l_pdv_period is null then '—' else to_char(l_pdv_period, 'MM.YYYY') end,
            null, 'fa-percent', 'neutral',
            case when l_pdv_period is not null then
                case when l_pdv_iznos >= 0 then 'Za uplatu ' else 'Povrat ' end
                || fmt_iznos(abs(l_pdv_iznos)) || ' ' || c_km
            end,
            url_za(230, 'Glavna knjiga - PDV prijava'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_glavna_knjiga', sqlerrm);
    end kpi_glavna_knjiga;

    --------------------------------------------------------------------------
    -- IZVODI
    --------------------------------------------------------------------------
    function kpi_izvodi (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_racuni number; l_stanje number; l_izvoda number;
        l_nezak number; l_neprokn number; l_zadnji date;
    begin

        select count(*), coalesce(sum(case when valuta_id = 1 then stanje end), 0), max(datum_izvoda)
          into l_racuni, l_stanje, l_zadnji
          from vw_dash_ziro_stanje
         where ooj_id = p_ooj_id;

        select count(*),
               count(case when zakljucan = 'N' then 1 end),
               count(case when proknjizen = 'N' then 1 end)
          into l_izvoda, l_nezak, l_neprokn
          from izvodi
         where ooj_id = p_ooj_id
           and godina = p_godina
           and coalesce(storno, 'N') = 'N';

        add_kpi(k, 'Stanje na računima', fmt_iznos(l_stanje), c_km, 'fa-bank', 'success',
            fmt_broj(l_racuni) || ' žiro računa, posljednji izvod '
                || coalesce(to_char(l_zadnji, 'DD.MM.YYYY'), '—'),
            url_za(1001, 'Glavna knjiga - Nalozi'));
        add_kpi(k, 'Izvodi ' || p_godina, fmt_broj(l_izvoda), null, 'fa-file-text-o', 'primary',
            null, url_za(1010, 'Glavna knjiga - Nalozi'));
        add_kpi(k, 'Nezaključeni izvodi', fmt_broj(l_nezak), null, 'fa-unlock',
            case when l_nezak > 0 then 'warning' else 'success' end, null,
            url_za(1010, 'Glavna knjiga - Nalozi'));
        add_kpi(k, 'Neproknjiženi izvodi', fmt_broj(l_neprokn), null, 'fa-pencil-square-o',
            case when l_neprokn > 0 then 'warning' else 'success' end, null,
            url_za(1010, 'Glavna knjiga - Nalozi'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_izvodi', sqlerrm);
    end kpi_izvodi;

    --------------------------------------------------------------------------
    -- BLAGAJNA
    --------------------------------------------------------------------------
    function kpi_blagajna (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_blagajni number; l_stanje number;
        l_prijem number; l_placanja number; l_neprokn number;
    begin

        select count(*), coalesce(sum(case when valuta_id = 1 then stanje end), 0)
          into l_blagajni, l_stanje
          from vw_dash_blagajna_stanje
         where ooj_id = p_ooj_id;

        select coalesce(sum(case when trunc(datum, 'MM') = trunc(sysdate, 'MM') then prijem end), 0),
               coalesce(sum(case when trunc(datum, 'MM') = trunc(sysdate, 'MM') then placanja end), 0),
               count(case when glavna_knjiga_id is null then 1 end)
          into l_prijem, l_placanja, l_neprokn
          from blagajna_dnevnik bd
         where bd.ooj_id = p_ooj_id
           and bd.godina = p_godina
           and exists (select 1 from blagajne b
                        where b.id = bd.blagajna_id and b.valuta_id = 1);

        add_kpi(k, 'Stanje blagajni', fmt_iznos(l_stanje), c_km, 'fa-money', 'success',
            fmt_broj(l_blagajni) || ' blagajni', url_za(451, 'Blagajna - Konfiguracija'));
        add_kpi(k, 'Prijem ovaj mjesec', fmt_iznos(l_prijem), c_km, 'fa-arrow-down', 'primary', null,
            url_za(455, 'Blagajna - Dnevnik blagajne'));
        add_kpi(k, 'Plaćanja ovaj mjesec', fmt_iznos(l_placanja), c_km, 'fa-arrow-up', 'info', null,
            url_za(455, 'Blagajna - Dnevnik blagajne'));
        add_kpi(k, 'Neproknjiženi dnevnici', fmt_broj(l_neprokn), null, 'fa-pencil-square-o',
            case when l_neprokn > 0 then 'warning' else 'success' end, null,
            url_za(455, 'Blagajna - Dnevnik blagajne'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_blagajna', sqlerrm);
    end kpi_blagajna;

    --------------------------------------------------------------------------
    -- OSNOVNA SREDSTVA
    --------------------------------------------------------------------------
    function kpi_osnovna_sredstva (p_ooj_id in number) return clob is
        k t_kpi_tab;
        l_ukupno number; l_aktivna number; l_priprema number; l_otpis number;
        l_knjig number;
    begin

        select count(*),
               count(case when aktivirano = 'Y' and otpis_datum is null then 1 end),
               count(case when priprema = 'Y' then 1 end),
               count(case when otpis_datum is not null then 1 end)
          into l_ukupno, l_aktivna, l_priprema, l_otpis
          from sec_osnovna_sredstva
         where ooj_id = p_ooj_id
           and history_id is null
           and valid = 'Y';

        select coalesce(sum(os_pkg.get_knjigovodstvena_vrijednost(id)), 0)
          into l_knjig
          from sec_osnovna_sredstva
         where ooj_id = p_ooj_id
           and history_id is null
           and valid = 'Y'
           and aktivirano = 'Y'
           and otpis_datum is null;

        add_kpi(k, 'Aktivna sredstva', fmt_broj(l_aktivna), null, 'fa-building-o', 'primary',
            'Ukupno evidentirano: ' || fmt_broj(l_ukupno), url_za(251, 'Osnovna sredstva - Pregled'));
        add_kpi(k, 'Knjigovodstvena vrijednost', fmt_iznos(l_knjig, 0), c_km, 'fa-line-chart', 'success',
            'Aktivna sredstva', url_za(251, 'Osnovna sredstva - Pregled'));
        add_kpi(k, 'U pripremi', fmt_broj(l_priprema), null, 'fa-hourglass-half',
            case when l_priprema > 0 then 'warning' else 'neutral' end,
            'Čekaju aktiviranje', url_za(251, 'Osnovna sredstva - Pregled'));
        add_kpi(k, 'Otpisana', fmt_broj(l_otpis), null, 'fa-archive', 'neutral', null,
            url_za(251, 'Osnovna sredstva - Pregled'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_osnovna_sredstva', sqlerrm);
    end kpi_osnovna_sredstva;

    --------------------------------------------------------------------------
    -- ROBNO - MATERIJALNO
    --------------------------------------------------------------------------
    function kpi_robno (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_skladista number; l_operacije number; l_oper_mj number;
        l_treb_otv number; l_kalk_otv number; l_popis_otv number;
    begin

        select count(*) into l_skladista
          from skladista
         where ooj_id = p_ooj_id and valid = 'Y';

        select count(*),
               count(case when trunc(datum, 'MM') = trunc(sysdate, 'MM') then 1 end)
          into l_operacije, l_oper_mj
          from operacije
         where ooj_id = p_ooj_id
           and godina = p_godina
           and valid = 'Y'
           and coalesce(stornirano, 'N') = 'N';

        select count(*) into l_treb_otv
          from trebovanja
         where ooj_id = p_ooj_id and godina = p_godina and valid = 'Y'
           and coalesce(zakljucano, 'N') = 'N';

        select count(*) into l_kalk_otv
          from kalkulacije
         where ooj_id = p_ooj_id and godina = p_godina and valid = 'Y'
           and coalesce(zakljucano, 'N') = 'N';

        select count(*) into l_popis_otv
          from popisi
         where ooj_id = p_ooj_id and godina = p_godina and valid = 'Y'
           and coalesce(zakljucano, 'N') = 'N';

        add_kpi(k, 'Dokumenti ' || p_godina, fmt_broj(l_operacije), null, 'fa-exchange', 'primary',
            'Ovaj mjesec: ' || fmt_broj(l_oper_mj), url_za(330, 'Robno-materijalno - Dokumenti'));
        add_kpi(k, 'Otvorena trebovanja', fmt_broj(l_treb_otv), null, 'fa-clipboard',
            case when l_treb_otv > 0 then 'warning' else 'success' end, null,
            url_za(320, 'Robno-materijalno - Trebovanja'));
        add_kpi(k, 'Otvorene kalkulacije', fmt_broj(l_kalk_otv), null, 'fa-calculator',
            case when l_kalk_otv > 0 then 'warning' else 'success' end, null,
            url_za(340, 'Robno-materijalno - Kalkulacije robe'));
        add_kpi(k, 'Popisi u toku', fmt_broj(l_popis_otv), null, 'fa-check-square-o',
            case when l_popis_otv > 0 then 'info' else 'neutral' end, null,
            url_za(360, 'Robno-materijalno - Popis'));
        add_kpi(k, 'Skladišta', fmt_broj(l_skladista), null, 'fa-cubes', 'neutral', null,
            url_za(310, 'Robno-materijalno - Konfiguracija skladišta'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_robno', sqlerrm);
    end kpi_robno;

    function kpi_zalihe (p_ooj_id in number, p_godina in number, p_korisnik_id in number, p_modul in varchar2) return clob is
        k t_kpi_tab;
        l_skladista number; l_dok number; l_dok_mj number; l_priprema number;
        l_treb_otv number; l_kalk_otv number; l_popis_otv number; l_vrijednost number;
    begin
        select count(*) into l_skladista
          from vw_rm_korisnik_skladista
         where ooj_id = p_ooj_id and korisnik_id = p_korisnik_id and modul = p_modul and valid = 'Y';

        select count(*),
               count(case when trunc(o.datum, 'MM') = trunc(sysdate, 'MM') then 1 end),
               count(case when nvl(o.status, 'P') = 'P' then 1 end)
          into l_dok, l_dok_mj, l_priprema
          from operacije o
          join vw_rm_korisnik_skladista ks on ks.skladiste_id = o.skladiste_id
                                         and ks.korisnik_id = p_korisnik_id and ks.modul = p_modul
         where o.ooj_id = p_ooj_id
           and o.godina = p_godina
           and coalesce(o.stornirano, 'N') = 'N';

        select count(*) into l_treb_otv
          from trebovanja t
          join vw_rm_korisnik_skladista ks on ks.skladiste_id = t.skladiste_id
                                         and ks.korisnik_id = p_korisnik_id and ks.modul = p_modul
         where t.ooj_id = p_ooj_id and t.godina = p_godina and coalesce(t.zakljucano, 'N') = 'N';

        select count(distinct k.id) into l_kalk_otv
          from kalkulacije k
          join kalkulacija_operacije ko on ko.kalkulacija_id = k.id
          join operacije o on o.id = ko.operacija_id
          join vw_rm_korisnik_skladista ks on ks.skladiste_id = o.skladiste_id
                                         and ks.korisnik_id = p_korisnik_id and ks.modul = p_modul
         where k.ooj_id = p_ooj_id and k.godina = p_godina and coalesce(k.zakljucano, 'N') = 'N';

        select count(*) into l_popis_otv
          from popisi pp
          join vw_rm_korisnik_skladista ks on ks.skladiste_id = pp.skladiste_id
                                         and ks.korisnik_id = p_korisnik_id and ks.modul = p_modul
         where pp.ooj_id = p_ooj_id and pp.godina = p_godina and coalesce(pp.zakljucano, 'N') = 'N';

        select nvl(sum(x.vrijednost), 0) into l_vrijednost
          from vw_rm_skladiste_stanje x
          join vw_rm_korisnik_skladista ks on ks.skladiste_id = x.skladiste_id
                                         and ks.korisnik_id = p_korisnik_id and ks.modul = p_modul
         where x.ooj_id = p_ooj_id;

        add_kpi(k, 'Dokumenti ' || p_godina, fmt_broj(l_dok), null, 'fa-exchange', 'primary',
            'Ovaj mjesec: ' || fmt_broj(l_dok_mj) || ' · u pripremi: ' || fmt_broj(l_priprema), url_za(330, 'Robno-materijalno - Dokumenti'));
        add_kpi(k, 'Vrijednost zaliha', fmt_broj(round(l_vrijednost)), 'KM', 'fa-money', 'success',
            'Zaključeni dokumenti', url_za(310, 'Robno-materijalno - Konfiguracija skladišta'));
        if p_modul = 'MAT' then
            add_kpi(k, 'Otvorena trebovanja', fmt_broj(l_treb_otv), null, 'fa-clipboard',
                case when l_treb_otv > 0 then 'warning' else 'success' end, null,
                url_za(320, 'Robno-materijalno - Trebovanja'));
        end if;
        add_kpi(k, 'Otvorene kalkulacije', fmt_broj(l_kalk_otv), null, 'fa-calculator',
            case when l_kalk_otv > 0 then 'warning' else 'success' end, null,
            url_za(340, 'Robno-materijalno - Kalkulacije robe'));
        add_kpi(k, 'Popisi u toku', fmt_broj(l_popis_otv), null, 'fa-check-square-o',
            case when l_popis_otv > 0 then 'info' else 'neutral' end, null,
            url_za(360, 'Robno-materijalno - Popis'));
        add_kpi(k, 'Moja skladišta', fmt_broj(l_skladista), null, 'fa-cubes', 'neutral', null,
            url_za(310, 'Robno-materijalno - Konfiguracija skladišta'));
        return render(k);
    exception
        when others then
            return render_greska('kpi_zalihe', sqlerrm);
    end kpi_zalihe;

    --------------------------------------------------------------------------
    -- PROIZVODNJA
    --------------------------------------------------------------------------
    function kpi_proizvodnja (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_rn number; l_rn_mj number; l_normativi number; l_kolicina number;
    begin

        select count(*),
               count(case when trunc(datum, 'MM') = trunc(sysdate, 'MM') then 1 end),
               coalesce(sum(kolicina), 0)
          into l_rn, l_rn_mj, l_kolicina
          from radni_nalozi
         where ooj_id = p_ooj_id
           and godina = p_godina
           and valid = 'Y'
           and coalesce(stornirano, 'N') = 'N';

        select count(*) into l_normativi
          from normativi
         where ooj_id = p_ooj_id
           and valid = 'Y';

        add_kpi(k, 'Radni nalozi ' || p_godina, fmt_broj(l_rn), null, 'fa-industry', 'primary',
            'Ovaj mjesec: ' || fmt_broj(l_rn_mj), url_za(401, 'Proizvodnja - Kreiranje radnih naloga'));
        add_kpi(k, 'Planirana količina', fmt_iznos(l_kolicina, 0), null, 'fa-cubes', 'info',
            'Zbir količina na nalozima', null);
        add_kpi(k, 'Normativi', fmt_broj(l_normativi), null, 'fa-sitemap', 'neutral', null,
            url_za(421, 'Proizvodnja - Normativi'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_proizvodnja', sqlerrm);
    end kpi_proizvodnja;

    --------------------------------------------------------------------------
    -- BUDŽET
    --------------------------------------------------------------------------
    function kpi_budzet (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_budzeta number; l_plan number; l_real number; l_pct number;
    begin

        -- samo aktuelna (posljednja) verzija svakog budžeta, vidi vw_dash_budzet_aktuelni
        select count(distinct b.budzet_id),
               coalesce(sum(bs.iznos), 0),
               coalesce(sum(bs.iznos_realizacija), 0)
          into l_budzeta, l_plan, l_real
          from vw_dash_budzet_aktuelni b
          left join budzet_stavke bs on bs.budzet_id = b.budzet_id and bs.valid = 'Y'
         where b.ooj_id = p_ooj_id
           and b.godina = p_godina;

        l_pct := case when l_plan <> 0 then round(l_real / l_plan * 100, 1) else 0 end;

        add_kpi(k, 'Planirano ' || p_godina, fmt_iznos(l_plan, 0), c_km, 'fa-pie-chart', 'primary',
            fmt_broj(l_budzeta) || ' budžeta', url_za(503, 'Budžet - Osnovna'));
        add_kpi(k, 'Realizovano', fmt_iznos(l_real, 0), c_km, 'fa-check-circle', 'success',
            null, url_za(501, 'Budžet - Osnovna'));
        add_kpi(k, 'Realizacija', to_char(l_pct, 'FM999G990D0', c_nls), '%', 'fa-tachometer',
            case when l_pct > 100 then 'danger' when l_pct > 90 then 'warning' else 'info' end,
            'Raspoloživo ' || fmt_iznos(l_plan - l_real, 0) || ' ' || c_km, null);

        return render(k);
    exception
        when others then
            return render_greska('kpi_budzet', sqlerrm);
    end kpi_budzet;

    --------------------------------------------------------------------------
    -- UIO
    --------------------------------------------------------------------------
    function kpi_uio (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_kif number; l_kuf number; l_zadnji date;
    begin

        select count(*) into l_kif
          from uio_kif
         where ooj_id = p_ooj_id
           and extract(year from datum_fakture) = p_godina
           and coalesce(valid, 'Y') = 'Y';

        select count(*) into l_kuf
          from uio_kuf
         where ooj_id = p_ooj_id
           and extract(year from datum_fakture) = p_godina
           and coalesce(valid, 'Y') = 'Y';

        select max(created) into l_zadnji
          from uio_history
         where ooj_id = p_ooj_id;

        add_kpi(k, 'UIO KIF ' || p_godina, fmt_broj(l_kif), 'zapisa', 'fa-arrow-up', 'primary', null,
            url_za(81, 'UIO - KIF'));
        add_kpi(k, 'UIO KUF ' || p_godina, fmt_broj(l_kuf), 'zapisa', 'fa-arrow-down', 'info', null,
            url_za(83, 'UIO - KUF'));
        add_kpi(k, 'Posljednji generisani fajl', coalesce(to_char(l_zadnji, 'DD.MM.YYYY'), '—'), null,
            'fa-file-text-o', 'neutral', null, null);

        return render(k);
    exception
        when others then
            return render_greska('kpi_uio', sqlerrm);
    end kpi_uio;

    --------------------------------------------------------------------------
    -- KLIJENTI
    --------------------------------------------------------------------------
    function kpi_klijenti (p_ooj_id in number, p_godina in number) return clob is
        k t_kpi_tab;
        l_ukupno number; l_pdv number; l_ino number; l_novi number; l_duznici number;
    begin

        select count(*),
               count(case when pib is not null then 1 end),
               count(case when drzava_id <> 28 then 1 end),
               count(case when extract(year from created) = p_godina then 1 end)
          into l_ukupno, l_pdv, l_ino, l_novi
          from sec_klijenti
         where ooj_id = p_ooj_id
           and valid = 'Y';

        select count(distinct klijent_id) into l_duznici
          from vw_dash_kif
         where ooj_id = p_ooj_id
           and je_predracun = 'N'
           and otvoreno > 0
           and datum_valute < trunc(sysdate);

        add_kpi(k, 'Aktivni klijenti', fmt_broj(l_ukupno), null, 'fa-users', 'primary',
            'Novi u ' || p_godina || ': ' || fmt_broj(l_novi), null);
        add_kpi(k, 'PDV obveznici', fmt_broj(l_pdv), null, 'fa-percent', 'info', null, null);
        add_kpi(k, 'Inostrani', fmt_broj(l_ino), null, 'fa-globe', 'neutral', null, null);
        add_kpi(k, 'Sa dospjelim dugom', fmt_broj(l_duznici), null, 'fa-exclamation-triangle',
            case when l_duznici > 0 then 'warning' else 'success' end, null,
            url_za(50, 'Fakture - KIF'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_klijenti', sqlerrm);
    end kpi_klijenti;

    --------------------------------------------------------------------------
    -- UGOVORI
    --------------------------------------------------------------------------
    function kpi_ugovori (p_ooj_id in number) return clob is
        k t_kpi_tab;
        l_aktivni number; l_vrijednost number; l_isticu number; l_priprema number;
    begin

        select count(case when status = 'Z' and (ugovor_end is null or ugovor_end >= trunc(sysdate)) then 1 end),
               coalesce(sum(case when status = 'Z' and (ugovor_end is null or ugovor_end >= trunc(sysdate))
                                 then coalesce(iznos_km, iznos) end), 0),
               count(case when status = 'Z' and ugovor_end between trunc(sysdate) and trunc(sysdate) + 30 then 1 end),
               count(case when status = 'P' then 1 end)
          into l_aktivni, l_vrijednost, l_isticu, l_priprema
          from ugovori
         where ooj_id = p_ooj_id
           and valid = 'Y';

        add_kpi(k, 'Aktivni ugovori', fmt_broj(l_aktivni), null, 'fa-file-signature', 'primary', null, null);
        add_kpi(k, 'Vrijednost aktivnih', fmt_iznos(l_vrijednost, 0), c_km, 'fa-money', 'success', null, null);
        add_kpi(k, 'Ističu u 30 dana', fmt_broj(l_isticu), null, 'fa-calendar-o',
            case when l_isticu > 0 then 'warning' else 'neutral' end, null, null);
        add_kpi(k, 'U pripremi', fmt_broj(l_priprema), null, 'fa-pencil', 'info', null, null);

        return render(k);
    exception
        when others then
            return render_greska('kpi_ugovori', sqlerrm);
    end kpi_ugovori;

    --------------------------------------------------------------------------
    -- STAVKE
    --------------------------------------------------------------------------
    function kpi_stavke (p_ooj_id in number) return clob is
        k t_kpi_tab;
        l_aktivne number; l_neaktivne number; l_bez_cijene number;
        l_cjenovnici number; l_promjene number;
    begin
        -- v2: pokazatelji kataloga (bez prometa iz faktura)
        select count(case when s.valid = 'Y' then 1 end),
               count(case when s.valid = 'N' then 1 end),
               count(case when s.valid = 'Y'
                           and not exists (select 1 from cjenovnik_stavke cs
                                            where cs.stavka_id = s.id and cs.valid = 'Y')
                          then 1 end)
          into l_aktivne, l_neaktivne, l_bez_cijene
          from sec_stavke s
         where s.ooj_id = p_ooj_id;

        select count(*) into l_cjenovnici
          from cjenovnici
         where ooj_id = p_ooj_id
           and valid = 'Y';

        select count(*) into l_promjene
          from cjenovnik_stavke cs
          join cjenovnici c on c.id = cs.cjenovnik_id
         where c.ooj_id = p_ooj_id
           and cs.datum >= trunc(sysdate) - 30;

        add_kpi(k, 'Aktivne stavke', fmt_broj(l_aktivne), null, 'fa-tags', 'primary',
            case when l_neaktivne > 0 then fmt_broj(l_neaktivne) || ' neaktivnih' end,
            url_za(21, 'Fakture - Stavke'));
        add_kpi(k, 'Bez cijene', fmt_broj(l_bez_cijene), null, 'fa-exclamation-triangle',
            case when l_bez_cijene > 0 then 'warning' else 'success' end,
            'aktivne stavke bez cijene', null);
        add_kpi(k, 'Cjenovnici', fmt_broj(l_cjenovnici), null, 'fa-list-alt', 'neutral', 'aktivni',
            url_za(27, 'Fakture - Stavke'));
        add_kpi(k, 'Promjene cijena', fmt_broj(l_promjene), null, 'fa-line-chart', 'info', 'posljednjih 30 dana',
            url_za(25, 'Fakture - Stavke'));

        return render(k);
    exception
        when others then
            return render_greska('kpi_stavke', sqlerrm);
    end kpi_stavke;

end dashboard_pkg;
/

show errors package body accounting.dashboard_pkg
