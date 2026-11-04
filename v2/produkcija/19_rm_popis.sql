/*
================================================================================
  ESSCOM Finansije - 19_rm_popis.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 11_rm_model.sql, 12_rm_pkg.sql i 13_rm_views.sql
  (prije toga 16_rm_vrste_izlaz.sql kao SIF - vrste RAS, RIV, RIM)

  R17 (03.11.2026): POPIS SKLADIŠTA (nova forma, stranice 364 / 365 / 366)
    - popis se otvara na datum za jedno, više ili sva skladišta modula kojima korisnik
      ima pristup, a koja na taj datum imaju knjigovodstveno stanje
    - knjigovodstveno stanje = svi ulazi (zaključani ili ne) - zaključani izlazi do datuma
      popisa (uključivo); stavke popisa se kreiraju sa tim količinama
    - knjigovođa unosi popisanu količinu (može dodati i artikal koji nije na stanju)
    - na skladištu može biti samo jedan aktivan (nezaključan) popis
    - zaključavanje: razlike -> automatski dokumenti
        RIV  Razlika inventure - višak  (popisano > knjigovodstveno; ulaz u pripremi,
             cijenu unosi knjigovođa na dokumentu i zaključuje ga)
        RIM  Razlika inventure - manjak (popisano < knjigovodstveno; izlaz po prosječnoj
             cijeni na datum popisa, odmah zaključen)
      dokumenti nose datum popisa i vezu OPERACIJE.POPIS_ID; količine se ne mijenjaju ručno
    - poslije popisa nijedan dokument skladišta ne može imati datum prije datuma popisa
      (provjera je u RM_DOKUMENT_PKG)
    - administrator može otključati popis dok dokument viška nije zaključen i dok nema
      kasnijeg popisa: dokumenti razlike se brišu

  R18 (04.11.2026): POPIS SITNOG INVENTARA KOD ZADUŽENOG RADNIKA (stranice 367 / 368 / 369)
    - POPISI.VRSTA = 'I', RADNIK_ID = radnik, bez skladišta; broj POPSI-000001 po firmi i godini
    - knjigovodstveno = zaduženje radnika na datum popisa (zaključeni dokumenti: ISI, PSI, RSR, RUV, RUM);
      artikli koji se prate po serijskom broju - jedan red po serijskom broju (količina 1)
    - jedan otvoren popis SI po radniku; zaključavanje: razlike -> RUM / RUV (razlika inventure sitnog
      inventara u upotrebi - manjak / višak), oba zaključena, sa serijskim brojevima, bez skladišta

  Skripta se može pokretati više puta.
================================================================================
*/
set define off

-- 1) brojač popisa: vrsta POP (ako postoji u firmi) ---------------------------------------
declare
    l_novih number := 0;
begin
    for v in (select vd.id, vd.ooj_id
                from sif.vrste_dokumenata vd
               where upper(vd.sifra) = 'POP'
                 and vd.ooj_id is not null
                 and vd.valid = 'Y') loop
        for g in 2024 .. extract(year from sysdate) loop
            if not core.protokoli_pkg.check_brojac(v.ooj_id, 'pop', g) then
                begin
                    core.protokoli_pkg.insert_protokol(
                        p_ooj_id          => v.ooj_id,
                        p_vrsta_naloga_id => v.id,
                        p_godina          => g,
                        p_prefix          => 'POP-',
                        p_broj            => 0,
                        p_sufix           => null,
                        p_duzina          => 6,
                        p_auto_restart    => 'Y'
                    );
                    l_novih := l_novih + 1;
                exception
                    when others then
                        null;      -- vrsta za drugu namjenu / postojeći brojač: popis koristi rezervnu numeraciju
                end;
            end if;
        end loop;
    end loop;
    commit;
    dbms_output.put_line('Novi brojači popisa: ' || l_novih);
end;
/

-- 2) paket ---------------------------------------------------------------------------------
create or replace package rm_popis_pkg as

    -- skladište ima knjigovodstveno stanje na datum (bar jedan artikal <> 0): Y / N
    function ima_stanje (p_skladiste_id in number, p_datum in date) return varchar2;
    -- broj artikala sa knjigovodstvenim stanjem <> 0 na datum
    function broj_artikala (p_skladiste_id in number, p_datum in date) return number;
    -- zašto se na skladištu ne može otvoriti popis na datum (null = može)
    function razlog_zabrane_kreiranja (p_skladiste_id in number, p_datum in date) return varchar2;

    -- otvaranje popisa: p_skladista = id-jevi razdvojeni dvotačkom (":12:15:"), 'SVA' = sva skladišta
    -- modula kojima korisnik ima pristup i koja imaju stanje. Vraća poruku (kreirani popisi).
    -- p_prvi_id: id prvog kreiranog popisa (za otvaranje)
    function kreiraj (
        p_ooj_id      in number,
        p_godina      in number,
        p_datum       in date,
        p_skladista   in varchar2,
        p_opis        in varchar2,
        p_korisnik_id in number,
        p_modul       in varchar2,
        p_prvi_id     out number
    ) return varchar2;

    -- R18 popis sitnog inventara kod radnika
    function je_si_popis (p_id in number) return varchar2;                 -- Y / N
    function si_broj_artikala (p_ooj_id in number, p_radnik_id in number, p_datum in date) return number;
    function si_razlog_zabrane_kreiranja (p_ooj_id in number, p_radnik_id in number, p_datum in date) return varchar2;
    -- p_radnici = id-jevi radnika ":3:7:" ili 'SVI' (svi radnici firme sa zaduženjem)
    function kreiraj_si (
        p_ooj_id      in number,
        p_godina      in number,
        p_datum       in date,
        p_radnici     in varchar2,
        p_opis        in varchar2,
        p_prvi_id     out number
    ) return varchar2;

    -- status
    function razlog_zabrane (p_id in number) return varchar2;              -- null = popis se može mijenjati
    function izmjenjiv (p_id in number) return varchar2;                   -- Y / N

    -- stavke: popisana količina (null = nije unesena); novi red = artikal koji nije na stanju
    procedure snimi_stavku (
        p_id             in out number,
        p_popis_id       in number,
        p_stavka_id      in number,
        p_popis_kolicina in number,
        p_opis           in varchar2 default null,
        p_serijski_broj  in varchar2 default null    -- popis SI: serijski broj (artikal koji se prati po SB)
    );
    procedure obrisi_stavku (p_id in number);
    -- prepiše knjigovodstveno stanje u popisanu količinu gdje nije unesena; vraća poruku
    function popuni (p_id in number) return varchar2;
    -- ponovo izračuna knjigovodstveno stanje (doda nove artikle, ukloni nepopisane sa stanjem 0); poruka
    function osvjezi (p_id in number) return varchar2;
    procedure snimi_zaglavlje (p_id in number, p_opis in varchar2);
    procedure obrisi (p_id in number);

    -- zaključavanje: provjera (poruka ili null) i zaključavanje sa dokumentima razlike (poruka)
    function provjeri_zakljucavanje (p_id in number) return varchar2;
    function zakljucaj (p_id in number) return varchar2;
    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2;
    procedure otkljucaj (p_id in number, p_admin in varchar2);

end rm_popis_pkg;
/

create or replace package body rm_popis_pkg as

    c_modul constant varchar2(10) := 'MAT';         -- modul vrsta dokumenata skladišta (SIF.ACC_MODULI)

    -- R18 popis sitnog inventara: definisane na kraju paketa
    function upisi_stanje_si (p_popis_id in number, p_samo_provjera in varchar2 default 'N') return number;
    procedure snimi_stavku_si (p_id in out number, p_popis_id in number, p_stavka_id in number,
                               p_popis_kolicina in number, p_opis in varchar2, p_sb in varchar2);
    function provjeri_zakljucavanje_si (p_id in number) return varchar2;
    function zakljucaj_si (p_id in number) return varchar2;
    function si_razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2;

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20201, 'Greška CORP-RM: ' || p_tekst);
    end greska;

    function fkol (p_n in number) return varchar2 is
    begin
        return rtrim(rtrim(to_char(nvl(p_n, 0), 'FM999G999G990D999'), '0'), '.,');
    end fkol;

    function skl_naziv (p_skladiste_id in number) return varchar2 is
        l_s varchar2(400);
    begin
        select max(sifra || ' - ' || naziv) into l_s from skladista where id = p_skladiste_id;
        return l_s;
    end skl_naziv;

    --------------------------------------------------------------------- knjigovodstveno stanje
    -- artikli skladišta sa knjigovodstvenim stanjem na datum (svi ulazi - zaključani izlazi)
    function broj_artikala (p_skladiste_id in number, p_datum in date) return number is
        l_n number;
    begin
        select count(*) into l_n
          from (select os.stavka_id
                  from operacija_stavke os
                  join operacije o on o.id = os.operacija_id
                  left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                  left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
                 cross apply (select coalesce(rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                                     nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                                from dual) k
                 where o.skladiste_id = p_skladiste_id
                   and nvl(o.stornirano, 'N') = 'N'
                   and o.storniran_id is null
                   and o.datum < trunc(p_datum) + 1
                 group by os.stavka_id
                having sum(case when k.tk = 'U' then os.kolicina
                                when k.tk = 'I' and k.st = 'Z' then -os.kolicina
                                else 0 end) <> 0);
        return l_n;
    end broj_artikala;

    function ima_stanje (p_skladiste_id in number, p_datum in date) return varchar2 is
    begin
        return case when broj_artikala(p_skladiste_id, p_datum) > 0 then 'Y' else 'N' end;
    end ima_stanje;

    -- upis / osvježavanje stavki popisa sa knjigovodstvenim stanjem; vraća broj promjena
    function upisi_stanje (p_popis_id in number) return number is
        l_skl   number;
        l_datum date;
        l_rb    number;
        l_pr    number := 0;
    begin
        if je_si_popis(p_popis_id) = 'Y' then
            return upisi_stanje_si(p_popis_id);
        end if;
        select skladiste_id, trunc(datum) into l_skl, l_datum from popisi where id = p_popis_id;
        select nvl(max(redni_broj), 0) into l_rb from popis_stavke where popis_id = p_popis_id;
        for s in (select x.stavka_id, x.kol, ps.id as ps_id, ps.prethodna_kolicina as stara
                    from (select os.stavka_id,
                                 sum(case when k.tk = 'U' then os.kolicina
                                          when k.tk = 'I' and k.st = 'Z' then -os.kolicina
                                          else 0 end) as kol
                            from operacija_stavke os
                            join operacije o on o.id = os.operacija_id
                            left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                            left join sif.acc_tipovi_kretanja_robe t on t.id = o.tip_kretanja_id
                           cross apply (select coalesce(rm_dokument_pkg.tip_kretanja(vd.sifra), t.tip_kretanja) as tk,
                                               nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) as st
                                          from dual) k
                           where o.skladiste_id = l_skl
                             and nvl(o.stornirano, 'N') = 'N'
                             and o.storniran_id is null
                             and o.datum < l_datum + 1
                           group by os.stavka_id) x
                    join sec_stavke a on a.id = x.stavka_id
                    left join popis_stavke ps on ps.popis_id = p_popis_id and ps.stavka_id = x.stavka_id
                   where x.kol <> 0 or ps.id is not null
                   order by a.sifra) loop
            if s.ps_id is null then
                l_rb := l_rb + 1;
                insert into popis_stavke (popis_id, stavka_id, prethodna_kolicina, popis_kolicina, redni_broj, cijena, valid)
                values (p_popis_id, s.stavka_id, s.kol, null, l_rb,
                        rm_dokument_pkg.prosjecna_cijena(l_skl, s.stavka_id, l_datum), 'Y');
                l_pr := l_pr + 1;
            elsif nvl(s.stara, 0) <> s.kol then
                update popis_stavke
                   set prethodna_kolicina = s.kol,
                       cijena = rm_dokument_pkg.prosjecna_cijena(l_skl, s.stavka_id, l_datum)
                 where id = s.ps_id;
                l_pr := l_pr + 1;
            end if;
        end loop;
        -- artikli kojih više nema na stanju, a nisu popisani (i nisu ručno dodati sa količinom)
        for s in (select ps.id, ps.stavka_id from popis_stavke ps
                   where ps.popis_id = p_popis_id and ps.popis_kolicina is null and nvl(ps.prethodna_kolicina, 0) <> 0) loop
            if rm_dokument_pkg.knjigovodstveno(l_skl, s.stavka_id, l_datum) = 0 then
                delete from popis_stavke where id = s.id;
                l_pr := l_pr + 1;
            end if;
        end loop;
        return l_pr;
    end upisi_stanje;

    --------------------------------------------------------------------- otvaranje popisa
    function razlog_zabrane_kreiranja (p_skladiste_id in number, p_datum in date) return varchar2 is
        l_r varchar2(4000);
    begin
        for p in (select naziv, datum from popisi
                   where skladiste_id = p_skladiste_id and valid = 'Y' and nvl(zakljucano, 'N') = 'N' and nvl(vrsta, 'S') = 'S'
                   order by id) loop
            return 'Na skladištu je već otvoren popis ' || p.naziv || ' (' || to_char(p.datum, 'DD.MM.YYYY')
                   || ') - zaključite ga ili obrišite.';
        end loop;
        l_r := rm_dokument_pkg.popis_blokada(p_skladiste_id, p_datum);
        if l_r is not null then
            return l_r || ' Novi popis ne može imati datum prije posljednjeg popisa.';
        end if;
        if ima_stanje(p_skladiste_id, p_datum) = 'N' then
            return 'Skladište nema knjigovodstveno stanje na datum ' || to_char(p_datum, 'DD.MM.YYYY') || '.';
        end if;
        return null;
    end razlog_zabrane_kreiranja;

    function kreiraj (
        p_ooj_id      in number,
        p_godina      in number,
        p_datum       in date,
        p_skladista   in varchar2,
        p_opis        in varchar2,
        p_korisnik_id in number,
        p_modul       in varchar2,
        p_prvi_id     out number
    ) return varchar2 is
        l_datum  date := trunc(p_datum);
        l_zak    date;
        l_lista  apex_t_varchar2;
        l_skl    number;
        l_r      varchar2(4000);
        l_greske varchar2(4000);
        l_poruka varchar2(4000);
        l_id     number;
        l_broj   number;
        l_naziv  varchar2(255);
        l_n      number := 0;
        l_sva    boolean := upper(trim(p_skladista)) = 'SVA';
        type t_ids is table of number;
        l_ids    t_ids := t_ids();
    begin
        if l_datum is null then
            greska('Izaberite datum popisa.');
        end if;
        if extract(year from l_datum) <> p_godina then
            greska('Datum popisa mora biti u ' || p_godina || '. godini. Za drugu godinu promijenite radnu godinu.');
        end if;
        if l_datum > trunc(sysdate) then
            greska('Datum popisa ne može biti u budućnosti.');
        end if;
        select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
        if l_zak is not null and l_datum < trunc(l_zak) then
            greska('Datum popisa je u zaključanom periodu (zaključano do ' || to_char(l_zak, 'DD.MM.YYYY') || ').');
        end if;

        -- skladišta: dozvoljena korisniku, u modulu, aktivna
        if l_sva then
            select to_char(s.id) bulk collect into l_lista
              from skladista s
              join skladiste_korisnici k on k.skladiste_id = s.id and k.korisnik_id = p_korisnik_id
             where s.ooj_id = p_ooj_id and s.valid = 'Y'
               and nvl(rm_skladiste_pkg.modul(s.id), 'MAT') = nvl(upper(p_modul), 'MAT')
               and rm_popis_pkg.razlog_zabrane_kreiranja(s.id, l_datum) is null
             order by s.sifra;
            if l_lista.count = 0 then
                greska('Nijedno skladište kojem imate pristup nema knjigovodstveno stanje na datum '
                       || to_char(l_datum, 'DD.MM.YYYY') || ' bez otvorenog popisa.');
            end if;
        else
            l_lista := apex_string.split(trim(both ':' from p_skladista), ':');
            if l_lista.count = 0 or trim(l_lista(1)) is null then
                greska('Izaberite bar jedno skladište.');
            end if;
        end if;

        -- provjera svih izabranih skladišta prije kreiranja (sve ili ništa)
        for i in 1 .. l_lista.count loop
            l_skl := to_number(trim(l_lista(i)));
            select count(*) into l_n
              from skladista s
              join skladiste_korisnici k on k.skladiste_id = s.id and k.korisnik_id = p_korisnik_id
             where s.id = l_skl and s.ooj_id = p_ooj_id and s.valid = 'Y'
               and nvl(rm_skladiste_pkg.modul(s.id), 'MAT') = nvl(upper(p_modul), 'MAT');
            if l_n = 0 then
                l_r := 'nemate pristup skladištu ili ono nije u ovom modulu.';
            else
                l_r := razlog_zabrane_kreiranja(l_skl, l_datum);
            end if;
            if l_r is not null then
                l_greske := substr(l_greske || case when l_greske is not null then ' ' end
                                   || nvl(skl_naziv(l_skl), 'Skladište ' || l_skl) || ': ' || l_r, 1, 3500);
            end if;
        end loop;
        if l_greske is not null then
            greska('Popis nije otvoren. ' || l_greske);
        end if;

        for i in 1 .. l_lista.count loop
            l_skl := to_number(trim(l_lista(i)));
            -- broj po skladištu i godini (format iz brojača POP, ako postoji; inače POP-000001)
            rm_dokument_pkg.novi_broj(p_ooj_id, p_godina, 'pop', l_skl, l_broj, l_naziv);
            insert into popisi (ooj_id, godina, datum, opis, valid, skladiste_id, zakljucano, naziv, broj)
            values (p_ooj_id, p_godina, l_datum, substr(trim(p_opis), 1, 255), 'Y', l_skl, 'N', l_naziv, l_broj)
            returning id into l_id;
            l_n := upisi_stanje(l_id);
            l_ids.extend;
            l_ids(l_ids.count) := l_id;
            l_poruka := substr(l_poruka || case when l_poruka is not null then ', ' end
                               || l_naziv || ' (' || skl_naziv(l_skl) || ', ' || broj_artikala(l_skl, l_datum) || ' art.)', 1, 3500);
        end loop;
        p_prvi_id := l_ids(1);
        return case when l_ids.count = 1 then 'Otvoren je popis ' else 'Otvoreni su popisi (' || l_ids.count || '): ' end
               || l_poruka || '. Unesite popisane količine.';
    end kreiraj;

    --------------------------------------------------------------------- status i stavke
    function razlog_zabrane (p_id in number) return varchar2 is
    begin
        for p in (select zakljucano, datum, ooj_id, valid from popisi where id = p_id) loop
            if p.valid <> 'Y' then
                return 'Popis nije aktivan.';
            end if;
            if nvl(p.zakljucano, 'N') = 'Y' then
                return 'Popis je zaključen - razlike su evidentirane dokumentima iz popisa.';
            end if;
            for o in (select period_zakljucan_do from core.ooj where id = p.ooj_id) loop
                if o.period_zakljucan_do is not null and trunc(p.datum) < trunc(o.period_zakljucan_do) then
                    return 'Popis je u zaključanom periodu.';
                end if;
            end loop;
            return null;
        end loop;
        return 'Popis ne postoji.';
    end razlog_zabrane;

    function izmjenjiv (p_id in number) return varchar2 is
    begin
        return case when razlog_zabrane(p_id) is null then 'Y' else 'N' end;
    end izmjenjiv;

    procedure provjeri_izmjenu (p_id in number) is
        l_r varchar2(4000) := razlog_zabrane(p_id);
    begin
        if l_r is not null then
            greska(l_r || ' Izmjene nisu moguće.');
        end if;
    end provjeri_izmjenu;

    procedure snimi_stavku (
        p_id             in out number,
        p_popis_id       in number,
        p_stavka_id      in number,
        p_popis_kolicina in number,
        p_opis           in varchar2 default null,
        p_serijski_broj  in varchar2 default null
    ) is
        l_ooj   number;
        l_skl   number;
        l_datum date;
        l_tip   number;
        l_sb    varchar2(1);
        l_valid varchar2(1);
        l_n     number;
        l_stara number;
        l_rb    number;
    begin
        provjeri_izmjenu(p_popis_id);
        if p_popis_kolicina is not null and p_popis_kolicina < 0 then
            greska('Popisana količina ne može biti negativna.');
        end if;
        if je_si_popis(p_popis_id) = 'Y' then
            snimi_stavku_si(p_id, p_popis_id, p_stavka_id, p_popis_kolicina, p_opis, trim(p_serijski_broj));
            return;
        end if;
        select ooj_id, skladiste_id, trunc(datum) into l_ooj, l_skl, l_datum from popisi where id = p_popis_id;
        if p_id is not null then
            select stavka_id into l_stara from popis_stavke where id = p_id and popis_id = p_popis_id;
            if p_stavka_id is not null and p_stavka_id <> l_stara then
                greska('Artikal stavke popisa se ne mijenja. Obrišite ručno dodat red i dodajte novi.');
            end if;
        end if;
        if p_stavka_id is null then
            greska('Izaberite artikal.');
        end if;
        begin
            select tip_stavke_id, case when serijski_broj = 'Y' then 'Y' else 'N' end, valid
              into l_tip, l_sb, l_valid
              from sec_stavke where id = p_stavka_id and ooj_id = l_ooj;
        exception
            when no_data_found then
                greska('Artikal ne pripada firmi.');
        end;
        if l_sb = 'Y' and p_popis_kolicina is not null and p_popis_kolicina <> trunc(p_popis_kolicina) then
            greska('Artikal se prati po serijskom broju - popisana količina mora biti cijeli broj.');
        end if;
        if p_id is null then
            if l_valid <> 'Y' then
                greska('Artikal nije aktivan.');
            end if;
            if l_tip = 3 then
                greska('Usluga se ne vodi na skladištu.');
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_popis_id and stavka_id = p_stavka_id;
            if l_n > 0 then
                greska('Artikal je već u popisu - unesite popisanu količinu na postojećem redu.');
            end if;
            select nvl(max(redni_broj), 0) + 1 into l_rb from popis_stavke where popis_id = p_popis_id;
            insert into popis_stavke (popis_id, stavka_id, prethodna_kolicina, popis_kolicina, redni_broj, cijena, opis, valid)
            values (p_popis_id, p_stavka_id, rm_dokument_pkg.knjigovodstveno(l_skl, p_stavka_id, l_datum), p_popis_kolicina,
                    l_rb, rm_dokument_pkg.prosjecna_cijena(l_skl, p_stavka_id, l_datum), substr(p_opis, 1, 500), 'Y')
            returning id into p_id;
        else
            update popis_stavke
               set popis_kolicina = p_popis_kolicina,
                   opis = substr(p_opis, 1, 500)
             where id = p_id;
        end if;
    end snimi_stavku;

    procedure obrisi_stavku (p_id in number) is
        l_popis number;
        l_pret  number;
    begin
        select popis_id, prethodna_kolicina into l_popis, l_pret from popis_stavke where id = p_id;
        provjeri_izmjenu(l_popis);
        if nvl(l_pret, 0) <> 0 then
            greska('Artikal sa knjigovodstvenim stanjem se ne briše iz popisa - ako ga nema, unesite popisanu količinu 0.');
        end if;
        delete from popis_stavke where id = p_id;
    exception
        when no_data_found then
            null;
    end obrisi_stavku;

    function popuni (p_id in number) return varchar2 is
        l_n number;
    begin
        provjeri_izmjenu(p_id);
        update popis_stavke set popis_kolicina = greatest(nvl(prethodna_kolicina, 0), 0)
         where popis_id = p_id and popis_kolicina is null;
        l_n := sql%rowcount;
        return case when l_n = 0 then 'Sve popisane količine su već unesene.'
                    else 'Knjigovodstveno stanje je prepisano u popisanu količinu za ' || l_n || ' artikala. Ispravite artikle sa razlikom.' end;
    end popuni;

    function osvjezi (p_id in number) return varchar2 is
        l_n number;
    begin
        provjeri_izmjenu(p_id);
        l_n := upisi_stanje(p_id);
        return case when l_n = 0 then 'Knjigovodstveno stanje je nepromijenjeno.'
                    else 'Knjigovodstveno stanje je osvježeno (' || l_n || ' promjena). Popisane količine su sačuvane.' end;
    end osvjezi;

    procedure snimi_zaglavlje (p_id in number, p_opis in varchar2) is
    begin
        provjeri_izmjenu(p_id);
        update popisi set opis = substr(trim(p_opis), 1, 255) where id = p_id;
    end snimi_zaglavlje;

    procedure obrisi (p_id in number) is
    begin
        provjeri_izmjenu(p_id);
        delete from popis_stavke where popis_id = p_id;
        delete from popisi where id = p_id;
    end obrisi;

    --------------------------------------------------------------------- zaključavanje
    function vrsta_id (p_ooj_id in number, p_sifra in varchar2) return number is
        l_id number;
    begin
        select max(vd.id) into l_id
          from sif.vrste_dokumenata vd
          join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = c_modul
         where vd.ooj_id = p_ooj_id and upper(vd.sifra) = p_sifra and vd.valid = 'Y';
        return l_id;
    end vrsta_id;

    function provjeri_zakljucavanje (p_id in number) return varchar2 is
        l_r     varchar2(4000) := razlog_zabrane(p_id);
        l_n     number;
        l_kol   number;
        l_lista varchar2(1000);
    begin
        if l_r is not null then
            return l_r;
        end if;
        if je_si_popis(p_id) = 'Y' then
            return provjeri_zakljucavanje_si(p_id);
        end if;
        for p in (select * from popisi where id = p_id) loop
            select count(*) into l_n from popis_stavke where popis_id = p_id;
            if l_n = 0 then
                return 'Popis nema stavki.';
            end if;
            -- sve popisane količine
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina is null;
            if l_n > 0 then
                for s in (select a.sifra, a.naziv from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                           where ps.popis_id = p_id and ps.popis_kolicina is null order by ps.redni_broj fetch first 1 rows only) loop
                    return 'Popisana količina nije unesena za ' || l_n || ' artikala (npr. ' || s.sifra || ' ' || s.naziv
                           || '). Unesite količine ili prepišite knjigovodstveno stanje.';
                end loop;
            end if;
            -- knjigovodstveno stanje se nije promijenilo od otvaranja (ili posljednjeg osvježavanja)
            for s in (select ps.stavka_id, ps.prethodna_kolicina, a.sifra, a.naziv
                        from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                       where ps.popis_id = p_id order by ps.redni_broj) loop
                l_kol := rm_dokument_pkg.knjigovodstveno(p.skladiste_id, s.stavka_id, trunc(p.datum));
                if l_kol <> nvl(s.prethodna_kolicina, 0) then
                    return 'Knjigovodstveno stanje se promijenilo (artikal ' || s.sifra || ' ' || s.naziv || ': u popisu '
                           || fkol(s.prethodna_kolicina) || ', sada ' || fkol(l_kol) || '). Osvježite popis pa ga zaključite.';
                end if;
            end loop;
            select count(*) into l_n from popis_stavke ps where ps.popis_id = p_id and nvl(ps.prethodna_kolicina, 0) <> 0;
            if broj_artikala(p.skladiste_id, p.datum) > l_n then
                return 'Na skladištu su u međuvremenu evidentirani novi artikli do datuma popisa. Osvježite popis pa ga zaključite.';
            end if;
            -- izlazi u pripremi do datuma popisa poslije zaključavanja se više ne mogu zaključiti
            select listagg(o.naziv, ', ') within group (order by o.datum, o.id), count(*)
              into l_lista, l_n
              from (select o.naziv, o.datum, o.id
                      from operacije o
                      left join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                     where o.skladiste_id = p.skladiste_id
                       and o.datum < trunc(p.datum) + 1
                       and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'P'
                       and nvl(o.stornirano, 'N') = 'N' and o.storniran_id is null
                       and o.popis_id is null
                       and rm_dokument_pkg.tip_kretanja(vd.sifra) = 'I'
                     order by o.datum, o.id
                     fetch first 5 rows only) o;
            if l_n > 0 then
                return 'Na skladištu postoje izlazni dokumenti u pripremi do datuma popisa (' || l_lista
                       || '). Obrišite ih (ili zaključite one sa datumom popisa), osvježite popis pa ga zaključite.';
            end if;
            -- manjak: mora biti na obrađenom stanju i imati prosječnu cijenu
            for s in (select ps.stavka_id, a.sifra, a.naziv, ps.prethodna_kolicina - ps.popis_kolicina as manjak
                        from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                       where ps.popis_id = p_id and ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0)
                       order by ps.redni_broj) loop
                l_kol := rm_dokument_pkg.obradjeno(p.skladiste_id, s.stavka_id, trunc(p.datum));
                if s.manjak > l_kol then
                    return 'Artikal ' || s.sifra || ' ' || s.naziv || ': manjak ' || fkol(s.manjak) || ', a zaključeno (obrađeno) stanje na datum popisa je '
                           || fkol(l_kol) || '. Prvo zaključite prijeme (kalkulacije) do datuma popisa.';
                end if;
                l_kol := rm_dokument_pkg.raspolozivo(p.skladiste_id, s.stavka_id, null);
                if s.manjak > l_kol then
                    return 'Artikal ' || s.sifra || ' ' || s.naziv || ': manjak ' || fkol(s.manjak) || ', a ukupno raspoloživo na skladištu je '
                           || fkol(l_kol) || ' (kasniji izlazi).';
                end if;
                if nvl(rm_dokument_pkg.prosjecna_cijena(p.skladiste_id, s.stavka_id, trunc(p.datum)), 0) <= 0 then
                    return 'Artikal ' || s.sifra || ' ' || s.naziv || ': nema prosječne nabavne cijene na datum popisa - manjak se ne može knjižiti.';
                end if;
            end loop;
            -- vrste i brojači dokumenata razlike
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina > nvl(prethodna_kolicina, 0);
            if l_n > 0 then
                if vrsta_id(p.ooj_id, 'RIV') is null then
                    return 'Firma nema vrstu dokumenta RIV (Razlika inventure - višak). Pokrenite skriptu 16_rm_vrste_izlaz.sql.';
                end if;
                if not core.protokoli_pkg.check_brojac(p.ooj_id, 'riv', p.godina) then
                    return 'Nije definisan brojač za vrstu dokumenta RIV u ' || p.godina || '. godini.';
                end if;
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina < nvl(prethodna_kolicina, 0);
            if l_n > 0 then
                if vrsta_id(p.ooj_id, 'RIM') is null then
                    return 'Firma nema vrstu dokumenta RIM (Razlika inventure - manjak). Pokrenite skriptu 16_rm_vrste_izlaz.sql.';
                end if;
                if not core.protokoli_pkg.check_brojac(p.ooj_id, 'rim', p.godina) then
                    return 'Nije definisan brojač za vrstu dokumenta RIM u ' || p.godina || '. godini.';
                end if;
            end if;
            return null;
        end loop;
        return 'Popis ne postoji.';
    end provjeri_zakljucavanje;

    -- dokument razlike (RIV / RIM) sa stavkama; vraća naziv
    function napravi_dokument (p_popis in popisi%rowtype, p_sifra in varchar2) return varchar2 is
        l_broj  number;
        l_naziv varchar2(255);
        l_id    number;
        l_oj    number;
        l_rb    number := 0;
        l_n     number := 0;
        l_vrsta number := vrsta_id(p_popis.ooj_id, p_sifra);   -- privatna funkcija: ne može se zvati u SQL-u
    begin
        select oj_id into l_oj from skladista where id = p_popis.skladiste_id;
        -- broj po skladištu (format iz brojača vrste)
        rm_dokument_pkg.novi_broj(p_popis.ooj_id, p_popis.godina, lower(p_sifra), p_popis.skladiste_id, l_broj, l_naziv);
        insert into operacije (
            ooj_id, godina, vrsta_dokumenta_id, skladiste_id, oj_id, datum, opis, broj, naziv,
            status, zakljucano, stornirano, popis_id
        ) values (
            p_popis.ooj_id, p_popis.godina, l_vrsta, p_popis.skladiste_id, l_oj, trunc(p_popis.datum),
            case p_sifra when 'RIV' then 'Višak' else 'Manjak' end || ' utvrđen popisom ' || p_popis.naziv,
            l_broj, l_naziv,
            case p_sifra when 'RIM' then 'Z' else 'P' end, case p_sifra when 'RIM' then 'Y' else 'N' end, 'N', p_popis.id
        ) returning id into l_id;
        for s in (select ps.stavka_id,
                         case when p_sifra = 'RIV' then ps.popis_kolicina - nvl(ps.prethodna_kolicina, 0)
                              else nvl(ps.prethodna_kolicina, 0) - ps.popis_kolicina end as kol
                    from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                   where ps.popis_id = p_popis.id
                     and ((p_sifra = 'RIV' and ps.popis_kolicina > nvl(ps.prethodna_kolicina, 0))
                       or (p_sifra = 'RIM' and ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0)))
                   order by ps.redni_broj, a.sifra) loop
            l_rb := l_rb + 1;
            insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, redni_broj)
            values (l_id, s.stavka_id, s.kol,
                    case when p_sifra = 'RIM'
                         then round(rm_dokument_pkg.prosjecna_cijena(p_popis.skladiste_id, s.stavka_id, trunc(p_popis.datum)), 4) end,
                    l_rb);
            l_n := l_n + 1;
        end loop;
        return l_naziv || case p_sifra when 'RIV' then ' (višak, ' else ' (manjak, ' end || l_n
               || case when l_n = 1 then ' artikal' else ' artikala' end
               || case p_sifra when 'RIV' then ' - unesite cijene na dokumentu i zaključite ga)' else ', zaključen po prosječnoj cijeni)' end;
    end napravi_dokument;

    function zakljucaj (p_id in number) return varchar2 is
        l_r   varchar2(4000) := provjeri_zakljucavanje(p_id);
        l_p   popisi%rowtype;
        l_dok varchar2(4000);
        l_n   number;
    begin
        if l_r is not null then
            greska(l_r);
        end if;
        if je_si_popis(p_id) = 'Y' then
            return zakljucaj_si(p_id);
        end if;
        select * into l_p from popisi where id = p_id for update;
        select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina > nvl(prethodna_kolicina, 0);
        if l_n > 0 then
            l_dok := napravi_dokument(l_p, 'RIV');
        end if;
        select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina < nvl(prethodna_kolicina, 0);
        if l_n > 0 then
            l_dok := l_dok || case when l_dok is not null then '; ' end || napravi_dokument(l_p, 'RIM');
        end if;
        update popisi set zakljucano = 'Y' where id = p_id;
        return case when l_dok is null then 'Popis je zaključen. Nema razlika između knjigovodstvenog i popisanog stanja - dokumenti nisu kreirani.'
                    else 'Popis je zaključen. Kreirani dokumenti: ' || l_dok || '.' end;
    end zakljucaj;

    function razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2 is
        l_s varchar2(255);
    begin
        if je_si_popis(p_id) = 'Y' then
            return si_razlog_zabrane_otkljucavanja(p_id, p_admin);
        end if;
        for p in (select * from popisi where id = p_id) loop
            if nvl(p.zakljucano, 'N') <> 'Y' then
                return 'Popis nije zaključen.';
            end if;
            if nvl(p_admin, 'N') <> 'Y' then
                return 'Zaključan popis može otključati samo administrator.';
            end if;
            select max(naziv) into l_s from popisi
             where skladiste_id = p.skladiste_id and valid = 'Y' and id <> p.id
               and (trunc(datum) > trunc(p.datum) or nvl(zakljucano, 'N') = 'N');
            if l_s is not null then
                return 'Na skladištu postoji kasniji ili otvoren popis (' || l_s || ') - ovaj popis se ne može otključati.';
            end if;
            select max(naziv) into l_s from operacije
             where popis_id = p.id
               and ((upper(rm_dokument_pkg.vrsta_sifra(vrsta_dokumenta_id)) = 'RIV' and nvl(status, 'P') = 'Z')
                    or glavna_knjiga_id is not null or nvl(stornirano, 'N') = 'Y');
            if l_s is not null then
                return 'Dokument razlike ' || l_s || ' je zaključen ili proknjižen - popis se ne može otključati.';
            end if;
            for o in (select period_zakljucan_do from core.ooj where id = p.ooj_id) loop
                if o.period_zakljucan_do is not null and trunc(p.datum) < trunc(o.period_zakljucan_do) then
                    return 'Popis je u zaključanom periodu.';
                end if;
            end loop;
            return null;
        end loop;
        return 'Popis ne postoji.';
    end razlog_zabrane_otkljucavanja;

    procedure otkljucaj (p_id in number, p_admin in varchar2) is
        l_r varchar2(4000) := razlog_zabrane_otkljucavanja(p_id, p_admin);
    begin
        if l_r is not null then
            greska(l_r);
        end if;
        -- dokumenti razlike inventure se brišu (popis se ponovo zaključava sa novim dokumentima)
        delete from operacija_stavke_sb
         where operacija_stavka_id in (select os.id from operacija_stavke os join operacije o on o.id = os.operacija_id
                                        where o.popis_id = p_id);
        delete from operacija_stavke where operacija_id in (select id from operacije where popis_id = p_id);
        delete from operacije where popis_id = p_id;
        update popisi set zakljucano = 'N' where id = p_id;
    end otkljucaj;

    --------------------------------------------------------------------- R18 popis sitnog inventara kod radnika
    function je_si_popis (p_id in number) return varchar2 is
        l_v varchar2(1);
    begin
        select max(nvl(vrsta, 'S')) into l_v from popisi where id = p_id;
        return case when l_v = 'I' then 'Y' else 'N' end;
    end je_si_popis;

    function radnik_naziv (p_radnik_id in number) return varchar2 is
        l_s varchar2(400);
    begin
        select max(ime || ' ' || prezime) into l_s from sif.acc_radnici where id = p_radnik_id;
        return l_s;
    end radnik_naziv;

    -- broj artikala zaduženih kod radnika na datum (samo zaključeni dokumenti)
    function si_broj_artikala (p_ooj_id in number, p_radnik_id in number, p_datum in date) return number is
        l_n number;
    begin
        select count(*) into l_n
          from (select os.stavka_id
                  from operacija_stavke os
                  join operacije o on o.id = os.operacija_id
                  join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                 where o.ooj_id = p_ooj_id
                   and upper(vd.sifra) in ('ISI', 'VSR', 'RUV', 'PSI', 'RSR', 'RUM')
                   and (o.zaduzeni_radnik_id = p_radnik_id or o.radnik_prenos_id = p_radnik_id)
                   and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
                   and nvl(o.stornirano, 'N') = 'N' and o.storniran_id is null
                   and o.datum < trunc(p_datum) + 1
                 group by os.stavka_id
                having sum(case when upper(vd.sifra) in ('ISI', 'VSR', 'RUV') and o.zaduzeni_radnik_id = p_radnik_id then os.kolicina
                                when upper(vd.sifra) = 'PSI' and o.radnik_prenos_id = p_radnik_id then os.kolicina
                                when upper(vd.sifra) in ('PSI', 'RSR', 'RUM') and o.zaduzeni_radnik_id = p_radnik_id then -os.kolicina
                                else 0 end) <> 0);
        return l_n;
    end si_broj_artikala;

    function si_razlog_zabrane_kreiranja (p_ooj_id in number, p_radnik_id in number, p_datum in date) return varchar2 is
        l_r varchar2(4000);
    begin
        for p in (select naziv, datum from popisi
                   where nvl(vrsta, 'S') = 'I' and radnik_id = p_radnik_id and valid = 'Y' and nvl(zakljucano, 'N') = 'N'
                   order by id) loop
            return 'Za radnika je već otvoren popis ' || p.naziv || ' (' || to_char(p.datum, 'DD.MM.YYYY')
                   || ') - zaključite ga ili obrišite.';
        end loop;
        l_r := rm_dokument_pkg.si_popis_blokada(p_radnik_id, p_datum);
        if l_r is not null then
            return l_r || ' Novi popis ne može imati datum prije posljednjeg popisa.';
        end if;
        if si_broj_artikala(p_ooj_id, p_radnik_id, p_datum) = 0 then
            return 'Radnik nema zaduženog sitnog inventara na datum ' || to_char(p_datum, 'DD.MM.YYYY') || '.';
        end if;
        return null;
    end si_razlog_zabrane_kreiranja;

    function kreiraj_si (
        p_ooj_id      in number,
        p_godina      in number,
        p_datum       in date,
        p_radnici     in varchar2,
        p_opis        in varchar2,
        p_prvi_id     out number
    ) return varchar2 is
        l_datum  date := trunc(p_datum);
        l_zak    date;
        l_lista  apex_t_varchar2;
        l_rad    number;
        l_r      varchar2(4000);
        l_greske varchar2(4000);
        l_poruka varchar2(4000);
        l_id     number;
        l_broj   number;
        l_naziv  varchar2(255);
        l_n      number;
        l_cnt    number := 0;
    begin
        if l_datum is null then
            greska('Izaberite datum popisa.');
        end if;
        if extract(year from l_datum) <> p_godina then
            greska('Datum popisa mora biti u ' || p_godina || '. godini. Za drugu godinu promijenite radnu godinu.');
        end if;
        if l_datum > trunc(sysdate) then
            greska('Datum popisa ne može biti u budućnosti.');
        end if;
        select max(period_zakljucan_do) into l_zak from core.ooj where id = p_ooj_id;
        if l_zak is not null and l_datum < trunc(l_zak) then
            greska('Datum popisa je u zaključanom periodu (zaključano do ' || to_char(l_zak, 'DD.MM.YYYY') || ').');
        end if;
        if upper(trim(p_radnici)) = 'SVI' then
            select to_char(r.id) bulk collect into l_lista
              from sif.acc_radnici r
             where r.ooj_id = p_ooj_id and r.valid = 'Y'
               and rm_popis_pkg.si_razlog_zabrane_kreiranja(p_ooj_id, r.id, l_datum) is null
             order by r.prezime, r.ime;
            if l_lista.count = 0 then
                greska('Nijedan radnik nema zaduženog sitnog inventara na datum ' || to_char(l_datum, 'DD.MM.YYYY')
                       || ' bez otvorenog popisa.');
            end if;
        else
            l_lista := apex_string.split(trim(both ':' from p_radnici), ':');
            if l_lista.count = 0 or trim(l_lista(1)) is null then
                greska('Izaberite bar jednog radnika.');
            end if;
        end if;
        -- provjera svih izabranih radnika prije kreiranja (sve ili ništa)
        for i in 1 .. l_lista.count loop
            l_rad := to_number(trim(l_lista(i)));
            select count(*) into l_n from sif.acc_radnici where id = l_rad and ooj_id = p_ooj_id;
            l_r := case when l_n = 0 then 'radnik ne pripada firmi.' else si_razlog_zabrane_kreiranja(p_ooj_id, l_rad, l_datum) end;
            if l_r is not null then
                l_greske := substr(l_greske || case when l_greske is not null then ' ' end
                                   || nvl(radnik_naziv(l_rad), 'Radnik ' || l_rad) || ': ' || l_r, 1, 3500);
            end if;
        end loop;
        if l_greske is not null then
            greska('Popis nije otvoren. ' || l_greske);
        end if;
        for i in 1 .. l_lista.count loop
            l_rad := to_number(trim(l_lista(i)));
            rm_dokument_pkg.novi_broj(p_ooj_id, p_godina, 'popsi', null, l_broj, l_naziv);
            insert into popisi (ooj_id, godina, datum, opis, valid, skladiste_id, zakljucano, naziv, broj, vrsta, radnik_id)
            values (p_ooj_id, p_godina, l_datum, substr(trim(p_opis), 1, 255), 'Y', null, 'N', l_naziv, l_broj, 'I', l_rad)
            returning id into l_id;
            l_n := upisi_stanje_si(l_id);
            if p_prvi_id is null then
                p_prvi_id := l_id;
            end if;
            l_cnt := l_cnt + 1;
            l_poruka := substr(l_poruka || case when l_poruka is not null then ', ' end
                               || l_naziv || ' (' || radnik_naziv(l_rad) || ', '
                               || si_broj_artikala(p_ooj_id, l_rad, l_datum) || ' art.)', 1, 3500);
        end loop;
        return case when l_cnt = 1 then 'Otvoren je popis sitnog inventara '
                    else 'Otvoreni su popisi sitnog inventara (' || l_cnt || '): ' end
               || l_poruka || '. Unesite popisane količine.';
    end kreiraj_si;

    -- knjigovodstveno stanje popisa SI = zaduženje radnika na datum popisa (zaključeni dokumenti):
    -- jedan red po artiklu; za artikle koji se prate po SB jedan red po serijskom broju
    -- (+ red bez SB ako se količina i broj serijskih brojeva razlikuju). Vraća broj promjena;
    -- p_samo_provjera = 'Y': ništa ne mijenja, samo broji razlike
    function upisi_stanje_si (p_popis_id in number, p_samo_provjera in varchar2 default 'N') return number is
        type t_map is table of number index by varchar2(400);
        l_zelj  t_map;
        l_ooj   number;
        l_rad   number;
        l_datum date;
        l_rb    number;
        l_pr    number := 0;
        l_k     varchar2(400);
        l_sbn   number;
        l_kol   number;
        l_st    number;
        l_sb    varchar2(255);
    begin
        select ooj_id, radnik_id, trunc(datum) into l_ooj, l_rad, l_datum from popisi where id = p_popis_id;
        -- željeno stanje: ključ = stavka_id || '#' || serijski broj
        for a in (select os.stavka_id, max(case when s.serijski_broj = 'Y' then 'Y' else 'N' end) as prati_sb,
                         sum(case when upper(vd.sifra) in ('ISI', 'VSR', 'RUV') and o.zaduzeni_radnik_id = l_rad then os.kolicina
                                  when upper(vd.sifra) = 'PSI' and o.radnik_prenos_id = l_rad then os.kolicina
                                  when upper(vd.sifra) in ('PSI', 'RSR', 'RUM') and o.zaduzeni_radnik_id = l_rad then -os.kolicina
                                  else 0 end) as kol
                    from operacija_stavke os
                    join operacije o on o.id = os.operacija_id
                    join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                    join sec_stavke s on s.id = os.stavka_id
                   where o.ooj_id = l_ooj
                     and upper(vd.sifra) in ('ISI', 'VSR', 'RUV', 'PSI', 'RSR', 'RUM')
                     and (o.zaduzeni_radnik_id = l_rad or o.radnik_prenos_id = l_rad)
                     and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
                     and nvl(o.stornirano, 'N') = 'N' and o.storniran_id is null
                     and o.datum < l_datum + 1
                   group by os.stavka_id) loop
            continue when a.kol = 0;
            if a.prati_sb = 'Y' then
                l_sbn := 0;
                for b in (select distinct sb.serijski_broj
                            from operacija_stavke_sb sb
                            join operacija_stavke os on os.id = sb.operacija_stavka_id
                            join operacije o on o.id = os.operacija_id
                           where os.stavka_id = a.stavka_id and o.ooj_id = l_ooj
                             and (o.zaduzeni_radnik_id = l_rad or o.radnik_prenos_id = l_rad)) loop
                    if rm_dokument_pkg.si_sb(l_ooj, l_rad, a.stavka_id, b.serijski_broj, null, l_datum, 'Y') > 0 then
                        l_zelj(a.stavka_id || '#' || b.serijski_broj) := 1;
                        l_sbn := l_sbn + 1;
                    end if;
                end loop;
                if a.kol - l_sbn <> 0 then
                    l_zelj(a.stavka_id || '#') := a.kol - l_sbn;
                end if;
            else
                l_zelj(a.stavka_id || '#') := a.kol;
            end if;
        end loop;
        -- postojeći redovi: ažuriranje / uklanjanje
        for r in (select id, stavka_id, serijski_broj, nvl(prethodna_kolicina, 0) as pret, popis_kolicina
                    from popis_stavke where popis_id = p_popis_id) loop
            l_k := r.stavka_id || '#' || r.serijski_broj;
            if l_zelj.exists(l_k) then
                if l_zelj(l_k) <> r.pret then
                    l_pr := l_pr + 1;
                    if p_samo_provjera = 'N' then
                        update popis_stavke set prethodna_kolicina = l_zelj(l_k) where id = r.id;
                    end if;
                end if;
                l_zelj.delete(l_k);
            elsif r.pret <> 0 then
                l_pr := l_pr + 1;
                if p_samo_provjera = 'N' then
                    if r.popis_kolicina is null then
                        delete from popis_stavke where id = r.id;
                    else
                        update popis_stavke set prethodna_kolicina = 0 where id = r.id;
                    end if;
                end if;
            end if;
        end loop;
        -- novi redovi
        select nvl(max(redni_broj), 0) into l_rb from popis_stavke where popis_id = p_popis_id;
        l_k := l_zelj.first;
        while l_k is not null loop
            l_pr := l_pr + 1;
            if p_samo_provjera = 'N' then
                l_st := to_number(substr(l_k, 1, instr(l_k, '#') - 1));
                l_sb := substr(l_k, instr(l_k, '#') + 1);
                l_kol := l_zelj(l_k);
                l_rb := l_rb + 1;
                insert into popis_stavke (popis_id, stavka_id, serijski_broj, prethodna_kolicina, popis_kolicina, redni_broj, cijena, valid)
                values (p_popis_id, l_st, l_sb, l_kol, null, l_rb, rm_dokument_pkg.si_cijena(l_ooj, l_rad, l_st), 'Y');
            end if;
            l_k := l_zelj.next(l_k);
        end loop;
        -- redni brojevi po šifri artikla i serijskom broju
        if p_samo_provjera = 'N' then
            for x in (select ps.id, row_number() over (order by a.sifra, ps.serijski_broj nulls first, ps.id) as rb
                        from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                       where ps.popis_id = p_popis_id) loop
                update popis_stavke set redni_broj = x.rb where id = x.id;
            end loop;
        end if;
        return l_pr;
    end upisi_stanje_si;

    procedure snimi_stavku_si (p_id in out number, p_popis_id in number, p_stavka_id in number,
                               p_popis_kolicina in number, p_opis in varchar2, p_sb in varchar2) is
        l_ooj   number;
        l_rad   number;
        l_datum date;
        l_sbp   varchar2(1);
        l_tip   number;
        l_valid varchar2(1);
        l_st    number;
        l_sb    varchar2(255);
        l_pret  number;
        l_n     number;
        l_rb    number;
    begin
        select ooj_id, radnik_id, trunc(datum) into l_ooj, l_rad, l_datum from popisi where id = p_popis_id;
        if p_id is not null then
            select stavka_id, serijski_broj into l_st, l_sb from popis_stavke where id = p_id and popis_id = p_popis_id;
            if p_stavka_id is not null and p_stavka_id <> l_st then
                greska('Artikal stavke popisa se ne mijenja. Obrišite ručno dodat red i dodajte novi.');
            end if;
            if p_sb is not null and nvl(l_sb, '~') <> p_sb then
                greska('Serijski broj stavke popisa se ne mijenja. Obrišite ručno dodat red i dodajte novi.');
            end if;
            if l_sb is not null and p_popis_kolicina is not null and p_popis_kolicina not in (0, 1) then
                greska('Serijski broj ' || l_sb || ': popisana količina je 1 (pronađen) ili 0 (nije pronađen).');
            end if;
            update popis_stavke set popis_kolicina = p_popis_kolicina, opis = substr(p_opis, 1, 500) where id = p_id;
            return;
        end if;
        if p_stavka_id is null then
            greska('Izaberite artikal.');
        end if;
        begin
            select case when serijski_broj = 'Y' then 'Y' else 'N' end, tip_stavke_id, valid
              into l_sbp, l_tip, l_valid
              from sec_stavke where id = p_stavka_id and ooj_id = l_ooj;
        exception
            when no_data_found then
                greska('Artikal ne pripada firmi.');
        end;
        if l_tip = 3 then
            greska('Usluga se ne vodi kao sitni inventar.');
        end if;
        if l_sbp = 'Y' then
            if p_sb is null then
                greska('Artikal se prati po serijskom broju - unesite serijski broj pronađenog komada.');
            end if;
            if p_popis_kolicina is not null and p_popis_kolicina not in (0, 1) then
                greska('Za serijski broj popisana količina je 1 (pronađen) ili 0.');
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_popis_id and stavka_id = p_stavka_id and serijski_broj = p_sb;
            if l_n > 0 then
                greska('Serijski broj ' || p_sb || ' je već u popisu.');
            end if;
            l_pret := case when rm_dokument_pkg.si_sb(l_ooj, l_rad, p_stavka_id, p_sb, null, l_datum, 'Y') > 0 then 1 else 0 end;
        else
            if p_sb is not null then
                greska('Artikal se ne prati po serijskom broju - ostavite serijski broj prazan.');
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_popis_id and stavka_id = p_stavka_id and serijski_broj is null;
            if l_n > 0 then
                greska('Artikal je već u popisu - unesite popisanu količinu na postojećem redu.');
            end if;
            l_pret := rm_dokument_pkg.si_saldo(l_ooj, l_rad, p_stavka_id, null, l_datum, 'Y');
        end if;
        select nvl(max(redni_broj), 0) + 1 into l_rb from popis_stavke where popis_id = p_popis_id;
        insert into popis_stavke (popis_id, stavka_id, serijski_broj, prethodna_kolicina, popis_kolicina, redni_broj, cijena, opis, valid)
        values (p_popis_id, p_stavka_id, case when l_sbp = 'Y' then p_sb end, l_pret, p_popis_kolicina, l_rb,
                rm_dokument_pkg.si_cijena(l_ooj, l_rad, p_stavka_id), substr(p_opis, 1, 500), 'Y')
        returning id into p_id;
    end snimi_stavku_si;

    function provjeri_zakljucavanje_si (p_id in number) return varchar2 is
        l_n     number;
        l_lista varchar2(1000);
    begin
        for p in (select * from popisi where id = p_id) loop
            select count(*) into l_n from popis_stavke where popis_id = p_id;
            if l_n = 0 then
                return 'Popis nema stavki.';
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina is null;
            if l_n > 0 then
                return 'Popisana količina nije unesena za ' || l_n || ' stavki. Unesite količine ili prepišite knjigovodstveno stanje.';
            end if;
            if upisi_stanje_si(p_id, 'Y') > 0 then
                return 'Zaduženje radnika na dan popisa se promijenilo. Osvježite popis pa ga zaključite.';
            end if;
            -- dokumenti zaduženja radnika u pripremi do datuma popisa
            select listagg(x.naziv, ', ') within group (order by x.datum, x.id), count(*)
              into l_lista, l_n
              from (select o.naziv, o.datum, o.id
                      from operacije o join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                     where o.ooj_id = p.ooj_id
                       and upper(vd.sifra) in ('ISI', 'PSI', 'RSR')
                       and (o.zaduzeni_radnik_id = p.radnik_id or o.radnik_prenos_id = p.radnik_id)
                       and nvl(o.status, case when o.zakljucano = 'Y' then 'Z' else 'P' end) = 'P'
                       and nvl(o.stornirano, 'N') = 'N' and o.storniran_id is null
                       and o.datum < trunc(p.datum) + 1
                     order by o.datum, o.id
                     fetch first 5 rows only) x;
            if l_n > 0 then
                return 'Za radnika postoje dokumenti zaduženja u pripremi do datuma popisa (' || l_lista
                       || '). Zaključite ih ili obrišite, osvježite popis pa ga zaključite.';
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina < nvl(prethodna_kolicina, 0);
            if l_n > 0 and vrsta_id(p.ooj_id, 'RUM') is null then
                return 'Firma nema vrstu dokumenta RUM (Razlika inventure sitnog inventara u upotrebi - manjak). Pokrenite skriptu 16_rm_vrste_izlaz.sql.';
            end if;
            select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina > nvl(prethodna_kolicina, 0);
            if l_n > 0 and vrsta_id(p.ooj_id, 'RUV') is null then
                return 'Firma nema vrstu dokumenta RUV (Razlika inventure sitnog inventara u upotrebi - višak). Pokrenite skriptu 16_rm_vrste_izlaz.sql.';
            end if;
            return null;
        end loop;
        return 'Popis ne postoji.';
    end provjeri_zakljucavanje_si;

    -- RUM (manjak) / RUV (višak) - razlika inventure sitnog inventara u upotrebi: stavke po artiklu, serijski brojevi iz redova popisa
    function napravi_dokument_si (p_popis in popisi%rowtype, p_sifra in varchar2) return varchar2 is
        l_broj  number;
        l_naziv varchar2(255);
        l_id    number;
        l_st    number;
        l_rb    number := 0;
        l_vrsta number := vrsta_id(p_popis.ooj_id, p_sifra);
    begin
        rm_dokument_pkg.novi_broj(p_popis.ooj_id, p_popis.godina, lower(p_sifra), null, l_broj, l_naziv);
        insert into operacije (
            ooj_id, godina, vrsta_dokumenta_id, skladiste_id, oj_id, datum, opis, broj, naziv,
            status, zakljucano, stornirano, popis_id, zaduzeni_radnik_id
        ) values (
            p_popis.ooj_id, p_popis.godina, l_vrsta, null, null, trunc(p_popis.datum),
            'Razlika inventure sitnog inventara u upotrebi - ' || case p_sifra when 'RUV' then 'višak' else 'manjak' end
            || ' (popis ' || p_popis.naziv || ')',
            l_broj, l_naziv, 'Z', 'Y', 'N', p_popis.id, p_popis.radnik_id
        ) returning id into l_id;
        for s in (select ps.stavka_id,
                         sum(case when p_sifra = 'RUV' then ps.popis_kolicina - nvl(ps.prethodna_kolicina, 0)
                                  else nvl(ps.prethodna_kolicina, 0) - ps.popis_kolicina end) as kol,
                         max(ps.cijena) as cijena, min(a.sifra) as sifra
                    from popis_stavke ps join sec_stavke a on a.id = ps.stavka_id
                   where ps.popis_id = p_popis.id
                     and ((p_sifra = 'RUV' and ps.popis_kolicina > nvl(ps.prethodna_kolicina, 0))
                       or (p_sifra = 'RUM' and ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0)))
                   group by ps.stavka_id
                   order by min(a.sifra)) loop
            l_rb := l_rb + 1;
            insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, redni_broj)
            values (l_id, s.stavka_id, s.kol, round(nvl(s.cijena, 0), 4), l_rb)
            returning id into l_st;
            insert into operacija_stavke_sb (operacija_stavka_id, serijski_broj)
            select l_st, ps.serijski_broj
              from popis_stavke ps
             where ps.popis_id = p_popis.id and ps.stavka_id = s.stavka_id and ps.serijski_broj is not null
               and ((p_sifra = 'RUV' and ps.popis_kolicina > nvl(ps.prethodna_kolicina, 0))
                 or (p_sifra = 'RUM' and ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0)));
        end loop;
        return l_naziv || case p_sifra when 'RUV' then ' (razlika inventure - višak, ' else ' (razlika inventure - manjak, ' end || l_rb
               || case when l_rb = 1 then ' artikal)' else ' artikala)' end;
    end napravi_dokument_si;

    function zakljucaj_si (p_id in number) return varchar2 is
        l_p   popisi%rowtype;
        l_dok varchar2(4000);
        l_n   number;
    begin
        select * into l_p from popisi where id = p_id for update;
        select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina < nvl(prethodna_kolicina, 0);
        if l_n > 0 then
            l_dok := napravi_dokument_si(l_p, 'RUM');
        end if;
        select count(*) into l_n from popis_stavke where popis_id = p_id and popis_kolicina > nvl(prethodna_kolicina, 0);
        if l_n > 0 then
            l_dok := l_dok || case when l_dok is not null then '; ' end || napravi_dokument_si(l_p, 'RUV');
        end if;
        update popisi set zakljucano = 'Y' where id = p_id;
        return case when l_dok is null then 'Popis je zaključen. Zaduženje radnika odgovara popisanom stanju - dokumenti nisu kreirani.'
                    else 'Popis je zaključen. Kreirani dokumenti: ' || l_dok || '.' end;
    end zakljucaj_si;

    function si_razlog_zabrane_otkljucavanja (p_id in number, p_admin in varchar2) return varchar2 is
        l_s varchar2(255);
    begin
        for p in (select * from popisi where id = p_id) loop
            if nvl(p.zakljucano, 'N') <> 'Y' then
                return 'Popis nije zaključen.';
            end if;
            if nvl(p_admin, 'N') <> 'Y' then
                return 'Zaključan popis može otključati samo administrator.';
            end if;
            select max(naziv) into l_s from popisi
             where nvl(vrsta, 'S') = 'I' and radnik_id = p.radnik_id and valid = 'Y' and id <> p.id
               and (trunc(datum) > trunc(p.datum) or nvl(zakljucano, 'N') = 'N');
            if l_s is not null then
                return 'Za radnika postoji kasniji ili otvoren popis (' || l_s || ') - ovaj popis se ne može otključati.';
            end if;
            select max(naziv) into l_s from operacije
             where popis_id = p.id and (glavna_knjiga_id is not null or nvl(stornirano, 'N') = 'Y');
            if l_s is not null then
                return 'Dokument ' || l_s || ' je proknjižen ili storniran - popis se ne može otključati.';
            end if;
            -- višak (RUV) koji je radnik u međuvremenu prezadužio ili rashodovao
            for v in (select o.id as dok_id, o.naziv, os.stavka_id, a.sifra
                        from operacije o
                        join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
                        join operacija_stavke os on os.operacija_id = o.id
                        join sec_stavke a on a.id = os.stavka_id
                       where o.popis_id = p.id and upper(vd.sifra) = 'RUV') loop
                if rm_dokument_pkg.si_saldo(p.ooj_id, p.radnik_id, v.stavka_id, v.dok_id) < 0 then
                    return 'Višak iz dokumenta ' || v.naziv || ' (artikal ' || v.sifra
                           || ') je već prezadužen ili rashodovan - popis se ne može otključati.';
                end if;
            end loop;
            for o in (select period_zakljucan_do from core.ooj where id = p.ooj_id) loop
                if o.period_zakljucan_do is not null and trunc(p.datum) < trunc(o.period_zakljucan_do) then
                    return 'Popis je u zaključanom periodu.';
                end if;
            end loop;
            return null;
        end loop;
        return 'Popis ne postoji.';
    end si_razlog_zabrane_otkljucavanja;
end rm_popis_pkg;
/

show errors package body rm_popis_pkg

-- 3) pogledi -------------------------------------------------------------------------------
create or replace force view vw_rm_popisi as
select p.id,
       p.ooj_id,
       p.godina,
       p.broj,
       p.naziv,
       p.datum,
       p.opis,
       p.skladiste_id,
       s.sifra                                                  as skladiste_sifra,
       s.naziv                                                  as skladiste_naziv,
       case when upper(ts.sifra) = 'ROB' then 'ROB' else 'MAT' end as modul,
       nvl(p.vrsta, 'S')                                        as vrsta,
       p.radnik_id,
       nvl2(r.id, r.ime || ' ' || r.prezime, null)              as radnik_naziv,
       nvl(p.zakljucano, 'N')                                   as zakljucano,
       p.created,
       p.created_by,
       p.updated,
       x.stavki,
       x.nepopisano,
       x.visak_stavki,
       x.manjak_stavki,
       x.vrijednost_knjig,
       x.vrijednost_manjka,
       d.dokumenti
  from popisi p
  left join skladista s on s.id = p.skladiste_id
  left join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
  left join sif.acc_radnici r on r.id = p.radnik_id
  outer apply (select count(*)                                                                   as stavki,
                      count(case when ps.popis_kolicina is null then 1 end)                      as nepopisano,
                      count(case when ps.popis_kolicina > nvl(ps.prethodna_kolicina, 0) then 1 end) as visak_stavki,
                      count(case when ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0) then 1 end) as manjak_stavki,
                      nvl(sum(round(nvl(ps.prethodna_kolicina, 0) * nvl(ps.cijena, 0), 2)), 0)    as vrijednost_knjig,
                      nvl(sum(case when ps.popis_kolicina < nvl(ps.prethodna_kolicina, 0)
                                   then round((nvl(ps.prethodna_kolicina, 0) - ps.popis_kolicina) * nvl(ps.cijena, 0), 2) end), 0)
                                                                                                 as vrijednost_manjka
                 from popis_stavke ps
                where ps.popis_id = p.id) x
  outer apply (select listagg(o.naziv, ', ') within group (order by o.id) as dokumenti
                 from operacije o
                where o.popis_id = p.id) d
 where p.valid = 'Y';

create or replace force view vw_rm_popis_stavke as
select ps.id,
       ps.popis_id,
       ps.redni_broj,
       ps.stavka_id,
       a.sifra                                                  as artikal_sifra,
       a.naziv                                                  as artikal_naziv,
       a.jm_naziv,
       a.prati_sb,
       ps.serijski_broj,
       nvl(ps.prethodna_kolicina, 0)                            as knjigovodstveno,
       ps.popis_kolicina                                        as popisano,
       case when ps.popis_kolicina is not null then ps.popis_kolicina - nvl(ps.prethodna_kolicina, 0) end as razlika,
       ps.cijena,
       case when ps.popis_kolicina is not null
            then round((ps.popis_kolicina - nvl(ps.prethodna_kolicina, 0)) * nvl(ps.cijena, 0), 2) end as vrijednost_razlike,
       ps.opis
  from popis_stavke ps
  join vw_rm_artikli a on a.id = ps.stavka_id;

-- dokumenti razlike inventure po popisu
create or replace force view vw_rm_popis_dokumenti as
select o.popis_id,
       o.id,
       o.naziv,
       o.datum,
       upper(vd.sifra)                                          as vrsta_sifra,
       vd.naziv                                                 as vrsta_naziv,
       nvl(o.status, 'P')                                       as status,
       (select count(*) from operacija_stavke os where os.operacija_id = o.id) as stavki,
       (select nvl(sum(round(os.kolicina * nvl(os.nabavna_cijena, 0), 2)), 0)
          from operacija_stavke os where os.operacija_id = o.id) as iznos
  from operacije o
  join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id
 where o.popis_id is not null;
