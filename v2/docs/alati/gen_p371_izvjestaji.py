# Generator stranice 371 (Izvještaji materijalnog modula) - R16: interaktivni izvještaji sa štampom
OUT = '/home/claude/apexlang-finansije/v2/izvor/pages/p00371-materijalni-izvještaji.apx'

def ind(text, n):
    return "\n".join((" " * n + l) if l.strip() else "" for l in text.strip("\n").split("\n"))

def cond(codes):
    lst = ",".join(codes)
    return f"instr(',{lst},', ',' || :P371_IZV || ',') > 0"

QM = "TM9"                       # količina: 12 / 12.5
CM = "FM999G999G999G990D0000"    # cijena: 4 decimale
VM = "FM999G999G999G990D00"      # vrijednost
DM = "DD.MM.YYYY"

def c(name, heading, typ="STRING", mask=None, align=None, link=None, hidden=False, sumable=False):
    return dict(name=name, heading=heading, typ=typ, mask=mask, align=align, link=link, hidden=hidden, sumable=sumable)

def colblock(cd, seq, alias):
    L = [f"        column {cd['name']} ("]
    if cd['hidden']:
        L.append("            type: hidden")
    elif cd['link']:
        L.append("            type: link")
    else:
        L.append("            type: plainText")
    L += ["            heading {", f"                heading: {cd['heading']}"]
    if cd['align']:
        L.append(f"                alignment: {cd['align']}")
    L += ["            }", "            layout {", f"                sequence: {seq}"]
    if cd['align']:
        L.append(f"                columnAlignment: {cd['align']}")
    L.append("            }")
    if cd['mask']:
        L += ["            appearance {", f"                formatMask: {cd['mask']}", "            }"]
    if cd['link']:
        L += ["            link {", "                target: {", "                    type: url", "                    url: #URL#", "                }",
              f"                linkText: {cd['link']}", "            }"]
    L += ["            source {", f"                dataType: {cd['typ']}", "            }",
          "            advanced {", f"                endUserAlias: {alias}", "            }", "        )"]
    return "\n".join(L)

def alias(i):
    s = ""
    i += 1
    while i:
        i, r = divmod(i - 1, 26)
        s = chr(65 + r) + s
    return s

def report(slug, name, codes, sql, cols, items, nodata, seq, rid, breaks=None):
    L = [f"    region {slug} (", f"        name: {name}", f"        title: {name}", "        type: interactiveReport", "        source {",
         "            location: localDatabase", "            type: sqlQuery", "            sqlQuery:", "                ```sql", ind(sql, 16), "                ```",
         "            pageItemsToSubmit: ["]
    for it in items:
        L.append(f"                {it}")
    L += ["            ]", "        }",
          "        layout {", f"            sequence: {seq}", "            parentRegion: @izvjestaj", "            slot: subRegions", "        }",
          "        appearance {", "            template: @interactive-report", "            templateOptions: [", "                #DEFAULT#",
          "                t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc", "            ]", "            cssClasses: fin-izv-tabela", "        }",
          "        serverSideCondition {", "            type: expression", f"            plsqlExpression: {cond(codes)}", "        }",
          "        componentAppearance {", "            showNullValuesAs: -", "        }",
          "        pagination {", "            type: rowRangesXToY", "        }",
          "        performance {", "            maxRowsToProcess: 100000", "        }",
          "        messages {", f"            whenNoDataFound: {nodata}", "        }",
          "        actionsMenu {", "            chart: false", "            flashback: false", "            subscription: false", "        }",
          "        advanced {", f"            htmlDomId: izv_{codes[0]}", f"            savedReportMappingIdentifier: {rid}", "        }", ""]
    for i, cd in enumerate(cols):
        L.append(colblock(cd, (i + 1) * 10, alias(i)))
        L.append("")
    L += [f"        savedReport primary (", "            visibility: primaryDefault", "            view {", "                rowsPerPage: 100", "            }", ""]
    n = 0
    for cd in cols:
        if cd['hidden']:
            continue
        n += 1
        L += [f"            displayColumn {cd['name']} (", f"                sequence: {n}", "            )", ""]
    L += ["        )", "", "    )"]
    return "\n".join(L)

# skladište: izabrano ('0' = sva skladišta modula na koja korisnik ima pravo)
def SKLW(a):
    return (f"(nvl(:P371_SKLADISTE_ID, '0') = '0' OR {a}.skladiste_id = to_number(:P371_SKLADISTE_ID))\n"
            f"  AND {a}.skladiste_id IN (SELECT k.skladiste_id FROM skladiste_korisnici k\n"
            f"                           WHERE k.korisnik_id = :APP_USER_ID\n"
            f"                             AND nvl(rm_skladiste_pkg.modul(k.skladiste_id), 'MAT') = nvl(:A_RM_MODUL, 'MAT'))")
SKL = SKLW("p")
ART = "(:P371_ARTIKL IS NULL OR p.stavka_id = to_number(:P371_ARTIKL))"
D = "to_date(:P371_DATUM, 'DD.MM.YYYY')"
OD = "to_date(:P371_OD, 'DD.MM.YYYY')"
DO = "to_date(:P371_DO, 'DD.MM.YYYY')"

R = []
rid = 371000000000000001
# 1. stanje na dan
sql_sd = f"""
SELECT p.artikal_sifra,
       p.artikal_naziv,
       p.jm_naziv,
       sum(p.ulaz_kolicina - p.izlaz_kolicina) AS kolicina,
       round(sum(p.ulaz_vrijednost - p.izlaz_vrijednost) / nullif(sum(p.ulaz_kolicina - p.izlaz_kolicina), 0), 4) AS cijena,
       sum(p.ulaz_vrijednost - p.izlaz_vrijednost) AS vrijednost
FROM vw_rm_promet p
WHERE p.ooj_id = :APP_OOJ_ID
  AND {SKL}
  AND {ART}
  AND p.status = 'Z'
  AND p.datum <= nvl({D}, trunc(sysdate))
GROUP BY p.stavka_id, p.artikal_sifra, p.artikal_naziv, p.jm_naziv
HAVING sum(p.ulaz_kolicina - p.izlaz_kolicina) <> 0 OR sum(p.ulaz_vrijednost - p.izlaz_vrijednost) <> 0
ORDER BY p.artikal_sifra"""
cols_sd = [c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"), c("JM_NAZIV", "JM"),
           c("KOLICINA", "Količina", "NUMBER", QM, "end"), c("CIJENA", "Prosječna cijena", "NUMBER", CM, "end"),
           c("VRIJEDNOST", "Vrijednost (KM)", "NUMBER", VM, "end")]
R.append(report("izv-stanje", "Stanje zaliha na dan", ["sd"], sql_sd, cols_sd, ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_DATUM"],
                "Nema zaliha na izabrani dan.", 10, rid)); rid += 1
# popisna lista
sql_pl = sql_sd.replace("       sum(p.ulaz_vrijednost - p.izlaz_vrijednost) AS vrijednost\n",
                        "       sum(p.ulaz_vrijednost - p.izlaz_vrijednost) AS vrijednost,\n       CAST(NULL AS VARCHAR2(20)) AS popisano,\n       CAST(NULL AS VARCHAR2(20)) AS razlika\n")
cols_pl = [c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"), c("JM_NAZIV", "JM"),
           c("KOLICINA", "Knjigovodstveno", "NUMBER", QM, "end"), c("CIJENA", "Cijena", "NUMBER", CM, "end"),
           c("VRIJEDNOST", "Vrijednost (KM)", "NUMBER", VM, "end"), c("POPISANO", "Popisano", align="end"), c("RAZLIKA", "Razlika", align="end")]
R.append(report("izv-popis", "Popisna lista", ["pl"], sql_pl, cols_pl, ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_DATUM"],
                "Nema zaliha na izabrani dan.", 20, rid)); rid += 1
# 2. starost zaliha
sql_sz = f"""
SELECT x.artikal_sifra,
       x.artikal_naziv,
       x.jm_naziv,
       x.kolicina,
       x.vrijednost,
       x.zadnji_ulaz,
       x.zadnji_izlaz,
       trunc(sysdate) - trunc(nvl(x.zadnji_izlaz, x.zadnji_ulaz)) AS dana
FROM (SELECT p.stavka_id, p.artikal_sifra, p.artikal_naziv, p.jm_naziv,
             sum(p.ulaz_kolicina - p.izlaz_kolicina) AS kolicina,
             sum(p.ulaz_vrijednost - p.izlaz_vrijednost) AS vrijednost,
             max(CASE WHEN p.tip_kretanja = 'U' THEN p.datum END) AS zadnji_ulaz,
             max(CASE WHEN p.tip_kretanja = 'I' THEN p.datum END) AS zadnji_izlaz
        FROM vw_rm_promet p
       WHERE p.ooj_id = :APP_OOJ_ID
         AND {SKL.replace(chr(10), chr(10) + '       ')}
         AND {ART}
         AND p.status = 'Z'
       GROUP BY p.stavka_id, p.artikal_sifra, p.artikal_naziv, p.jm_naziv) x
WHERE x.kolicina > 0
  AND trunc(sysdate) - trunc(nvl(x.zadnji_izlaz, x.zadnji_ulaz)) >= nvl(to_number(:P371_DANA), 0)
ORDER BY dana DESC, x.vrijednost DESC"""
cols_sz = [c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"), c("JM_NAZIV", "JM"), c("KOLICINA", "Količina", "NUMBER", QM, "end"),
           c("VRIJEDNOST", "Vrijednost (KM)", "NUMBER", VM, "end"), c("ZADNJI_ULAZ", "Zadnji ulaz", "DATE", DM),
           c("ZADNJI_IZLAZ", "Zadnji izlaz", "DATE", DM), c("DANA", "Dana bez izlaza", "NUMBER", None, "end")]
R.append(report("izv-starost", "Starost zaliha (bez izlaza)", ["sz"], sql_sz, cols_sz, ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_DANA"],
                "Nema artikala na stanju bez izlaza duže od zadatog broja dana.", 30, rid)); rid += 1
# 3. kartica artikla
sql_km = f"""
WITH p AS (
    SELECT p.*
      FROM vw_rm_promet p
     WHERE p.ooj_id = :APP_OOJ_ID
       AND {SKL.replace(chr(10), chr(10) + '    ')}
       AND p.stavka_id = to_number(:P371_ARTIKL)
       AND p.status = 'Z'
), x AS (
    SELECT 0 AS red, {OD} AS datum, 0 AS operacija_id, 0 AS stavka_dok_id, 'Početno stanje' AS dokument,
           CAST(NULL AS VARCHAR2(255)) AS vrsta_naziv, CAST(NULL AS VARCHAR2(500)) AS partner, CAST(NULL AS VARCHAR2(100)) AS skladiste,
           to_number(NULL) AS ulaz_kolicina, to_number(NULL) AS izlaz_kolicina, to_number(NULL) AS cijena,
           to_number(NULL) AS ulaz_vrijednost, to_number(NULL) AS izlaz_vrijednost,
           nvl(sum(ulaz_kolicina - izlaz_kolicina), 0) AS d_kol, nvl(sum(ulaz_vrijednost - izlaz_vrijednost), 0) AS d_vr
      FROM p WHERE p.datum < {OD}
    UNION ALL
    SELECT 1, p.datum, p.operacija_id, p.stavka_dok_id, p.dokument, p.vrsta_naziv,
           coalesce(p.klijent_naziv, p.mjesto_troska_naziv, p.radnik_naziv,
                    nvl2(p.skladiste_prenos_naziv, CASE WHEN p.tip_kretanja = 'U' THEN 'sa skladišta ' ELSE 'na skladište ' END || p.skladiste_prenos_naziv, NULL)),
           p.skladiste_sifra,
           p.ulaz_kolicina, p.izlaz_kolicina, p.cijena, p.ulaz_vrijednost, p.izlaz_vrijednost,
           p.ulaz_kolicina - p.izlaz_kolicina, p.ulaz_vrijednost - p.izlaz_vrijednost
      FROM p WHERE p.datum BETWEEN {OD} AND {DO}
)
SELECT x.datum,
       x.dokument,
       x.vrsta_naziv,
       x.partner,
       x.skladiste,
       nullif(x.ulaz_kolicina, 0) AS ulaz,
       nullif(x.izlaz_kolicina, 0) AS izlaz,
       sum(x.d_kol) OVER (ORDER BY x.red, x.datum, x.operacija_id, x.stavka_dok_id) AS saldo,
       x.cijena,
       nullif(x.ulaz_vrijednost, 0) AS ulaz_vrijednost,
       nullif(x.izlaz_vrijednost, 0) AS izlaz_vrijednost,
       sum(x.d_vr) OVER (ORDER BY x.red, x.datum, x.operacija_id, x.stavka_dok_id) AS saldo_vrijednost
FROM x
WHERE :P371_ARTIKL IS NOT NULL
ORDER BY x.red, x.datum, x.operacija_id, x.stavka_dok_id"""
cols_km = [c("DATUM", "Datum", "DATE", DM), c("DOKUMENT", "Dokument"), c("VRSTA_NAZIV", "Vrsta"), c("PARTNER", "Partner / MT / radnik / skladište"),
           c("SKLADISTE", "Skladište"), c("ULAZ", "Ulaz", "NUMBER", QM, "end"), c("IZLAZ", "Izlaz", "NUMBER", QM, "end"),
           c("SALDO", "Stanje", "NUMBER", QM, "end"), c("CIJENA", "Cijena", "NUMBER", CM, "end"),
           c("ULAZ_VRIJEDNOST", "Ulaz (KM)", "NUMBER", VM, "end"), c("IZLAZ_VRIJEDNOST", "Izlaz (KM)", "NUMBER", VM, "end"),
           c("SALDO_VRIJEDNOST", "Vrijednost stanja", "NUMBER", VM, "end")]
R.append(report("izv-kartica", "Kartica artikla", ["km"], sql_km, cols_km, ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_OD", "P371_DO"],
                "Izaberite artikal (kartica se prikazuje za jedan artikal).", 40, rid)); rid += 1
# 4. promet po artiklima
sql_pp = f"""
SELECT p.artikal_sifra,
       p.artikal_naziv,
       p.jm_naziv,
       sum(CASE WHEN p.datum < {OD} THEN p.ulaz_kolicina - p.izlaz_kolicina ELSE 0 END) AS pocetno,
       sum(CASE WHEN p.datum >= {OD} THEN p.ulaz_kolicina ELSE 0 END) AS ulaz,
       sum(CASE WHEN p.datum >= {OD} THEN p.izlaz_kolicina ELSE 0 END) AS izlaz,
       sum(p.ulaz_kolicina - p.izlaz_kolicina) AS krajnje,
       sum(CASE WHEN p.datum < {OD} THEN p.ulaz_vrijednost - p.izlaz_vrijednost ELSE 0 END) AS pocetno_vr,
       sum(CASE WHEN p.datum >= {OD} THEN p.ulaz_vrijednost ELSE 0 END) AS ulaz_vr,
       sum(CASE WHEN p.datum >= {OD} THEN p.izlaz_vrijednost ELSE 0 END) AS izlaz_vr,
       sum(p.ulaz_vrijednost - p.izlaz_vrijednost) AS krajnje_vr
FROM vw_rm_promet p
WHERE p.ooj_id = :APP_OOJ_ID
  AND {SKL}
  AND {ART}
  AND p.status = 'Z'
  AND p.datum <= {DO}
GROUP BY p.stavka_id, p.artikal_sifra, p.artikal_naziv, p.jm_naziv
HAVING sum(CASE WHEN p.datum >= {OD} THEN p.ulaz_kolicina + p.izlaz_kolicina ELSE 0 END) <> 0
    OR sum(p.ulaz_kolicina - p.izlaz_kolicina) <> 0
ORDER BY p.artikal_sifra"""
cols_pp = [c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"), c("JM_NAZIV", "JM"),
           c("POCETNO", "Početno", "NUMBER", QM, "end"), c("ULAZ", "Ulaz", "NUMBER", QM, "end"), c("IZLAZ", "Izlaz", "NUMBER", QM, "end"),
           c("KRAJNJE", "Krajnje", "NUMBER", QM, "end"), c("POCETNO_VR", "Početno (KM)", "NUMBER", VM, "end"),
           c("ULAZ_VR", "Ulaz (KM)", "NUMBER", VM, "end"), c("IZLAZ_VR", "Izlaz (KM)", "NUMBER", VM, "end"),
           c("KRAJNJE_VR", "Krajnje (KM)", "NUMBER", VM, "end")]
R.append(report("izv-promet", "Promet po artiklima", ["pp"], sql_pp, cols_pp, ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_OD", "P371_DO"],
                "Nema prometa u izabranom periodu.", 50, rid)); rid += 1
# 5. pregled dokumenata
sql_dok = f"""
SELECT d.id,
       d.naziv,
       d.vrsta_naziv,
       d.datum,
       d.skladiste_sifra AS skladiste,
       coalesce(d.klijent_naziv, d.mjesto_troska_naziv, d.zaduzeni_radnik_naziv, d.skladiste_prenos_naziv) AS partner,
       CASE WHEN d.stornirano = 'Y' THEN 'Storniran' WHEN d.storniran_id IS NOT NULL THEN 'Storno'
            WHEN d.glavna_knjiga_id IS NOT NULL THEN 'Proknjižen'
            WHEN d.status = 'Z' THEN 'Zaključen' ELSE 'U pripremi' END AS status,
       d.stavki,
       d.iznos,
       CASE WHEN d.v2 = 'Y' THEN apex_page.get_url(p_page => 331, p_items => 'P331_ID', p_values => d.id, p_clear_cache => 331)
            ELSE apex_page.get_url(p_page => 332, p_items => 'P332_ID', p_values => d.id) END AS url
FROM vw_rm_dokumenti d
WHERE d.ooj_id = :APP_OOJ_ID
  AND {SKLW('d')}
  AND d.datum BETWEEN {OD} AND {DO}
  AND (:P371_VRSTA IS NULL OR d.vrsta_sifra = :P371_VRSTA)
ORDER BY d.datum DESC, d.id DESC"""
cols_dok = [c("ID", "Dokument", "NUMBER", link='<span class="fin-doc"><span class="fin-doc__no">#NAZIV#</span><span class="fin-sub">#VRSTA_NAZIV#</span></span>'),
            c("NAZIV", "Broj", hidden=True), c("VRSTA_NAZIV", "Vrsta", hidden=True), c("DATUM", "Datum", "DATE", DM), c("SKLADISTE", "Skladište"),
            c("PARTNER", "Partner / MT / radnik / skladište"), c("STATUS", "Status"), c("STAVKI", "Stavki", "NUMBER", None, "center"),
            c("IZNOS", "Iznos (KM)", "NUMBER", VM, "end"), c("URL", "Url", hidden=True)]
R.append(report("izv-dokumenti", "Pregled dokumenata", ["dok"], sql_dok, cols_dok, ["P371_SKLADISTE_ID", "P371_OD", "P371_DO", "P371_VRSTA"],
                "Nema dokumenata u izabranom periodu.", 60, rid)); rid += 1
# 6. potrošnja po mjestu troška
sql_pmt = f"""
SELECT nvl(p.mjesto_troska_naziv, '(bez mjesta troška)') AS mjesto_troska,
       p.vrsta_naziv,
       p.artikal_sifra,
       p.artikal_naziv,
       p.jm_naziv,
       sum(p.izlaz_kolicina) AS kolicina,
       sum(p.izlaz_vrijednost) AS vrijednost
FROM vw_rm_promet p
WHERE p.ooj_id = :APP_OOJ_ID
  AND {SKL}
  AND {ART}
  AND p.status = 'Z'
  AND p.vrsta_sifra IN ('IZD', 'IIN', 'IOS', 'ISI', 'RAS')
  AND p.datum BETWEEN {OD} AND {DO}
  AND (:P371_MT IS NULL OR p.mjesto_troska_id = to_number(:P371_MT))
GROUP BY p.mjesto_troska_naziv, p.vrsta_naziv, p.stavka_id, p.artikal_sifra, p.artikal_naziv, p.jm_naziv
ORDER BY 1, 2, p.artikal_sifra"""
cols_pmt = [c("MJESTO_TROSKA", "Mjesto troška"), c("VRSTA_NAZIV", "Vrsta izlaza"), c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"),
            c("JM_NAZIV", "JM"), c("KOLICINA", "Količina", "NUMBER", QM, "end"), c("VRIJEDNOST", "Vrijednost (KM)", "NUMBER", VM, "end")]
R.append(report("izv-potrosnja", "Potrošnja po mjestu troška", ["pmt"], sql_pmt, cols_pmt,
                ["P371_SKLADISTE_ID", "P371_ARTIKL", "P371_OD", "P371_DO", "P371_MT"], "Nema izlaza u potrošnju u izabranom periodu.", 70, rid)); rid += 1
# 7. zaduženja
sql_zad = f"""
SELECT z.partner_naziv,
       z.vrsta,
       z.dokument,
       z.datum,
       z.artikal_sifra,
       z.artikal_naziv,
       z.jm_naziv,
       z.zaduzeno,
       z.vrijednost
FROM vw_rm_zaduzenja z
WHERE z.ooj_id = :APP_OOJ_ID
  AND {SKLW('z')}
  AND (:P371_ARTIKL IS NULL OR z.stavka_id = to_number(:P371_ARTIKL))
ORDER BY z.partner_naziv, z.datum, z.dokument"""
cols_zad = [c("PARTNER_NAZIV", "Radnik / komitent"), c("VRSTA", "Vrsta"), c("DOKUMENT", "Dokument"), c("DATUM", "Datum", "DATE", DM),
            c("ARTIKAL_SIFRA", "Šifra"), c("ARTIKAL_NAZIV", "Artikal"), c("JM_NAZIV", "JM"),
            c("ZADUZENO", "Zaduženo", "NUMBER", QM, "end"), c("VRIJEDNOST", "Vrijednost (KM)", "NUMBER", VM, "end")]
R.append(report("izv-zaduzenja", "Zaduženja po radniku i komitentu", ["zad"], sql_zad, cols_zad, ["P371_SKLADISTE_ID", "P371_ARTIKL"],
                "Nema otvorenih zaduženja.", 80, rid)); rid += 1
# 8. na čekanju
sql_dc = f"""
SELECT c.operacija_id AS id,
       c.dokument AS naziv,
       c.vrsta_naziv,
       c.datum,
       c.dana,
       c.razlog,
       c.iznos,
       apex_page.get_url(p_page => 331, p_items => 'P331_ID', p_values => c.operacija_id, p_clear_cache => 331) AS url
FROM vw_rm_na_cekanju c
WHERE c.ooj_id = :APP_OOJ_ID
  AND {SKLW('c')}
ORDER BY c.dana DESC, c.datum"""
cols_dc = [c("ID", "Dokument", "NUMBER", link='<span class="fin-doc"><span class="fin-doc__no">#NAZIV#</span><span class="fin-sub">#VRSTA_NAZIV#</span></span>'),
           c("NAZIV", "Broj", hidden=True), c("VRSTA_NAZIV", "Vrsta", hidden=True), c("DATUM", "Datum", "DATE", DM),
           c("DANA", "Dana", "NUMBER", None, "end"), c("RAZLOG", "Šta čeka"), c("IZNOS", "Iznos (KM)", "NUMBER", VM, "end"), c("URL", "Url", hidden=True)]
R.append(report("izv-cekanje", "Dokumenti na čekanju", ["dc"], sql_dc, cols_dc, ["P371_SKLADISTE_ID"], "Nema dokumenata koji čekaju.", 90, rid)); rid += 1

KATALOG = [
    ("Stanje i vrijednost", "fa-cubes", [("sd", "Stanje zaliha na dan", "Količina, prosječna cijena i vrijednost po artiklu"),
                                         ("pl", "Popisna lista", "Knjigovodstveno stanje sa poljima za popis"),
                                         ("sz", "Starost zaliha", "Artikli na stanju bez izlaza duže od N dana")]),
    ("Promet", "fa-exchange", [("km", "Kartica artikla", "Hronološki ulazi, izlazi i stanje jednog artikla"),
                               ("pp", "Promet po artiklima", "Početno, ulaz, izlaz i krajnje stanje za period"),
                               ("dok", "Pregled dokumenata", "Svi dokumenti skladišta za period")]),
    ("Potrošnja i zaduženja", "fa-users", [("pmt", "Potrošnja po mjestu troška", "Izdatnice i izlazi na investiciju, OS i sitni inventar"),
                                           ("zad", "Zaduženja", "Otvoreni reversi i zaduženja radnika / komitenata")]),
    ("Kontrola", "fa-bell-o", [("dc", "Dokumenti na čekanju", "Dokumenti u pripremi, prijemnice bez kalkulacije, prenosi bez prijema")]),
]
kat_html = '<div class="fin-izv-katalog">'
for g, ic, its in KATALOG:
    kat_html += f'<div class="fin-izv-grupa"><div class="fin-izv-grupa__naslov"><span class="fa {ic}" aria-hidden="true"></span>{g}</div>'
    for code, naziv, opis in its:
        kat_html += f'<button type="button" class="fin-izv-kartica" data-izv="{code}"><span class="fin-izv-kartica__naziv">{naziv}</span><span class="fin-izv-kartica__opis">{opis}</span></button>'
    kat_html += '</div>'
kat_html += '</div>'
NAZIVI = {code: n for g, ic, its in KATALOG for code, n, o in its}
ALL = list(NAZIVI.keys())
case_naziv = "case :P371_IZV " + " ".join(f"when '{k}' then '{n}'" for k, n in NAZIVI.items()) + " end"
lista_kodova = ",".join(ALL)

def item(name, typ, label, seq, codes, extra=""):
    return f"""    pageItem {name} (
        type: {typ}
        label {{
            label: {label}
            alignment: left
        }}
{extra}        layout {{
            sequence: {seq}
            region: @parametri
            slot: regionBody
            startNewRow: false
        }}
        appearance {{
            template: @optional-floating
            templateOptions: #DEFAULT#
        }}
        serverSideCondition {{
            type: expression
            plsqlExpression: {cond(codes)}
        }}
    )
"""

items = []
items.append(item("P371_SKLADISTE_ID", "selectList", "Skladište", 10, ALL, extra="""        lov {
            type: sqlQuery
            sqlQuery:
                ```sql
                SELECT d, r
                FROM (
                    SELECT '— sva skladišta modula —' AS d, 0 AS r, ' ' AS sifra FROM dual
                    UNION ALL
                    SELECT s.sifra || ' - ' || s.naziv, s.id, s.sifra
                    FROM skladista s
                    JOIN skladiste_korisnici k ON k.skladiste_id = s.id AND k.korisnik_id = :APP_USER_ID
                    WHERE s.ooj_id = :APP_OOJ_ID
                      AND s.valid = 'Y'
                      AND nvl(rm_skladiste_pkg.modul(s.id), 'MAT') = nvl(:A_RM_MODUL, 'MAT'))
                ORDER BY sifra
                ```
            displayExtraValues: false
            displayNullValue: false
        }
"""))
items.append(item("P371_DATUM", "datePicker", "Na dan", 20, ["sd", "pl"]))
items.append(item("P371_OD", "datePicker", "Od", 30, ["km", "pp", "dok", "pmt"]))
items.append(item("P371_DO", "datePicker", "Do", 40, ["km", "pp", "dok", "pmt"]))
items.append(item("P371_ARTIKL", "popupLov", "Artikal", 50, ["sd", "pl", "sz", "km", "pp", "pmt", "zad"], extra="""        settings {
            popupWidth: 720
        }
        lov {
            type: sharedComponent
            lov: @rm-dokument-artikli
            displayExtraValues: false
        }
"""))
items.append(item("P371_MT", "popupLov", "Mjesto troška", 60, ["pmt"], extra="""        settings {
            popupWidth: 720
        }
        lov {
            type: sharedComponent
            lov: @rm-mjesta-troska
            displayExtraValues: false
        }
"""))
items.append(item("P371_VRSTA", "selectList", "Vrsta dokumenta", 60, ["dok"], extra="""        lov {
            type: sqlQuery
            sqlQuery:
                ```sql
                SELECT vd.naziv AS d, upper(vd.sifra) AS r
                FROM sif.vrste_dokumenata vd
                JOIN sif.acc_moduli m ON m.id = vd.acc_modul_id AND upper(m.sifra) = 'MAT'
                WHERE vd.ooj_id = :APP_OOJ_ID
                  AND vd.valid = 'Y'
                  AND rm_dokument_pkg.u_modulu(vd.sifra, nvl(:A_RM_MODUL, 'MAT')) = 'Y'
                ORDER BY vd.naziv
                ```
            displayExtraValues: false
            displayNullValue: true
            nullDisplayValue: - sve vrste -
        }
"""))
items.append(item("P371_DANA", "numberField", "Dana bez izlaza (najmanje)", 60, ["sz"]))

page = f"""page 371 (
    name: Izvještaji
    alias: MATERIJALNI-IZVJEŠTAJI
    title: Izvještaji
    pageGroup: @robno-materijalno
    appearance {{
        pageTemplate: @standard
        templateOptions: #DEFAULT#
    }}
    navigation {{
        cursorFocus: doNotFocusCursor
        warnOnUnsavedChanges: false
    }}
    javaScript {{
        executeWhenPageLoads:
            ```javascript-browser
            finRmIzvjestaji.init('P371');
            ```
    }}
    security {{
        authorizationScheme: @glavna-knjiga-izvještaji
        pageAccessProtection: argumentsMustHaveChecksum
        formAutoComplete: false
    }}
    help {{
        helpText:
            ```html
            Izaberite izvještaj u katalogu (grupe: stanje i vrijednost, promet, potrošnja i zaduženja, kontrola),
            podesite parametre (skladište, period, artikal...) i kliknite <b>Prikaži</b>.
            Izvještaj se može filtrirati, sortirati i grupisati (meni <b>Actions</b>), preuzeti kao Excel / PDF
            (<b>Actions &gt; Download</b>) ili odštampati dugmetom <b>Štampaj</b>.
            Izvještaji koriste zaključene dokumente skladišta (knjigovodstveno stanje); storniran dokument i njegov storno
            se ne računaju. <b>Dokumenti na čekanju</b> prikazuju ono što još nije zaključeno.
            ```
    }}

    region izvjestaji-naslov (
        name: Izvještaji
        type: breadcrumb
        source {{
            breadcrumb: @breadcrumb
        }}
        layout {{
            sequence: 20
            slot: breadcrumbBar
        }}
        appearance {{
            template: @title-bar
            templateOptions: [
                #DEFAULT#
                t-BreadcrumbRegion--showBreadcrumb
                t-BreadcrumbRegion--compactTitle
                t-BreadcrumbRegion--useBreadcrumbTitle
            ]
        }}
        componentAppearance {{
            breadcrumbTemplate: @breadcrumb
            templateOptions: #DEFAULT#
        }}
    )

    region katalog (
        name: Katalog izvještaja
        type: staticContent
        source {{
            htmlCode: {kat_html}
        }}
        layout {{
            sequence: 10
            slot: body
        }}
        appearance {{
            template: @blank-with-attributes
            templateOptions: #DEFAULT#
            cssClasses: fin-izv-bez-stampe
        }}
        advanced {{
            htmlDomId: fin_izv_katalog
        }}
    )

    region izvjestaj (
        name: &P371_NAZIV.
        title: &P371_NAZIV.
        type: staticContent
        layout {{
            sequence: 20
            slot: body
        }}
        appearance {{
            template: @standard
            templateOptions: [
                #DEFAULT#
                t-Region--noUI
            ]
            cssClasses: fin-section fin-izv
        }}
        serverSideCondition {{
            type: itemIsNotNull
            item: P371_IZV
        }}
    )

    region parametri (
        name: Parametri
        type: staticContent
        layout {{
            sequence: 5
            parentRegion: @izvjestaj
            slot: subRegions
        }}
        appearance {{
            template: @blank-with-attributes
            templateOptions: [
                #DEFAULT#
                t-Form--stretchInputs
            ]
            cssClasses: fin-toolbar fin-izv-parametri fin-izv-bez-stampe
        }}
    )

    region stampa-zaglavlje (
        name: Zaglavlje za štampu
        type: staticContent
        source {{
            htmlCode: <div class="fin-izv-stampa"><b>&P371_NAZIV.</b> · &P371_PARAMETRI.</div>
        }}
        layout {{
            sequence: 6
            parentRegion: @izvjestaj
            slot: subRegions
        }}
        appearance {{
            template: @blank-with-attributes
            templateOptions: #DEFAULT#
        }}
    )

    region izaberite (
        name: Izaberite izvještaj
        type: staticContent
        source {{
            htmlCode: Izaberite izvještaj u katalogu iznad.
        }}
        layout {{
            sequence: 30
            slot: body
        }}
        appearance {{
            template: @alert
            templateOptions: [
                #DEFAULT#
                t-Alert--colorBG
                t-Alert--horizontal
                t-Alert--defaultIcons
                t-Alert--info
            ]
        }}
        serverSideCondition {{
            type: itemIsNull
            item: P371_IZV
        }}
    )

""" + "\n\n".join(R) + "\n\n" + """    pageItem P371_IZV (
        type: hidden
        settings {
            valueProtected: false
        }
        layout {
            sequence: 1
            slot: body
        }
    )

    pageItem P371_NAZIV (
        type: hidden
        settings {
            valueProtected: false
        }
        layout {
            sequence: 2
            slot: body
        }
    )

    pageItem P371_PARAMETRI (
        type: hidden
        settings {
            valueProtected: false
        }
        layout {
            sequence: 3
            slot: body
        }
    )

""" + "\n".join(items) + f"""
    button prikazi (
        buttonName: PRIKAZI
        label: Prikaži
        layout {{
            sequence: 90
            region: @parametri
            slot: regionBody
        }}
        appearance {{
            buttonTemplate: @text-with-icon
            hot: true
            templateOptions: [
                #DEFAULT#
                t-Button--iconLeft
            ]
            icon: fa-play
        }}
        behavior {{
            warnOnUnsavedChanges: doNotCheck
        }}
    )

    button stampaj (
        buttonName: STAMPAJ
        label: Štampaj
        layout {{
            sequence: 95
            region: @parametri
            slot: regionBody
        }}
        appearance {{
            buttonTemplate: @text-with-icon
            templateOptions: [
                #DEFAULT#
                t-Button--iconLeft
            ]
            icon: fa-print
        }}
        behavior {{
            action: definedByDynamicAction
        }}
        advanced {{
            customAttributes: data-izv-stampaj="1"
        }}
    )

    process podrazumijevano (
        name: Podrazumijevane vrijednosti
        type: executeCode
        source {{
            plsqlCode:
                ```plsql
                -- nepoznat izvještaj (npr. stara veza): prvi u katalogu
                if :P371_IZV is not null and instr(',{lista_kodova},', ',' || :P371_IZV || ',') = 0 then
                    :P371_IZV := 'sd';
                end if;
                -- period: radna godina do danas; skladište: trenutno skladište ('0' = sva skladišta modula)
                :P371_OD    := nvl(:P371_OD, to_char(to_date('01.01.' || :APP_GODINA, 'DD.MM.YYYY'), 'DD.MM.YYYY'));
                :P371_DO    := nvl(:P371_DO, to_char(least(trunc(sysdate), to_date('31.12.' || :APP_GODINA, 'DD.MM.YYYY')), 'DD.MM.YYYY'));
                :P371_DATUM := nvl(:P371_DATUM, :P371_DO);
                :P371_DANA  := nvl(:P371_DANA, '90');
                :P371_SKLADISTE_ID := nvl(:P371_SKLADISTE_ID, :A_SKLADISTE_ID);
                :P371_NAZIV := {case_naziv};
                -- opis parametara (zaglavlje pri štampi)
                -- (podupiti su u SQL naredbi - u PL/SQL izrazu nisu dozvoljeni, PLS-00405)
                select case when nvl(:P371_SKLADISTE_ID, '0') = '0' then 'sva skladišta modula'
                            else (select max('skladište ' || s.sifra || ' - ' || s.naziv) from skladista s
                                   where s.id = to_number(:P371_SKLADISTE_ID)) end
                       || case when :P371_IZV in ('sd', 'pl') then ' · na dan ' || :P371_DATUM
                               when :P371_IZV in ('km', 'pp', 'dok', 'pmt') then ' · period ' || :P371_OD || ' - ' || :P371_DO end
                       || case when :P371_ARTIKL is not null and :P371_IZV not in ('dok', 'dc') then
                                   (select max(' · artikal ' || a.sifra || ' ' || a.naziv) from sec_stavke a
                                     where a.id = to_number(:P371_ARTIKL)) end
                  into :P371_PARAMETRI
                  from dual;
                ```
        }}
        execution {{
            sequence: 10
            point: beforeHeader
        }}
    )

    process novi-izvjestaj (
        name: Novi izvještaj - parametri ispočetka
        type: executeCode
        source {{
            plsqlCode:
                ```plsql
                -- izbor drugog izvještaja: filteri prethodnog se ne prenose (trenutno skladište, bez artikla)
                :P371_SKLADISTE_ID := :A_SKLADISTE_ID;
                :P371_ARTIKL := null;
                :P371_MT     := null;
                :P371_VRSTA  := null;
                ```
        }}
        execution {{
            sequence: 5
        }}
        serverSideCondition {{
            type: requestIsContainedInValue
            value: IZV
        }}
    )

    branch (
        name: Ostani na izvještaju
        execution {{
            sequence: 10
        }}
        behavior {{
            target: {{
                page: 371
            }}
        }}
    )

)
"""
open(OUT, 'w', encoding='utf-8').write(page)
print("written", len(page))
