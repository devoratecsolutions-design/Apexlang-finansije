/*
================================================================================
  ESSCOM Finansije - 18_core_error_manager_vracanje.sql
  Pokrenuti kao: CORE. Vraća tijelo paketa CORE.ERROR_MANAGER na verziju iz
  ddl/core_ddl.sql (prije R16).
================================================================================
*/
set define off
CREATE OR REPLACE PACKAGE BODY CORE."ERROR_MANAGER" AS
    /******************************************************************************
      Package Name : error_manager
      Description  : Centralizovano logovanje gresaka za sve aplikacije u sistemu. 
                     Bilježi kontekst greske (username, IP, user agent, APEX session, 
                     SQL kod, backtrace) u error_log tabelu i obezbjedjuje jedinstven APEX error handler.

      Change History:
      ----------------------------------------------------------------------------
      Version   Date         Author              Keyword         Change Description
      ----------------------------------------------------------------------------
      1.0.0.0   -            Milan Males         mm20260809      Initial creation
      ----------------------------------------------------------------------------
    ******************************************************************************/

    gc_module CONSTANT VARCHAR2(100) := 'core.error_manager';

    -- ========== PRIVATE UTILITY FUNCTIONS ==========

    /******************************************************************************
      Function Name : f_get_session_info
      Description   : Vraca formatiran string sa osnovnim DB session podacima
                      (SID, session_user, ip_address, host) iz USERENV konteksta.
                      Koristi se samo za dijagnostiku/debug, ne za error_log upis.

      Returns       : VARCHAR2 - formatiran string session podataka

      Notes         : - Svi exception-i se hvataju, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_session_info RETURN VARCHAR2 IS
        l_info VARCHAR2(1000);
    BEGIN
        l_info := 'SID: '
                  || SYS_CONTEXT('USERENV', 'SID')
                  || ', SESSION_USER: '
                  || SYS_CONTEXT('USERENV', 'SESSION_USER')
                  || ', IP_ADDRESS: '
                  || SYS_CONTEXT('USERENV', 'IP_ADDRESS')
                  || ', HOST: '
                  || SYS_CONTEXT('USERENV', 'HOST');

        RETURN l_info;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Unable to retrieve session info';
    END f_get_session_info;

    /******************************************************************************
      Function Name : f_get_apex_info
      Description   : Vraca formatiran string sa APEX kontekstom (app_id, page_id,
                      app_user, app_session). Koristi se samo za dijagnostiku.

      Returns       : VARCHAR2 - formatiran string APEX podataka, ili
                                 'Not in Apex context' van APEX-a

      Notes         : - Svi exception-i se hvataju, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_apex_info RETURN VARCHAR2 IS
        l_info VARCHAR2(2000);
    BEGIN
        IF APEX_APPLICATION.G_FLOW_ID IS NOT NULL THEN
            l_info := 'APP_ID: '
                      || APEX_APPLICATION.G_FLOW_ID
                      || ', PAGE_ID: '
                      || APEX_APPLICATION.G_FLOW_STEP_ID
                      || ', APP_USER: '
                      || APEX_APPLICATION.G_USER
                      || ', APP_SESSION: '
                      || APEX_APPLICATION.G_INSTANCE;

            RETURN l_info;
        ELSE
            RETURN 'Not in Apex context';
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Unable to retrieve Apex info';
    END f_get_apex_info;

    /******************************************************************************
      Function Name : f_get_client_ip
      Description   : Utvrdjuje stvarnu IP adresu klijenta po prioritetnom lancu,
                      jer USERENV.IP_ADDRESS ne radi pouzdano u web/APEX okruzenju.

      Returns       : VARCHAR2 - IP adresa klijenta, ili 'Unknown'

      Priority      : 1. HTTP_X_FORWARDED_FOR  (proxy/SSO chain - prvi IP u listi)
                      2. HTTP_X_REAL_IP        (reverse proxy, npr. nginx)
                      3. REMOTE_ADDR           (direktna konekcija na web server)
                      4. USERENV IP_ADDRESS    (fallback - direktna DB konekcija)

      Notes         : - Ako je web server mod_plsql/OHS, custom header (X-Forwarded-
                        For i sl.) mora biti eksplicitno naveden u DAD konfiguraciji
                        (PlsqlCGIEnvironmentList), inace ce OWA_UTIL uvijek vratiti
                        NULL za taj header bez obzira sto je fizicki stigao
                      - Svi exception-i se hvataju po koraku, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_client_ip RETURN VARCHAR2 IS
        l_ip VARCHAR2(4000);
    BEGIN
        BEGIN
            l_ip := OWA_UTIL.GET_CGI_ENV('HTTP_X_FORWARDED_FOR');
        EXCEPTION
            WHEN OTHERS THEN
                l_ip := NULL;
        END;

        IF l_ip IS NOT NULL THEN
            RETURN TRIM(REGEXP_SUBSTR(l_ip, '[^,]+', 1, 1));
        END IF;

        BEGIN
            l_ip := OWA_UTIL.GET_CGI_ENV('HTTP_X_REAL_IP');
        EXCEPTION
            WHEN OTHERS THEN
                l_ip := NULL;
        END;

        IF l_ip IS NOT NULL THEN
            RETURN TRIM(l_ip);
        END IF;

        BEGIN
            l_ip := OWA_UTIL.GET_CGI_ENV('REMOTE_ADDR');
        EXCEPTION
            WHEN OTHERS THEN
                l_ip := NULL;
        END;

        IF l_ip IS NOT NULL THEN
            RETURN TRIM(l_ip);
        END IF;

        BEGIN
            l_ip := SYS_CONTEXT('USERENV', 'IP_ADDRESS');
        EXCEPTION
            WHEN OTHERS THEN
                l_ip := NULL;
        END;

        RETURN NVL(l_ip, 'Unknown');
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Unknown';
    END f_get_client_ip;

    /******************************************************************************
      Function Name : f_get_client_username
      Description   : Utvrdjuje stvarnog aplikativnog korisnika po prioritetnom
                      lancu, jer USERENV.SESSION_USER / pseudo-kolona USER vracaju
                      DB connection pool usera (APEX_PUBLIC_USER), ne app korisnika.

      Returns       : VARCHAR2 - username klijenta, ili 'Unknown'

      Priority      : 1. APEX_APPLICATION.G_USER (Custom Auth i Header SSO)
                      2. HTTP_REMOTE_USER header  (SSO header - backup)
                      3. HTTP_X_SSO_USER header   (alternativni custom naziv)
                      4. USERENV SESSION_USER     (fallback - batch/scheduled)

      Notes         : - Koristi se i za username i za created_by kolonu u
                        error_log - obje moraju odrazavati istog korisnika
                      - Svi exception-i se hvataju po koraku, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_client_username RETURN VARCHAR2 IS
        l_username VARCHAR2(400);
    BEGIN
        BEGIN
            IF APEX_APPLICATION.G_USER IS NOT NULL
               AND UPPER(APEX_APPLICATION.G_USER) NOT IN ('NOCHECK', 'NOBODY') THEN
                RETURN APEX_APPLICATION.G_USER;
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;

        BEGIN
            l_username := OWA_UTIL.GET_CGI_ENV('HTTP_REMOTE_USER');
            IF l_username IS NOT NULL THEN
                RETURN l_username;
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;

        BEGIN
            l_username := OWA_UTIL.GET_CGI_ENV('HTTP_X_SSO_USER');
            IF l_username IS NOT NULL THEN
                RETURN l_username;
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;

        BEGIN
            l_username := SYS_CONTEXT('USERENV', 'SESSION_USER');
        EXCEPTION
            WHEN OTHERS THEN
                l_username := NULL;
        END;

        RETURN NVL(l_username, 'Unknown');
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Unknown';
    END f_get_client_username;

    /******************************************************************************
      Function Name : f_get_client_user_agent
      Description   : Vraca User-Agent header klijentskog browsera/klijenta.

      Returns       : VARCHAR2 - sirov User-Agent string, ili NULL ako nedostupno

      Notes         : - Standardni CGI header, radi identicno u mod_plsql i ORDS
    ******************************************************************************/
    FUNCTION f_get_client_user_agent RETURN VARCHAR2 IS
        l_agent VARCHAR2(4000);
    BEGIN
        l_agent := OWA_UTIL.GET_CGI_ENV('HTTP_USER_AGENT');
        RETURN l_agent;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN NULL;
    END f_get_client_user_agent;

    /******************************************************************************
      Function Name : f_get_program_name
      Description   : Automatski pronalazi tacnu PL/SQL jedinicu (paket.procedura/
                      funkcija) koja je stvarno pozvala logger - nezavisno od toga
                      da li je developer ispravno prosledio pi_module_name/
                      pi_action_name. Preskace sve frame-ove unutar samog
                      error_manager paketa i vraca prvi frame van njega.

      Returns       : VARCHAR2 - format 'SHEMA.PAKET.PROCEDURA', ili NULL ako
                                 pozivalac nije imenovana PL/SQL jedinica
                                 (npr. anonimni blok, APEX proces)

      Notes         : - Koristi UTL_CALL_STACK (dostupno od 12c)
                       - Ne mijesati sa f_get_client_user_agent (browser) niti sa
                        pi_module_name/pi_action_name (rucno postavljen label) -
                        ovo je nezavisna, automatska provjera
    ******************************************************************************/
    FUNCTION f_get_program_name RETURN VARCHAR2 IS
        l_depth PLS_INTEGER;
        l_unit  VARCHAR2(400);
    BEGIN
        l_depth := UTL_CALL_STACK.DYNAMIC_DEPTH;

        FOR i IN 1..l_depth LOOP
            BEGIN
                l_unit := UTL_CALL_STACK.CONCATENATE_SUBPROGRAM(UTL_CALL_STACK.SUBPROGRAM(i));
            EXCEPTION
                WHEN OTHERS THEN
                    l_unit := NULL;
            END;

            IF l_unit IS NOT NULL AND UPPER(l_unit) NOT LIKE '%ERROR_MANAGER%' THEN
                RETURN l_unit;
            END IF;
        END LOOP;

        RETURN NULL;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN NULL;
    END f_get_program_name;

    /******************************************************************************
      Function Name : f_get_readable_call_chain
      Description   : Gradi citljiv, filtriran lanac poziva za error_context
                      kolonu. Komplementarno sa error_call_stack koji cuva sirov
                      DBMS_UTILITY.FORMAT_CALL_STACK dump (za slucaj da je
                      potreban potpuno neobradjen prikaz).

      Returns       : VARCHAR2 - lanac formata:
                                 JEDINICA1
                                     -> JEDINICA2
                                     -> JEDINICA3

      Filtrira      : - WWV_FLOW/WWV_DBMS_SQL/DBMS_SYS_SQL/DBMS_SQL* - interni
                        APEX engine frame-ovi bez informativne vrijednosti (APEX
                        proces se izvrsava dinamicki preko DBMS_SQL, pa se ovi
                        frame-ovi uvijek pojavljuju bez obzira koji je proces u
                        pitanju)
                       - ERROR_MANAGER* - interni pozivi unutar ovog paketa
                       - Uzastopno duplirane '__anonymous_block' oznake

      Notes         : - Zbog dinamickog izvrsavanja APEX procesa, tacno IME
                        procesa/validacije NIJE dostupno preko UTL_CALL_STACK
                        (anonimni blok nema perzistovano ime) - za to koristiti
                        p_error.component.name unutar f_apex_error_handler
                       - Svi exception-i se hvataju, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_readable_call_chain RETURN VARCHAR2 IS
        l_depth PLS_INTEGER;
        l_chain VARCHAR2(4000);
        l_unit  VARCHAR2(400);
        l_prev  VARCHAR2(400);
    BEGIN
        l_depth := UTL_CALL_STACK.DYNAMIC_DEPTH;

        FOR i IN REVERSE 1..l_depth LOOP
            BEGIN
                l_unit := UTL_CALL_STACK.CONCATENATE_SUBPROGRAM(UTL_CALL_STACK.SUBPROGRAM(i));
            EXCEPTION
                WHEN OTHERS THEN
                    l_unit := '__anonymous_block';
            END;

            -- Preskoci interne APEX engine frame-ove (dinamicko izvrsavanje procesa)
            IF     l_unit LIKE 'WWV\_FLOW%' ESCAPE '\'
                OR l_unit LIKE 'WWV\_DBMS\_SQL%' ESCAPE '\'
                OR l_unit LIKE 'DBMS\_SYS\_SQL%' ESCAPE '\'
                OR l_unit LIKE 'DBMS\_SQL%' ESCAPE '\' THEN
                CONTINUE;
            END IF;

            -- Preskoci interne pozive unutar samog error_manager paketa
            IF UPPER(l_unit) LIKE '%ERROR\_MANAGER%' ESCAPE '\' THEN
                CONTINUE;
            END IF;

            -- Preskoci uzastopno dupliranje istog markera (npr. dva __anonymous_block zaredom)
            IF l_unit = l_prev THEN
                CONTINUE;
            END IF;

            l_chain := l_chain || CASE WHEN l_chain IS NOT NULL THEN CHR(10) || '    -> ' END || l_unit;
            l_prev := l_unit;
        END LOOP;

        RETURN l_chain;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN NULL;
    END f_get_readable_call_chain;

    /******************************************************************************
      Function Name : f_get_proxy_context
      Description   : Snima sirove header/proxy/APEX podatke radi audit traga
                      (koji header je iskoristen, kompletan proxy chain, APEX
                      session info). Rezultat ide u error_context kolonu -
                      odvojeno od additional_info koji nosi developer-ski
                      prosledjen kontekst (npr. 'ID: 123').

      Returns       : VARCHAR2 - formatiran dijagnosticki blok

      Notes         : - Svi exception-i se hvataju, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_proxy_context RETURN VARCHAR2 IS
        l_ctx VARCHAR2(4000);

        FUNCTION safe_cgi (
            p_name VARCHAR2
        ) RETURN VARCHAR2 IS
            l_val VARCHAR2(4000);
        BEGIN
            l_val := OWA_UTIL.GET_CGI_ENV(p_name);
            RETURN NVL(l_val, '-');
        EXCEPTION
            WHEN OTHERS THEN
                RETURN '-';
        END;
    BEGIN
        l_ctx := '--- CALL CHAIN ---'
                 || CHR(10) || f_get_readable_call_chain()
                 || CHR(10) || CHR(10)
                 || '--- SSO/PROXY CONTEXT ---'
                 || CHR(10) || 'X-Forwarded-For: ' || safe_cgi('HTTP_X_FORWARDED_FOR')
                 || CHR(10) || 'X-Real-IP: '       || safe_cgi('HTTP_X_REAL_IP')
                 || CHR(10) || 'REMOTE_ADDR: '     || safe_cgi('REMOTE_ADDR')
                 || CHR(10) || 'REMOTE_USER: '     || safe_cgi('HTTP_REMOTE_USER')
                 || CHR(10) || 'X-SSO-User: '      || safe_cgi('HTTP_X_SSO_USER')
                 || CHR(10) || 'USERENV.IP: '      || NVL(SYS_CONTEXT('USERENV', 'IP_ADDRESS'), '-')
                 || CHR(10) || 'USERENV.SESSION_USER: ' || NVL(SYS_CONTEXT('USERENV', 'SESSION_USER'), '-')
                 || CHR(10) || '--- APEX CONTEXT ---'
                 || CHR(10) || f_get_apex_info();

        RETURN l_ctx;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN '--- SSO/PROXY CONTEXT --- (nedostupno)';
    END f_get_proxy_context;

    /******************************************************************************
      Function Name : f_build_error_context
      Description   : Sastavlja KOMPLETAN dijagnosticki kontekst izvrsavanja u jedan
                      CLOB (za error_context kolonu). Objedinjuje postojece helpere
                      error_manager-a sa idejama iz app.apex_error_handler, ali u
                      JEDAN RED / JEDAN CLOB (ne u vise redova kao original):

                        1) CALL CHAIN     - citljiv lanac poziva (ko-je-koga-zvao)
                        2) ERROR BACKTRACE- linija na kojoj je greska nastala
                        3) PROXY/APEX/SRV - SSO/proxy header-i, APEX i server/CGI info
                        4) PAGE ITEMS     - snapshot POPUNJENIH stavki stranice
                                            (OSJETLJIVE se MASKIRAJU)
                        5) APEX DEBUG     - relevantne ERR- poruke za tekucu sesiju

      Returns       : CLOB
      Notes         : - Nikad ne pada: svaka sekcija ima vlastiti EXCEPTION.
                      - APEX-zavisne sekcije (4,5) rade samo unutar APEX sesije;
                        van APEX-a (batch) ostaju call chain + backtrace + proxy.
                      - BEZBJEDNOST: stavke ciji naziv upucuje na tajnu (password,
                        pwd, secret, token, pin, otp, jmbg, ...) NIKAD se ne upisuju
                        u punom obliku -> vrijednost postaje ***MASKIRANO***.
    ******************************************************************************/
    FUNCTION f_build_error_context (
        pi_apex_page_id IN NUMBER DEFAULT NULL
    ) RETURN CLOB IS
        l_ctx     CLOB;
        l_val     VARCHAR2(4000);
        l_cnt     PLS_INTEGER;
        l_in_apex BOOLEAN := FALSE;

        PROCEDURE add (p_text IN CLOB) IS
        BEGIN
            l_ctx := l_ctx || p_text || CHR(10);
        END;

        FUNCTION is_sensitive (p_name IN VARCHAR2) RETURN BOOLEAN IS
        BEGIN
            RETURN REGEXP_LIKE(p_name,
                       'PASS|PWD|PASSWD|SECRET|TOKEN|PIN|OTP|JMBG|OIB|SSN|CARD|CVV|IBAN',
                       'i');
        END;

        FUNCTION safe_cgi (p_name IN VARCHAR2) RETURN VARCHAR2 IS
        BEGIN
            RETURN NVL(OWA_UTIL.GET_CGI_ENV(p_name), '-');
        EXCEPTION
            WHEN OTHERS THEN RETURN '-';
        END;
    BEGIN
        BEGIN
            l_in_apex := (APEX_APPLICATION.G_FLOW_ID IS NOT NULL);
        EXCEPTION
            WHEN OTHERS THEN l_in_apex := FALSE;
        END;

        -- 1) CALL CHAIN
        add('========== CALL CHAIN ==========');
        add(NVL(f_get_readable_call_chain(), '(nedostupno)'));

        -- 2) ERROR BACKTRACE (linija nastanka greske - ne krnjimo, CLOB podnosi)
        BEGIN
            add('');
            add('========== ERROR BACKTRACE ==========');
            add(NVL(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE, '(nema aktivnog backtrace-a)'));
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;

        -- 3) PROXY / APEX / SERVER kontekst (postojeci helper + server/CGI dopuna)
        add('');
        add('========== PROXY / APEX / SERVER ==========');
        add(f_get_proxy_context());
        IF l_in_apex THEN
            add('REQUEST: '     || NVL(V('REQUEST'), '-'));
            add('USER_AGENT: '  || safe_cgi('HTTP_USER_AGENT'));
            add('REQUEST_URI: ' || safe_cgi('REQUEST_URI'));
        END IF;

        -- 4) SNAPSHOT PAGE ITEM-a (samo APEX; samo popunjeni; osjetljivi maskirani)
        IF l_in_apex THEN
            BEGIN
                add('');
                add('========== PAGE ITEMS (popunjeni; osjetljivi maskirani) ==========');
                l_cnt := 0;
                FOR r IN (
                    SELECT item_name
                      FROM apex_application_page_items
                     WHERE application_id = APEX_APPLICATION.G_FLOW_ID
                       AND page_id IN (NVL(pi_apex_page_id, APEX_APPLICATION.G_FLOW_STEP_ID), 0)
                     ORDER BY page_id, item_name
                ) LOOP
                    BEGIN
                        l_val := APEX_UTIL.GET_SESSION_STATE(r.item_name);
                    EXCEPTION
                        WHEN OTHERS THEN l_val := NULL;
                    END;

                    IF l_val IS NOT NULL THEN
                        l_cnt := l_cnt + 1;
                        IF is_sensitive(r.item_name) THEN
                            add(r.item_name || ' = ***MASKIRANO***');
                        ELSE
                            add(r.item_name || ' = ' || SUBSTR(l_val, 1, 500));
                        END IF;
                    END IF;
                END LOOP;

                IF l_cnt = 0 THEN
                    add('(nema popunjenih stavki)');
                END IF;
            EXCEPTION
                WHEN OTHERS THEN
                    add('(snapshot page item-a nedostupan)');
            END;
        END IF;

        -- 5) APEX DEBUG poruke (ERR-%) za tekucu sesiju
        IF l_in_apex THEN
            BEGIN
                add('');
                add('========== APEX DEBUG (ERR-%) ==========');
                l_cnt := 0;
                FOR d IN (
                    SELECT message
                      FROM apex_debug_messages
                     WHERE session_id = TO_NUMBER(V('APP_SESSION'))
                       AND message LIKE 'ERR-%'
                ) LOOP
                    l_cnt := l_cnt + 1;
                    add('- ' || SUBSTR(d.message, 1, 1000));
                END LOOP;

                IF l_cnt = 0 THEN
                    add('(nema ERR- debug poruka; debug je vjerovatno iskljucen)');
                END IF;
            EXCEPTION
                WHEN OTHERS THEN
                    add('(APEX debug poruke nedostupne)');
            END;
        END IF;

        RETURN l_ctx;
    EXCEPTION
        WHEN OTHERS THEN
            -- Kontekst je "nice to have": nikad ne smije oboriti samo logovanje.
            RETURN NVL(l_ctx, '(error_context nedostupan)');
    END f_build_error_context;

    -- ========== PUBLIC FUNCTIONS ==========

    /******************************************************************************
      Function Name : f_generate_error_id
      Description   : Generise jedinstveni error ID na bazi timestamp-a
                      (mikrosekundna preciznost).

      Returns       : VARCHAR2 - error ID formata YYYYMMDDHH24MISS_ffffff

      Notes         : - Ukoliko TIMESTAMP nije dostupan, koristi se SYSDATE +
                        random broj kao fallback
    ******************************************************************************/
    FUNCTION f_generate_error_id RETURN VARCHAR2 IS
    BEGIN
        -- NAMJERNO NE koristi seq_error_log.NEXTVAL. Jedini potrosac PK sekvence
        -- je p_log_error (l_new_id), koji iz te iste vrijednosti sam gradi error_id.
        -- Kad bi i ova funkcija dirala sekvencu, svaki njen (eventualni) poziv bi
        -- trosio jednu PK vrijednost u prazno. Ostaje samo za standalone/eksterne
        -- pozive i vraca vremenski jedinstven string (mikrosekundna preciznost).
        RETURN TO_CHAR(SYSTIMESTAMP, 'YYYYMMDDHH24MISSFF6');
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'ERR-' || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
    END f_generate_error_id;

    /******************************************************************************
      Procedure Name : p_log_error
      Description    : Bilježi gresku u error_log tabelu sa punim kontekstom
                       (username, IP, user agent, APEX session, SQL kod,
                       backtrace, proxy/SSO header podaci). Autonomous
                       transaction - ne zavisi od commit/rollback pozivajuce
                       transakcije.

      Parameters     :
        pi_error_code      IN  NUMBER   - SQL kod greske (default SQLCODE)
        pi_error_message   IN  VARCHAR2 - Poruka greske (default SQLERRM)
        pi_module_name     IN  VARCHAR2 - Naziv modula/paketa gdje je greska nastala
        pi_action_name     IN  VARCHAR2 - Naziv procedure/funkcije
        pi_apex_page_id    IN  NUMBER   - APEX page ID (opcionalno, auto-detekcija)
        pi_additional_info IN  CLOB     - Dodatni developer-ski kontekst (npr. ID zapisa)
        pi_severity_level  IN  VARCHAR2 - Nivo ozbiljnosti (default c_severity_error)
        pi_is_sensitive    IN  BOOLEAN  - Da li podaci podlijezu GDPR retenciji
        po_error_id        OUT VARCHAR2 - Generisani error ID (za prikaz korisniku)

      Notes          : - Username, IP, user_agent, created_by se dobijaju preko
                         f_get_client_* funkcija (ne direktno iz USERENV/USER
                         pseudo-kolone)
                       - error_context se automatski puni SSO/PROXY/APEX
                         dijagnostikom (f_get_proxy_context) - odvojeno od
                         additional_info koji ostaje cist developer-ski unos
                       - Svi VARCHAR2 upisi se SUBSTR-uju na deklarisanu duzinu
                         kolone da INSERT ne bi pao na ORA-12899 i tiho izgubio
                         log zapis
                       - PRAGMA AUTONOMOUS_TRANSACTION - COMMIT/ROLLBACK unutar
                         procedure ne utice na pozivajucu transakciju
    ******************************************************************************/
    PROCEDURE p_log_error (
        pi_error_code      IN NUMBER DEFAULT NULL,
        pi_error_message   IN VARCHAR2 DEFAULT NULL,
        pi_module_name     IN VARCHAR2 DEFAULT NULL,
        pi_action_name     IN VARCHAR2 DEFAULT NULL,
        pi_apex_page_id    IN NUMBER DEFAULT NULL,
        pi_additional_info IN CLOB DEFAULT NULL,
        pi_severity_level  IN VARCHAR2 DEFAULT c_severity_error,
        pi_is_sensitive    IN BOOLEAN DEFAULT FALSE,
        po_error_id        OUT VARCHAR2
    ) IS
        PRAGMA AUTONOMOUS_TRANSACTION;

        l_error_id         VARCHAR2(50);
        l_new_id           NUMBER;
        l_error_code       NUMBER;
        l_error_message    VARCHAR2(4000);
        l_retention_date   DATE;
        l_is_sensitive     CHAR(1);
        l_error_context    CLOB;

        l_session_id       NUMBER;
        l_ip_address       VARCHAR2(50);
        l_username         VARCHAR2(100);
        l_user_agent       VARCHAR2(500);
        l_program_name     VARCHAR2(200);
        l_module_name      VARCHAR2(100);
        l_action_name      VARCHAR2(100);
        l_created_by       VARCHAR2(100);
        l_apex_app_id      NUMBER;
        l_apex_page_id     NUMBER;
        l_apex_session_id  NUMBER;
    BEGIN
        -- Inicijalizacija
        l_error_code := NVL(pi_error_code, SQLCODE);
        l_error_message := NVL(pi_error_message, SQLERRM);
        l_is_sensitive := CASE WHEN pi_is_sensitive THEN 'Y' ELSE 'N' END;

        -- Generisanje jedinstvenog error ID-a: ista sekvencna vrijednost sluzi
        -- i kao PK (id) i kao osnova za error_id (referenca korisniku), pa su
        -- zapis u tabeli i broj koji korisnik dobije UVIJEK uskladjeni.
        l_new_id    := seq_error_log.NEXTVAL;
        l_error_id  := TO_CHAR(SYSDATE, 'YYYYMMDD') || '-' || LPAD(l_new_id, 10, '0');
        po_error_id := l_error_id;

        -- Dohvatanje session podataka
        BEGIN
            l_session_id := SYS_CONTEXT('USERENV', 'SID');
        EXCEPTION
            WHEN OTHERS THEN
                l_session_id := NULL;
        END;

        -- Klijentski kontekst - isti izvor za username I created_by
        l_ip_address := SUBSTR(f_get_client_ip(), 1, 50);
        l_created_by := SUBSTR(f_get_client_username(), 1, 100);
        l_username := l_created_by;
        l_user_agent := SUBSTR(f_get_client_user_agent(), 1, 500);
        l_program_name := SUBSTR(f_get_program_name(), 1, 200);
        l_module_name := SUBSTR(pi_module_name, 1, 100);
        l_action_name := SUBSTR(pi_action_name, 1, 100);

        -- Dohvatanje Apex podataka
        BEGIN
            IF APEX_APPLICATION.G_FLOW_ID IS NOT NULL THEN
                l_apex_app_id := APEX_APPLICATION.G_FLOW_ID;
                l_apex_page_id := NVL(pi_apex_page_id, APEX_APPLICATION.G_FLOW_STEP_ID);
                l_apex_session_id := APEX_APPLICATION.G_INSTANCE;
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                l_apex_app_id := NULL;
                l_apex_page_id := pi_apex_page_id;
                l_apex_session_id := NULL;
        END;

        -- error_context nosi KOMPLETAN dijagnosticki dump (call chain + backtrace +
        -- proxy/APEX/server + snapshot popunjenih page item-a sa maskiranim tajnama +
        -- relevantne ERR- debug poruke). Odvojeno od additional_info koji nosi
        -- developer-ski prosledjen kontekst (npr. 'ID: 123').
        l_error_context := f_build_error_context(pi_apex_page_id);

        -- Racunanje retention date prema GDPR policy
        IF pi_is_sensitive THEN
            l_retention_date := SYSDATE + c_retention_gdpr;
        ELSIF pi_severity_level = c_severity_critical THEN
            l_retention_date := SYSDATE + c_retention_critical;
        ELSE
            l_retention_date := SYSDATE + c_retention_error;
        END IF;

        -- (l_new_id je vec dodijeljen na pocetku - vidi generisanje error ID-a)

        -- Insert u ERROR_LOG tabelu
        BEGIN
            INSERT INTO error_log (
                id,
                error_timestamp,
                error_id,
                session_id,
                apex_page_id,
                apex_app_id,
                apex_session_id,
                username,
                ip_address,
                user_agent,
                error_code,
                error_message,
                error_backtrace,
                error_call_stack,
                error_context,
                module_name,
                action_name,
                program_name,
                sql_code,
                sql_errm,
                additional_info,
                severity_level,
                is_sensitive_data,
                anonymized,
                retention_date,
                created_by,
                created_date
            ) VALUES ( l_new_id,
                       SYSTIMESTAMP,
                       l_error_id,
                       l_session_id,
                       l_apex_page_id,
                       l_apex_app_id,
                       l_apex_session_id,
                       l_username,
                       l_ip_address,
                       l_user_agent,
                       l_error_code,
                       SUBSTR(l_error_message, 1, 4000),
                       -- error_backtrace i error_call_stack su CLOB kolone (potvrdjeno
                       -- DDL-om): upisujemo PUN tekst, bez skracivanja na 4000.
                       DBMS_UTILITY.FORMAT_ERROR_BACKTRACE,
                       DBMS_UTILITY.FORMAT_CALL_STACK,
                       l_error_context,
                       l_module_name,
                       l_action_name,
                       l_program_name,
                       l_error_code,
                       SUBSTR(l_error_message, 1, 4000),
                       pi_additional_info,
                       pi_severity_level,
                       l_is_sensitive,
                       'N',
                       l_retention_date,
                       l_created_by,
                       SYSTIMESTAMP );

            COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                DECLARE
                    l_original_sqlerrm  VARCHAR2(4000) := SQLERRM;
                    l_fallback_sqlerrm  VARCHAR2(4000);
                BEGIN
                    -- Zadrzavamo isti l_error_id kao referencu: fallback red ispod
                    -- ga upisuje u error_id kolonu, pa je zapis i dalje pretraziv,
                    -- a korisnik dobija cistu, uskladjenu 'Greška CORP-<id>' poruku.
                    po_error_id := l_error_id;
                    ROLLBACK;

                    -- Fallback: minimalni insert sa iskljucivo hardkodovanim, garantovano
                    -- validnim vrijednostima - da makar ostane trag ako je glavni insert
                    -- pao zbog necega nepredvidjenog (npr. CHECK constraint mismatch na
                    -- severity_level, predugacka vrijednost u nekoj koloni i sl.)
                    -- NAPOMENA: SQLERRM se hvata u lokalnu promjenljivu ODMAH na ulasku u
                    -- handler (prije ROLLBACK-a), ne poziva se direktno unutar INSERT VALUES
                    -- liste - eliminise bilo kakvu dvosmislenost oko konteksta.
                    BEGIN
                        INSERT INTO error_log (
                            id,
                            error_timestamp,
                            error_id,
                            username,
                            error_code,
                            error_message,
                            additional_info,
                            severity_level,
                            created_by,
                            created_date
                        ) VALUES ( seq_error_log.NEXTVAL,
                                   SYSTIMESTAMP,
                                   l_error_id,
                                   SUBSTR(NVL(l_username, 'Unknown'), 1, 100),
                                   l_error_code,
                                   SUBSTR('FALLBACK LOG - glavni insert je pao: ' || l_original_sqlerrm, 1, 4000),
                                   SUBSTR(l_error_message, 1, 4000),
                                   'ERROR', -- hardkodovana, garantovano validna vrijednost
                                   SUBSTR(NVL(l_username, 'Unknown'), 1, 100),
                                   SYSTIMESTAMP );

                        COMMIT;
                    EXCEPTION
                        WHEN OTHERS THEN
                            l_fallback_sqlerrm := SQLERRM;
                            ROLLBACK;
                            -- I fallback insert je pao - ovo NIJE vise tiho progutano,
                            -- vidljivo je u DBMS_OUTPUT (Session > View Debug / SQL Developer
                            -- output) radi dijagnostike umjesto potpunog gubitka traga
                            DBMS_OUTPUT.PUT_LINE(
                                'ERROR_MANAGER FALLBACK INSERT FAILED - error_id: '
                                || l_error_id
                                || ', original: '
                                || l_original_sqlerrm
                                || ', fallback failure: '
                                || l_fallback_sqlerrm
                            );
                    END;
                END;
        END;
    EXCEPTION
        WHEN OTHERS THEN
            po_error_id := 'CRITICAL_ERROR';
            ROLLBACK;
    END p_log_error;

    /******************************************************************************
      Function Name  : f_log_error
      Description    : Funkcijski wrapper oko p_log_error - pogodan za pozivanje
                       iz izraza (npr. l_error_id := core.error_manager.f_log_error(...)).

      Parameters     :
        pi_error_code      IN NUMBER   - SQL kod greske (default SQLCODE)
        pi_error_message   IN VARCHAR2 - Poruka greske (default SQLERRM)
        pi_module_name     IN VARCHAR2 - Naziv modula/paketa
        pi_action_name     IN VARCHAR2 - Naziv procedure/funkcije
        pi_apex_page_id    IN NUMBER   - APEX page ID (opcionalno)
        pi_additional_info IN CLOB     - Dodatni developer-ski kontekst
        pi_severity_level  IN VARCHAR2 - Nivo ozbiljnosti (default c_severity_error)
        pi_is_sensitive    IN BOOLEAN  - Da li podaci podlijezu GDPR retenciji

      Returns        : VARCHAR2 - Generisani error ID, ili 'ERROR_IN_ERROR_LOGGER'
                                  ako i sam logger padne

      Notes          : - Vidi p_log_error za detalje logike
    ******************************************************************************/
    FUNCTION f_log_error (
        pi_error_code      IN NUMBER DEFAULT NULL,
        pi_error_message   IN VARCHAR2 DEFAULT NULL,
        pi_module_name     IN VARCHAR2 DEFAULT NULL,
        pi_action_name     IN VARCHAR2 DEFAULT NULL,
        pi_apex_page_id    IN NUMBER DEFAULT NULL,
        pi_additional_info IN CLOB DEFAULT NULL,
        pi_severity_level  IN VARCHAR2 DEFAULT c_severity_error,
        pi_is_sensitive    IN BOOLEAN DEFAULT FALSE
    ) RETURN VARCHAR2 IS
        l_error_id VARCHAR2(50);
    BEGIN
        p_log_error(
            pi_error_code      => pi_error_code,
            pi_error_message   => pi_error_message,
            pi_module_name     => pi_module_name,
            pi_action_name     => pi_action_name,
            pi_apex_page_id    => pi_apex_page_id,
            pi_additional_info => pi_additional_info,
            pi_severity_level  => pi_severity_level,
            pi_is_sensitive    => pi_is_sensitive,
            po_error_id        => l_error_id
        );

        RETURN l_error_id;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'ERROR_IN_ERROR_LOGGER';
    END f_log_error;

    /******************************************************************************
      Function Name : f_get_user_display_message
      Description   : Formira korisnicki prijateljsku poruku sa referentnim
                      brojem greske, za prikaz na APEX formi.

      Parameters    :
        pi_error_id IN VARCHAR2 - Error ID generisan iz p_log_error/f_log_error

      Returns       : VARCHAR2 - Formatirana poruka za korisnika

      Notes         : - Svi exception-i se hvataju, funkcija nikad ne pada
    ******************************************************************************/
    FUNCTION f_get_user_display_message (
        pi_error_id IN VARCHAR2
    ) RETURN VARCHAR2 IS
    BEGIN
        RETURN 'Greška CORP-' || pi_error_id
               || '. Molimo vas da kontaktirate administratora';
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 'Greška. Molimo vas da kontaktirate administratora';
    END f_get_user_display_message;

    /******************************************************************************
      Procedure Name : p_cleanup_old_logs
      Description    : Brise zapise iz error_log kojima je istekao retention_date
                       (GDPR/critical/error retencija postavljena u p_log_error).
                       Autonomous transaction.

      Notes          : - Namjenjeno za pokretanje kroz DBMS_SCHEDULER job
    ******************************************************************************/
    PROCEDURE p_cleanup_old_logs IS
        PRAGMA AUTONOMOUS_TRANSACTION;
        l_deleted_count NUMBER;
    BEGIN
        DELETE FROM error_log
        WHERE
            retention_date < SYSDATE;

        l_deleted_count := SQL%rowcount;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Deleted ' || l_deleted_count || ' old error log records.');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END p_cleanup_old_logs;

    /******************************************************************************
      Function Name : f_apex_error_handler
      Description   : Centralizovani APEX error handling function (postavlja se
                      na nivou aplikacije: Shared Components > Security > Error
                      Handling Function). Loguje svaku gresku preko f_log_error i
                      formira korisnicki prijateljsku poruku prema tipu greske
                      (unique/FK constraint, interna greska, ostalo).

      Parameters    :
        p_error IN apex_error.t_error - APEX standardni error record

      Returns       : apex_error.t_error_result - rezultat sa prilagodjenom
                                                   porukom i lokacijom prikaza

      Notes         : - apex_error.t_error NEMA page_id property - page_id se
                        dohvata odvojeno preko APEX_APPLICATION.G_FLOW_STEP_ID
                       - Ultimate fallback hvata sve neocekivane greske unutar
                        samog handlera
    ******************************************************************************/
    FUNCTION f_apex_error_handler (
        p_error IN apex_error.t_error
    ) RETURN apex_error.t_error_result IS
        l_result           apex_error.t_error_result;
        l_error_id         VARCHAR2(50);
        l_constraint_name  VARCHAR2(255);
        l_page_id          NUMBER;
    BEGIN
        l_result := apex_error.init_error_result(p_error => p_error);

        BEGIN
            l_page_id := APEX_APPLICATION.G_FLOW_STEP_ID;
        EXCEPTION
            WHEN OTHERS THEN
                l_page_id := NULL;
        END;

        -- Ako je pozivalac (npr. LDAP wrapper ili bilo koji paket koji izvan
        -- standardnog page-process konteksta sam eksplicitno mora ulogovati i
        -- prikazati friendly poruku) VEC ulogovao gresku preko f_log_error i
        -- sastavio poruku koja sadrzi 'Referentni broj:', ne loguj ponovo -
        -- samo iskoristi tu poruku kakva jeste (sprecava dupli zapis).
        -- Ako je poruka VEC nasa brendirana (neki pozivalac VAN APEX page-process
        -- konteksta - npr. batch/scheduler koji nema APEX handler - sam je ulogovao
        -- i sastavio 'Greška CORP-<id>...'), ne loguj ponovo: samo propusti poruku.
        -- Time se sprjecava dupli zapis i dva razlicita ID-a za istu gresku.
        IF p_error.message LIKE 'Greška CORP-%'
           OR p_error.message LIKE 'Gre%ka CORP-%' THEN   -- tolerancija na encoding
            l_result.message := apex_error.get_first_ora_error_text(p_error => p_error);
            l_result.display_location := apex_error.c_inline_in_notification;
            RETURN l_result;
        END IF;

        -- ==========================================================================
        -- VALIDACIJE i deklarativne APEX greske: NE diramo ih.
        -- APEX Error Handling Function se poziva I za NEUSPJELE VALIDACIJE (NOT NULL,
        -- format, custom...), koje se u obradi stranice desavaju PRIJE procesa. Takve
        -- greske NISU Oracle izuzetci pa nemaju SQL kod (p_error.ora_sqlcode IS NULL)
        -- i vec nose smislenu poruku koju je autor definisao u validaciji.
        -- Njih NE logujemo kao sistemske greske i NE prepisujemo generickom porukom -
        -- samo vratimo rezultat kakav je init_error_result vec inicijalizovao (poruka
        -- validacije + ispravan display_location, npr. inline uz polje).
        -- Ovo NE narusava pravilo "Oracle interne poruke nikad korisniku": svaki
        -- stvarni izuzetak (ORA-xxxxx, raise_application_error -20xxx, constraint)
        -- IMA popunjen ora_sqlcode i nastavlja u granu ispod (logovanje + brendiranje).
        -- ==========================================================================
        IF p_error.ora_sqlcode IS NULL OR p_error.ora_sqlcode = 0 THEN
            RETURN l_result;
        END IF;

        BEGIN
            -- p_error.component nosi tacno ime APEX komponente (procesa, validacije,
            -- branch-a...) koja je izazvala gresku - jedini pouzdan nacin da se
            -- dobije citljivo ime procesa, jer APEX procesi nisu imenovane PL/SQL
            -- jedinice (izvrsavaju se kao anonimni blok preko DBMS_SQL), pa
            -- UTL_CALL_STACK ne moze otkriti njihovo ime.
            l_error_id := f_log_error(
                pi_error_code      => p_error.ora_sqlcode,
                pi_error_message   => p_error.message,
                pi_module_name     => 'APEX',
                pi_action_name     => NVL(p_error.component.name, p_error.apex_error_code),
                pi_apex_page_id    => l_page_id,
                pi_additional_info => 'Component type: '
                                       || NVL(p_error.component.type, '-')
                                       || ', Component id: '
                                       || NVL(TO_CHAR(p_error.component.id), '-')
                                       || CASE
                                             WHEN p_error.additional_info IS NOT NULL THEN
                                                 CHR(10) || p_error.additional_info
                                         END
                                       -- p_error.error_backtrace je jedini pouzdan
                                       -- pokazivac na IZVORNU PL/SQL jedinicu, jer je
                                       -- stvarni call stack vec odmotan dok handler
                                       -- radi (APEX je gresku vec uhvatio). Bez ovoga
                                       -- bi se izgubila lokacija gdje je greska nastala.
                                       || CASE
                                             WHEN p_error.error_backtrace IS NOT NULL THEN
                                                 CHR(10) || 'Origin backtrace: '
                                                 || p_error.error_backtrace
                                         END,
                pi_severity_level  => CASE
                                          WHEN p_error.is_internal_error THEN
                                              c_severity_critical
                                          ELSE
                                              c_severity_error
                                      END
            );
        EXCEPTION
            WHEN OTHERS THEN
                l_error_id := 'LOGGING_FAILED';
        END;

        -- PODRAZUMIJEVANA poruka za SVE greske: brendirana, sa referentnim brojem
        -- u formatu 'Greška CORP-<id>. Molimo vas da kontaktirate administratora'.
        -- Sirovi ORA-/-20xxx tekst se NAMJERNO NE prikazuje korisniku jer moze da
        -- nosi interne/LDAP/SQL detalje - taj tekst je vec kompletno ulogovan iznad.
        --
        -- NAPOMENA: ako u nekom slucaju zelite da korisnik VIDI tacan tekst poslovne
        -- greske (npr. validacije), bacite je iz paketa vec brendirano kao
        -- raise_application_error(-20xxx, 'Greška CORP-'||<id>||': <tekst>') pa ce
        -- je gornji short-circuit propustiti nepromijenjenu.
        l_result.message          := f_get_user_display_message(l_error_id);
        l_result.display_location := apex_error.c_inline_in_notification;

        -- Constraint violation - jedini izuzetak: prikazujemo unaprijed pripremljenu,
        -- bezbjednu poruku (ne otkriva internu strukturu baze), uz referentni broj.
        -- Provjerava se NEZAVISNO od is_internal_error, jer APEX razlicito klasifikuje
        -- ove greske zavisno od izvora (automatski DML proces vs rucni PL/SQL poziv).
        IF p_error.ora_sqlcode IN (-1, -2291, -2292) THEN
            l_constraint_name := apex_error.extract_constraint_name(p_error => p_error);

            CASE
                WHEN INSTR(UPPER(l_constraint_name), 'UK_') > 0
                     OR INSTR(UPPER(l_constraint_name), 'UNIQUE') > 0 THEN
                    l_result.message := 'Ova vrijednost već postoji u sistemu. Molimo unesite jedinstvenu vrijednost.';
                WHEN INSTR(UPPER(l_constraint_name), 'FK_') > 0
                     OR INSTR(UPPER(l_constraint_name), 'FOREIGN') > 0 THEN
                    l_result.message := 'Povezani zapis ne postoji ili je obrisan.';
                WHEN p_error.ora_sqlcode = -2292 THEN
                    l_result.message := 'Ne možete obrisati ovaj zapis jer postoje povezani zapisi.';
                ELSE
                    l_result.message := 'Greška validacije podataka.';
            END CASE;

            -- Svaka korisnicka poruka nosi referentni broj radi podrske
            l_result.message := l_result.message || ' (Greška CORP-' || l_error_id || ')';
        END IF;

        RETURN l_result;
    EXCEPTION
        WHEN OTHERS THEN
            -- Ultimate fallback: cak i ako sam handler pukne, korisnik dobija
            -- brendiranu poruku, a SQLERRM se NIKAD ne prikazuje (ne puni se
            -- additional_info sirovim tekstom greske).
            l_result.message          := 'Greška CORP. Molimo vas da kontaktirate administratora';
            l_result.display_location := apex_error.c_inline_in_notification;
            RETURN l_result;
    END f_apex_error_handler;

  END error_manager;
/

show errors package body core.error_manager
