/*
================================================================================
  ESSCOM Finansije - 21_rm_cjenovnik.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 12_rm_pkg.sql, 13_rm_views.sql i 14_rm_skladista.sql,
  a PRIJE 15_rm_kalkulacija.sql (kalkulacija koristi ovaj paket).

  Svrha (R22, 05.11.2026): cjenovnik kao izvor cijena robnih skladišta.
    CJENOVNIK_STAVKE - nove kolone:
      NAPOMENA        komentar promjene (ručno ili "Kalkulacija X")
      IZVOR           K = kalkulacija, R = ručna izmjena, U = usklađivanje; prazno = staro (prije v2)
      KALKULACIJA_ID  kalkulacija iz koje je cijena nastala
      OPERACIJA_ID    dokument (ulaz) iz kojeg je cijena nastala
      PRETHODNI_ID    red cjenovnika koji je ovaj red zamijenio (za vraćanje pri otključavanju kalkulacije)
    Jedan aktivan red po artiklu i cjenovniku (indeks CJENOVNIK_STAVKE_AKTIVAN_UK).

    RM_CJENOVNIK_PKG:
      - aktivna cijena artikla u cjenovniku (nabavna / VPC / MPC)
      - postavi_cijenu: stari red se deaktivira, novi aktivira (historija)
      - zajednička prosječna nabavna cijena veleprodajnog cjenovnika: sva robna skladišta koja rade
        po istom cjenovniku (tip V) imaju jednu prosječnu cijenu. Ulaz po drugačijoj cijeni mijenja
        prosječnu cijenu:  nova = (vrijednost svih skladišta + ulaz) / (količina svih skladišta + ulaz),
        a vrijednost svakog skladišta sa stanjem se usklađuje automatskim, zaključenim dokumentom
        Finansijsko doknjiženje (FDK) na datum usklađivanja (zbir doknjiženja = 0).
      Maloprodajni cjenovnik (tip M): zaliha se vodi po MPC. Promjena MPC nivelira zalihe svih
      maloprodajnih skladišta cjenovnika automatskim zaključenim dokumentom Nivelacija cijena (NIVM) -
      R23. Usklađivanja nabavne vrijednosti nema (obračun RUC je kasnije).
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) kolone i indeksi --------------------------------------------------------------
declare
    procedure kolona (p_ime in varchar2, p_def in varchar2) is
        l_n number;
    begin
        select count(*) into l_n from user_tab_columns where table_name = 'CJENOVNIK_STAVKE' and column_name = upper(p_ime);
        if l_n = 0 then
            execute immediate 'alter table cjenovnik_stavke add (' || p_ime || ' ' || p_def || ')';
            dbms_output.put_line('Dodata kolona CJENOVNIK_STAVKE.' || upper(p_ime));
        end if;
    end;
    procedure indeks (p_ime in varchar2, p_ddl in varchar2) is
        l_n number;
    begin
        select count(*) into l_n from user_indexes where index_name = upper(p_ime);
        if l_n = 0 then
            execute immediate p_ddl;
            dbms_output.put_line('Napravljen indeks ' || upper(p_ime));
        end if;
    exception
        when others then
            dbms_output.put_line('UPOZORENJE: indeks ' || upper(p_ime) || ' nije napravljen: ' || sqlerrm);
    end;
begin
    kolona('napomena', 'varchar2(1000 char)');
    kolona('izvor', 'varchar2(1 char)');
    kolona('kalkulacija_id', 'number');
    kolona('operacija_id', 'number');
    kolona('prethodni_id', 'number');
    indeks('CJENOVNIK_STAVKE_CJ_ART_I', 'create index cjenovnik_stavke_cj_art_i on cjenovnik_stavke (cjenovnik_id, stavka_id, valid)');
    indeks('CJENOVNIK_STAVKE_KALK_I', 'create index cjenovnik_stavke_kalk_i on cjenovnik_stavke (kalkulacija_id)');
    -- stari podaci sa više aktivnih redova istog artikla: ostaje najnoviji
    update cjenovnik_stavke cs set cs.valid = 'N'
     where cs.valid = 'Y'
       and exists (select 1 from cjenovnik_stavke x
                    where x.cjenovnik_id = cs.cjenovnik_id and x.stavka_id = cs.stavka_id and x.valid = 'Y'
                      and (nvl(x.datum, date '1900-01-01') > nvl(cs.datum, date '1900-01-01')
                           or (nvl(x.datum, date '1900-01-01') = nvl(cs.datum, date '1900-01-01') and x.id > cs.id)));
    if sql%rowcount > 0 then
        dbms_output.put_line('Deaktivirano starijih aktivnih redova cjenovnika (duplikati): ' || sql%rowcount);
    end if;
    commit;
    indeks('CJENOVNIK_STAVKE_AKTIVAN_UK',
        q'[create unique index cjenovnik_stavke_aktivan_uk on cjenovnik_stavke (
               case when valid = 'Y' then cjenovnik_id end, case when valid = 'Y' then stavka_id end)]');
end;
/

comment on column cjenovnik_stavke.napomena is 'Komentar promjene cijene (ručno ili "Kalkulacija X") (v2)';
comment on column cjenovnik_stavke.izvor is 'K = kalkulacija, R = ručna izmjena, U = usklađivanje; prazno = red iz starog načina rada (v2)';
comment on column cjenovnik_stavke.kalkulacija_id is 'Kalkulacija iz koje je cijena nastala (v2)';
comment on column cjenovnik_stavke.operacija_id is 'Dokument skladišta (ulaz) iz kojeg je cijena nastala (v2)';
comment on column cjenovnik_stavke.prethodni_id is 'Red cjenovnika koji je ovaj red zamijenio - vraća se pri otključavanju kalkulacije (v2)';

-- 2) paket -------------------------------------------------------------------------
create or replace package rm_cjenovnik_pkg as

    -- tip cjenovnika: V = veleprodaja, M = maloprodaja (null = nema)
    function tip (p_cjenovnik_id in number) return varchar2;
    -- cjenovnik robnog skladišta (null za materijalna / interna skladišta)
    function cjenovnik_skladista (p_skladiste_id in number) return number;

    -- aktivna cijena artikla u cjenovniku
    function nabavna (p_cjenovnik_id in number, p_stavka_id in number) return number;
    function vpc (p_cjenovnik_id in number, p_stavka_id in number) return number;
    function mpc (p_cjenovnik_id in number, p_stavka_id in number) return number;
    -- Y = aktivni red je iz v2 (kalkulacija / ručno / usklađivanje) - cijena izlaza veleprodaje se uzima iz njega
    function v2_cijena (p_cjenovnik_id in number, p_stavka_id in number) return varchar2;

    -- stanje artikla na svim robnim skladištima cjenovnika (zaključeni dokumenti, sada); bez zadatih dokumenata
    function grupa_kolicina (p_cjenovnik_id in number, p_stavka_id in number) return number;
    function grupa_vrijednost (p_cjenovnik_id in number, p_stavka_id in number) return number;

    -- novi red cjenovnika (stari aktivni se deaktivira); vraća id novog reda
    function postavi_cijenu (p_cjenovnik_id in number, p_stavka_id in number, p_nabavna in number, p_vpc in number,
                             p_mpc in number, p_napomena in varchar2, p_izvor in varchar2,
                             p_kalkulacija_id in number default null, p_operacija_id in number default null) return number;

    -- veleprodaja: usklađivanje vrijednosti svih skladišta cjenovnika sa cijenom p_cijena (nezaokruženom)
    -- automatskim zaključenim FDK dokumentima (jedan po skladištu u okviru iste kalkulacije); vraća broj stavki
    function uskladi (p_cjenovnik_id in number, p_stavka_id in number, p_cijena in number,
                      p_kalkulacija_id in number, p_opis in varchar2, p_veza_id in number default null) return number;

    -- R23 maloprodaja: nivelacija zaliha svih maloprodajnih skladišta cjenovnika na novu MPC automatskim,
    -- zaključenim dokumentima NIVM (jedan po skladištu u okviru iste kalkulacije); vraća broj stavki
    function nivelisi (p_cjenovnik_id in number, p_stavka_id in number, p_nova_mpc in number,
                       p_kalkulacija_id in number, p_opis in varchar2, p_veza_id in number default null) return number;

    -- R23: početak automatske radnje (kalkulacija, prijem, ručna izmjena) - novi skup automatskih dokumenata
    procedure nova_akcija;
    -- R23: prijem po prenosu (MPP / UIV / UVI / UVM / UMV) - cjenovnik odredišta:
    --   veleprodaja: novi zajednički prosjek iz stvarnih vrijednosti svih skladišta cjenovnika + doknjiženja
    --   maloprodaja: nivelacija zaliha na važeću MPC (roba primljena po drugoj MPC - promjena cijene u tranzitu)
    procedure poslije_prijema (p_prijem_id in number);
    -- R23: ručna izmjena cijene u cjenovniku (sa napomenom): veleprodaja - promjena prosječne nabavne usklađuje
    -- vrijednost svih skladišta (FDK); maloprodaja - promjena MPC nivelira zalihe (NIVM). Vraća poruku.
    function rucna_izmjena (p_cjenovnik_id in number, p_stavka_id in number, p_nabavna in number, p_vpc in number,
                            p_mpc in number, p_napomena in varchar2) return varchar2;
    -- PDV stopa artikla: pun iznos -> 17 %, poseban indikator -> stopa indikatora
    function pdv_stopa (p_stavka_id in number) return number;

    -- otključavanje kalkulacije: provjera (null = može) i vraćanje cjenovnika i brisanje FDK / NIVM iz kalkulacije
    function razlog_zabrane_vracanja (p_kalkulacija_id in number) return varchar2;
    procedure vrati_kalkulaciju (p_kalkulacija_id in number);

end rm_cjenovnik_pkg;
/

create or replace package body rm_cjenovnik_pkg as

    -- automatski dokumenti trenutne radnje: ključ vrsta:skladište -> id (nova_akcija prazni)
    -- (deklaracije moraju biti prije procedura - PLS-00103)
    type t_dok is table of number index by varchar2(100);
    g_dok t_dok;

    procedure greska (p_tekst in varchar2) is
    begin
        raise_application_error(-20202, 'Greška CORP-RM: ' || p_tekst);
    end greska;

    function tip (p_cjenovnik_id in number) return varchar2 is
        l_t varchar2(1);
    begin
        select max(tip) into l_t from cjenovnici where id = p_cjenovnik_id;
        return l_t;
    end tip;

    function cjenovnik_skladista (p_skladiste_id in number) return number is
        l_c number;
    begin
        select max(s.cjenovnik_id) into l_c
          from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
         where s.id = p_skladiste_id and upper(ts.sifra) = 'ROB';
        return l_c;
    end cjenovnik_skladista;

    function nabavna (p_cjenovnik_id in number, p_stavka_id in number) return number is
        l_v number;
    begin
        select max(nabavna_cijena) into l_v from cjenovnik_stavke
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y';
        return l_v;
    end nabavna;

    function vpc (p_cjenovnik_id in number, p_stavka_id in number) return number is
        l_v number;
    begin
        select max(vpc) into l_v from cjenovnik_stavke
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y';
        return l_v;
    end vpc;

    function mpc (p_cjenovnik_id in number, p_stavka_id in number) return number is
        l_v number;
    begin
        select max(mpc) into l_v from cjenovnik_stavke
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y';
        return l_v;
    end mpc;

    function v2_cijena (p_cjenovnik_id in number, p_stavka_id in number) return varchar2 is
        l_n number;
    begin
        select count(*) into l_n from cjenovnik_stavke
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y'
           and izvor is not null and nvl(nabavna_cijena, 0) > 0;
        return case when l_n > 0 then 'Y' else 'N' end;
    end v2_cijena;

    function grupa_kolicina (p_cjenovnik_id in number, p_stavka_id in number) return number is
        l_n number := 0;
    begin
        for s in (select s.id from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
                   where s.cjenovnik_id = p_cjenovnik_id and upper(ts.sifra) = 'ROB') loop
            l_n := l_n + nvl(rm_dokument_pkg.obradjeno(s.id, p_stavka_id), 0);
        end loop;
        return l_n;
    end grupa_kolicina;

    function grupa_vrijednost (p_cjenovnik_id in number, p_stavka_id in number) return number is
        l_n number := 0;
    begin
        for s in (select s.id from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
                   where s.cjenovnik_id = p_cjenovnik_id and upper(ts.sifra) = 'ROB') loop
            l_n := l_n + nvl(rm_dokument_pkg.vrijednost_zaliha(s.id, p_stavka_id), 0);
        end loop;
        return l_n;
    end grupa_vrijednost;

    function postavi_cijenu (p_cjenovnik_id in number, p_stavka_id in number, p_nabavna in number, p_vpc in number,
                             p_mpc in number, p_napomena in varchar2, p_izvor in varchar2,
                             p_kalkulacija_id in number default null, p_operacija_id in number default null) return number is
        l_stari number;
        l_id    number;
    begin
        if p_cjenovnik_id is null or p_stavka_id is null then
            greska('Cjenovnik i artikal su obavezni.');
        end if;
        if nvl(p_nabavna, 0) < 0 or nvl(p_vpc, 0) < 0 or nvl(p_mpc, 0) < 0 then
            greska('Cijene u cjenovniku ne mogu biti negativne.');
        end if;
        select max(id) into l_stari from cjenovnik_stavke
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y';
        update cjenovnik_stavke set valid = 'N'
         where cjenovnik_id = p_cjenovnik_id and stavka_id = p_stavka_id and valid = 'Y';
        insert into cjenovnik_stavke (cjenovnik_id, stavka_id, datum, nabavna_cijena, vpc, mpc, valid,
                                      napomena, izvor, kalkulacija_id, operacija_id, prethodni_id)
        values (p_cjenovnik_id, p_stavka_id, sysdate, round(p_nabavna, 4), round(p_vpc, 4), round(p_mpc, 2), 'Y',
                substr(p_napomena, 1, 1000), p_izvor, p_kalkulacija_id, p_operacija_id, l_stari)
        returning id into l_id;
        return l_id;
    end postavi_cijenu;

    -- automatski dokument (FDK / NIVM) skladišta u okviru trenutne radnje: postojeći ili novi (zaključen, današnji datum)
    procedure nova_akcija is
    begin
        g_dok.delete;
    end nova_akcija;

    function auto_dokument (p_sifra in varchar2, p_skladiste_id in number, p_kalkulacija_id in number, p_opis in varchar2,
                            p_veza_id in number default null) return number is
        l_id    number;
        l_vrsta number;
        l_ooj   number;
        l_oj    number;
        l_god   number := extract(year from sysdate);
        l_broj  number;
        l_naziv varchar2(255);
        l_kljuc varchar2(100) := p_sifra || ':' || p_skladiste_id;
    begin
        if g_dok.exists(l_kljuc) then
            return g_dok(l_kljuc);
        end if;
        select ooj_id, oj_id into l_ooj, l_oj from skladista where id = p_skladiste_id;
        select max(vd.id) into l_vrsta
          from sif.vrste_dokumenata vd join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = 'MAT'
         where vd.ooj_id = l_ooj and upper(vd.sifra) = p_sifra and vd.valid = 'Y';
        if l_vrsta is null then
            greska('Firma nema vrstu dokumenta ' || p_sifra || ' - pokrenite skriptu 16_rm_vrste_izlaz.sql.');
        end if;
        if not core.protokoli_pkg.check_brojac(l_ooj, lower(p_sifra), l_god) then
            greska('Nije definisan brojač za vrstu dokumenta ' || p_sifra || ' u ' || l_god || '. godini.');
        end if;
        rm_dokument_pkg.novi_broj(l_ooj, l_god, lower(p_sifra), p_skladiste_id, l_broj, l_naziv);
        insert into operacije (ooj_id, godina, vrsta_dokumenta_id, skladiste_id, oj_id, datum, opis, broj, naziv,
                               status, zakljucano, stornirano, kalkulacija_id, veza_id)
        values (l_ooj, l_god, l_vrsta, p_skladiste_id, l_oj, trunc(sysdate), substr(p_opis, 1, 1000), l_broj, l_naziv,
                'Z', 'Y', 'N', p_kalkulacija_id, p_veza_id)
        returning id into l_id;
        g_dok(l_kljuc) := l_id;
        return l_id;
    end auto_dokument;

    function uskladi (p_cjenovnik_id in number, p_stavka_id in number, p_cijena in number,
                      p_kalkulacija_id in number, p_opis in varchar2, p_veza_id in number default null) return number is
        type t_red is record (skl number, razlika number, kol number);
        type t_redovi is table of t_red index by pls_integer;
        l_r     t_redovi;
        l_jedan t_red;
        l_kol   number;
        l_vr    number;
        l_suma  number := 0;
        l_max   pls_integer;
        l_dok   number;
        l_n     number := 0;
    begin
        if tip(p_cjenovnik_id) <> 'V' then
            return 0;
        end if;
        for s in (select s.id from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
                   where s.cjenovnik_id = p_cjenovnik_id and upper(ts.sifra) = 'ROB' order by s.sifra) loop
            l_kol := nvl(rm_dokument_pkg.obradjeno(s.id, p_stavka_id), 0);
            l_vr  := nvl(rm_dokument_pkg.vrijednost_zaliha(s.id, p_stavka_id), 0);
            continue when l_kol <= 0 and l_vr = 0;
            -- ciljna vrijednost = količina x nova cijena (bez zaokruživanja cijene; razlika na 2 decimale)
            l_jedan.skl := s.id;
            l_jedan.razlika := round(greatest(l_kol, 0) * p_cijena - l_vr, 2);
            l_jedan.kol := l_kol;
            l_r(l_r.count + 1) := l_jedan;
            l_suma := l_suma + l_jedan.razlika;
            if l_max is null or l_kol > l_r(l_max).kol then
                l_max := l_r.count;
            end if;
        end loop;
        -- zbir doknjiženja mora biti 0 (vrijednost se samo preraspoređuje): razlika zaokruživanja na skladište
        -- sa najvećom količinom
        if l_max is not null and l_suma <> 0 and abs(l_suma) < 1 then
            l_r(l_max).razlika := l_r(l_max).razlika - l_suma;
        end if;
        for i in 1 .. l_r.count loop
            continue when l_r(i).razlika = 0;
            l_dok := auto_dokument('FDK', l_r(i).skl, p_kalkulacija_id, p_opis, p_veza_id);
            insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, opis, redni_broj)
            values (l_dok, p_stavka_id, 1, l_r(i).razlika, 'Usklađivanje sa prosječnom cijenom ' || to_char(round(p_cijena, 4), 'FM999G999G990D0000'),
                    (select nvl(max(redni_broj), 0) + 1 from operacija_stavke where operacija_id = l_dok));
            l_n := l_n + 1;
        end loop;
        return l_n;
    end uskladi;

    function pdv_stopa (p_stavka_id in number) return number is
        l_v number;
    begin
        select max(case when nvl(st.pdv_indikator, 'Y') = 'Y' then 17 else nvl(pi.vrijednost, 0) end)
          into l_v
          from sec_stavke st left join sif.acc_pdv_indikatori pi on pi.id = st.pdv_indikator_id
         where st.id = p_stavka_id;
        return nvl(l_v, 17);
    end pdv_stopa;

    function nivelisi (p_cjenovnik_id in number, p_stavka_id in number, p_nova_mpc in number,
                       p_kalkulacija_id in number, p_opis in varchar2, p_veza_id in number default null) return number is
        l_kol  number;
        l_vr   number;
        l_stara number;
        l_dok  number;
        l_n    number := 0;
        l_pdv  number := pdv_stopa(p_stavka_id);
    begin
        if tip(p_cjenovnik_id) <> 'M' or nvl(p_nova_mpc, 0) <= 0 then
            return 0;
        end if;
        for s in (select s.id from skladista s join sif.acc_tipovi_skladista ts on ts.id = s.tip_skladista_id
                   where s.cjenovnik_id = p_cjenovnik_id and upper(ts.sifra) = 'ROB' order by s.sifra) loop
            l_kol := nvl(rm_dokument_pkg.obradjeno(s.id, p_stavka_id), 0);
            continue when l_kol <= 0;
            l_vr := nvl(rm_dokument_pkg.vrijednost_zaliha(s.id, p_stavka_id), 0);
            -- stara MPC = trenutna vrijednost zalihe po jedinici (zaliha se vodi po MPC)
            l_stara := round(l_vr / l_kol, 4);
            continue when round(p_nova_mpc, 4) = l_stara;
            l_dok := auto_dokument('NIVM', s.id, p_kalkulacija_id, p_opis, p_veza_id);
            insert into operacija_stavke (operacija_id, stavka_id, kolicina, nabavna_cijena, mpc_stara, mpc, porez_procenat,
                                          opis, redni_broj)
            values (l_dok, p_stavka_id, l_kol, round(p_nova_mpc, 4) - l_stara, l_stara, round(p_nova_mpc, 4), l_pdv,
                    'Nivelacija MPC ' || to_char(l_stara, 'FM999G999G990D00') || ' -> ' || to_char(p_nova_mpc, 'FM999G999G990D00'),
                    (select nvl(max(redni_broj), 0) + 1 from operacija_stavke where operacija_id = l_dok));
            l_n := l_n + 1;
        end loop;
        return l_n;
    end nivelisi;

    procedure poslije_prijema (p_prijem_id in number) is
        l_cj    number;
        l_tip   varchar2(1);
        l_naziv varchar2(255);
        l_q     number;
        l_v     number;
        l_avg   number;
        l_red   number;
        l_n     number;
    begin
        select max(rm_cjenovnik_pkg.cjenovnik_skladista(o.skladiste_id)), max(o.naziv)
          into l_cj, l_naziv
          from operacije o where o.id = p_prijem_id;
        if l_cj is null then
            return;                                      -- skladište materijala: prosjek po skladištu
        end if;
        l_tip := tip(l_cj);
        nova_akcija;
        for a in (select distinct stavka_id from operacija_stavke where operacija_id = p_prijem_id) loop
            if l_tip = 'V' then
                l_q := grupa_kolicina(l_cj, a.stavka_id);
                l_v := grupa_vrijednost(l_cj, a.stavka_id);
                continue when l_q <= 0;
                l_avg := l_v / l_q;
                if abs(nvl(nabavna(l_cj, a.stavka_id), -1) - round(l_avg, 4)) >= 0.00005 then
                    l_red := postavi_cijenu(l_cj, a.stavka_id, l_avg, vpc(l_cj, a.stavka_id), mpc(l_cj, a.stavka_id),
                                            'Prijem ' || l_naziv, 'U', null, p_prijem_id);
                end if;
                l_n := uskladi(l_cj, a.stavka_id, l_avg, null,
                               'Usklađivanje sa prosječnom cijenom poslije prijema ' || l_naziv, p_prijem_id);
            elsif l_tip = 'M' and nvl(mpc(l_cj, a.stavka_id), 0) > 0 then
                l_n := nivelisi(l_cj, a.stavka_id, mpc(l_cj, a.stavka_id), null,
                                'Nivelacija na važeću MPC poslije prijema ' || l_naziv, p_prijem_id);
            end if;
        end loop;
    end poslije_prijema;

    function rucna_izmjena (p_cjenovnik_id in number, p_stavka_id in number, p_nabavna in number, p_vpc in number,
                            p_mpc in number, p_napomena in varchar2) return varchar2 is
        l_tip  varchar2(1) := tip(p_cjenovnik_id);
        l_red  number;
        l_n    number := 0;
        l_nab  number := p_nabavna;
        l_opis varchar2(1000);
    begin
        if p_cjenovnik_id is null or p_stavka_id is null then
            greska('Izaberite cjenovnik i artikal.');
        end if;
        if nvl(p_vpc, 0) <= 0 and nvl(p_mpc, 0) <= 0 then
            greska('Unesite cijenu.');
        end if;
        -- prosječna nabavna se ne mijenja ako nije unesena
        if l_nab is null then
            l_nab := nabavna(p_cjenovnik_id, p_stavka_id);
        end if;
        select substr('Ručna izmjena cjenovnika ' || max(c.sifra) || nvl2(trim(p_napomena), ': ' || trim(p_napomena), ''), 1, 1000)
          into l_opis from cjenovnici c where c.id = p_cjenovnik_id;
        nova_akcija;
        l_red := postavi_cijenu(p_cjenovnik_id, p_stavka_id, l_nab, p_vpc, p_mpc,
                                nvl(trim(p_napomena), 'Ručna izmjena'), 'R');
        if l_tip = 'V' and nvl(l_nab, 0) > 0 then
            -- vrijednost svih skladišta cjenovnika na (novu) prosječnu cijenu
            l_n := uskladi(p_cjenovnik_id, p_stavka_id, l_nab, null, l_opis);
            return 'Cijena je snimljena.' || case when l_n > 0 then ' Usklađena vrijednost zaliha na ' || l_n
                                                               || ' skladišta (finansijsko doknjiženje).' end;
        elsif l_tip = 'M' and nvl(p_mpc, 0) > 0 then
            l_n := nivelisi(p_cjenovnik_id, p_stavka_id, p_mpc, null, l_opis);
            return 'Cijena je snimljena.' || case when l_n > 0 then ' Nivelacija zaliha na ' || l_n
                                                               || ' maloprodajnih skladišta.' end;
        end if;
        return 'Cijena je snimljena.';
    end rucna_izmjena;

    function razlog_zabrane_vracanja (p_kalkulacija_id in number) return varchar2 is
        l_izl varchar2(255);
    begin
        -- izlazi poslije usklađivanja (isti dan: dokumenti nastali poslije FDK)
        -- cijena iz kalkulacije je u međuvremenu promijenjena (nova kalkulacija / ručna izmjena)
        for c in (select cs.stavka_id, st.sifra
                    from cjenovnik_stavke cs join sec_stavke st on st.id = cs.stavka_id
                   where cs.kalkulacija_id = p_kalkulacija_id and cs.valid = 'N') loop
            return 'Cijena artikla ' || c.sifra || ' u cjenovniku je poslije kalkulacije ponovo mijenjana - kalkulacija se ne može otključati.';
        end loop;
        -- poslije usklađivanja je artikal izdavan sa nekog skladišta (izlaz je prošao po novoj cijeni)
        for f in (select o.id, o.skladiste_id, o.datum, os.stavka_id, st.sifra
                    from operacije o
                    join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id and upper(vd.sifra) in ('FDK', 'NIVM')
                    join operacija_stavke os on os.operacija_id = o.id
                    join sec_stavke st on st.id = os.stavka_id
                   where o.kalkulacija_id = p_kalkulacija_id) loop
            select max(i.naziv) into l_izl
              from operacije i
              join operacija_stavke ios on ios.operacija_id = i.id and ios.stavka_id = f.stavka_id
              left join sif.vrste_dokumenata ivd on ivd.id = i.vrsta_dokumenta_id
              left join sif.acc_tipovi_kretanja_robe it on it.id = i.tip_kretanja_id
             where i.skladiste_id = f.skladiste_id
               and (i.datum > f.datum or (i.datum = f.datum and i.id > f.id))
               and coalesce(ios.smjer, rm_dokument_pkg.tip_kretanja(ivd.sifra), it.tip_kretanja) = 'I'
               and nvl(i.status, case when i.zakljucano = 'Y' then 'Z' else 'P' end) = 'Z'
               and nvl(i.stornirano, 'N') = 'N' and i.storniran_id is null;
            if l_izl is not null then
                return 'Artikal ' || f.sifra || ' je poslije usklađivanja cijene izdavan (' || l_izl || ') - kalkulacija se ne može otključati.';
            end if;
        end loop;
        return null;
    end razlog_zabrane_vracanja;

    procedure vrati_kalkulaciju (p_kalkulacija_id in number) is
        l_r varchar2(4000) := razlog_zabrane_vracanja(p_kalkulacija_id);
    begin
        if l_r is not null then
            greska(l_r);
        end if;
        -- automatska doknjiženja i nivelacije iz kalkulacije
        delete from operacija_stavke
         where operacija_id in (select o.id from operacije o
                                  join sif.vrste_dokumenata vd on vd.id = o.vrsta_dokumenta_id and upper(vd.sifra) in ('FDK', 'NIVM')
                                 where o.kalkulacija_id = p_kalkulacija_id);
        delete from operacije o
         where o.kalkulacija_id = p_kalkulacija_id
           and o.vrsta_dokumenta_id in (select vd.id from sif.vrste_dokumenata vd where upper(vd.sifra) in ('FDK', 'NIVM'));
        -- cjenovnik: vraća se red koji je kalkulacija zamijenila
        for c in (select id, prethodni_id from cjenovnik_stavke where kalkulacija_id = p_kalkulacija_id and valid = 'Y') loop
            delete from cjenovnik_stavke where id = c.id;
            if c.prethodni_id is not null then
                update cjenovnik_stavke set valid = 'Y' where id = c.prethodni_id;
            end if;
        end loop;
    end vrati_kalkulaciju;

end rm_cjenovnik_pkg;
/

show errors package body rm_cjenovnik_pkg

prompt 21_rm_cjenovnik.sql završena.
