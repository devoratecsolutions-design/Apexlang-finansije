/*
================================================================================
  ESSCOM Finansije - 11_rm_model.sql
  Pokrenuti kao: ACCOUNTING, PRIJE 12_rm_pkg.sql i 13_rm_views.sql

  Svrha: dokumenti skladišta preko SIF.VRSTE_DOKUMENATA (modul MAT), korak R1:
  prijemnica.
    Nove kolone u OPERACIJE
      VRSTA_DOKUMENTA_ID   vrsta dokumenta (SIF.VRSTE_DOKUMENATA, modul MAT)
      STATUS               P = u pripremi, Z = zaključen (prijemnicu zaključava kalkulacija)
      OTPREMNICA_BROJ      broj otpremnice / dokumenta dobavljača
      OTPREMNICA_DATUM     datum otpremnice dobavljača
    Nova kolona u OPERACIJA_STAVKE: REDNI_BROJ
    Indeksi: OPERACIJE (skladiste_id, datum), (vrsta_dokumenta_id), (klijent_id),
             OPERACIJA_STAVKE_SB (serijski_broj), jedinstven SB po stavci dokumenta
    Brojač PRI (Prijemnica) za svaku firmu koja ima vrstu dokumenta PRI.
  Postojeći podaci: STATUS iz ZAKLJUCANO; stare prijemnice (tip kretanja PR)
  dobijaju vrstu PRI. Ostali stari dokumenti ostaju na starom tipu kretanja.
  R23 (05.11.2026): OPERACIJA_STAVKE.NABAVNA_MP, MPC_STARA (maloprodaja po MPC, nivelacija); brojač NIVM.
  R22 (05.11.2026): CJENOVNIK_STAVKE.NAPOMENA, IZVOR, KALKULACIJA_ID, OPERACIJA_ID, PRETHODNI_ID.
  R21 (05.11.2026): OPERACIJA_STAVKE.ZAMJENA_STAVKA_ID, SMJER, IZVOR_STAVKA_ID (zamjena šifara artikla);
  brojači FDK (finansijsko doknjiženje) i ZSA (zamjena šifara artikla).
  R18 (04.11.2026): sitni inventar - OPERACIJE.RADNIK_PRENOS_ID (prezaduženje: na radnika),
  POPISI.VRSTA (S = skladište, I = sitni inventar kod radnika) i RADNIK_ID, POPIS_STAVKE.SERIJSKI_BROJ;
  brojači PSI, RSZ, RSR, RUM, RUV.
  R17 (03.11.2026): OPERACIJE.POPIS_ID, POPIS_STAVKE.CIJENA i OPIS (popis skladišta);
  brojači RAS (rashod), RIV / RIM (razlika inventure - višak / manjak).
  R13 (02.11.2026): brojači REV, REVP, RSV, RSVP.
  R12 (02.11.2026): OPERACIJE.ZADUZENI_RADNIK_ID; brojači IOS, ISI, MPR, MPP.
  R11 (02.11.2026): OPERACIJE.MJESTO_TROSKA_ID (izdatnica, izlaz na investiciju u
  toku; SIF.ACC_MJESTA_TROSKA) i brojači IZD / IIN za firme koje imaju te vrste
  (vrste dodaje 16_rm_vrste_izlaz.sql, kao SIF - pokrenuti prije ove skripte).
  Skripta se može pokrenuti više puta (ono što postoji se preskače).
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) kolone i indeksi ------------------------------------------------------------
declare
    procedure kolona (p_tabela in varchar2, p_ime in varchar2, p_def in varchar2) is
        l_n number;
    begin
        select count(*) into l_n from user_tab_columns where table_name = p_tabela and column_name = upper(p_ime);
        if l_n = 0 then
            execute immediate 'alter table ' || p_tabela || ' add (' || p_ime || ' ' || p_def || ')';
            dbms_output.put_line('Dodata kolona ' || p_tabela || '.' || upper(p_ime));
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
            -- npr. duplikati serijskih brojeva u starim podacima: javiti, ne prekidati
            dbms_output.put_line('UPOZORENJE: indeks ' || upper(p_ime) || ' nije napravljen: ' || sqlerrm);
    end;

    procedure ogranicenje (p_ime in varchar2, p_ddl in varchar2) is
        l_n number;
    begin
        select count(*) into l_n from user_constraints where constraint_name = upper(p_ime);
        if l_n = 0 then
            execute immediate p_ddl;
            dbms_output.put_line('Napravljeno ograničenje ' || upper(p_ime));
        end if;
    end;
begin
    kolona('OPERACIJE', 'vrsta_dokumenta_id', 'number');
    kolona('OPERACIJE', 'status', 'varchar2(1 char)');
    kolona('OPERACIJE', 'otpremnica_broj', 'varchar2(100 char)');
    kolona('OPERACIJE', 'otpremnica_datum', 'date');
    kolona('OPERACIJA_STAVKE', 'redni_broj', 'number');
    kolona('OPERACIJE', 'mjesto_troska_id', 'number');
    kolona('OPERACIJE', 'zaduzeni_radnik_id', 'number');
    -- R17: popis skladišta - dokumenti razlike inventure (RIV / RIM) vezani na popis; cijena stavke popisa
    kolona('OPERACIJE', 'popis_id', 'number');
    kolona('POPIS_STAVKE', 'cijena', 'number');
    kolona('POPIS_STAVKE', 'opis', 'varchar2(500 char)');
    -- R18: sitni inventar - prezaduženje (na radnika) i popis SI kod radnika
    kolona('OPERACIJE', 'radnik_prenos_id', 'number');
    kolona('POPISI', 'vrsta', 'varchar2(1 char)');
    kolona('POPISI', 'radnik_id', 'number');
    kolona('POPIS_STAVKE', 'serijski_broj', 'varchar2(255 char)');
    -- R21: zamjena šifara artikla (ZSA) - zamjenski artikal na stavci izlaza i generisana stavka ulaza
    kolona('OPERACIJA_STAVKE', 'zamjena_stavka_id', 'number');
    kolona('OPERACIJA_STAVKE', 'smjer', 'varchar2(1 char)');
    kolona('OPERACIJA_STAVKE', 'izvor_stavka_id', 'number');
    -- R22: cjenovnik robnih skladišta (detalji i paket u 21_rm_cjenovnik.sql; kolone ovdje jer ih čita RM_DOKUMENT_PKG)
    kolona('CJENOVNIK_STAVKE', 'napomena', 'varchar2(1000 char)');
    kolona('CJENOVNIK_STAVKE', 'izvor', 'varchar2(1 char)');
    kolona('CJENOVNIK_STAVKE', 'kalkulacija_id', 'number');
    kolona('CJENOVNIK_STAVKE', 'operacija_id', 'number');
    kolona('CJENOVNIK_STAVKE', 'prethodni_id', 'number');
    -- R23: maloprodaja - zaliha po MPC (NABAVNA_CIJENA = MPC), stvarna nabavna cijena za kasniji obračun RUC;
    -- nivelacija: stara MPC (MPC = nova)
    kolona('OPERACIJA_STAVKE', 'nabavna_mp', 'number');
    kolona('OPERACIJA_STAVKE', 'mpc_stara', 'number');

    ogranicenje('OPERACIJE_STATUS_CK',
        q'[alter table operacije add constraint operacije_status_ck check (status in ('P', 'Z'))]');

    indeks('OPERACIJE_SKL_DATUM_I', 'create index operacije_skl_datum_i on operacije (skladiste_id, datum)');
    indeks('OPERACIJE_VRSTA_I', 'create index operacije_vrsta_i on operacije (vrsta_dokumenta_id)');
    indeks('OPERACIJE_KLIJENT_I', 'create index operacije_klijent_i on operacije (klijent_id)');
    indeks('OPERACIJE_MT_I', 'create index operacije_mt_i on operacije (mjesto_troska_id)');
    indeks('OPERACIJE_VEZA_I', 'create index operacije_veza_i on operacije (veza_id)');
    indeks('OPERACIJE_SKL_PRENOS_I', 'create index operacije_skl_prenos_i on operacije (skladiste_prenos_id)');
    indeks('OPERACIJE_POPIS_I', 'create index operacije_popis_i on operacije (popis_id)');
    indeks('POPISI_SKL_DATUM_I', 'create index popisi_skl_datum_i on popisi (skladiste_id, datum)');
    indeks('POPISI_RADNIK_I', 'create index popisi_radnik_i on popisi (radnik_id, datum)');
    indeks('OPERACIJE_RADNIK_I', 'create index operacije_radnik_i on operacije (zaduzeni_radnik_id)');
    indeks('OPERACIJE_RADNIK_PRENOS_I', 'create index operacije_radnik_prenos_i on operacije (radnik_prenos_id)');
    ogranicenje('OPERACIJA_STAVKE_SMJER_CK',
        q'[alter table operacija_stavke add constraint operacija_stavke_smjer_ck check (smjer in ('U', 'I'))]');
    indeks('OPERACIJA_STAVKE_IZVOR_I', 'create index operacija_stavke_izvor_i on operacija_stavke (izvor_stavka_id)');
    indeks('OPERACIJA_STAVKE_SB_SB_I', 'create index operacija_stavke_sb_sb_i on operacija_stavke_sb (serijski_broj)');
    indeks('OPERACIJA_STAVKE_SB_UK',
        'create unique index operacija_stavke_sb_uk on operacija_stavke_sb (operacija_stavka_id, serijski_broj)');
end;
/

comment on column operacije.vrsta_dokumenta_id is 'Vrsta dokumenta skladišta (SIF.VRSTE_DOKUMENATA, modul MAT): PRI, ... (v2)';
comment on column operacije.status is 'P = u pripremi, Z = zaključen (v2; prijemnicu zaključava kalkulacija)';
comment on column operacije.otpremnica_broj is 'Broj otpremnice / dokumenta dobavljača (v2)';
comment on column operacije.otpremnica_datum is 'Datum otpremnice / dokumenta dobavljača (v2)';
comment on column operacija_stavke.redni_broj is 'Redni broj stavke u dokumentu (v2)';
comment on column operacije.zaduzeni_radnik_id is 'Zaduženi radnik (SIF.ACC_RADNICI) - izlaz na osnovno sredstvo i sitni inventar (v2)';
comment on column operacije.popis_id is 'Popis skladišta iz kojeg je nastao dokument razlike inventure RIV / RIM (v2)';
comment on column popis_stavke.prethodna_kolicina is 'Knjigovodstveno stanje na datum popisa: svi ulazi - zaključeni izlazi (v2)';
comment on column popis_stavke.popis_kolicina is 'Popisana (stvarna) količina - unosi knjigovođa (v2)';
comment on column operacije.radnik_prenos_id is 'Prezaduženje sitnog inventara (PSI): radnik na kojeg se zaduženje prenosi; ZADUZENI_RADNIK_ID = sa radnika (v2)';
comment on column popisi.vrsta is 'S (ili prazno) = popis skladišta, I = popis sitnog inventara kod zaduženog radnika (v2)';
comment on column popisi.radnik_id is 'Popis sitnog inventara: zaduženi radnik (SIF.ACC_RADNICI) (v2)';
comment on column popis_stavke.serijski_broj is 'Popis sitnog inventara: serijski broj (artikli koji se prate po SB - jedan red po komadu) (v2)';
comment on column popis_stavke.cijena is 'Prosječna cijena artikla na skladištu na datum popisa (v2)';
comment on column operacija_stavke.nabavna_mp is 'Maloprodajno skladište: stvarna nabavna cijena (zaliha se vodi po MPC u NABAVNA_CIJENA) - za obračun RUC (v2)';
comment on column operacija_stavke.mpc_stara is 'Nivelacija (NIVM): MPC prije promjene; MPC = nova, NABAVNA_CIJENA = razlika po jedinici (v2)';
comment on column operacija_stavke.zamjena_stavka_id is 'Zamjena šifara (ZSA): artikal koji se dodaje na stanje umjesto artikla stavke (v2)';
comment on column operacija_stavke.smjer is 'U / I = smjer stavke kada se razlikuje od vrste dokumenta (ZSA: generisana stavka ulaza zamjenskog artikla) (v2)';
comment on column operacija_stavke.izvor_stavka_id is 'ZSA: stavka izlaza iz koje je nastala generisana stavka ulaza (v2)';
comment on column operacije.mjesto_troska_id is 'Mjesto troška (SIF.ACC_MJESTA_TROSKA) - izdatnica, izlaz na investiciju u toku (v2)';

-- 2a) brojači izlaznih i međuskladišnih dokumenata (IZD, IIN, IOS, ISI, MPR, MPP) --------
declare
    l_modul number;
    l_novih number := 0;
begin
    select id into l_modul from sif.acc_moduli where upper(sifra) = 'MAT';
    for v in (select vd.id, vd.ooj_id, upper(vd.sifra) as sifra
                from sif.vrste_dokumenata vd
               where vd.acc_modul_id = l_modul
                 and upper(vd.sifra) in ('IZD', 'IIN', 'IOS', 'ISI', 'MPR', 'MPP', 'REV', 'REVP', 'RSV', 'RSVP', 'RAS', 'RIV', 'RIM', 'PSI', 'RSZ', 'RSR', 'RUM', 'RUV', 'FDK', 'ZSA', 'NIVM',
                                         'PIV', 'UIV', 'PVI', 'UVI', 'PVM', 'UVM', 'PMV', 'UMV')
                 and vd.ooj_id is not null
                 and vd.valid = 'Y') loop
        for g in 2024 .. extract(year from sysdate) loop
            if not core.protokoli_pkg.check_brojac(v.ooj_id, lower(v.sifra), g) then
                core.protokoli_pkg.insert_protokol(
                    p_ooj_id          => v.ooj_id,
                    p_vrsta_naloga_id => v.id,
                    p_godina          => g,
                    p_prefix          => v.sifra || '-',
                    p_broj            => 0,
                    p_sufix           => null,
                    p_duzina          => 6,
                    p_auto_restart    => 'Y'
                );
                l_novih := l_novih + 1;
            end if;
        end loop;
    end loop;
    commit;
    dbms_output.put_line('Novi brojači izlaznih, međuskladišnih i reversa: ' || l_novih);
end;
/

-- 2) brojač PRI za svaku firmu sa vrstom dokumenta PRI ---------------------------------
declare
    l_modul  number;
    l_prefix varchar2(100);
    l_sufix  varchar2(100);
    l_duzina number;
    l_novih  number := 0;
begin
    select id into l_modul from sif.acc_moduli where upper(sifra) = 'MAT';
    for v in (select vd.id, vd.ooj_id
                from sif.vrste_dokumenata vd
               where vd.acc_modul_id = l_modul
                 and upper(vd.sifra) = 'PRI'
                 and vd.ooj_id is not null
                 and vd.valid = 'Y') loop
        -- samo do tekuće godine: APP_GODINA = najveća godina sa aktivnim brojačem
        for g in 2024 .. extract(year from sysdate) loop
            if not core.protokoli_pkg.check_brojac(v.ooj_id, 'pri', g) then
                l_prefix := null; l_sufix := null; l_duzina := null;
                -- format kao kod postojećeg brojača "Prijem robe" (PRRO), ako postoji
                if core.protokoli_pkg.check_brojac(v.ooj_id, 'prro', g) then
                    core.protokoli_pkg.get_brojac(
                        p_ooj_id             => v.ooj_id,
                        p_vrsta_naloga_sifra => 'prro',
                        p_godina             => g,
                        p_prefix             => l_prefix,
                        p_duzina             => l_duzina,
                        p_sufix              => l_sufix
                    );
                end if;
                core.protokoli_pkg.insert_protokol(
                    p_ooj_id          => v.ooj_id,
                    p_vrsta_naloga_id => v.id,
                    p_godina          => g,
                    p_prefix          => case
                                             when instr(upper(l_prefix), 'PRRO') > 0
                                             then regexp_replace(l_prefix, 'PRRO', 'PRI', 1, 1, 'i')
                                             else 'PRI-'
                                         end,
                    p_broj            => 0,
                    p_sufix           => l_sufix,
                    p_duzina          => nvl(l_duzina, 6),
                    p_auto_restart    => 'Y'
                );
                l_novih := l_novih + 1;
            end if;
        end loop;
    end loop;
    commit;
    dbms_output.put_line('Novi brojači PRI: ' || l_novih);
end;
/

-- 3) postojeći podaci ---------------------------------------------------------------
declare
    l_modul number;
begin
    select id into l_modul from sif.acc_moduli where upper(sifra) = 'MAT';

    update operacije
       set status = case when zakljucano = 'Y' then 'Z' else 'P' end
     where status is null;
    dbms_output.put_line('Status postavljen: ' || sql%rowcount);

    -- stare prijemnice (tip kretanja PR) -> vrsta PRI iste firme
    merge into operacije o
    using (select o2.id, vd.id as vrsta_id
             from operacije o2
             join sif.acc_tipovi_kretanja_robe t on t.id = o2.tip_kretanja_id and upper(t.sifra) = 'PR'
             join sif.vrste_dokumenata vd
               on vd.ooj_id = o2.ooj_id and vd.acc_modul_id = l_modul and upper(vd.sifra) = 'PRI' and vd.valid = 'Y'
            where o2.vrsta_dokumenta_id is null) s
       on (o.id = s.id)
     when matched then update set o.vrsta_dokumenta_id = s.vrsta_id;
    dbms_output.put_line('Stare prijemnice -> PRI: ' || sql%rowcount);

    -- redni broj postojećih stavki
    merge into operacija_stavke os
    using (select id, row_number() over (partition by operacija_id order by id) as rb
             from operacija_stavke
            where redni_broj is null) s
       on (os.id = s.id)
     when matched then update set os.redni_broj = s.rb;
    dbms_output.put_line('Redni brojevi stavki: ' || sql%rowcount);
    commit;
end;
/

alter table operacije modify (status default on null 'P');
