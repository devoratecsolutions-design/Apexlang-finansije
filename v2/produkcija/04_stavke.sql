/*
================================================================================
  ESSCOM Finansije - 04_stavke.sql
  Pokrenuti kao: ACCOUNTING, POSLIJE 01-03, PRIJE importa aplikacije
  
  Svrha: STAVKE_PKG - ispravke iz analize "Stavke i cjenovnici"
    P-02  MPC po stopi stavke i PDV sistemu OOJ (ranije fiksno x 1,17)
          -> ispravlja i cijene koje upisuje zaključavanje kalkulacije
    P-08  uvijek posljednja aktivna cijena kad ih u cjenovniku ima više
    P-01  stavka iz dokumenata se ne briše (uz zabranu u aplikaciji)
    P-11  cjenovnik sa cijenama / dodijeljen skladištu se ne briše
    P-12  zabrana petlje u klasama, klasa sa podklasama/stavkama se ne briše
    O-02  retroaktivni naziv samo na nefiskalizovanim i neproknjiženim fakturama
    O-06  klasa "Ostalo" za svaku firmu; stavke bez klase se premještaju u nju
          (JEDINA izmjena podataka u skripti - ispisuje broj premještenih stavki,
           a svaku bilježi u STAVKE_OSTALO_V2 radi vraćanja)
    Nove funkcije: pdv_stopa, stavka_u_upotrebi, sljedeca_sifra, klasa_ostalo
  VAŽNO: aplikacija v2 koristi nove funkcije paketa (klasa_ostalo,
  sljedeca_sifra) - skriptu pokrenuti PRIJE importa aplikacije.
  Postojeće tabele se NE mijenjaju (nove su samo pomoćne STAVKE_PKG_BACKUP_V2
  i STAVKE_OSTALO_V2, za vraćanje).

  Paket je napravljen iz DDL exporta (29.10.2026) i mijenja samo navedene
  procedure. Ako je STAVKE_PKG u bazi mijenjan poslije tog exporta,
  javite prije pokretanja. Skripta prvo sačuva trenutni izvor paketa u
  tabelu STAVKE_PKG_BACKUP_V2 (vraćanje: vidi kraj skripte).
================================================================================
*/
set define off
set serveroutput on
whenever sqlerror exit failure rollback

-- 1) rezervna kopija trenutnog izvora
declare
    l_postoji number;
begin
    select count(*) into l_postoji from user_tables where table_name = 'STAVKE_PKG_BACKUP_V2';
    if l_postoji = 0 then
        execute immediate q'[create table stavke_pkg_backup_v2 as
            select sysdate as sacuvano, type, line, text
              from user_source
             where name = 'STAVKE_PKG']';
    end if;
end;
/

-- 2) specifikacija
create or replace package accounting.stavke_pkg is

    -- Klase stavki
    procedure get_klasa (
        p_id            in number,
        p_ooj_id        out number,
        p_nadredjeno_id out number,
        p_naziv         out varchar2,
        p_valid         out varchar2
    );

    procedure insert_klasa (
        p_ooj_id        in number,
        p_nadredjeno_id in number,
        p_naziv         in varchar2
    );

    procedure update_klasa (
        p_id            in number,
        p_ooj_id        in number,
        p_nadredjeno_id in number,
        p_naziv         in varchar2,
        p_valid         in varchar2
    );

    procedure delete_klasa (
        p_id in number
    );

    -- Stavke
    procedure get_stavka (
        p_id               in number,
        p_ooj_id           out number,
        p_tip_stavke_id    out number,
        p_grupa_id         out number,
        p_jm_id            out number,
        p_naziv            out varchar2,
        p_sifra            out varchar2,
        p_marza            out number,
        p_klasa_id         out number,
        p_pdv_indikator    out varchar2,
        p_pdv_indikator_id out number,
        p_ino_usluga       out varchar2,
        p_serijski_broj    out varchar2,
        p_valid            out varchar2
    );

    procedure get_stavka (
        p_id               in number,
        p_jm_id            out number,
        p_pdv_indikator    out varchar2,
        p_pdv_indikator_id out number
    );

    procedure get_stavka_cijene (
        p_stavka_id      in number,
        p_nabavna_cijena in number,
        p_vpc            out number,
        p_mpc            out number
    );
    
    procedure get_stavka_cjenovnik_cijene (
      p_stavka_id in number,
      p_cjenovnik_id in number, 
      p_nabavna_cijena out number, 
      p_vpc out number,
      p_mpc out number
    );

    function get_stavka_naziv (
        p_id in number
    ) return varchar2;

    function get_stavka_jm_id (
        p_id in number
    ) return number;

    function get_stavka_prosjecna_cijena (
        p_stavka_id    in number,
        p_skladiste_id in number
    ) return number;

    function get_stavka_stanje_kolicina (
        p_stavka_id    in number,
        p_skladiste_id in number
    ) return number;

    procedure insert_stavka (
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_grupa_id         in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_marza            in number,
        p_klasa_id         in number,
        p_pdv_indikator    in varchar2,
        p_pdv_indikator_id in number,
        p_ino_usluga       in varchar2,
        p_serijski_broj    in varchar2
    );

    procedure update_stavka (
        p_id               in number,
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_grupa_id         in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_marza            in number,
        p_klasa_id         in number,
        p_pdv_indikator    in varchar2,
        p_pdv_indikator_id in number,
        p_ino_usluga       in varchar2,
        p_serijski_broj    in varchar2,
        p_valid            in varchar2
    );

    procedure update_stavka_retroaktivno (
        p_stavka_id in number,
        p_naziv     in varchar2
    );

    procedure delete_stavka (
        p_id in number
    );

    -- eGroblje
    procedure get_stavka_groblje (
        p_id                    in number,
        p_ooj_id                out number,
        p_naziv                 out varchar2,
        p_sifra                 out varchar2,
        p_datum_od              out date,
        p_datum_do              out date,
        p_tip_grobnog_mjesta_id out number,
        p_valid                 out varchar2
    );

    procedure insert_stavka_groblje (
        p_ooj_id                in number,
        p_naziv                 in varchar2,
        p_sifra                 in varchar2,
        p_datum_od              in date,
        p_datum_do              in date,
        p_tip_grobnog_mjesta_id in number
    );

    procedure update_stavka_groblje (
        p_id                    in number,
        p_ooj_id                in number,
        p_naziv                 in varchar2,
        p_sifra                 in varchar2,
        p_datum_od              in date,
        p_datum_do              in date,
        p_tip_grobnog_mjesta_id in number,
        p_valid                 in varchar2
    );
    
    -- eRibolovac
    procedure get_stavka_ribolovac (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_sifra  out varchar2,
        p_valid  out varchar2
    );

    procedure insert_stavka_ribolovac (
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_sifra  in varchar2
    );

    procedure update_stavka_ribolovac (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_sifra  in varchar2,
        p_valid  in varchar2
    );
    
    --Car Service
    procedure get_stavka_car_service (
    p_id               in number,
    p_ooj_id           out number,
    p_tip_stavke_id    out number,
    p_jm_id            out number,
    p_naziv            out varchar2,
    p_sifra            out varchar2,
    p_valid            out varchar2
    );
    
    procedure insert_stavka_car_service (
    p_ooj_id           in number,
    p_tip_stavke_id    in number,
    p_jm_id            in number,
    p_naziv            in varchar2,
    p_sifra            in varchar2
    );

    procedure update_stavka_car_service (
        p_id               in number,
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_valid            in varchar2
    );
    
    -- Cjenovnik
    procedure get_cjenovnik (
        p_id     in number,
        p_ooj_id out number,
        p_sifra  out varchar2,
        p_naziv  out varchar2,
        p_opis   out varchar2,
        p_tip    out varchar2,
        p_valid  out varchar2
    );

    procedure insert_cjenovnik (
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_opis   in varchar2,
        p_tip    in varchar2
    );

    procedure update_cjenovnik (
        p_id     in number,
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_opis   in varchar2,
        p_tip    in varchar2,
        p_valid  in varchar2
    );

    procedure delete_cjenovnik (
        p_id in number
    );

    -- Cjenovnik stavke
    function get_nabavna_cijena (
        p_cjenovnik_id in number,
        p_stavka_id    in number
    ) return number;

    function get_stavka_cijena (
        p_cjenovnik_id in number,
        p_stavka_id    in number,
        p_tip_cijene   in varchar2
    ) return number;

    procedure get_cjenovnik_stavka (
        p_id             in number,
        p_cjenovnik_id   out number,
        p_stavka_id      out number,
        p_datum          out date,
        p_nabavna_cijena out number,
        p_mpc            out number,
        p_vpc            out number,
        p_valid          out varchar2
    );

    procedure insert_cjenovnik_stavka (
        p_cjenovnik_id   in number,
        p_stavka_id      in number,
        p_datum          in date,
        p_nabavna_cijena in number,
        p_mpc            in number,
        p_vpc            in number
    );

    procedure insert_cjenovnik_stavka (
        p_cjenovnik_id   in number,
        p_stavka_id in number,
        p_cijena    in number
    );

    procedure update_cjenovnik_stavka (
        p_cjenovnik_id   in number,
        p_id             in number,
        p_stavka_id      in number,
        p_datum          in date,
        p_nabavna_cijena in number,
        p_mpc            in number,
        p_vpc            in number,
        p_valid          in varchar2
    );

    procedure delete_cjenovnik_stavka (
        p_id in number
    );
    
    procedure deaktiviraj_cjenovnik_stavka (
        p_id in number
    );

    

    -- v2 (Stavke i cjenovnici) -----------------------------------------
    -- PDV stopa stavke u %: 0 kad OOJ nije u PDV sistemu; inače stopa
    -- posebnog PDV indikatora stavke, a za "pun iznos" opšta stopa 17.
    function pdv_stopa (
        p_stavka_id in number,
        p_ooj_id    in number default null
    ) return number;

    -- 'Y' ako se stavka koristi u nekom dokumentu (faktura, ugovor,
    -- robni dokument, popis, trebovanje, normativ, radni nalog).
    function stavka_u_upotrebi (
        p_stavka_id in number
    ) return varchar2;

    -- Klasa "Ostalo" firme (pravi je ako ne postoji); podrazumijevana klasa.
    function klasa_ostalo (
        p_ooj_id in number
    ) return number;

    -- Sljedeća slobodna numerička šifra stavke u OOJ (6 cifara).
    function sljedeca_sifra (
        p_ooj_id in number
    ) return varchar2;

end stavke_pkg;
/
show errors package accounting.stavke_pkg

-- 3) tijelo paketa
create or replace package body accounting.stavke_pkg is

    -- Klase stavki
    procedure get_klasa (
        p_id            in number,
        p_ooj_id        out number,
        p_nadredjeno_id out number,
        p_naziv         out varchar2,
        p_valid         out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_klase_stavki
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_nadredjeno_id := c1.nadredjeno_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        end loop;
    end get_klasa;

    procedure insert_klasa (
        p_ooj_id        in number,
        p_nadredjeno_id in number,
        p_naziv         in varchar2
    ) is
    begin
        insert into sec_klase_stavki (
            ooj_id,
            nadredjeno_id,
            naziv
        ) values ( p_ooj_id,
                   p_nadredjeno_id,
                   p_naziv );

    end insert_klasa;

    procedure update_klasa (
        p_id            in number,
        p_ooj_id        in number,
        p_nadredjeno_id in number,
        p_naziv         in varchar2,
        p_valid         in varchar2
    ) is
        l_nadredjeno_id number := p_nadredjeno_id;
        l_petlja        number;
    begin
        if l_nadredjeno_id = p_id then
            l_nadredjeno_id := null;
        end if;

        -- v2: nadređena klasa ne smije biti podređena ovoj (petlja)
        if l_nadredjeno_id is not null then
            select count(*)
              into l_petlja
              from sec_klase_stavki
             where id = l_nadredjeno_id
             start with id = p_id
           connect by nocycle prior id = nadredjeno_id;
            if l_petlja > 0 then
                raise_application_error(-20102,
                    'Nadređena klasa ne može biti jedna od podređenih klasa.');
            end if;
        end if;

        update sec_klase_stavki
        set
            ooj_id = p_ooj_id,
            nadredjeno_id = l_nadredjeno_id,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_klasa;

    procedure delete_klasa (
        p_id in number
    ) is
        l_broj number;
    begin
        -- v2: klasa sa podklasama ili stavkama se ne briše
        select count(*) into l_broj from sec_klase_stavki where nadredjeno_id = p_id;
        if l_broj = 0 then
            select count(*) into l_broj from sec_stavke where klasa_id = p_id;
        end if;
        if l_broj > 0 then
            raise_application_error(-20103,
                'Klasa ima podređene klase ili stavke i ne može se obrisati.');
        end if;

        delete from sec_klase_stavki
        where
            id = p_id;

    end delete_klasa;

    -- Stavke
    procedure get_stavka (
        p_id               in number,
        p_ooj_id           out number,
        p_tip_stavke_id    out number,
        p_grupa_id         out number,
        p_jm_id            out number,
        p_naziv            out varchar2,
        p_sifra            out varchar2,
        p_marza            out number,
        p_klasa_id         out number,
        p_pdv_indikator    out varchar2,
        p_pdv_indikator_id out number,
        p_ino_usluga       out varchar2,
        p_serijski_broj    out varchar2,
        p_valid            out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_stavke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_tip_stavke_id := c1.tip_stavke_id;
            p_grupa_id := c1.grupa_id;
            p_jm_id := c1.jm_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_marza := c1.marza;
            p_klasa_id := c1.klasa_id;
            p_pdv_indikator := c1.pdv_indikator;
            p_pdv_indikator_id := c1.pdv_indikator_id;
            p_ino_usluga := c1.ino_usluga;
            p_serijski_broj := c1.serijski_broj;
            p_valid := c1.valid;
        end loop;
    end get_stavka;

    procedure get_stavka (
        p_id               in number,
        p_jm_id            out number,
        p_pdv_indikator    out varchar2,
        p_pdv_indikator_id out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_stavke
            where
                id = p_id
        ) loop
            p_jm_id := c1.jm_id;
            p_pdv_indikator := c1.pdv_indikator;
            p_pdv_indikator_id := c1.pdv_indikator_id;
        end loop;
    end get_stavka;

    procedure get_stavka_cijene (
        p_stavka_id      in number,
        p_nabavna_cijena in number,
        p_vpc            out number,
        p_mpc            out number
    ) is
        l_stopa number;
    begin
        -- v2: MPC po stopi stavke i PDV sistemu OOJ (ranije fiksno 1,17)
        l_stopa := pdv_stopa(p_stavka_id);
        for c1 in (
            select
                coalesce(marza, 0) as marza
            from
                sec_stavke
            where
                id = p_stavka_id
        ) loop
            p_vpc := round(p_nabavna_cijena + ( p_nabavna_cijena * c1.marza / 100 ), 2);
            p_mpc := round(p_vpc * ( 1 + l_stopa / 100 ), 2);
        end loop;

    end get_stavka_cijene;
    
    
    
   procedure get_stavka_cjenovnik_cijene (
      p_stavka_id in number,
      p_cjenovnik_id in number,
      p_nabavna_cijena out number,
      p_vpc out number,
      p_mpc out number
    ) is
    begin
      p_nabavna_cijena := 0;
      p_vpc := 0;
      p_mpc := 0;
      -- v2: posljednja aktivna cijena (ranije nasumična kad ih ima više)
      for c in (select cs.nabavna_cijena, cs.vpc, cs.mpc
                from cjenovnik_stavke cs
                where cs.cjenovnik_id = p_cjenovnik_id
                and cs.stavka_id = p_stavka_id
                and cs.valid = 'Y'
                order by cs.datum desc nulls last, cs.id desc
                fetch first 1 rows only)
      loop
          p_nabavna_cijena := c.nabavna_cijena;
          p_vpc := c.vpc;
          p_mpc := c.mpc;
      end loop;
    end get_stavka_cjenovnik_cijene;
    
    
    

    function get_stavka_naziv (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                naziv
            from
                sec_stavke
            where
                id = p_id
        ) loop
            return c1.naziv;
        end loop;

        return null;
    end get_stavka_naziv;

    function get_stavka_jm_id (
        p_id in number
    ) return number is
    begin
        for c1 in (
            select
                jm_id
            from
                sec_stavke
            where
                id = p_id
        ) loop
            return c1.jm_id;
        end loop;

        return null;
    end get_stavka_jm_id;

    function get_stavka_prosjecna_cijena (
        p_stavka_id    in number,
        p_skladiste_id in number
    ) return number is
    begin
        for c1 in (
            select
                prosjecna_cijena
            from
                vw_skladiste_stavke
            where
                    stavka_id = p_stavka_id
                and skladiste_id = p_skladiste_id
        ) loop
            return c1.prosjecna_cijena;
        end loop;
    end get_stavka_prosjecna_cijena;

    function get_stavka_stanje_kolicina (
        p_stavka_id    in number,
        p_skladiste_id in number
    ) return number is
    begin
        for c1 in (
            select
                stanje_kolicina
            from
                vw_skladiste_stavke
            where
                    stavka_id = p_stavka_id
                and skladiste_id = p_skladiste_id
        ) loop
            return c1.stanje_kolicina;
        end loop;
        
        return 0;
    end get_stavka_stanje_kolicina;

    procedure insert_stavka (
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_grupa_id         in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_marza            in number,
        p_klasa_id         in number,
        p_pdv_indikator    in varchar2,
        p_pdv_indikator_id in number,
        p_ino_usluga       in varchar2,
        p_serijski_broj    in varchar2
    ) is
    begin
        -- v2 (O-06): klasa je obavezna; bez klase ide u "Ostalo"
        insert into sec_stavke (
            ooj_id,
            tip_stavke_id,
            grupa_id,
            jm_id,
            naziv,
            sifra,
            marza,
            klasa_id,
            pdv_indikator,
            pdv_indikator_id,
            ino_usluga,
            serijski_broj
        ) values ( p_ooj_id,
                   p_tip_stavke_id,
                   p_grupa_id,
                   p_jm_id,
                   p_naziv,
                   p_sifra,
                   p_marza,
                   coalesce(p_klasa_id, klasa_ostalo(p_ooj_id)),
                   p_pdv_indikator,
                   p_pdv_indikator_id,
                   p_ino_usluga,
                   p_serijski_broj );

    end insert_stavka;

    procedure update_stavka (
        p_id               in number,
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_grupa_id         in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_marza            in number,
        p_klasa_id         in number,
        p_pdv_indikator    in varchar2,
        p_pdv_indikator_id in number,
        p_ino_usluga       in varchar2,
        p_serijski_broj    in varchar2,
        p_valid            in varchar2
    ) is
    begin
        -- v2 (O-06): klasa je obavezna; bez klase ide u "Ostalo"
        update sec_stavke
        set
            ooj_id = p_ooj_id,
            tip_stavke_id = p_tip_stavke_id,
            grupa_id = p_grupa_id,
            jm_id = p_jm_id,
            naziv = p_naziv,
            sifra = p_sifra,
            marza = p_marza,
            klasa_id = coalesce(p_klasa_id, klasa_ostalo(p_ooj_id)),
            pdv_indikator = p_pdv_indikator,
            pdv_indikator_id = p_pdv_indikator_id,
            ino_usluga = p_ino_usluga,
            serijski_broj = p_serijski_broj,
            valid = p_valid
        where
            id = p_id;

    end update_stavka;

    procedure update_stavka_retroaktivno (
        p_stavka_id in number,
        p_naziv     in varchar2
    ) is
    begin
        -- v2 (O-02): samo fakture koje nisu fiskalizovane ni proknjižene
        update kif_stavke ks
        set
            naziv = p_naziv
        where
            ks.stavka_id = p_stavka_id
            and exists (
                select 1
                  from kif k
                 where k.id = ks.kif_id
                   and k.glavna_knjiga_id is null
                   and nvl(k.fiskalizovano, 'N') = 'N'
            );

    end update_stavka_retroaktivno;

    procedure delete_stavka (
        p_id in number
    ) is
    begin
        -- v2: stavka iz dokumenata se ne briše (strani ključevi su isključeni)
        if stavka_u_upotrebi(p_id) = 'Y' then
            raise_application_error(-20101,
                'Stavka se koristi u dokumentima i ne može se obrisati. Deaktivirajte je.');
        end if;

        delete from cjenovnik_stavke
        where
            stavka_id = p_id;

        delete from sec_stavke
        where
            id = p_id;

    end delete_stavka;

    -- eGroblje
    procedure get_stavka_groblje (
        p_id                    in number,
        p_ooj_id                out number,
        p_naziv                 out varchar2,
        p_sifra                 out varchar2,
        p_datum_od              out date,
        p_datum_do              out date,
        p_tip_grobnog_mjesta_id out number,
        p_valid                 out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_stavke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
            p_tip_grobnog_mjesta_id := c1.tip_grobnog_mjesta_id;
            p_valid := c1.valid;
        end loop;
    end get_stavka_groblje;

    procedure insert_stavka_groblje (
        p_ooj_id                in number,
        p_naziv                 in varchar2,
        p_sifra                 in varchar2,
        p_datum_od              in date,
        p_datum_do              in date,
        p_tip_grobnog_mjesta_id in number
    ) is
    begin
        insert into sec_stavke (
            ooj_id,
            tip_stavke_id,
            jm_id,
            naziv,
            sifra,
            ino_usluga,
            pdv_indikator,
            datum_od,
            datum_do,
            tip_grobnog_mjesta_id
        ) values ( p_ooj_id,
                   3,
                   3,
                   p_naziv,
                   p_sifra,
                   'N',
                   'Y',
                   p_datum_od,
                   p_datum_do,
                   p_tip_grobnog_mjesta_id );

    end insert_stavka_groblje;

    procedure update_stavka_groblje (
        p_id                    in number,
        p_ooj_id                in number,
        p_naziv                 in varchar2,
        p_sifra                 in varchar2,
        p_datum_od              in date,
        p_datum_do              in date,
        p_tip_grobnog_mjesta_id in number,
        p_valid                 in varchar2
    ) is
    begin
        update sec_stavke
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            sifra = p_sifra,
            datum_od = p_datum_od,
            datum_do = p_datum_do,
            tip_grobnog_mjesta_id = p_tip_grobnog_mjesta_id,
            valid = p_valid
        where
            id = p_id;

    end update_stavka_groblje;
    
    -- eRibolovac
    procedure get_stavka_ribolovac (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_sifra  out varchar2,
        p_valid  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_stavke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
        end loop;
    end get_stavka_ribolovac;

    procedure insert_stavka_ribolovac (
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_sifra  in varchar2
    ) is
    begin
        insert into sec_stavke (
            ooj_id,
            tip_stavke_id,
            jm_id,
            naziv,
            sifra,
            ino_usluga,
            pdv_indikator
        ) values ( p_ooj_id,
                   3,
                   3,
                   p_naziv,
                   p_sifra,
                   'N',
                   'Y' );

    end insert_stavka_ribolovac;

    procedure update_stavka_ribolovac (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_sifra  in varchar2,
        p_valid  in varchar2
    ) is
    begin
        update sec_stavke
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_stavka_ribolovac;
    
    --Car Service
    procedure get_stavka_car_service (
        p_id               in number,
        p_ooj_id           out number,
        p_tip_stavke_id    out number,
        p_jm_id            out number,
        p_naziv            out varchar2,
        p_sifra            out varchar2,
        p_valid            out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sec_stavke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_tip_stavke_id := c1.tip_stavke_id;
            p_jm_id := c1.jm_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
        end loop;
    end get_stavka_car_service;
    
    procedure insert_stavka_car_service(
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2
    ) is
    begin
        insert into sec_stavke (
            ooj_id,
            tip_stavke_id,
            jm_id,
            naziv,
            sifra
        ) values ( p_ooj_id,
                   p_tip_stavke_id,
                   p_jm_id,
                   p_naziv,
                   p_sifra

                   );

    end insert_stavka_car_service;

    procedure update_stavka_car_service (
        p_id               in number,
        p_ooj_id           in number,
        p_tip_stavke_id    in number,
        p_jm_id            in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_valid            in varchar2
    ) is
    begin
        update sec_stavke
        set
            ooj_id = p_ooj_id,
            tip_stavke_id = p_tip_stavke_id,
            jm_id = p_jm_id,
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_stavka_car_service;
    
    -- Cjenovnik
    procedure get_cjenovnik (
        p_id     in number,
        p_ooj_id out number,
        p_sifra  out varchar2,
        p_naziv  out varchar2,
        p_opis   out varchar2,
        p_tip    out varchar2,
        p_valid  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                cjenovnici
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_tip := c1.tip;
            p_valid := c1.valid;
        end loop;
    end get_cjenovnik;

    procedure insert_cjenovnik (
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_opis   in varchar2,
        p_tip    in varchar2
    ) is
    begin
        insert into cjenovnici (
            ooj_id,
            sifra,
            naziv,
            opis,
            tip
        ) values (
            p_ooj_id,
            p_sifra,
            p_naziv,
            p_opis,
            p_tip
        );

    end insert_cjenovnik;

    procedure update_cjenovnik (
        p_id     in number,
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_opis   in varchar2,
        p_tip    in varchar2,
        p_valid  in varchar2
    ) is
    begin
        update cjenovnici
        set
            ooj_id = p_ooj_id,
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            tip = p_tip,
            valid = p_valid
        where
            id = p_id;

    end update_cjenovnik;

    procedure delete_cjenovnik (
        p_id in number
    ) is
        l_broj number;
    begin
        -- v2: cjenovnik sa cijenama ili dodijeljen skladištu se ne briše
        select count(*) into l_broj from cjenovnik_stavke where cjenovnik_id = p_id;
        if l_broj = 0 then
            select count(*) into l_broj from skladista where cjenovnik_id = p_id;
        end if;
        if l_broj > 0 then
            raise_application_error(-20104,
                'Cjenovnik ima cijene ili je dodijeljen skladištu i ne može se obrisati. Deaktivirajte ga.');
        end if;

        delete from cjenovnici
        where
            id = p_id;

    end delete_cjenovnik;

    -- Cjenovnik stavke
    function get_nabavna_cijena (
        p_cjenovnik_id in number,
        p_stavka_id    in number
    ) return number is
    begin
        for c1 in (
            select
                nabavna_cijena
            from
                cjenovnik_stavke
            where
                cjenovnik_id = p_cjenovnik_id
                and stavka_id = p_stavka_id
                and valid = 'Y'
            order by datum desc nulls last, id desc
            fetch first 1 rows only
        ) loop
            return c1.nabavna_cijena;
        end loop;

        return null;
    end get_nabavna_cijena;

    ---izmjenjeno djordjije 21.09.2026.---
    function get_stavka_cijena (
        p_cjenovnik_id in number,
        p_stavka_id    in number,
        p_tip_cijene   in varchar2
    ) return number is
    begin
        for c1 in (
            select
                case c.tip when 'M' then cs.mpc when 'V' then cs.vpc else 0 end as jed_cijena
            from cjenovnik_stavke cs
            join cjenovnici c on c.id = cs.cjenovnik_id
            where cs.cjenovnik_id = p_cjenovnik_id
            and cs.stavka_id = p_stavka_id
            and cs.valid = 'Y'
            order by cs.datum desc nulls last, cs.id desc
            fetch first 1 rows only
        ) loop
           return c1.jed_cijena;
        end loop;

        return null;
    end get_stavka_cijena;

    procedure get_cjenovnik_stavka (
        p_id             in number,
        p_cjenovnik_id   out number,
        p_stavka_id      out number,
        p_datum          out date,
        p_nabavna_cijena out number,
        p_mpc            out number,
        p_vpc            out number,
        p_valid          out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                cjenovnik_stavke
            where
                id = p_id
        ) loop
            p_cjenovnik_id := c1.cjenovnik_id;
            p_stavka_id := c1.stavka_id;
            p_datum := c1.datum;
            p_nabavna_cijena := c1.nabavna_cijena;
            p_mpc := c1.mpc;
            p_vpc := c1.vpc;
            p_valid := c1.valid;
        end loop;
    end get_cjenovnik_stavka;

    procedure insert_cjenovnik_stavka (
        p_cjenovnik_id   in number,
        p_stavka_id      in number,
        p_datum          in date,
        p_nabavna_cijena in number,
        p_mpc            in number,
        p_vpc            in number
    ) is
    begin
      
        update cjenovnik_stavke
        set
            valid = 'N'
        where
            stavka_id = p_stavka_id
            and cjenovnik_id = p_cjenovnik_id
            and valid='Y';

        insert into cjenovnik_stavke (
            cjenovnik_id,
            stavka_id,
            datum,
            nabavna_cijena,
            mpc,
            vpc
        ) values ( p_cjenovnik_id,
                   p_stavka_id,
                   p_datum,
                   p_nabavna_cijena,
                   p_mpc,
                   p_vpc );

    end insert_cjenovnik_stavka;

    procedure insert_cjenovnik_stavka (
        p_cjenovnik_id in number,
        p_stavka_id    in number,
        p_cijena       in number
    ) is
        l_vpc number;
        l_mpc number;
    begin
        update cjenovnik_stavke
        set
            valid = 'N'
        where
            stavka_id = p_stavka_id
        and valid='Y'
        and cjenovnik_id=p_cjenovnik_id;
            
        get_stavka_cijene (
            p_stavka_id      => p_stavka_id,
            p_nabavna_cijena => p_cijena,
            p_vpc            => l_vpc,
            p_mpc            => l_mpc
        );

        insert into cjenovnik_stavke (
            cjenovnik_id,
            stavka_id,
            datum,
            nabavna_cijena,
            mpc,
            vpc
        ) values ( p_cjenovnik_id,
                   p_stavka_id,
                   sysdate,
                   p_cijena,
                   l_mpc,
                   l_vpc
        );

    end insert_cjenovnik_stavka;

    procedure update_cjenovnik_stavka (
        p_cjenovnik_id   in number,
        p_id             in number,
        p_stavka_id      in number,
        p_datum          in date,
        p_nabavna_cijena in number,
        p_mpc            in number,
        p_vpc            in number,
        p_valid          in varchar2
    ) is
    begin
  
    
    
        update cjenovnik_stavke
        set
            cjenovnik_id = p_cjenovnik_id,
            stavka_id = p_stavka_id,
            datum = p_datum,
            nabavna_cijena = p_nabavna_cijena,
            mpc = p_mpc,
            vpc = p_vpc,
            valid = p_valid
        where
            id = p_id;

    end update_cjenovnik_stavka;

    procedure delete_cjenovnik_stavka (
        p_id in number
    ) is
    begin
        delete from cjenovnik_stavke
        where
            id = p_id;

    end delete_cjenovnik_stavka;
    
    procedure deaktiviraj_cjenovnik_stavka (
        p_id in number
    ) is
    begin
      
        update cjenovnik_stavke
        set
            valid = 'N'
        where
            id=p_id;

    end deaktiviraj_cjenovnik_stavka;
    
    
    


    -- v2 (Stavke i cjenovnici) -----------------------------------------
    function pdv_stopa (
        p_stavka_id in number,
        p_ooj_id    in number default null
    ) return number is
        c_opsta_stopa constant number := 17;
    begin
        for c1 in (
            select
                s.ooj_id,
                s.pdv_indikator,
                pi.vrijednost
            from
                sec_stavke s
                left join sif.acc_pdv_indikatori pi on pi.id = s.pdv_indikator_id
            where
                s.id = p_stavka_id
        ) loop
            if nvl(core.ooj_pkg.get_ooj_pdv_sistem(coalesce(p_ooj_id, c1.ooj_id)), 'N') != 'Y' then
                return 0;
            end if;
            -- poseban PDV indikator (oslobođenje, 0%) samo kad je izabran;
            -- "pun iznos" (ili bez indikatora) = opšta stopa
            if c1.pdv_indikator = 'N' and c1.vrijednost is not null then
                return c1.vrijednost;
            end if;
            return c_opsta_stopa;
        end loop;

        return c_opsta_stopa;
    end pdv_stopa;

    function stavka_u_upotrebi (
        p_stavka_id in number
    ) return varchar2 is
        l_ima number;
    begin
        select count(*)
          into l_ima
          from dual
         where exists (select 1 from kif_stavke         where stavka_id = p_stavka_id)
            or exists (select 1 from ugovor_stavke      where stavka_id = p_stavka_id)
            or exists (select 1 from operacija_stavke   where stavka_id = p_stavka_id)
            or exists (select 1 from popis_stavke       where stavka_id = p_stavka_id)
            or exists (select 1 from trebovanje_stavke  where stavka_id = p_stavka_id)
            or exists (select 1 from normativi          where stavka_id = p_stavka_id)
            or exists (select 1 from normativ_stavke    where stavka_id = p_stavka_id)
            or exists (select 1 from radni_nalozi       where stavka_id = p_stavka_id)
            or exists (select 1 from radni_nalog_stavke where stavka_id = p_stavka_id);

        if l_ima = 0 then
            -- cijene modula (šema SIF): dinamički, da paket ne zavisi od granta
            begin
                execute immediate
                    'select count(*) from sif.sif_moduli_cijene where stavka_id = :1 and rownum = 1'
                    into l_ima using p_stavka_id;
            exception
                when others then
                    l_ima := 0;
            end;
        end if;

        return case when l_ima > 0 then 'Y' else 'N' end;
    end stavka_u_upotrebi;

    function klasa_ostalo (
        p_ooj_id in number
    ) return number is
        pragma autonomous_transaction;
        l_id number;
    begin
        select max(id) keep (dense_rank first order by case valid when 'Y' then 0 else 1 end, id)
          into l_id
          from sec_klase_stavki
         where ooj_id = p_ooj_id
           and nadredjeno_id is null
           and upper(trim(naziv)) = 'OSTALO';

        if l_id is null and p_ooj_id is not null then
            insert into sec_klase_stavki (ooj_id, nadredjeno_id, naziv)
            values (p_ooj_id, null, 'Ostalo')
            returning id into l_id;
            commit;
        end if;

        return l_id;
    end klasa_ostalo;

    function sljedeca_sifra (
        p_ooj_id in number
    ) return varchar2 is
        l_max number;
    begin
        select max(to_number(sifra))
          into l_max
          from sec_stavke
         where ooj_id = p_ooj_id
           and regexp_like(sifra, '^[0-9]{1,15}$');

        return lpad(to_char(nvl(l_max, 0) + 1),
                    greatest(6, length(to_char(nvl(l_max, 0) + 1))), '0');
    end sljedeca_sifra;

end stavke_pkg;
/
show errors package accounting.stavke_pkg
show errors package body accounting.stavke_pkg

-- paket mora biti ispravan prije izmjene podataka
declare
    l_neispravno number;
begin
    select count(*) into l_neispravno
      from user_objects
     where object_name = 'STAVKE_PKG' and status != 'VALID';
    if l_neispravno > 0 then
        raise_application_error(-20000,
            'STAVKE_PKG nije ispravno kompajliran - pogledajte greske iznad i posaljite ih. Vracanje: kraj skripte.');
    end if;
end;
/

-- 4) klasa "Ostalo" za svaku firmu koja ima stavke; stavke bez klase idu u nju (O-06)
--    Svaka premještena stavka se bilježi u STAVKE_OSTALO_V2 (za vraćanje).
declare
    l_postoji number;
begin
    select count(*) into l_postoji from user_tables where table_name = 'STAVKE_OSTALO_V2';
    if l_postoji = 0 then
        execute immediate 'create table stavke_ostalo_v2 (stavka_id number, ooj_id number, klasa_id number, premjesteno date)';
    end if;
end;
/

declare
    l_klasa number;
    l_broj  number := 0;
begin
    for f in (select distinct ooj_id from sec_stavke where ooj_id is not null and klasa_id is null) loop
        l_klasa := stavke_pkg.klasa_ostalo(f.ooj_id);
        execute immediate
            'insert into stavke_ostalo_v2 (stavka_id, ooj_id, klasa_id, premjesteno)
             select id, ooj_id, :1, sysdate from sec_stavke where ooj_id = :2 and klasa_id is null'
            using l_klasa, f.ooj_id;
        update sec_stavke set klasa_id = l_klasa
         where ooj_id = f.ooj_id and klasa_id is null;
        l_broj := l_broj + sql%rowcount;
    end loop;
    commit;
    dbms_output.put_line('Stavke premještene u klasu Ostalo: ' || l_broj);
end;
/


-- 5) provjera
select object_type, status from user_objects where object_name = 'STAVKE_PKG' order by object_type;
select line, position, text from user_errors where name = 'STAVKE_PKG' order by sequence;

-- Test (zamijeniti ID stavke):
--   select stavke_pkg.pdv_stopa(<stavka_id>) as stopa,
--          stavke_pkg.stavka_u_upotrebi(<stavka_id>) as u_upotrebi,
--          stavke_pkg.sljedeca_sifra(<ooj_id>) as sifra
--     from dual;
--
-- Vraćanje na prethodnu verziju: tekst iz STAVKE_PKG_BACKUP_V2 (type =
-- 'PACKAGE', pa 'PACKAGE BODY', order by line) izvršiti kao
-- "create or replace " || tekst.
