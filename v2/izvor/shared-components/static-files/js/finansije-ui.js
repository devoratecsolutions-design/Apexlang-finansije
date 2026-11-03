/* =====================================================================
   ESSCOM Finansije - finansije-ui.js
   Alatna traka za stabla (Tree regioni): pretraga sa označavanjem,
   proširi / skupi sve. Uključuje se automatski za svaki element
       <div class="fin-tree-toolbar" data-tree="STATIC_ID_STABLA">
   Radi na APEX 24.2+ (koristi apex.region / treeView API).
   ===================================================================== */
(function (window, $) {
    "use strict";
    var HIT = "fin-tree-hit";

    function tree$(id) {
        var r = window.apex && apex.region(id);
        return r && r.widget ? r.widget() : $("#" + id + "_tree, #" + id + " .a-TreeView").first();
    }

    function clear(id) {
        $("." + HIT, "#" + apex.util.escapeCSS(id)).removeClass(HIT);
    }

    function search(id, term) {
        var t$ = tree$(id), matches$, n = 0;
        if (!t$ || !t$.length || !t$.treeView) { return 0; }
        clear(id);
        term = (term || "").trim().toLowerCase();
        if (!term) {
            t$.treeView("collapseAll");
            return -1;
        }
        t$.treeView("collapseAll");
        matches$ = t$.treeView("find", {
            depth: -1,
            findAll: true,
            match: function (node) {
                return (node.label || "").toLowerCase().indexOf(term) >= 0;
            }
        });
        n = matches$.length;
        if (n) {
            var anc$ = matches$.parents(".a-TreeView-node").children(".a-TreeView-content");
            if (anc$.length) { t$.treeView("expand", anc$); }
            // nakon proširenja čvorovi su iscrtani - označi pogotke
            t$.treeView("find", {
                depth: -1, findAll: true,
                match: function (node) { return (node.label || "").toLowerCase().indexOf(term) >= 0; }
            }).find(".a-TreeView-label").addClass(HIT);
            var first$ = $("." + HIT, "#" + apex.util.escapeCSS(id)).first();
            if (first$.length && first$[0].scrollIntoView) {
                first$[0].scrollIntoView({ block: "nearest" });
            }
        }
        return n;
    }

    function bar$(id) {
        return $(".fin-tree-toolbar").filter(function () { return $(this).data("tree") === id; });
    }

    function run(bar) {
        var b$ = $(bar), id = b$.data("tree"), term = b$.find("input").val(),
            n = search(id, term), out$ = b$.find(".fin-tree-count");
        out$.text(n < 0 ? "" : (n === 0 ? "Nema rezultata" : (n === 1 ? "1 rezultat" : n + " rezultata")));
        b$.toggleClass("has-term", n >= 0);
    }

    function init() {
        $(".fin-tree-toolbar").each(function () {
            var bar = this, b$ = $(bar), id = b$.data("tree"), timer;
            if (b$.data("finReady")) { return; }
            b$.data("finReady", true);
            b$.on("input", "input", function () {
                clearTimeout(timer);
                timer = setTimeout(function () { run(bar); }, 300);
            });
            b$.on("keydown", "input", function (e) {
                if (e.key === "Enter") { e.preventDefault(); clearTimeout(timer); run(bar); }
                if (e.key === "Escape") { $(this).val(""); run(bar); }
            });
            b$.on("click", "[data-action]", function () {
                var t$ = tree$(id), a = $(this).data("action");
                if (a === "clear") { b$.find("input").val("").trigger("focus"); run(bar); return; }
                if (t$ && t$.treeView) { t$.treeView(a === "expand" ? "expandAll" : "collapseAll"); }
            });
            // nakon osvježavanja stabla ponovo primijeni pretragu
            $("#" + apex.util.escapeCSS(id)).on("apexafterrefresh", function () { run(bar); });
        });
    }

    window.finTree = {
        search: search,
        reapply: function (id) { bar$(id).each(function () { run(this); }); }
    };

    $(function () { init(); });
})(window, apex.jQuery);

/* =====================================================================
   Cijene (forma cijene u cjenovniku): račun u pregledaču, bez poziva
   servera. VPC = nabavna + marža; MPC = VPC + PDV (stopa u <P>_PDV,
   0 van PDV sistema); u maloprodaji i obrnuto MPC -> VPC.
   Poziv: finCijena.izNabavne('P26'), .izVpc('P26'), .izMpc('P26')
   ===================================================================== */
window.finCijena = (function ($) {
    "use strict";
    function num(item) {
        var v = $v(item), g, d, n;
        if (v === "" || v === null || v === undefined) { return null; }
        g = apex.locale.getGroupSeparator();
        d = apex.locale.getDecimalSeparator();
        v = String(v).split(g).join("").replace(d, ".");
        n = parseFloat(v);
        return isNaN(n) ? null : n;
    }
    function fmt(n) {
        if (apex.locale.formatNumber) { return apex.locale.formatNumber(n, "FM999G999G999G999G990D00"); }
        return n.toFixed(2).replace(".", apex.locale.getDecimalSeparator());
    }
    function r2(n) { return Math.round((n + Number.EPSILON) * 100) / 100; }
    function stopa(p) { return num(p + "_PDV") || 0; }
    function upozori(p) {
        var nab = num(p + "_NABAVNA_CIJENA"), vpc = num(p + "_VPC"),
            c$ = $("#" + p + "_VPC_CONTAINER");
        c$.find(".fin-warn").remove();
        if (nab !== null && nab > 0 && vpc !== null && vpc < nab) {
            c$.append('<span class="fin-warn"><span class="fa fa-warning" aria-hidden="true"></span>Prodajna cijena je ispod nabavne.</span>');
        }
    }
    function postaviMpc(p, vpc) {
        if (apex.item(p + "_MPC").node) { apex.item(p + "_MPC").setValue(fmt(r2(vpc * (1 + stopa(p) / 100))), null, true); }
    }
    // vrijednosti se postavljaju bez "change" događaja, da račun ne krene
    // ukrug i ne prepravi cijenu koju je korisnik upravo upisao
    return {
        upozori: upozori,
        izNabavne: function (p) {
            /* vrijednosti upravo stižu sa servera - ne računaj */
            if (window.finCijenaUcitava) { return; }
            var nab = num(p + "_NABAVNA_CIJENA"), m = num(p + "_MARZA"), vpc;
            if (nab !== null) {
                vpc = r2(nab * (1 + (m || 0) / 100));
                apex.item(p + "_VPC").setValue(fmt(vpc), null, true);
                postaviMpc(p, vpc);
            }
            upozori(p);
        },
        izVpc: function (p) {
            /* vrijednosti upravo stižu sa servera - ne računaj */
            if (window.finCijenaUcitava) { return; }
            var vpc = num(p + "_VPC");
            if (vpc !== null) { postaviMpc(p, vpc); }
            upozori(p);
        },
        izMpc: function (p) {
            /* vrijednosti upravo stižu sa servera - ne računaj */
            if (window.finCijenaUcitava) { return; }
            var mpc = num(p + "_MPC");
            if (mpc !== null) { apex.item(p + "_VPC").setValue(fmt(r2(mpc / (1 + stopa(p) / 100))), null, true); }
            upozori(p);
        }
    };
})(apex.jQuery);

/* =====================================================================
   Oznaka obaveznog polja u formama (region klasa "fin-form"):
   crvena zvjezdica iza labele svakog polja sa šablonom "Required".
   ===================================================================== */
(function ($) {
    "use strict";
    function oznaci(root) {
        $(".fin-form .t-Form-fieldContainer.is-required", root || document).each(function () {
            var l$ = $(this).find(".t-Form-label").first();
            if (l$.length && !l$.find(".fin-req").length) {
                l$.append('<span class="fin-req" aria-hidden="true">*</span>');
            }
        });
    }
    $(function () { oznaci(); });
    $(document).on("apexafterrefresh", function (e) { oznaci(e.target); });
})(apex.jQuery);

/* =====================================================================
   Pomoćne funkcije za Interactive Grid (finIg)
   - samoCitanje: kolone koje korisnik ne mijenja, a pregledač ih puni
     (bez serverskog readOnly, jer se u zaštićenu kolonu ne može upisati)
   - postavi: upis vrijednosti i u kolonu koja je samo za čitanje
   ===================================================================== */
window.finIg = (function ($) {
    "use strict";
    /* tekst u broj: prihvata i tačku i zarez kao decimalni znak (23.45 i 23,45);
       ako su oba prisutna, decimalni je posljednji; jedan znak koji se ponavlja ili
       separator hiljada iza kojeg su tačno 3 cifre = hiljade (kao kuf_pkg.broj) */
    function num(v) {
        var s, neg = false, pt, cm, dec = null, n;
        if (v && typeof v === "object" && v.v !== undefined) { v = v.v; }
        if (v === "" || v === null || v === undefined) { return 0; }
        if (typeof v === "number") { return v; }
        s = String(v).replace(/[\s\u00a0]/g, "");
        if (/^[-+]/.test(s)) { neg = s.charAt(0) === "-"; s = s.substring(1); }
        pt = s.lastIndexOf(".");
        cm = s.lastIndexOf(",");
        if (pt >= 0 && cm >= 0) {
            dec = pt > cm ? "." : ",";
        } else if (pt >= 0 || cm >= 0) {
            dec = pt >= 0 ? "." : ",";
            if (s.split(dec).length > 2 ||
                (dec === apex.locale.getGroupSeparator() && new RegExp("\\" + dec + "[0-9]{3}$").test(s))) { dec = null; }
        }
        if (dec === null) {
            s = s.replace(/[.,]/g, "");
        } else {
            s = s.split(dec === "." ? "," : ".").join("").replace(dec, ".");
        }
        n = parseFloat(s);
        return isNaN(n) ? 0 : (neg ? -n : n);
    }
    function val(v) {
        return (v && typeof v === "object" && v.v !== undefined) ? v.v : v;
    }
    function r2(n) { return Math.round((n + Number.EPSILON) * 100) / 100; }
    function fmt(n) {
        if (apex.locale.formatNumber) { return apex.locale.formatNumber(n, "FM999G999G999G999G990D00"); }
        return Number(n).toFixed(2).replace(".", apex.locale.getDecimalSeparator());
    }
    function grid(regionId) {
        var region = apex.region(regionId);
        if (!region || !region.widget || !region.widget().length) { return null; }
        return region.widget().interactiveGrid("getViews", "grid");
    }
    function samoCitanje(regionId, polja, da) {
        var g = grid(regionId), ro = (da !== false);
        if (!g) { return; }
        polja.forEach(function (f) {
            var m = g.model.getFieldMetadata(f);
            if (m) { m.readonly = ro; }
        });
        try {
            g.view$.grid("getColumns").forEach(function (c) {
                if (polja.indexOf(c.property) >= 0) { c.readonly = ro; }
            });
        } catch (e) { /* dovoljna je zaštita modela */ }
    }
    function postavi(model, rec, f, v) {
        var m = model.getFieldMetadata(f), ro = m ? m.readonly : false;
        if (m) { m.readonly = false; }
        try {
            model.setValue(rec, f, v);
        } catch (e) {
            apex.debug.warn("finIg.postavi " + f + ": " + e.message);
        } finally {
            if (m) { m.readonly = ro; }
        }
    }
    function kolona(regionId, f, vidljiva) {
        var g = grid(regionId), col = null, sc, top, fokus;
        if (!g) { return; }
        try {
            g.view$.grid("getColumns").forEach(function (c) { if (c.property === f) { col = c; } });
            if (!col || (!col.hidden) === vidljiva) { return; }
            sc = $(".t-Drawer-bodyWrapperIn, .t-Dialog-bodyWrapperIn").first();
            top = sc.scrollTop();
            fokus = document.activeElement;
            g.view$.grid(vidljiva ? "showColumn" : "hideColumn", f);
            sc.scrollTop(top);
            if (fokus && fokus.focus && fokus !== document.body) { fokus.focus(); }
        } catch (e) { /* ništa */ }
    }
    function greska(poruka) {
        apex.message.clearErrors();
        apex.message.showErrors([{ type: "error", location: "page", message: poruka, unsafe: false }]);
    }
    return { num: num, val: val, r2: r2, fmt: fmt, grid: grid, samoCitanje: samoCitanje, postavi: postavi,
             kolona: kolona, greska: greska };
})(apex.jQuery);

/* =====================================================================
   Ulazna faktura (str. 41): PDV specifikacija u Interactive Grid-u.
   PDV reda = osnovica x stopa indikatora; zbirovi ispod tabele. Kod
   obrnute naplate i uvoza (d = N) PDV se ne dodaje na iznos fakture.
   Stope dolaze iz <P>_STOPE (JSON iz baze).
   KO i zatvaranje avansa: stavke se preuzimaju čim se izabere faktura
   (proces PREUZMI_STAVKE), iznos ne može preći raspoloživo, novi red se
   ne dodaje; kolona Raspoloživo se vidi samo kod ova dva dokumenta.
   Poziv: finKufPdv.init('pdv_spec', 'P41', '&APP_PDV_SISTEM.')
   ===================================================================== */
window.finKufPdv = (function ($) {
    "use strict";
    var I = window.finIg;
    function init(regionId, p, pdvSistem) {
        var stope = {}, g = I.grid(regionId), model, actions;
        try { stope = JSON.parse($v(p + "_STOPE") || "{}"); } catch (e) { stope = {}; }
        if (!g) { return; }
        model = g.model;
        actions = apex.region(regionId).widget().interactiveGrid("getActions");

        function preuzimanje() {
            var v = $v(p + "_VRSTA_SIFRA");
            return v === "UKO" || v === "UAVZ";
        }
        function zbir() {
            var osn = 0, pdv = 0, fakt = 0;
            model.forEach(function (rec, i, id) {
                var meta = model.getRecordMetadata(id), o, d, s;
                if (meta && meta.deleted) { return; }
                o = I.num(model.getValue(rec, "VALUTA_OSNOVICA"));
                d = I.num(model.getValue(rec, "VALUTA_PDV"));
                s = stope[I.val(model.getValue(rec, "PDV_INDIKATOR_ID"))];
                osn += o;
                pdv += d;
                fakt += o + ((s && s.d === "N") ? 0 : d);
            });
            if (apex.item(p + "_UKUPNO_OSNOVICA").node) { apex.item(p + "_UKUPNO_OSNOVICA").setValue(I.fmt(I.r2(osn))); }
            if (apex.item(p + "_UKUPNO_PDV").node) { apex.item(p + "_UKUPNO_PDV").setValue(I.fmt(I.r2(pdv))); }
            if (apex.item(p + "_IZNOS_FAKTURE").node) { apex.item(p + "_IZNOS_FAKTURE").setValue(I.fmt(I.r2(fakt))); }
            if (typeof dodavanje === "function" && actions) { dodavanje(); }
        }
        /* izmjene tabele (brisanje praznog reda, skrivanje kolone) ne smiju pomjeriti formu ni fokus */
        function bezSkoka(fn) {
            var sc = $(".t-Drawer-bodyWrapperIn, .t-Dialog-bodyWrapperIn").first(),
                top = sc.scrollTop(), fokus = document.activeElement,
                vrati = function () {
                    sc.scrollTop(top);
                    if (fokus && fokus !== document.body && fokus.focus) {
                        try { fokus.focus({ preventScroll: true }); } catch (e) { /* ništa */ }
                    }
                };
            fn();
            vrati();
            setTimeout(vrati, 0);
            setTimeout(vrati, 200);
        }
        function uskladiPrikaz() { bezSkoka(uskladiPrikazOsnovno); }
        function uskladiPrikazOsnovno() {
            var pr = preuzimanje(), ro = ["RASPOLOZIVO"];
            if (pdvSistem === "Y") { ro.push("VALUTA_PDV"); }
            if (pr) { ro.push("PDV_INDIKATOR_ID"); }
            I.samoCitanje(regionId, ro);
            if (!pr) { I.samoCitanje(regionId, ["PDV_INDIKATOR_ID"], false); }
            I.kolona(regionId, "RASPOLOZIVO", pr);
            try { g.view$.grid("option", "autoAddRecord", !pr); } catch (e) { /* ništa */ }
            if (pr) { ukloniPrazne(); }
            dodavanje();
            ["row-delete", "selection-delete"].forEach(function (a) {
                if (!actions.lookup(a)) { return; }
                if ($v(p + "_VRSTA_SIFRA") === "UAVZ") { actions.hide(a); actions.disable(a); }
                else { actions.show(a); actions.enable(a); }
            });
        }
        /* novi red: ne kod KO / zatvaranja avansa, a kod avansne fakture samo dok nema reda */
        function dodavanje() {
            var n = 0, zabrana;
            model.forEach(function (rec, i, id) {
                var meta = model.getRecordMetadata(id);
                if (!meta || !meta.deleted) { n++; }
            });
            zabrana = preuzimanje() || ($v(p + "_VRSTA_SIFRA") === "UAV" && n >= 1);
            if (zabrana) { actions.hide("selection-add-row"); actions.disable("selection-add-row"); }
            else { actions.show("selection-add-row"); actions.enable("selection-add-row"); }
        }
        function ukloniPrazne() {
            var prazni = [];
            model.forEach(function (rec, i, id) {
                var meta = model.getRecordMetadata(id);
                if (meta && meta.inserted && !I.val(model.getValue(rec, "IZVOR_RED_ID"))) { prazni.push(rec); }
            });
            if (prazni.length) { model.deleteRecords(prazni); }
        }
        var zahtjev = 0, vezaPrije = $v(p + "_VEZA_KUF_ID");
        function obrisiSve() {
            var stare = [];
            model.forEach(function (rec, i, id) {
                var meta = model.getRecordMetadata(id);
                if (!meta || !meta.deleted) { stare.push(rec); }
            });
            if (stare.length) { model.deleteRecords(stare); }
        }
        function preuzmi() {
            var veza = $v(p + "_VEZA_KUF_ID"), vrsta = $v(p + "_VRSTA_SIFRA"), moj;
            if (!preuzimanje() || veza === vezaPrije) { return; }
            vezaPrije = veza;
            moj = ++zahtjev;
            if (!veza) { obrisiSve(); zbir(); return; }
            apex.server.process("PREUZMI_STAVKE", { x01: veza, x02: vrsta, pageItems: "#" + p + "_ID" }, { dataType: "json" })
                .done(function (rows) {
                    var posljednji = null;
                    if (moj !== zahtjev) { return; }
                    obrisiSve();
                    if (!rows || !rows.length) {
                        zbir();
                        I.greska("Na izabranoj fakturi nema raspoloživog iznosa.");
                        return;
                    }
                    uToku = true;
                    try {
                    rows.forEach(function (r, i) {
                        var id = model.insertNewRecord(null, posljednji), rec = model.getRecord(id);
                        posljednji = rec;
                        I.postavi(model, rec, "IZVOR_RED_ID", String(r.izvor));
                        I.postavi(model, rec, "REDNI_BROJ", String(i + 1));
                        I.postavi(model, rec, "PDV_INDIKATOR_ID", String(r.ind));
                        I.postavi(model, rec, "VALUTA_OSNOVICA", I.fmt(r.osn));
                        I.postavi(model, rec, "VALUTA_PDV", I.fmt(r.pdv));
                        I.postavi(model, rec, "RASPOLOZIVO", I.fmt(r.osn));
                    });
                    } finally { uToku = false; }
                    if (rows[0].val && !$v(p + "_VALUTA_ID")) { apex.item(p + "_VALUTA_ID").setValue(String(rows[0].val)); }
                    zbir();
                });
        }

        var uToku = false;
        model.subscribe({
            onChange: function (type, change) {
                var rec, s, rasp, osn;
                if (uToku) { return; }
                if (type === "set" && change && (change.field === "VALUTA_OSNOVICA" || change.field === "PDV_INDIKATOR_ID")) {
                    rec = change.record;
                    if (change.field === "VALUTA_OSNOVICA" && preuzimanje()) {
                        rasp = I.num(model.getValue(rec, "RASPOLOZIVO"));
                        osn = I.num(model.getValue(rec, "VALUTA_OSNOVICA"));
                        if (rasp > 0 && osn > rasp) {
                            I.greska("Iznos ne može biti veći od raspoloživog (" + I.fmt(rasp) + ").");
                            osn = rasp;
                            uToku = true;
                            try { I.postavi(model, rec, "VALUTA_OSNOVICA", I.fmt(rasp)); } finally { uToku = false; }
                        }
                    }
                    s = stope[I.val(model.getValue(rec, "PDV_INDIKATOR_ID"))];
                    if (s) {
                        uToku = true;
                        try {
                            I.postavi(model, rec, "VALUTA_PDV", I.fmt(I.r2(I.num(model.getValue(rec, "VALUTA_OSNOVICA")) * s.s / 100)));
                        } finally { uToku = false; }
                    }
                }
                zbir();
            }
        });
        /* KO, KZ i zatvaranje avansa: valuta dolazi sa povezane fakture i ne mijenja se */
        function vezanaValuta() {
            var v = $v(p + "_VRSTA_SIFRA");
            return v === "UKO" || v === "UKZ" || v === "UAVZ";
        }
        function zakljucajValutu() {
            $("#" + p + "_VALUTA_ID").closest(".t-Form-fieldContainer").toggleClass("fin-zakljucano", vezanaValuta());
        }
        function valutaVeze() {
            var veza = $v(p + "_VEZA_KUF_ID");
            zakljucajValutu();
            if (!vezanaValuta() || !veza) { return; }
            apex.server.process("VEZA_VALUTA", { x01: veza }, { dataType: "json" }).done(function (d) {
                if (d && d.v && $v(p + "_VALUTA_ID") !== d.v) { apex.item(p + "_VALUTA_ID").setValue(d.v); }
            });
        }
        $("#" + p + "_VRSTA_SIFRA").on("change", function () { uskladiPrikaz(); zakljucajValutu(); });
        $("#" + p + "_VEZA_KUF_ID").on("change", function () { preuzmi(); valutaVeze(); });
        zakljucajValutu();
        /* komentar uz dokument: snima se odmah po izmjeni polja u redu */
        $(document).off("change.finPrilog").on("change.finPrilog", ".fin-prilog__unos", function () {
            var el = this;
            apex.server.process("DOKUMENT_OPIS", { x01: $(el).data("id"), x02: el.value }, { dataType: "json" })
                .done(function () {
                    $(el).addClass("is-snimljeno");
                    setTimeout(function () { $(el).removeClass("is-snimljeno"); }, 1500);
                });
        });
        uskladiPrikaz();
        zbir();
    }
    return { init: init };
})(apex.jQuery);

/* =====================================================================
   Ulazna faktura (str. 41): uračunati avansi konačne fakture.
   Po izboru avansa (proces AVANS_INFO) puni se valuta i raspoloživo,
   a iznos se predlaže kao raspoloživo; veći iznos se ne prihvata.
   Poziv: finKufAvansi.init('avansi_ig', 'P41')
   ===================================================================== */
window.finKufAvansi = (function ($) {
    "use strict";
    var I = window.finIg;
    function init(regionId, p) {
        var g = I.grid(regionId), model;
        if (!g) { return; }
        model = g.model;
        try { g.view$.grid("option", "autoAddRecord", false); } catch (e) { /* ništa */ }
        I.samoCitanje(regionId, ["VALUTA_SIFRA", "RASPOLOZIVO"]);
        /* izbor avansa zavisi od dobavljača i valute fakture: po promjeni se briše keš liste */
        $("#" + p + "_KLIJENT_ID, #" + p + "_VALUTA_ID").on("change", function () {
            try {
                g.view$.grid("getColumns").forEach(function (c) {
                    if (c.property === "AVANS_ID" && c.elementId) { apex.item(c.elementId).refresh(); }
                });
            } catch (e) { /* ništa */ }
        });
        model.subscribe({
            onChange: function (type, change) {
                var rec, avans, rasp, izn;
                if (type !== "set" || !change) { return; }
                rec = change.record;
                if (change.field === "AVANS_ID") {
                    avans = I.val(model.getValue(rec, "AVANS_ID"));
                    if (!avans) { return; }
                    apex.server.process("AVANS_INFO", { x01: avans, pageItems: "#" + p + "_ID" }, { dataType: "json" })
                        .done(function (d) {
                            I.postavi(model, rec, "VALUTA_SIFRA", d.v || "");
                            I.postavi(model, rec, "RASPOLOZIVO", I.fmt(d.r || 0));
                            izn = I.num(model.getValue(rec, "IZNOS"));
                            if (!izn || izn > d.r) { I.postavi(model, rec, "IZNOS", I.fmt(d.r || 0)); }
                        });
                } else if (change.field === "IZNOS") {
                    rasp = I.num(model.getValue(rec, "RASPOLOZIVO"));
                    izn = I.num(model.getValue(rec, "IZNOS"));
                    if (rasp > 0 && izn > rasp) {
                        I.greska("Iznos zatvaranja ne može biti veći od raspoloživog (" + I.fmt(rasp) + ").");
                        I.postavi(model, rec, "IZNOS", I.fmt(rasp));
                    }
                }
            }
        });
    }
    return { init: init };
})(apex.jQuery);

/* Kurs na datum fakture: poruka uz polje kad kurs ne postoji.
   Poziv: finKurs.provjeri('P41') (stavka <P>_KURS, polja <P>_VALUTA_ID / <P>_DATUM_FAKTURE) */
window.finKurs = (function () {
    "use strict";
    return {
        provjeri: function (p) {
            var k = $v(p + "_KURS") || "";
            apex.message.clearErrors(p + "_VALUTA_ID");
            if (k.indexOf("Nema") === 0) {
                apex.message.showErrors([{
                    type: "error",
                    location: "inline",
                    pageItem: p + "_VALUTA_ID",
                    message: "Ne postoji kurs za izabranu valutu na datum fakture. Unesite kurs prije snimanja.",
                    unsafe: false
                }]);
            }
        }
    };
})();

/* Poruke o greškama (gornja traka) se same zatvaraju nakon 5 sekundi,
   ako ih korisnik ne zatvori ranije. */
(function ($) {
    "use strict";
    var tajmer = null;
    function planiraj() {
        if (tajmer) { clearTimeout(tajmer); }
        tajmer = setTimeout(function () {
            tajmer = null;
            if (document.getElementById("t_Alert_Notification")) { apex.message.clearErrors(); }
        }, 5000);
    }
    $(function () {
        if (!window.MutationObserver) { return; }
        new MutationObserver(function (mut) {
            var i, j, n;
            for (i = 0; i < mut.length; i++) {
                for (j = 0; j < mut[i].addedNodes.length; j++) {
                    n = mut[i].addedNodes[j];
                    if (n.nodeType === 1 && (n.id === "t_Alert_Notification" ||
                        (n.querySelector && n.querySelector("#t_Alert_Notification")))) { planiraj(); return; }
                }
            }
        }).observe(document.body, { childList: true, subtree: true });
        if (document.getElementById("t_Alert_Notification")) { planiraj(); }
    });
})(apex.jQuery);

/* =====================================================================
   Dokument skladišta (str. 331): stavke u Interactive Grid-u.
   - izbor artikla: JM, stanje / raspoloživo i (izlaz) prosječna cijena (ARTIKL_INFO)
   - ulaz: jedinična cijena se unosi; izlaz: prosječna cijena na datum dokumenta (samo za čitanje)
   - iznos reda = količina x cijena; ukupno ispod tabele (<P>_ZBIR)
   Poziv: finRmStavke.init('rm_stavke', 'P331')
   ===================================================================== */
window.finRmStavke = (function ($) {
    "use strict";
    var I = window.finIg;
    /* broj bez prateće decimalne tačke/zareza (23 umjesto 23.) */
    function bez(n, mask) {
        var s = apex.locale.formatNumber ? apex.locale.formatNumber(n, mask) : String(n);
        return String(s).replace(/[.,]$/, "");
    }
    function fq(n) { return bez(n, "FM999999999990D999999"); }
    /* cijena: grupisanje hiljada, 2 decimale (više samo kad postoje) */
    function fc(n) {
        var x = Number(n) || 0;
        if (Math.round(x * 100) / 100 === x) { return bez(x, "FM999G999G999G990D00"); }
        return bez(x, "FM999G999G999G990D9999").replace(/0+$/, "");
    }
    function init(regionId, p) {
        /* izlaz i povrat reversa: cijenu računa baza, količina najviše do raspoloživog / dostupnog */
        var g = I.grid(regionId), model, izlaz = ($v(p + "_TIP_KRETANJA") === "I" || $v(p + "_POVRAT") === "Y"), ro, formatira = false;
        if (!g) { return; }
        model = g.model;
        try { g.view$.grid("option", "autoAddRecord", false); } catch (e) { /* ništa */ }
        ro = ["JM_NAZIV", "RASPOLOZIVO", "IZNOS", "SB"];
        if (izlaz) { ro.push("CIJENA"); }
        I.samoCitanje(regionId, ro);

        function racun(rec) {
            I.postavi(model, rec, "IZNOS", I.fmt(I.r2(I.num(model.getValue(rec, "KOLICINA")) * I.num(model.getValue(rec, "CIJENA")))));
        }
        function zbir() {
            var s = 0;
            model.forEach(function (rec, idx, id) {
                var meta = model.getRecordMetadata(id);
                if (meta && meta.deleted) { return; }
                s += I.r2(I.num(model.getValue(rec, "KOLICINA")) * I.num(model.getValue(rec, "CIJENA")));
            });
            $s(p + "_ZBIR", I.fmt(I.r2(s)));
        }
        model.subscribe({
            onChange: function (type, change) {
                var rec, art, k, r;
                if (type === "set" && change) {
                    rec = change.record;
                    if (change.field === "STAVKA_ID") {
                        art = I.val(model.getValue(rec, "STAVKA_ID"));
                        if (!art) { return; }
                        apex.server.process("ARTIKL_INFO",
                            { x01: art, pageItems: "#" + p + "_ID,#" + p + "_SKLADISTE_ID,#" + p + "_DATUM,#" + p + "_VRSTA_SIFRA,#" +
                                                   p + "_ZADUZENI_RADNIK_ID,#" + p + "_KOMITENT_ID" },
                            { dataType: "json" })
                            .done(function (d) {
                                I.postavi(model, rec, "JM_NAZIV", d.jm || "");
                                I.postavi(model, rec, "RASPOLOZIVO", fq(izlaz ? (d.rasp || 0) : (d.stanje || 0)));
                                /* izlaz: prosječna cijena; ulaz: predlog samo kad postoji prosječna cijena
                                   (inače polje ostaje prazno za unos, bez "0.00" preko kojeg se kuca) */
                                if (izlaz) {
                                    I.postavi(model, rec, "CIJENA", fc(d.cijena || 0));
                                } else if (!I.num(model.getValue(rec, "CIJENA")) && Number(d.cijena) > 0) {
                                    I.postavi(model, rec, "CIJENA", fc(d.cijena));
                                }
                                racun(rec);
                                zbir();
                            });
                    } else if (change.field === "KOLICINA" || change.field === "CIJENA") {
                        /* unesena cijena se prikazuje formatirano (12,4 -> 12.40) */
                        if (change.field === "CIJENA" && !formatira) {
                            k = model.getValue(rec, "CIJENA");
                            if (String(k || "").trim() !== "" && fc(I.num(k)) !== k) {
                                formatira = true;
                                try { I.postavi(model, rec, "CIJENA", fc(I.num(k))); } finally { formatira = false; }
                            }
                        }
                        racun(rec);
                        if (izlaz && change.field === "KOLICINA") {
                            k = I.num(model.getValue(rec, "KOLICINA"));
                            r = I.num(model.getValue(rec, "RASPOLOZIVO"));
                            if (k > r) { I.greska("Raspoloživo je " + fq(r) + " - količina ne može biti veća."); }
                        }
                    }
                }
                if (type === "set" || type === "delete" || type === "insert" || type === "revert" ||
                    type === "refresh" || type === "addData") { zbir(); }
            }
        });
        /* tabela u modalnom dijalogu: širine kolona se računaju tek kad je dijalog otvoren
           (inače su kolone prazne tabele skupljene) */
        function sirine() { try { g.view$.grid("resize"); } catch (e) { /* ništa */ } }
        setTimeout(sirine, 150);
        setTimeout(sirine, 600);
        $(window).on("load apexwindowresized", sirine);
    }
    return { init: init };
})(apex.jQuery);

/* =====================================================================
   Dokument skladišta (str. 331): unos izlaza po serijskom broju
   (barkod / QR čitač kuca broj i Enter). Artikal se prepoznaje u bazi,
   stavka se dodaje ili joj se povećava količina (DODAJ_PO_SB).
   Poziv: finRmSbUnos.init('P331')
   ===================================================================== */
window.finRmSbUnos = (function ($) {
    "use strict";
    var P = "P331", u_toku = false;
    function izmijenjena() {
        var g = window.finIg.grid("rm_stavke");
        try { return !!(g && g.model && g.model.isChanged()); } catch (e) { return false; }
    }
    /* stavke, serijski brojevi i zbir se osvježavaju bez ponovnog učitavanja stranice */
    function osvjezi() {
        ["rm_stavke", "rm_sb"].forEach(function (r) {
            try { if (apex.region(r)) { apex.region(r).refresh(); } } catch (e) { /* ništa */ }
        });
    }
    function dodaj() {
        var $f = $("#" + P + "_SB_UNOS"), tekst = String($f.val() || "").trim();
        if (!tekst || u_toku) { return; }
        if (izmijenjena()) {
            window.finIg.greska("Stavke imaju nesnimljene izmjene - prvo kliknite Snimi, pa unosite serijske brojeve.");
            return;
        }
        u_toku = true;
        apex.server.process("DODAJ_PO_SB", { x01: tekst }, { dataType: "json" })
            .done(function (d) {
                apex.message.clearErrors();
                if (d.n > 0) {
                    osvjezi();
                    if (d.poruka && d.poruka.indexOf(": ") >= 0) { window.finIg.greska(d.poruka); }
                    else { apex.message.showPageSuccess(d.poruka || "Serijski broj je dodat."); }
                    $f.val("");
                } else {
                    window.finIg.greska(d.poruka || "Serijski broj nije dodat.");
                    $f.trigger("select");
                }
            })
            .always(function () {
                u_toku = false;
                setTimeout(function () { $f.trigger("focus"); }, 50);
            });
    }
    function init(p) {
        var $f;
        P = p || "P331";
        $f = $("#" + P + "_SB_UNOS");
        if (!$f.length) { return; }
        /* čitač barkoda / QR koda šalje Enter poslije broja */
        $f.on("keydown", function (e) {
            if (e.key === "Enter" || e.keyCode === 13) { e.preventDefault(); dodaj(); }
        });
        try { sessionStorage.removeItem("finSbPoruka"); } catch (e) { /* ništa */ }
    }
    return { init: init };
})(apex.jQuery);

/* =====================================================================
   Izbor skladišta u zaglavlju stranice (moduli Zalihe robe, Materijal i
   oprema, Izlazne fakture). Oznaka (#finSkl) se premješta u traku naslova,
   lista dolazi iz aplikacijskog procesa RM_SKLADISTA, izbor RM_SKLADISTE_IZBOR.
   ===================================================================== */
window.finSkl = (function ($) {
    "use strict";
    var lista = null;
    function esc(s) { return apex.util.escapeHTML(String(s == null ? "" : s)); }
    function crtaj($m, filter) {
        var f = (filter || "").toLowerCase(), html = "", trenutno = $("#finSkl").data("id");
        (lista || []).forEach(function (s) {
            if (f && (s.s + " " + s.n).toLowerCase().indexOf(f) < 0) { return; }
            html += '<button type="button" role="option" class="fin-skl__stavka' + (String(s.id) === String(trenutno) ? " is-current" : "") +
                '" data-id="' + esc(s.id) + '"><span class="fin-skl__sifra">' + esc(s.s) + '</span><span class="fin-skl__ime">' +
                esc(s.n) + '</span>' + (s.c ? '<span class="fin-skl__tip">' + esc(s.c) + '</span>' : "") +
                (String(s.id) === String(trenutno) ? '<span class="fa fa-check" aria-hidden="true"></span>' : "") + "</button>";
        });
        $m.find(".fin-skl__lista").html(html || '<div class="fin-skl__prazno">Nema skladišta.</div>');
    }
    function otvori($w) {
        var $m = $w.find(".fin-skl__meni");
        $w.addClass("is-open").find(".fin-skl__chip").attr("aria-expanded", "true");
        $m.prop("hidden", false);
        if (lista) { crtaj($m); $m.find("input").val("").trigger("focus"); return; }
        $m.find(".fin-skl__lista").html('<div class="fin-skl__prazno">Učitavanje…</div>');
        apex.server.process("RM_SKLADISTA", {}, { dataType: "json" }).done(function (d) {
            lista = d || [];
            $m.find(".fin-skl__trazi").toggle(lista.length > 7);
            crtaj($m);
            $m.find("input").trigger("focus");
        });
    }
    function zatvori($w) {
        $w.removeClass("is-open").find(".fin-skl__chip").attr("aria-expanded", "false");
        $w.find(".fin-skl__meni").prop("hidden", true);
    }
    function init() {
        var $w = $("#finSkl"), $cilj;
        if (!$w.length) { return; }
        $cilj = $(".t-Body-title .t-BreadcrumbRegion-buttons").first();
        if ($cilj.length) { $cilj.prepend($w); } else { $(".t-Body-content").first().prepend($w); }
        $w.prop("hidden", false);
        $w.on("click", ".fin-skl__chip", function (e) {
            e.stopPropagation();
            if ($w.hasClass("is-open")) { zatvori($w); } else { otvori($w); }
        });
        $w.on("input", "input", function () { crtaj($w.find(".fin-skl__meni"), this.value); });
        $w.on("click", ".fin-skl__meni", function (e) { e.stopPropagation(); });
        $w.on("click", ".fin-skl__stavka", function () {
            var id = $(this).data("id");
            if (String(id) === String($w.data("id"))) { zatvori($w); return; }
            apex.server.process("RM_SKLADISTE_IZBOR", { x01: id }, { dataType: "json" }).done(function () {
                window.location.reload();
            });
        });
        $(document).on("click", function () { zatvori($w); });
        $(document).on("keydown", function (e) { if (e.key === "Escape") { zatvori($w); } });
    }
    $(init);
    return { init: init };
})(apex.jQuery);

/* =====================================================================
   Lista dokumenata skladišta (str. 330): izbor vrste dokumenta pored
   izbora skladišta; "Novi dokument" otvara izabranu vrstu.
   Promjena vrste osvježava listu (samo dokumenti te vrste); URL forme
   (sa kontrolnom sumom) daje proces NOVI_DOKUMENT_URL.
   Poziv: finRmVrsta.init('P330_NOVA_VRSTA', 'dokumenti_report')
   ===================================================================== */
window.finRmVrsta = (function ($) {
    "use strict";
    var KLJUC = "finRmVrstaId";
    function otvori(url) {
        url = String(url || "").trim();
        if (!url) { return; }
        if (/^javascript:/i.test(url)) { window.location.href = url; } else { apex.navigation.redirect(url); }
    }
    function init(item, regionId) {
        var $r = $("#fin_vrsta_izbor"), $s = $("#" + item), $skl, $cilj, zapamceno = null;
        if (!$r.length || !$s.length) { return; }
        $skl = $("#finSkl");
        $cilj = $(".t-Body-title .t-BreadcrumbRegion-buttons").first();
        if ($skl.length && $skl.parent().length) { $r.insertAfter($skl); } else if ($cilj.length) { $cilj.prepend($r); }
        $r.addClass("is-ready");
        function osvjezi() {
            try { localStorage.setItem(KLJUC, $s.val()); } catch (e) { /* ništa */ }
            if (regionId && apex.region(regionId)) { apex.region(regionId).refresh(); }
        }
        $s.on("change", osvjezi);
        /* zapamćena vrsta: ako postoji u listi i razlikuje se od trenutne - izaberi i osvježi */
        try { zapamceno = localStorage.getItem(KLJUC); } catch (e) { zapamceno = null; }
        if (zapamceno && zapamceno !== $s.val() && $s.find('option[value="' + zapamceno + '"]').length) {
            apex.item(item).setValue(zapamceno, null, true);
            osvjezi();
        }
        $(document).on("click", "[data-novi-dokument]", function (e) {
            e.preventDefault();
            if (!$s.val() || $s.val() === "0") {
                apex.message.clearErrors();
                apex.message.showErrors([{ type: "error", location: "page", unsafe: false,
                    message: "Za novi dokument izaberite vrstu dokumenta (pored skladišta)." }]);
                return;
            }
            apex.server.process("NOVI_DOKUMENT_URL", { x01: $s.val() }, { dataType: "text" }).done(function (url) { otvori(url); });
        });
    }
    return { init: init };
})(apex.jQuery);

/* =====================================================================
   Izvještaji materijalnog / robnog modula (str. 371): katalog kartica.
   Klik na karticu bira izvještaj (P371_IZV) i ponovo učitava stranicu.
   Poziv: finRmIzvjestaji.init('P371')
   ===================================================================== */
window.finRmIzvjestaji = (function ($) {
    "use strict";
    function init(p) {
        var izv = $v(p + "_IZV");
        $(".fin-izv-kartica").each(function () {
            $(this).toggleClass("is-active", String($(this).data("izv")) === String(izv));
        });
        $(document).on("click", ".fin-izv-kartica", function () {
            var kod = String($(this).data("izv")), set = {};
            set[p + "_IZV"] = kod;
            apex.page.submit({ request: "IZV", set: set, showWait: true });
        });
        /* štampa: samo izvještaj (katalog, meni i parametri se ne štampaju - vidi @media print) */
        $(document).on("click", "[data-izv-stampaj]", function (e) {
            e.preventDefault();
            window.print();
        });
    }
    return { init: init };
})(apex.jQuery);

/* Navigacija u modul (Zalihe robe / Materijal i oprema): modul se postavlja
   AJAX-om (RM_MODUL), pa se otvara stranica bez argumenata u URL-u. */
window.finRm = (function () {
    "use strict";
    function idi(modul, stranica) {
        var url = "f?p=" + $v("pFlowId") + ":" + stranica + ":" + $v("pInstance") + "::NO";
        apex.server.process("RM_MODUL", { x01: modul }, { dataType: "json" })
            .always(function () { apex.navigation.redirect(url); });
    }
    return { idi: idi };
})();

/* =====================================================================
   Unos serijskih brojeva (str. 337): barkod / ručni unos - Enter snima broj
   (DODAJ_SB) i osvježava listu; brisanje (OBRISI_SB) bez ponovnog učitavanja.
   Poziv: finRmSb.init('P337', 'rm_sb_lista')
   ===================================================================== */
window.finRmSb = (function ($) {
    "use strict";
    function stanje(d) {
        if (!d || d.n === undefined) { return; }
        $("#finSbN").text(d.n);
        $("#finSbOznaka").toggleClass("is-ok", String(d.n) === String(d.k)).toggleClass("is-nok", String(d.n) !== String(d.k));
    }
    function greska(poruka) {
        apex.message.clearErrors();
        apex.message.showErrors([{ type: "error", location: "page", message: poruka, unsafe: false }]);
    }
    function init(p, regionId, raspId) {
        var $sb = $("#" + p + "_SB"), radi = false;
        function osvjezi() {
            apex.region(regionId).refresh();
            if (raspId && apex.region(raspId)) { apex.region(raspId).refresh(); }
        }
        /* način unosa: vidljiva samo izabrana sekcija (podrazumijevano barkod / ručno) */
        function nacin() {
            var n = $v(p + "_NACIN") || "B";
            $("#sb_barkod").toggle(n === "B");
            $("#sb_izbor").toggle(n === "L");
            $("#sb_qr").toggle(n === "Q");
            $("#sb_fajl").toggle(n === "F");
            if (n === "B") { $sb.trigger("focus"); }
        }
        $("#" + p + "_NACIN").on("change", nacin);
        nacin();
        /* izbor iz liste raspoloživih: + dodaje broj, pretraga filtrira listu */
        $(document).on("click", ".fin-sb-dodaj", function (e) {
            e.preventDefault();
            apex.server.process("DODAJ_SB", { x01: String($(this).data("sb")) }, { dataType: "json" })
                .done(function (d) {
                    if (d.ok) { apex.message.clearErrors(); apex.message.showPageSuccess(d.poruka); } else { greska(d.poruka); }
                    stanje(d);
                    osvjezi();
                });
        });
        $("#" + p + "_TRAZI").on("input", function () {
            var f = this.value.toLowerCase();
            $("#" + raspId + " tbody tr").each(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(f) >= 0);
            });
        }).on("keydown", function (e) { if (e.key === "Enter") { e.preventDefault(); return false; } });
        function dodaj() {
            var v = $.trim($sb.val());
            if (!v || radi) { return; }
            radi = true;
            apex.server.process("DODAJ_SB", { x01: v }, { dataType: "json" })
                .done(function (d) {
                    if (d.ok) {
                        apex.message.clearErrors();
                        apex.message.showPageSuccess(d.poruka);
                        $sb.val("");
                    } else {
                        greska(d.poruka);
                        $sb.trigger("select");
                    }
                    stanje(d);
                    osvjezi();
                })
                .always(function () { radi = false; $sb.trigger("focus"); });
        }
        $sb.on("keydown keypress", function (e) {
            if (e.key === "Enter" || e.which === 13) {
                e.preventDefault();
                e.stopImmediatePropagation();
                if (e.type === "keydown") { dodaj(); }
                return false;
            }
        }).trigger("focus");
        $(document).on("click", ".fin-sb-brisi", function (e) {
            e.preventDefault();
            apex.server.process("OBRISI_SB", { x01: $(this).data("id") }, { dataType: "json" })
                .done(function (d) {
                    if (d.greska) { greska(d.greska); return; }
                    stanje(d);
                    osvjezi();
                });
        });
    }
    return { init: init };
})(apex.jQuery);

/* Stranice modula Zalihe robe / Materijal i oprema: zatvaranje bilo kojeg
   modalnog prozora (snimanje, brisanje ili odustajanje) ponovo učitava stranicu.
   Stranice se označavaju elementom #finRmOsvjezi (globalna stranica). */
apex.jQuery(function ($) {
    "use strict";
    var u_toku = false;
    if (!$("#finRmOsvjezi").length) { return; }
    $(document).on("apexafterclosedialog apexafterclosecanceldialog", function () {
        if (u_toku) { return; }
        u_toku = true;
        window.location.reload();
    });
});

/* =====================================================================
   Kalkulacija (str. 341)
   - prijemnice: izbor prijemnice odmah popunjava datum, dobavljača i vrijednost (PRI_INFO)
   - fakture i zavisni troškovi kroz fakturu: izbor fakture / sa-bez PDV-a -> raspoloživo
     i predlog iznosa (KUF_INFO)
   - načini raspodjele: ručno - ukupan iznos (R), ručno - jedinična cijena (J: unose se
     cijene, iznos se preračunava), automatski po vrijednosti / količini / linearno
   - raspodjela: izbor fakture / troška učitava samo panel raspodjele (RASP_IZVOR);
     raspodjela po artiklima (zbirno iz svih prijemnica), čuvanje bez ponovnog
     učitavanja stranice (RASP_SNIMI), automatski svi izvori (RASP_SVE)
   - cijene po artiklu: marža %, VPC i MPC se preračunavaju međusobno (MPC = VPC + PDV);
     klik na artikal prikazuje sastav nabavne cijene
   Poziv: finRmKalk.init('P341')
   ===================================================================== */
window.finRmKalk = (function ($) {
    "use strict";
    var I = window.finIg, P = "P341", trenutni = null, sveNaPocetku = null;
    function esc(s) { return apex.util.escapeHTML(String(s == null ? "" : s)); }
    function f2(n) { return I.fmt(I.r2(n)); }
    function f4(n) {
        var x = Math.round((Number(n) || 0) * 10000) / 10000, s;
        s = apex.locale.formatNumber ? apex.locale.formatNumber(x, "FM999G999G999G990D0000") : String(x);
        return String(s).replace(/0+$/, "").replace(/[.,]$/, "");
    }
    function greska(poruka) {
        apex.message.clearErrors();
        apex.message.showErrors([{ type: "error", location: "page", message: poruka, unsafe: false }]);
    }

    /* ---------- fakture i zavisni troškovi (trošak = true: red KALKULACIJA_TROSKOVI, faktura nije obavezna) */
    function initKuf(regionId, trosak) {
        var g = I.grid(regionId), model;
        if (!g) { return; }
        model = g.model;
        try { g.view$.grid("option", "autoAddRecord", false); } catch (e) { /* ništa */ }
        I.samoCitanje(regionId, ["RASPOLOZIVO", "STANJE"]);
        model.subscribe({
            onChange: function (type, ch) {
                var rec, kuf, id, sa, red;
                if (type !== "set" || !ch || (ch.field !== "KUF_ID" && ch.field !== "SA_PDV")) { return; }
                rec = ch.record;
                kuf = I.val(model.getValue(rec, "KUF_ID"));
                if (!kuf) {
                    if (trosak) { I.postavi(model, rec, "RASPOLOZIVO", ""); }
                    return;
                }
                id = model.getRecordId(rec);
                red = /^[0-9]+$/.test(String(id)) ? id : "";
                sa = model.getFieldMetadata("SA_PDV") ? I.val(model.getValue(rec, "SA_PDV")) : "Y";
                apex.server.process("KUF_INFO", { x01: kuf, x02: sa || "N", x03: trosak ? "" : red, x04: trosak ? red : "" },
                    { dataType: "json" }).done(function (d) {
                        var rasp = Number(d.rasp || 0);
                        I.postavi(model, rec, "RASPOLOZIVO", f2(rasp));
                        /* nova faktura ili promjena sa / bez PDV-a: prijedlog je cijeli raspoloživi iznos
                           (korisnik ga poslije može smanjiti) */
                        I.postavi(model, rec, "IZNOS", f2(rasp));
                        if (trosak && d.naziv && !I.val(model.getValue(rec, "OPIS"))) { I.postavi(model, rec, "OPIS", d.naziv); }
                    });
            }
        });
    }

    /* ---------- pregled iznosa */
    function stanje(d) {
        if (!d || d.uk === undefined) { return; }
        $("#kzFak").text(d.fak); $("#kzTr").text(d.tr); $("#kzUk").text(d.uk); $("#kzRas").text(d.ras); $("#kzRaz").text(d.raz);
        $("#kzRazK").toggleClass("fin-kalk-zbir__k--greska", d.razok !== "Y").toggleClass("fin-kalk-zbir__k--ok", d.razok === "Y");
        (d.izvori || []).forEach(function (x) {
            var $a = $('.fin-kalk-izvor[data-izvor="' + x.izvor + '"]');
            $a.attr("data-r", x.r).find(".fin-kalk-dot").removeClass("fin-kalk-dot--Y fin-kalk-dot--N").addClass("fin-kalk-dot--" + x.r);
            $a.find("[data-ras]").text("raspoređeno " + x.ras);
            if (x.iz !== undefined) { $a.find(".fin-kalk-izvor__iznos b").text(x.iz); }
        });
        if (sveNaPocetku === "Y" && d.sve === "N") {
            /* poništena raspodjela: tab cijena se zaključava ponovnim učitavanjem */
            setTimeout(function () { window.location.reload(); }, 900);
        } else if (sveNaPocetku !== "Y" && d.sve === "Y") {
            /* sve je raspoređeno: tab cijena se otključava ponovnim učitavanjem */
            apex.message.showPageSuccess("Sve fakture i troškovi su raspoređeni - učitavam cijene...");
            setTimeout(function () { window.location.reload(); }, 900);
        }
    }

    /* ---------- panel raspodjele */
    function zbirPanela($p) {
        var s = 0, cilj = Number($p.data("iznos")) || 0, raz, rasp = $p.data("rasp");
        $p.find("[data-iznos-red]").each(function () {
            s += I.num($(this).is("input") ? $(this).val() : $(this).text());
        });
        s = I.r2(s);
        $p.find(".fin-kalk-rasp__suma").text(f2(s));
        if ($p.data("nacin") === "J") {
            /* jedinična cijena: ukupan iznos se preračunava; granica je raspoloživo fakture */
            $p.find(".fin-kalk-rasp__ukupno").text(f2(s));
            if (rasp !== undefined && rasp !== null && rasp !== "") {
                raz = I.r2(Number(rasp) - s);
                $p.find(".fin-kalk-rasp__razlika").text("raspoloživo " + f2(Number(rasp))).toggleClass("is-greska", raz < 0);
            } else {
                $p.find(".fin-kalk-rasp__razlika").text("").removeClass("is-greska");
            }
            return;
        }
        raz = I.r2(cilj - s);
        $p.find(".fin-kalk-rasp__razlika").text(f2(raz)).toggleClass("is-greska", Math.abs(raz) >= 0.005);
    }
    function crtaj(d) {
        var $p = $("#finKalkRasp"), izm = d.izmjenjiva === "Y", jed = d.nacin === "J", rucno = d.nacin === "R" && izm,
            html, redovi = "", uputa;
        (d.stavke || []).forEach(function (s) {
            var izn = s.iznos ? f2(I.num(s.iznos)) : "", cij = s.cijena ? f4(I.num(s.cijena)) : "";
            redovi += '<tr data-artikal="' + esc(s.id) + '"><td><span class="fin-doc"><span class="fin-doc__no">' + esc(s.sifra) +
                '</span><span class="fin-sub">' + esc(s.naziv) + '</span></span></td><td>' + esc(s.jm || "") +
                '</td><td class="u-tR">' + esc(s.kol) + '</td><td class="u-tR">' + esc(s.pret || "0.00") + '</td>';
            if (jed) {
                /* ručno - jedinična cijena: unosi se cijena, iznos = cijena x količina */
                redovi += '<td class="u-tR">' + (izm ? '<input type="text" class="fin-kalk-in" inputmode="decimal" data-cijena-red value="' +
                    esc(cij) + '">' : esc(cij)) + '</td><td class="u-tR"><span data-iznos-red data-kol="' + esc(s.kol) + '">' +
                    esc(izn) + '</span></td></tr>';
            } else {
                redovi += '<td class="u-tR">' +
                    (rucno ? '<input type="text" class="fin-kalk-in" inputmode="decimal" data-iznos-red value="' + esc(izn) + '">'
                           : '<span data-iznos-red>' + esc(izn) + "</span>") +
                    '</td><td class="u-tR fin-kalk-rasp__jed" data-kol="' + esc(s.kol) + '"></td></tr>';
            }
        });
        if (jed) {
            uputa = "Upišite jediničnu cijenu po artiklu; iznos i ukupan iznos se preračunavaju (cijena × količina)." +
                (d.raspolozivo ? " Ukupan iznos ne može preći raspoloživo fakture (" + d.raspolozivo + " KM)." : "");
        } else if (d.nacin === "R") {
            uputa = "Upišite iznos po artiklu; zbir mora biti jednak iznosu.";
        } else if (d.nacin === "P") {
            uputa = "Iznos po artiklu je vrijednost sa prijemnice (količina × cijena prijemnice); iznos fakture u kalkulaciji je " +
                "zbir tih vrijednosti" + (d.raspolozivo ? " i ne može preći raspoloživo fakture (" + d.raspolozivo + " KM)" : "") + ".";
        } else {
            uputa = "Iznosi su izračunati " + d.nacinNaziv + (d.nacin === "V"
                ? (String(d.izvor).indexOf("F:") === 0
                    ? " - srazmjerno vrijednosti prijemnice (količina × cijena prijemnice)"
                    : " - srazmjerno vrijednosti artikla raspoređenoj iz faktura robe; dok fakture nisu raspoređene, srazmjerno vrijednosti prijemnice")
                : "") + ". Za ručni unos promijenite način raspodjele na prvom tabu.";
        }
        html = '<div class="fin-kalk-rasp__zaglavlje"><div><div class="fin-kalk-rasp__naziv">' + esc(d.naziv) + '</div>' +
            '<div class="fin-kalk-rasp__meta"><span class="fin-chip fin-chip--info"><span class="fa fa-random" aria-hidden="true"></span> raspodjela: ' +
            esc(d.nacinNaziv) + '</span><span class="fin-chip fin-kalk-stanje fin-kalk-stanje--' + esc(d.rasporedjen) + '"></span>' +
            (d.sacuvano === "N" && d.nacin !== "R" && d.nacin !== "J" ? '<span class="fin-sub">prijedlog - nije sačuvano</span>' : "") +
            '</div></div><div class="fin-kalk-rasp__iznos"><span>' + (jed ? "Ukupan iznos" : "Iznos") + '</span><b>' +
            (jed ? '<span class="fin-kalk-rasp__ukupno">' + esc(d.iznos) + '</span>' : esc(d.iznos)) + ' KM</b></div></div>' +
            '<p class="fin-kalk-uputa">' + esc(uputa) + '</p>' +
            '<table class="fin-kalk-rasp__tabela"><thead><tr><th>Artikal</th><th>JM</th><th class="u-tR">Količina</th>' +
            '<th class="u-tR">Raspoređeno iz ostalih izvora</th>' +
            (jed ? '<th class="u-tR">Jedinična cijena</th><th class="u-tR">Iznos (KM)</th>'
                 : '<th class="u-tR">Raspoređeno (KM)</th><th class="u-tR">Po jedinici</th>') + '</tr></thead><tbody>' +
            redovi + '</tbody><tfoot><tr><td colspan="4">' + (jed ? "Ukupno" : "Ukupno / razlika") + '</td>' +
            (jed ? '<td></td><td class="u-tR"><b class="fin-kalk-rasp__suma"></b><br><span class="fin-kalk-rasp__razlika"></span></td>'
                 : '<td class="u-tR"><b class="fin-kalk-rasp__suma"></b></td><td class="u-tR"><span class="fin-kalk-rasp__razlika"></span></td>') +
            '</tr></tfoot></table>' +
            (d.izmjenjiva === "Y" ? '<div class="fin-kalk-rasp__dugmad"><button type="button" class="t-Button t-Button--hot t-Button--iconLeft fin-kalk-sacuvaj">' +
                '<span class="t-Icon t-Icon--left fa fa-save" aria-hidden="true"></span>Sačuvaj raspodjelu</button>' +
                '<button type="button" class="t-Button t-Button--simple t-Button--iconLeft fin-kalk-sve">' +
                '<span class="t-Icon t-Icon--left fa fa-random" aria-hidden="true"></span>Raspodijeli sve automatske</button>' +
                (d.sacuvano === "Y" ? '<button type="button" class="t-Button t-Button--simple t-Button--danger t-Button--iconLeft fin-kalk-ponisti">' +
                    '<span class="t-Icon t-Icon--left fa fa-undo" aria-hidden="true"></span>Poništi raspodjelu</button>' : "") +
                '<button type="button" class="t-Button t-Button--simple t-Button--danger t-Button--iconLeft fin-kalk-ponisti-sve">' +
                '<span class="t-Icon t-Icon--left fa fa-trash-o" aria-hidden="true"></span>Poništi sve raspodjele</button></div>' : "");
        $p.html(html).data("iznos", d.iznosBroj).data("izvor", d.izvor).data("nacin", d.nacin)
            .data("rasp", d.raspolozivoBroj === undefined ? "" : d.raspolozivoBroj);
        osvjeziJedinicno($p);
        zbirPanela($p);
    }
    function osvjeziJedinicno($p) {
        if ($p.data("nacin") === "J") {
            /* iznos = jedinična cijena x količina (kao u bazi: zaokruženo na 2 decimale) */
            $p.find("tbody tr").each(function () {
                var $r = $(this), $c = $r.find("[data-cijena-red]"), $i = $r.find("[data-iznos-red]");
                if (!$c.length) { return; }
                $i.text($c.val() === "" ? "" : f2(I.num($c.val()) * I.num($i.data("kol"))));
            });
            return;
        }
        $p.find("tbody tr").each(function () {
            var $r = $(this), $i = $r.find("[data-iznos-red]"), izn = I.num($i.is("input") ? $i.val() : $i.text()),
                kol = I.num($r.find(".fin-kalk-rasp__jed").data("kol"));
            $r.find(".fin-kalk-rasp__jed").text(kol ? f4(izn / kol) : "");
        });
    }
    function ucitaj(izvor) {
        trenutni = izvor;
        $(".fin-kalk-izvor").removeClass("is-izabran");
        $('.fin-kalk-izvor[data-izvor="' + izvor + '"]').addClass("is-izabran");
        $("#finKalkRasp").addClass("is-ucitava");
        apex.server.process("RASP_IZVOR", { x01: izvor }, { dataType: "json" })
            .done(function (d) {
                if (d.greska) { greska(d.greska); return; }
                crtaj(d);
            })
            .always(function () { $("#finKalkRasp").removeClass("is-ucitava"); });
    }
    function sacuvaj() {
        var $p = $("#finKalkRasp"), ids = [], izn = [];
        $p.find("tbody tr").each(function () {
            var $i = $(this).find("[data-iznos-red]"), $c = $(this).find("[data-cijena-red]");
            ids.push(String($(this).data("artikal")));
            /* kod jedinične cijene šalju se cijene (iznos računa baza) */
            izn.push($c.length ? $c.val() : ($i.is("input") ? $i.val() : $i.text()));
        });
        apex.server.process("RASP_SNIMI", { x01: $p.data("izvor"), f01: ids, f02: izn }, { dataType: "json" })
            .done(function (d) {
                if (d.greska) { greska(d.greska); return; }
                apex.message.clearErrors();
                apex.message.showPageSuccess("Raspodjela je sačuvana.");
                stanje(d);
                ucitaj(trenutni);
                osvjeziTabele();
            });
    }
    /* iznosi izvora se mijenjaju (jedinična cijena) - osvježiti tabele prvog taba */
    function osvjeziTabele() {
        ["kalk_kuf", "kalk_troskovi"].forEach(function (r) {
            try { if (apex.region(r)) { apex.region(r).refresh(); } } catch (e) { /* ništa */ }
        });
    }
    function rasporediSve() {
        apex.server.process("RASP_SVE", {}, { dataType: "json" }).done(function (d) {
            if (d.greska) { greska(d.greska); return; }
            apex.message.clearErrors();
            apex.message.showPageSuccess("Automatski izvori su raspoređeni.");
            stanje(d);
            if (trenutni) { ucitaj(trenutni); }
        });
    }
    /* poništavanje raspodjele izvora ili svih; ručni izvor / faktura robe poništava i automatske */
    function ponisti(sve) {
        var $p = $("#finKalkRasp"), izvor = sve ? "SVE" : $p.data("izvor"),
            pitanje = sve ? "Poništiti raspodjele svih faktura i troškova?"
                : "Poništiti raspodjelu izvora?" + ($p.data("nacin") === "R" || $p.data("nacin") === "J" || String(izvor).indexOf("F:") === 0
                    ? " Poništiće se i automatske raspodjele koje od nje zavise." : "");
        apex.message.confirm(pitanje, function (ok) {
            if (!ok) { return; }
            apex.server.process("RASP_PONISTI", { x01: izvor }, { dataType: "json" }).done(function (d) {
                if (d.greska) { greska(d.greska); return; }
                apex.message.clearErrors();
                apex.message.showPageSuccess(sve ? "Sve raspodjele su poništene." : "Raspodjela je poništena.");
                stanje(d);
                if (trenutni) { ucitaj(trenutni); }
            });
        });
    }
    function initRaspodjela() {
        var $prvi;
        if (!$("#finKalkRasp").length) { return; }
        $(document).on("click", ".fin-kalk-izvor", function (e) { e.preventDefault(); ucitaj($(this).data("izvor")); });
        $(document).on("input", "#finKalkRasp .fin-kalk-in", function () {
            var $p = $("#finKalkRasp");
            osvjeziJedinicno($p);
            zbirPanela($p);
        });
        $(document).on("click", "#finKalkRasp .fin-kalk-sacuvaj", sacuvaj);
        $(document).on("click", "#finKalkRasp .fin-kalk-sve", rasporediSve);
        $(document).on("click", "#finKalkRasp .fin-kalk-ponisti", function () { ponisti(false); });
        $(document).on("click", "#finKalkRasp .fin-kalk-ponisti-sve", function () { ponisti(true); });
        $prvi = $('.fin-kalk-izvor[data-r="N"]').first();
        if (!$prvi.length) { $prvi = $(".fin-kalk-izvor").first(); }
        if ($prvi.length) { ucitaj($prvi.data("izvor")); }
    }

    /* ---------- prijemnice */
    function initPrijemnice(regionId) {
        var g = I.grid(regionId);
        if (!g) { return; }
        try { g.view$.grid("option", "autoAddRecord", false); } catch (e) { /* ništa */ }
        I.samoCitanje(regionId, ["DATUM", "DOBAVLJAC", "VRIJEDNOST"]);
        /* izbor prijemnice odmah popunjava ostala polja reda (ranije tek poslije snimanja) */
        g.model.subscribe({
            onChange: function (type, ch) {
                var rec, op;
                if (type !== "set" || !ch || ch.field !== "OPERACIJA_ID") { return; }
                rec = ch.record;
                op = I.val(g.model.getValue(rec, "OPERACIJA_ID"));
                if (!op) {
                    ["DATUM", "DOBAVLJAC", "VRIJEDNOST"].forEach(function (f) { I.postavi(g.model, rec, f, ""); });
                    return;
                }
                apex.server.process("PRI_INFO", { x01: op }, { dataType: "json" }).done(function (d) {
                    I.postavi(g.model, rec, "DATUM", d.datum || "");
                    I.postavi(g.model, rec, "DOBAVLJAC", d.dobavljac || "");
                    I.postavi(g.model, rec, "VRIJEDNOST", d.vrijednost || "");
                });
            }
        });
    }

    /* ---------- cijene po artiklu i sastav nabavne cijene */
    function initCijene(regionId) {
        var g = I.grid(regionId), model, u_toku = false;
        if (!g) { return; }
        model = g.model;
        try { g.view$.grid("option", "autoAddRecord", false); } catch (e) { /* ništa */ }
        I.samoCitanje(regionId, ["ARTIKAL", "JM_NAZIV", "KOLICINA", "NABAVNA_CIJENA", "NABAVNA_VRIJEDNOST", "PDV_STOPA"]);
        $("#" + regionId).on("interactivegridselectionchange", function (e, data) {
            var rec = data && data.selectedRecords && data.selectedRecords[0];
            if (!rec) { return; }
            $s(P + "_ARTIKL", model.getRecordId(rec));
            apex.region("kalk_sastav").refresh();
        });
        model.subscribe({
            onChange: function (type, ch) {
                var rec, nab, pdv, m, vpc, mpc;
                if (u_toku || type !== "set" || !ch) { return; }
                if (["MARZA_PROCENAT", "VPC", "MPC"].indexOf(ch.field) < 0) { return; }
                rec = ch.record;
                nab = I.num(model.getValue(rec, "NABAVNA_CIJENA"));
                pdv = I.num(model.getValue(rec, "PDV_STOPA"));
                u_toku = true;
                try {
                    if (ch.field === "MARZA_PROCENAT") {
                        m = I.num(model.getValue(rec, "MARZA_PROCENAT"));
                        vpc = I.r2(nab * (1 + m / 100));
                        I.postavi(model, rec, "VPC", f2(vpc));
                        I.postavi(model, rec, "MPC", f2(vpc * (1 + pdv / 100)));
                    } else if (ch.field === "VPC") {
                        vpc = I.num(model.getValue(rec, "VPC"));
                        I.postavi(model, rec, "MPC", f2(vpc * (1 + pdv / 100)));
                        if (nab > 0) { I.postavi(model, rec, "MARZA_PROCENAT", f2((vpc - nab) / nab * 100)); }
                    } else {
                        mpc = I.num(model.getValue(rec, "MPC"));
                        vpc = mpc / (1 + pdv / 100);
                        I.postavi(model, rec, "VPC", f4(vpc));
                        if (nab > 0) { I.postavi(model, rec, "MARZA_PROCENAT", f2((vpc - nab) / nab * 100)); }
                    }
                    vpc = I.num(model.getValue(rec, "VPC"));
                    if (vpc > 0 && vpc < nab) {
                        greska("Upozorenje: VPC (" + f4(vpc) + ") je manja od nabavne cijene (" + f4(nab) + ") - negativna marža.");
                    }
                } finally {
                    u_toku = false;
                }
            }
        });
    }

    function init(p) {
        P = p || "P341";
        sveNaPocetku = $v(P + "_SVE_RASP");
        initKuf("kalk_kuf", false);
        initKuf("kalk_troskovi", true);
        initPrijemnice("kalk_prijemnice");
        initCijene("kalk_cijene");
        initRaspodjela();
    }
    return { init: init };
})(apex.jQuery);
