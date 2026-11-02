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

    ogranicenje('OPERACIJE_STATUS_CK',
        q'[alter table operacije add constraint operacije_status_ck check (status in ('P', 'Z'))]');

    indeks('OPERACIJE_SKL_DATUM_I', 'create index operacije_skl_datum_i on operacije (skladiste_id, datum)');
    indeks('OPERACIJE_VRSTA_I', 'create index operacije_vrsta_i on operacije (vrsta_dokumenta_id)');
    indeks('OPERACIJE_KLIJENT_I', 'create index operacije_klijent_i on operacije (klijent_id)');
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
