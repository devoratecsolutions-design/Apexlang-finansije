/*
================================================================================
  ESSCOM Finansije - 01_indeksi.sql
  Pokrenuti kao: ACCOUNTING (ili DBA)
  Redoslijed:    PRIJE importa aplikacije (nezavisno od verzije aplikacije)

  Svrha:
    Indeksi na kolonama po kojima aplikacija stalno spaja/filtrira, a koji
    trenutno ne postoje. Najvažniji su indeksi na GLAVNA_KNJIGA_STAVKE:
    view VW_KIF/VW_KUF za SVAKU fakturu računa uplaćeni iznos
    (SELECT SUM(...) FROM glavna_knjiga_stavke WHERE kif_id = ...), a bez
    indeksa na KIF_ID / KUF_ID to je full scan tabele stavki po svakom redu.

  Skripta je idempotentna: indeks koji već postoji (isto ime ili iste kolone)
  se preskače. Indeksi se kreiraju ONLINE, pa ne zaključavaju tabele.
  Na Autonomous bazi (ESSCOMDEV_HIGH) ovo je sigurno pokrenuti u radno vrijeme,
  ali je preporuka van špica.
================================================================================
*/
set serveroutput on size unlimited

-- ne čekaj beskonačno na otvorene transakcije; indeks koji ne prođe pokreni ponovo kasnije
alter session set ddl_lock_timeout = 30;

declare
    procedure create_idx (
        p_table   in varchar2,
        p_columns in varchar2,
        p_name    in varchar2
    ) is
        l_cnt number;
    begin
        -- postoji li već indeks istog imena
        select count(*)
          into l_cnt
          from all_indexes
         where owner = 'ACCOUNTING'
           and index_name = upper(p_name);

        if l_cnt > 0 then
            dbms_output.put_line('PRESKOČENO (ime postoji): ' || p_name);
            return;
        end if;

        -- postoji li već indeks koji počinje istim kolonama
        select count(*)
          into l_cnt
          from (
                select index_name,
                       listagg(column_name, ',') within group (order by column_position) cols
                  from all_ind_columns
                 where index_owner = 'ACCOUNTING'
                   and table_owner = 'ACCOUNTING'
                   and table_name = upper(p_table)
                 group by index_name
               )
         where cols = upper(replace(p_columns, ' ', ''))
            or cols like upper(replace(p_columns, ' ', '')) || ',%';

        if l_cnt > 0 then
            dbms_output.put_line('PRESKOČENO (kolone već indeksirane): ' || p_table || '(' || p_columns || ')');
            return;
        end if;

        execute immediate 'create index ACCOUNTING.' || p_name
                       || ' on ACCOUNTING.' || p_table || ' (' || p_columns || ') online';
        dbms_output.put_line('KREIRANO: ' || p_name || ' na ' || p_table || '(' || p_columns || ')');
    exception
        when others then
            dbms_output.put_line('GREŠKA ' || p_name || ': ' || sqlerrm);
    end create_idx;
begin
    ----------------------------------------------------------------------------
    -- GLAVNA_KNJIGA_STAVKE  (najveća tabela, najviše koristi)
    ----------------------------------------------------------------------------
    create_idx('GLAVNA_KNJIGA_STAVKE', 'GLAVNA_KNJIGA_ID',    'GKS_GLAVNA_KNJIGA_I');
    create_idx('GLAVNA_KNJIGA_STAVKE', 'KIF_ID',              'GKS_KIF_I');
    create_idx('GLAVNA_KNJIGA_STAVKE', 'KUF_ID',              'GKS_KUF_I');
    create_idx('GLAVNA_KNJIGA_STAVKE', 'KONTNA_KLASA_ID',     'GKS_KONTNA_KLASA_I');
    create_idx('GLAVNA_KNJIGA_STAVKE', 'KLIJENT_ID',          'GKS_KLIJENT_I');
    create_idx('GLAVNA_KNJIGA_STAVKE', 'OSNOVNO_SREDSTVO_ID', 'GKS_OSNOVNO_SREDSTVO_I');

    ----------------------------------------------------------------------------
    -- GLAVNA_KNJIGA (nalozi)
    ----------------------------------------------------------------------------
    create_idx('GLAVNA_KNJIGA', 'OOJ_ID, GODINA',  'GLAVNA_KNJIGA_OOJ_GOD_I');
    create_idx('GLAVNA_KNJIGA', 'STORNIRAN_ID',    'GLAVNA_KNJIGA_STORNIRAN_I');
    create_idx('GLAVNA_KNJIGA', 'OOJ_BANKA_ID',    'GLAVNA_KNJIGA_OOJ_BANKA_I');

    ----------------------------------------------------------------------------
    -- KIF / KUF  (liste faktura uvijek filtriraju po OOJ_ID + GODINA)
    ----------------------------------------------------------------------------
    create_idx('KIF', 'OOJ_ID, GODINA',   'KIF_OOJ_GOD_I');
    create_idx('KIF', 'STORNIRAN_ID',     'KIF_STORNIRAN_I');
    create_idx('KIF', 'FAKTURA_ID',       'KIF_FAKTURA_I');
    create_idx('KIF', 'SKLADISTE_ID',     'KIF_SKLADISTE_I');
    create_idx('KIF', 'VRSTA_FAKTURE_ID', 'KIF_VRSTA_FAKTURE_I');
    create_idx('KUF', 'OOJ_ID, GODINA',   'KUF_OOJ_GOD_I');
    create_idx('KUF', 'STORNIRAN_ID',     'KUF_STORNIRAN_I');

    ----------------------------------------------------------------------------
    -- Robno-materijalno
    ----------------------------------------------------------------------------
    create_idx('OPERACIJE',   'SKLADISTE_ID',   'OPERACIJE_SKLADISTE_I');
    create_idx('OPERACIJE',   'KALKULACIJA_ID', 'OPERACIJE_KALKULACIJA_I');
    create_idx('OPERACIJE',   'VEZA_ID',        'OPERACIJE_VEZA_I');
    create_idx('TREBOVANJA',  'SKLADISTE_ID',   'TREBOVANJA_SKLADISTE_I');
    create_idx('POPISI',      'SKLADISTE_ID',   'POPISI_SKLADISTE_I');
    create_idx('SEC_STAVKE',  'GRUPA_ID',       'SEC_STAVKE_GRUPA_I');

    ----------------------------------------------------------------------------
    -- Osnovna sredstva
    ----------------------------------------------------------------------------
    create_idx('SEC_OSNOVNA_SREDSTVA', 'KLASA_ID',   'SEC_OS_KLASA_I');
    create_idx('SEC_OSNOVNA_SREDSTVA', 'HISTORY_ID', 'SEC_OS_HISTORY_I');
    create_idx('SEC_OSNOVNA_SREDSTVA', 'PRIPREMA_ID','SEC_OS_PRIPREMA_I');
end;
/

-- Svježa statistika za tabele na kojima su dodani indeksi (pokrenuti van špica)
begin
    for t in (
        select column_value tbl
          from table(sys.odcivarchar2list(
                   'GLAVNA_KNJIGA_STAVKE', 'GLAVNA_KNJIGA', 'KIF', 'KUF',
                   'OPERACIJE', 'TREBOVANJA', 'SEC_OSNOVNA_SREDSTVA'))
    ) loop
        begin
            dbms_stats.gather_table_stats(
                ownname => 'ACCOUNTING',
                tabname => t.tbl,
                cascade => true
            );
        exception
            when others then
                dbms_output.put_line('Statistika ' || t.tbl || ': ' || sqlerrm);
        end;
    end loop;
end;
/
