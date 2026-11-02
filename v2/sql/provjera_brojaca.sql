/* Provjera brojača (numeracije) firme 219 - samo čitanje. Pokrenuti kao ACCOUNTING sa uključenim DBMS Output. */
set serveroutput on size unlimited
begin
    dbms_output.put_line('### BROJAČI 219: id | vrsta (id) | šifra | godina | prefix | broj | valid | kreiran');
    for r in (select p.id, p.vrsta_naloga_id, vd.sifra, vd.acc_modul_id, p.godina, p.prefix, p.broj, p.valid,
                     to_char(p.created, 'DD.MM.YYYY HH24:MI') as kreiran
                from core.protokoli p
                left join sif.vrste_dokumenata vd on vd.id = p.vrsta_naloga_id
               where p.ooj_id = 219
               order by vd.sifra, p.godina) loop
        dbms_output.put_line(r.id || ' | ' || r.vrsta_naloga_id || ' | ' || r.sifra || ' | ' || r.godina || ' | '
                             || r.prefix || ' | ' || r.broj || ' | ' || r.valid || ' | ' || r.kreiran);
    end loop;
    dbms_output.put_line('### check_brojac(219, uf, 2026) = '
                         || case when core.protokoli_pkg.check_brojac(219, 'uf', 2026) then 'TRUE' else 'FALSE' end);
    dbms_output.put_line('### check_brojac(219, pri, 2026) = '
                         || case when core.protokoli_pkg.check_brojac(219, 'pri', 2026) then 'TRUE' else 'FALSE' end);
end;
/
