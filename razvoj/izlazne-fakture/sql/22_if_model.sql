/*
================================================================================
  ESSCOM Finansije - 22_if_model.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 16_rm_vrste_izlaz.sql (SIF), 11_rm_model.sql
  i 12_rm_pkg.sql; PRIJE 23_if_views.sql i 24_if_pkg.sql

  Svrha: model izlaznih faktura v2 (korak I1)
    KIF          ZAKLJUCAO, ZAKLJUCANO_DATUM; STATUS se koristi: P u pripremi,
                 Z zaključena, K proknjižena
    KIF_STAVKE   REDNI_BROJ, OPIS, OPERACIJA_STAVKA_ID (stavka vezanog dokumenta
                 skladišta - otpremnica OTP / prodaja u maloprodaji PMP)
    KIF_MIGRACIJA_V2  evidencija izmjena postojećih podataka
    Indeksi: OPERACIJE(faktura_id), KIF(status), KIF(skladiste_id),
             KIF_STAVKE(operacija_stavka_id), KIF_AVANSI_ZATVARANJE(avans_zatvaranja_id)
  Postojeći podaci (bilježe se u KIF_MIGRACIJA_V2):
    - STATUS: proknjižena (glavna_knjiga_id) -> K, ostale -> Z (do sada je svaka
      faktura bila konačna odmah po unosu). Predračuni ostaju P.
    - redni broj postojećih stavki
  Vezani dokumenti skladišta se za stare fakture NE prave (nova logika važi
  od prelaska na v2).
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) tabela migracije, kolone, indeksi --------------------------------------------
declare
    l_n number;

    procedure kolona (p_tabela in varchar2, p_ime in varchar2, p_def in varchar2) is
    begin
        select count(*) into l_n from user_tab_columns where table_name = p_tabela and column_name = upper(p_ime);
        if l_n = 0 then
            execute immediate 'alter table ' || p_tabela || ' add (' || p_ime || ' ' || p_def || ')';
            dbms_output.put_line('Dodata kolona ' || p_tabela || '.' || upper(p_ime));
        end if;
    end;

    procedure indeks (p_ime in varchar2, p_ddl in varchar2) is
    begin
        select count(*) into l_n from user_indexes where index_name = upper(p_ime);
        if l_n = 0 then
            execute immediate p_ddl;
            dbms_output.put_line('Napravljen indeks ' || upper(p_ime));
        end if;
    exception
        when others then
            -- ORA-01408: kolona je već indeksirana postojećim indeksom (npr. OPERACIJE_I5) - ne treba novi
            if sqlcode = -1408 then
                dbms_output.put_line('Indeks ' || upper(p_ime) || ' nije potreban - kolona je već indeksirana.');
            else
                raise;
            end if;
    end;
begin
    select count(*) into l_n from user_tables where table_name = 'KIF_MIGRACIJA_V2';
    if l_n = 0 then
        execute immediate q'[
            create table kif_migracija_v2 (
                kif_id           number,
                kolona           varchar2(30),
                stara_vrijednost varchar2(4000),
                nova_vrijednost  varchar2(4000),
                izmijenjeno      date default sysdate
            )]';
        dbms_output.put_line('Napravljena tabela KIF_MIGRACIJA_V2');
    end if;

    kolona('KIF', 'zakljucao', 'varchar2(255)');
    kolona('KIF', 'zakljucano_datum', 'date');
    kolona('KIF_STAVKE', 'redni_broj', 'number');
    kolona('KIF_STAVKE', 'opis', 'varchar2(1000 char)');
    kolona('KIF_STAVKE', 'operacija_stavka_id', 'number');

    indeks('OPERACIJE_FAKTURA_I', 'create index operacije_faktura_i on operacije (faktura_id)');
    indeks('KIF_STATUS_I', 'create index kif_status_i on kif (ooj_id, status)');
    indeks('KIF_SKLADISTE_I', 'create index kif_skladiste_i on kif (skladiste_id)');
    indeks('KIF_FAKTURA_I', 'create index kif_faktura_i on kif (faktura_id)');
    indeks('KIF_STORNIRAN_I', 'create index kif_storniran_i on kif (storniran_id)');
    indeks('KIF_STAVKE_OS_I', 'create index kif_stavke_os_i on kif_stavke (operacija_stavka_id)');
    indeks('KIF_AZ_ZATV_I', 'create index kif_az_zatv_i on kif_avansi_zatvaranje (avans_zatvaranja_id)');
    indeks('KIF_MIGRACIJA_V2_I', 'create index kif_migracija_v2_i on kif_migracija_v2 (kif_id, kolona)');
end;
/

comment on column kif.status is 'P = u pripremi, Z = zaključena (v2: vezani dokument skladišta zaključen), K = proknjižena';
comment on column kif.zakljucao is 'Korisnik koji je zaključio fakturu (v2)';
comment on column kif.zakljucano_datum is 'Vrijeme zaključavanja fakture (v2)';
comment on column kif_stavke.redni_broj is 'Redni broj stavke na fakturi (v2)';
comment on column kif_stavke.opis is 'Dodatni opis stavke na fakturi (v2)';
comment on column kif_stavke.operacija_stavka_id is 'Stavka vezanog dokumenta skladišta (OTP / PMP) - razduženje robe (v2)';

-- 2) postojeći podaci -------------------------------------------------------------
declare
    l_n number;
begin
    -- status: do v2 je svaka faktura bila konačna odmah po unosu
    insert into kif_migracija_v2 (kif_id, kolona, stara_vrijednost, nova_vrijednost)
    select k.id, 'STATUS', k.status,
           case when k.glavna_knjiga_id is not null then 'K' else 'Z' end
      from kif k
     where not exists (select 1 from kif_migracija_v2 m where m.kif_id = k.id and m.kolona = 'STATUS')
       and nvl((select lower(vn.sifra)
                  from sif.vrste_dokumenata vd
                  join sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id
                 where vd.id = k.vrsta_fakture_id), '-') <> 'pr'
       and nvl(k.status, 'P') <> case when k.glavna_knjiga_id is not null then 'K' else 'Z' end;
    l_n := sql%rowcount;

    update kif k
       set k.status = case when k.glavna_knjiga_id is not null then 'K' else 'Z' end
     where exists (select 1 from kif_migracija_v2 m
                    where m.kif_id = k.id and m.kolona = 'STATUS'
                      and m.nova_vrijednost = case when k.glavna_knjiga_id is not null then 'K' else 'Z' end)
       and nvl(k.status, 'P') <> case when k.glavna_knjiga_id is not null then 'K' else 'Z' end;
    dbms_output.put_line('Status postojećih faktura (Z / K): ' || l_n);

    -- redni broj postojećih stavki
    merge into kif_stavke ks
    using (select id, row_number() over (partition by kif_id order by id) as rb
             from kif_stavke
            where redni_broj is null) s
       on (ks.id = s.id)
     when matched then update set ks.redni_broj = s.rb;
    dbms_output.put_line('Redni brojevi stavki: ' || sql%rowcount);
    commit;
end;
/

alter table kif modify (status default on null 'P');

-- 3) brojači vezanih dokumenata skladišta (OTP, PMP) -------------------------------
declare
    l_modul number;
    l_novih number := 0;
begin
    select id into l_modul from sif.acc_moduli where upper(sifra) = 'MAT';
    for v in (select vd.id, vd.ooj_id, upper(vd.sifra) as sifra
                from sif.vrste_dokumenata vd
               where vd.acc_modul_id = l_modul
                 and upper(vd.sifra) in ('OTP', 'PMP')
                 and vd.ooj_id is not null
                 and vd.valid = 'Y') loop
        -- samo do tekuće godine (APP_GODINA = najveća godina sa aktivnim brojačem)
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
    dbms_output.put_line('Novi brojači OTP / PMP: ' || l_novih);
end;
/
