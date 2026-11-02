/*
================================================================================
  ESSCOM Finansije - 02_dashboard_views.sql
  Pokrenuti kao: ACCOUNTING
  Redoslijed:    POSLIJE 01_indeksi.sql, PRIJE importa aplikacije

  Svrha:
    Lagani view-ovi nad osnovnim tabelama za dashboarde. Ne koriste VW_KIF /
    VW_KUF jer ti view-ovi po svakom redu pozivaju PL/SQL (spell_pkg,
    acc_pkg.convert_bam) i skalarne podupite, i vraćaju BLOB kolone - za
    zbirne brojeve to je nepotrebno sporo.

    Pravila (jedno mjesto za izmjenu ako poslovna logika treba drugačije):
      - isključene su nevažeće (valid = 'N') i stornirane fakture
        (stornirano = 'Y' i storno dokumenti sa storniran_id)
      - predračuni (vrsta naloga 'pr') su označeni kolonom JE_PREDRACUN
      - OTVORENO = iznos - plaćeno kroz izvode - plaćeno ručno,
        a 0 ako je faktura označena kao plaćena (uplaceno = 'Y');
        plaćanja sa storniranih naloga se ne računaju
      - budžet: samo aktuelna (posljednja) verzija nakon rebalansa
    View-ovi ne mijenjaju ništa postojeće i stara verzija aplikacije ih ne koristi.
================================================================================
*/

create or replace force view accounting.vw_dash_kif as
select
    kif.id,
    kif.ooj_id,
    kif.godina,
    kif.klijent_id,
    kif.naziv_fakture,
    kif.datum_fakture,
    kif.datum_valute,
    kif.iznos_fakture                                   as iznos,
    kif.iznos_fakture_nopdv                             as iznos_bez_pdv,
    kif.uplaceno,
    kif.fiskalizovano,
    kif.glavna_knjiga_id,
    kif.status,
    vd.fiskalna_sifra,
    case when lower(vn.sifra) = 'pr' then 'Y' else 'N' end as je_predracun,
    coalesce(p.placeno_izvod, 0)                        as placeno_izvod,
    coalesce(kif.uplaceno_rucno, 0)                     as placeno_rucno,
    case
        when kif.uplaceno = 'Y' then 0
        else greatest(
                 coalesce(kif.iznos_fakture, 0)
                 - coalesce(p.placeno_izvod, 0)
                 - coalesce(kif.uplaceno_rucno, 0),
                 0)
    end                                                 as otvoreno
from
    accounting.kif kif
    left join sif.vrste_dokumenata vd on vd.id = kif.vrsta_fakture_id
    left join sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id
    left join (
        select gks.kif_id, sum(abs(gks.iznos)) as placeno_izvod
          from accounting.glavna_knjiga_stavke gks
          join accounting.glavna_knjiga gk on gk.id = gks.glavna_knjiga_id
         where gks.kif_id is not null
           and gks.valid = 'Y'
           and gk.valid = 'Y'
           -- storno naloga kopira stavke sa -iznos i istim kif_id; i original i
           -- storno nalog dobiju stornirano = 'Y', pa oba isključujemo
           and coalesce(gk.stornirano, 'N') = 'N'
         group by gks.kif_id
    ) p on p.kif_id = kif.id
where
        kif.valid = 'Y'
    and kif.stornirano = 'N'
    and kif.storniran_id is null;

create or replace force view accounting.vw_dash_kuf as
select
    kuf.id,
    kuf.ooj_id,
    kuf.godina,
    kuf.klijent_id,
    coalesce(kuf.naziv_fakture, kuf.naziv)              as naziv_fakture,
    kuf.datum_fakture,
    kuf.datum_prijema,
    kuf.datum_valute,
    kuf.iznos_sa_pdv                                    as iznos,
    kuf.iznos_bez_pdv,
    kuf.uplaceno,
    kuf.glavna_knjiga_id,
    kuf.status,
    coalesce(p.placeno_izvod, 0)                        as placeno_izvod,
    coalesce(kuf.uplaceno_rucno, 0)                     as placeno_rucno,
    case
        when kuf.uplaceno = 'Y' then 0
        else greatest(
                 coalesce(kuf.iznos_sa_pdv, 0)
                 - coalesce(p.placeno_izvod, 0)
                 - coalesce(kuf.uplaceno_rucno, 0),
                 0)
    end                                                 as otvoreno
from
    accounting.kuf kuf
    left join (
        select gks.kuf_id, sum(abs(gks.iznos)) as placeno_izvod
          from accounting.glavna_knjiga_stavke gks
          join accounting.glavna_knjiga gk on gk.id = gks.glavna_knjiga_id
         where gks.kuf_id is not null
           and gks.valid = 'Y'
           and gk.valid = 'Y'
           -- storno naloga kopira stavke sa -iznos i istim kuf_id; i original i
           -- storno nalog dobiju stornirano = 'Y', pa oba isključujemo
           and coalesce(gk.stornirano, 'N') = 'N'
         group by gks.kuf_id
    ) p on p.kuf_id = kuf.id
where
        kuf.valid = 'Y'
    and coalesce(kuf.stornirano, 'N') = 'N'
    and kuf.storniran_id is null;

-- Posljednje stanje po žiro računu (iz posljednjeg nestorniranog izvoda)
create or replace force view accounting.vw_dash_ziro_stanje as
select
    zr.id            as ziro_racun_id,
    zr.ooj_id,
    zr.sifra         as sifra_racuna,
    zr.broj          as broj_racuna,
    zr.opis,
    zr.valuta_id,
    v.sifra          as valuta,
    i.datum          as datum_izvoda,
    i.broj           as broj_izvoda,
    coalesce(i.novi_saldo, 0) as stanje
from
    sif.sif_ziro_racuni zr
    join sif.acc_valute v on v.id = zr.valuta_id
    left join (
        select iz.*,
               row_number() over (partition by iz.ziro_racun_id
                                  order by iz.datum desc, iz.broj desc, iz.id desc) as rn
          from accounting.izvodi iz
         where coalesce(iz.storno, 'N') = 'N'
    ) i on i.ziro_racun_id = zr.id and i.rn = 1
where
    coalesce(zr.valid, 'Y') = 'Y';

-- Posljednje stanje po blagajni (iz posljednjeg dnevnika)
create or replace force view accounting.vw_dash_blagajna_stanje as
select
    b.id             as blagajna_id,
    b.ooj_id,
    b.naziv,
    b.valuta_id,
    v.sifra          as valuta,
    d.datum          as datum_dnevnika,
    coalesce(d.zakljucno_stanje, 0) as stanje
from
    accounting.blagajne b
    left join sif.acc_valute v on v.id = b.valuta_id
    left join (
        select bd.*,
               row_number() over (partition by bd.blagajna_id
                                  order by bd.datum desc, bd.id desc) as rn
          from accounting.blagajna_dnevnik bd
    ) d on d.blagajna_id = b.id and d.rn = 1
where
    coalesce(b.valid, 'Y') = 'Y';

-- Aktuelna verzija svakog budžeta: rebalans kreira novi zapis sa BUDZET_ID =
-- budžet koji se rebalansira; uzimamo posljednji (najveći ID) u svakoj porodici.
create or replace force view accounting.vw_dash_budzet_aktuelni as
select
    budzet_id,
    ooj_id,
    godina,
    status_id
from (
    select
        b.id        as budzet_id,
        b.ooj_id,
        b.godina,
        b.status_id,
        row_number() over (partition by f.root_id order by b.id desc) as rn
    from
        accounting.budzeti b
        join (
            select id, connect_by_root id as root_id
              from accounting.budzeti
             start with budzet_id is null
           connect by nocycle prior id = budzet_id
        ) f on f.id = b.id
    where
        b.valid = 'Y'
)
where rn = 1;

-- Provjera: svi view-ovi moraju biti VALID
select object_name, status
  from user_objects
 where object_name like 'VW_DASH%'
 order by object_name;
