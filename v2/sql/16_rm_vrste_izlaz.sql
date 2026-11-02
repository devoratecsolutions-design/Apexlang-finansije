/*
================================================================================
  ESSCOM Finansije - 16_rm_vrste_izlaz.sql
  Pokrenuti kao: SIF, PRIJE 11_rm_model.sql (brojači) i 12_rm_pkg.sql

  Nove vrste dokumenata skladišta (modul MAT):
    R11 (samo materijalna skladišta):
      IZD  Izdatnica
      IIN  Izlaz na investiciju u toku
    R12:
      IOS  Izlaz na osnovno sredstvo      (samo materijalna skladišta)
      ISI  Izlaz na sitni inventar        (samo materijalna skladišta)
      MPR  Međuskladišni prenos           (izlaz na drugo skladište)
      MPP  Međuskladišni prijem           (ulaz; nastaje preuzimanjem prenosa)
    R13:
      REV  Revers                         (izlaz; zaduženi radnik)
      REVP Revers - povrat                (ulaz; zaduženi radnik, do dostupnog sa reversa)
      RSV  Revers servis                  (izlaz; komitent)
      RSVP Revers servis - povrat         (ulaz; komitent, do dostupnog sa reversa servisa)
  Vrsta se dodaje svakoj firmi koja već ima vrstu PRI (Prijemnica) u modulu MAT,
  sa istom aplikacijom (app_id). Postojeće vrste sa istom šifrom se ne mijenjaju.
  Skripta se može pokrenuti više puta.
================================================================================
*/
set define off
set serveroutput on

declare
    l_modul number;
    l_novih number := 0;
    procedure dodaj (p_sifra in varchar2, p_naziv in varchar2, p_opis in varchar2, p_tk in varchar2 default 'I') is
    begin
        for f in (select vd.ooj_id, max(vd.app_id) as app_id
                    from sif.vrste_dokumenata vd
                   where vd.acc_modul_id = l_modul
                     and upper(vd.sifra) = 'PRI'
                     and vd.ooj_id is not null
                     and vd.valid = 'Y'
                   group by vd.ooj_id) loop
            insert into sif.vrste_dokumenata (app_id, acc_modul_id, ooj_id, sifra, naziv, opis, tip_kretanja, valid,
                                              row_version, created, created_by)
            select f.app_id, l_modul, f.ooj_id, p_sifra, p_naziv, p_opis, p_tk, 'Y',
                   1, sysdate, coalesce(sys_context('APEX$SESSION', 'APP_USER'), user)
              from dual
             where not exists (select 1 from sif.vrste_dokumenata x
                                where x.ooj_id = f.ooj_id and x.acc_modul_id = l_modul and upper(x.sifra) = p_sifra);
            l_novih := l_novih + sql%rowcount;
        end loop;
    end dodaj;
begin
    select id into l_modul from sif.acc_moduli where upper(sifra) = 'MAT';
    dodaj('IZD', 'Izdatnica', 'Izlaz materijala sa skladišta u potrošnju (v2)');
    dodaj('IIN', 'Izlaz na investiciju u toku', 'Izlaz materijala sa skladišta na investiciju u toku (v2)');
    dodaj('IOS', 'Izlaz na osnovno sredstvo', 'Izlaz materijala sa skladišta na osnovno sredstvo, uz zaduženog radnika (v2)');
    dodaj('ISI', 'Izlaz na sitni inventar', 'Izlaz materijala sa skladišta na sitni inventar, uz zaduženog radnika (v2)');
    dodaj('MPR', 'Međuskladišni prenos', 'Prenos robe na drugo skladište firme (v2)');
    dodaj('MPP', 'Međuskladišni prijem', 'Prijem robe sa drugog skladišta - nastaje preuzimanjem prenosa (v2)', 'U');
    dodaj('REV', 'Revers', 'Zaduženje radnika robom / opremom (v2)');
    dodaj('REVP', 'Revers - povrat', 'Povrat robe / opreme od zaduženog radnika (v2)', 'U');
    dodaj('RSV', 'Revers servis', 'Izdavanje robe / opreme komitentu na servis (v2)');
    dodaj('RSVP', 'Revers servis - povrat', 'Povrat robe / opreme od komitenta sa servisa (v2)', 'U');
    commit;
    dbms_output.put_line('Nove vrste dokumenata: ' || l_novih);
end;
/

-- pregled
select vd.ooj_id, vd.sifra, vd.naziv, vd.tip_kretanja, vd.valid
  from sif.vrste_dokumenata vd
  join sif.acc_moduli m on m.id = vd.acc_modul_id and upper(m.sifra) = 'MAT'
 where upper(vd.sifra) in ('IZD', 'IIN', 'IOS', 'ISI', 'MPR', 'MPP', 'REV', 'REVP', 'RSV', 'RSVP')
 order by vd.ooj_id, vd.sifra;
