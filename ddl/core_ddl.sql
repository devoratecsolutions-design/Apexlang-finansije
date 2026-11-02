prompt PL/SQL Developer Export User Objects for user CORE@ESSCOMDEV_HIGH
prompt Created by Djordjije.Ristanovic on Thursday, October 29, 2026
set define off
spool core_ddl.log

prompt
prompt Creating sequence EXPORT_IMPORT_LOG_SEQ
prompt =======================================
prompt
create sequence CORE.EXPORT_IMPORT_LOG_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence KORISNIK_MODULI_SEQ
prompt =====================================
prompt
create sequence CORE.KORISNIK_MODULI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 361
increment by 1
cache 20;

prompt
prompt Creating sequence KORISNIK_OJ_SEQ
prompt =================================
prompt
create sequence CORE.KORISNIK_OJ_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence KORISNIK_SEKRETARICE_SEQ
prompt ==========================================
prompt
create sequence CORE.KORISNIK_SEKRETARICE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence OOJ_VIZITKE_SEQ
prompt =================================
prompt
create sequence CORE.OOJ_VIZITKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence PASSWORDS_SEQ
prompt ===============================
prompt
create sequence CORE.PASSWORDS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence PM_FOLDERI_SEQ
prompt ================================
prompt
create sequence CORE.PM_FOLDERI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence PM_GRUPA_KORISNICI_SEQ
prompt ========================================
prompt
create sequence CORE.PM_GRUPA_KORISNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence PM_GRUPE_SEQ
prompt ==============================
prompt
create sequence CORE.PM_GRUPE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJA_DOKUMENTI_SEQ
prompt ============================================
prompt
create sequence CORE.PM_KONEKCIJA_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJA_HISTORY_SEQ
prompt ==========================================
prompt
create sequence CORE.PM_KONEKCIJA_HISTORY_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJA_POLJA_SEQ
prompt ========================================
prompt
create sequence CORE.PM_KONEKCIJA_POLJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJA_PRISTUPI_SEQ
prompt ===========================================
prompt
create sequence CORE.PM_KONEKCIJA_PRISTUPI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 137
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJA_WEBSITE_SEQ
prompt ==========================================
prompt
create sequence CORE.PM_KONEKCIJA_WEBSITE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 122
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KONEKCIJE_SEQ
prompt ==================================
prompt
create sequence CORE.PM_KONEKCIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 104
increment by 1
cache 20;

prompt
prompt Creating sequence PM_KORISNIK_PRISTUPI_SEQ
prompt ==========================================
prompt
create sequence CORE.PM_KORISNIK_PRISTUPI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence PM_SABLONI_SEQ
prompt ================================
prompt
create sequence CORE.PM_SABLONI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence PM_SABLON_POLJA_SEQ
prompt =====================================
prompt
create sequence CORE.PM_SABLON_POLJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence PROTOKOLI_SEQ
prompt ===============================
prompt
create sequence CORE.PROTOKOLI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2021
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_FIRMA_DOKUMENTI_SEQ
prompt =========================================
prompt
create sequence CORE.SEC_FIRMA_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 54
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_FIRMA_MODULI_SEQ
prompt ======================================
prompt
create sequence CORE.SEC_FIRMA_MODULI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 963
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_FIRME_SEQ
prompt ===============================
prompt
create sequence CORE.SEC_FIRME_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 278
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_KORISNICI_SEQ
prompt ===================================
prompt
create sequence CORE.SEC_KORISNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2022
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_KORISNIK_BRZI_PRISTUPI_SEQ
prompt ================================================
prompt
create sequence CORE.SEC_KORISNIK_BRZI_PRISTUPI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 302
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_KORISNIK_NOTIFIKACIJE_SEQ
prompt ===============================================
prompt
create sequence CORE.SEC_KORISNIK_NOTIFIKACIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 13648
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_KORISNIK_ROLE_SEQ
prompt =======================================
prompt
create sequence CORE.SEC_KORISNIK_ROLE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 19677
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_LOKACIJA_PROSTORIJE_SEQ
prompt =============================================
prompt
create sequence CORE.SEC_LOKACIJA_PROSTORIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 103
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_LOKACIJE_SEQ
prompt ==================================
prompt
create sequence CORE.SEC_LOKACIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 82
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_MODULI_QUEUE_SEQ
prompt ======================================
prompt
create sequence CORE.SEC_MODULI_QUEUE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 763
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_OJ_SEQ
prompt ============================
prompt
create sequence CORE.SEC_OJ_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 5416
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_OOJ_BANKE_SEQ
prompt ===================================
prompt
create sequence CORE.SEC_OOJ_BANKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 282
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_OOJ_SEQ
prompt =============================
prompt
create sequence CORE.SEC_OOJ_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 359
increment by 1
cache 20;

prompt
prompt Creating sequence SEC_RADNA_MJESTA_SEQ
prompt ======================================
prompt
create sequence CORE.SEC_RADNA_MJESTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 365
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ERROR_LOG
prompt ===============================
prompt
create sequence CORE.SEQ_ERROR_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1201
increment by 1
cache 20;

prompt
prompt Creating table ERROR_LOG
prompt ========================
prompt
create table CORE.ERROR_LOG
(
  id                NUMBER(10) not null,
  error_timestamp   TIMESTAMP(6) default SYSTIMESTAMP(6) not null,
  error_id          VARCHAR2(50) not null,
  session_id        NUMBER,
  apex_page_id      NUMBER,
  apex_app_id       NUMBER,
  apex_session_id   NUMBER,
  username          VARCHAR2(100),
  ip_address        VARCHAR2(50),
  user_agent        VARCHAR2(500),
  error_code        NUMBER,
  error_message     VARCHAR2(4000),
  error_backtrace   CLOB,
  error_call_stack  CLOB,
  error_context     CLOB,
  module_name       VARCHAR2(100),
  action_name       VARCHAR2(100),
  program_name      VARCHAR2(200),
  sql_code          NUMBER,
  sql_errm          VARCHAR2(4000),
  additional_info   CLOB,
  severity_level    VARCHAR2(20) default 'ERROR',
  is_sensitive_data CHAR(1) default 'N',
  anonymized        CHAR(1) default 'N',
  retention_date    DATE,
  created_by        VARCHAR2(100) default USER not null,
  created_date      TIMESTAMP(6) default SYSTIMESTAMP not null
)
;
comment on table CORE.ERROR_LOG
  is 'Tabela za logovanje grešaka i izuzetaka u sistemu. Čuva detaljne informacije o greškama, kontekst izvršavanja, korisničke podatke i SQL stack trace radi dijagnostike i rješavanja problema.';
comment on column CORE.ERROR_LOG.id
  is 'Primarni ključ, jedinstveni identifikator log zapisa.';
comment on column CORE.ERROR_LOG.error_timestamp
  is 'Tačan timestamp kada se greška desila. Podrazumijevana vrijednost je SYSTIMESTAMP(6).';
comment on column CORE.ERROR_LOG.error_id
  is 'Jedinstveni identifikator greške u formatu timestamp. Koristi se za referentno praćenje greške.';
comment on column CORE.ERROR_LOG.session_id
  is 'ID sesije baze podataka u kojoj se greška desila (SID iz V$SESSION).';
comment on column CORE.ERROR_LOG.apex_page_id
  is 'ID APEX stranice na kojoj se greška desila (ako je primjenjivo).';
comment on column CORE.ERROR_LOG.apex_app_id
  is 'ID APEX aplikacije u kojoj se greška desila (ako je primjenjivo).';
comment on column CORE.ERROR_LOG.apex_session_id
  is 'ID APEX sesije u kojoj se greška desila (ako je primjenjivo).';
comment on column CORE.ERROR_LOG.username
  is 'Korisničko ime korisnika koji je pokrenuo akciju koja je rezultirala greškom.';
comment on column CORE.ERROR_LOG.ip_address
  is 'IP adresa sa koje je korisnik pristupio sistemu.';
comment on column CORE.ERROR_LOG.user_agent
  is 'User agent string klijenta (preglednik, mobilna aplikacija).';
comment on column CORE.ERROR_LOG.error_code
  is 'Oracle error kod (npr. -1, -1403, -20000).';
comment on column CORE.ERROR_LOG.error_message
  is 'Tekst poruke greške.';
comment on column CORE.ERROR_LOG.error_backtrace
  is 'Stack trace greške (DBMS_UTILITY.FORMAT_ERROR_BACKTRACE) - pokazuje tačnu liniju gdje se greška desila.';
comment on column CORE.ERROR_LOG.error_call_stack
  is 'Call stack u trenutku greške (DBMS_UTILITY.FORMAT_CALL_STACK) - pokazuje lanac poziva.';
comment on column CORE.ERROR_LOG.error_context
  is 'Kompletan call chain i dodatni kontekst izvršavanja.';
comment on column CORE.ERROR_LOG.module_name
  is 'Ime modula/paketa u kojem se greška desila (DBMS_APPLICATION_INFO).';
comment on column CORE.ERROR_LOG.action_name
  is 'Ime akcije koja se izvršavala u trenutku greške.';
comment on column CORE.ERROR_LOG.program_name
  is 'Ime programa/procedure/funkcije gdje se greška desila.';
comment on column CORE.ERROR_LOG.sql_code
  is 'SQLCODE - numerički kod SQL greške.';
comment on column CORE.ERROR_LOG.sql_errm
  is 'SQLERRM - SQL error message.';
comment on column CORE.ERROR_LOG.additional_info
  is 'Dodatne informacije, parametri poziva, stanje aplikacije ili bilo koji drugi relevantan kontekst.';
comment on column CORE.ERROR_LOG.severity_level
  is 'Nivo ozbiljnosti greške: ERROR, WARNING, CRITICAL ili INFO. Podrazumijevana vrijednost je ERROR.';
comment on column CORE.ERROR_LOG.is_sensitive_data
  is 'Indikator da li log sadrži osjetljive podatke po GDPR-u (Y/N). Podrazumijevana vrijednost je N.';
comment on column CORE.ERROR_LOG.anonymized
  is 'Indikator da li su osjetljivi podaci anonimizirani (Y/N). Podrazumijevana vrijednost je N.';
comment on column CORE.ERROR_LOG.retention_date
  is 'Datum do kada se log čuva. Nakon ovog datuma log može biti obrisan ili arhiviran prema politici retencije.';
comment on column CORE.ERROR_LOG.created_by
  is 'Korisnik koji je kreirao log zapis. Podrazumijevana vrijednost je USER.';
comment on column CORE.ERROR_LOG.created_date
  is 'Timestamp kreiranja log zapisa. Podrazumijevana vrijednost je SYSTIMESTAMP.';
alter table CORE.ERROR_LOG
  add constraint PK_ERROR_LOG primary key (ID);
alter table CORE.ERROR_LOG
  add constraint UK_ERROR_LOG_ERROR_ID unique (ERROR_ID);
alter table CORE.ERROR_LOG
  add constraint CHK_ERROR_LOG_ANONYMIZED
  check (ANONYMIZED IN ('Y', 'N'));
alter table CORE.ERROR_LOG
  add constraint CHK_ERROR_LOG_SENSITIVE
  check (IS_SENSITIVE_DATA IN ('Y', 'N'));
alter table CORE.ERROR_LOG
  add constraint CHK_ERROR_LOG_SEVERITY
  check (SEVERITY_LEVEL IN ('ERROR', 'WARNING', 'CRITICAL', 'INFO'));

prompt
prompt Creating table FIRME
prompt ====================
prompt
create table CORE.FIRME
(
  id                     NUMBER default on null core.sec_firme_seq.nextval not null,
  interval_id            NUMBER,
  esscom_id              NUMBER,
  biro_id                NUMBER,
  obrazac_fakture_id     NUMBER,
  tip_preduzetnika_id    NUMBER,
  naziv                  VARCHAR2(255 CHAR),
  www                    VARCHAR2(255 CHAR),
  email                  VARCHAR2(255 CHAR),
  odgovorno_lice         VARCHAR2(255 CHAR),
  active_to              DATE,
  logo                   BLOB,
  logo_filename          VARCHAR2(255 CHAR),
  logo_mimetype          VARCHAR2(255 CHAR),
  logo_charset           VARCHAR2(255 CHAR),
  logo_lastupd           DATE,
  biro                   VARCHAR2(1 CHAR),
  biro_status            VARCHAR2(1 CHAR),
  popust                 NUMBER default 0,
  min_dana_go            NUMBER,
  dvojno_knjigovodstvo   VARCHAR2(1 CHAR),
  valid                  VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version            INTEGER not null,
  created                DATE not null,
  created_by             VARCHAR2(255 CHAR) not null,
  updated                DATE not null,
  updated_by             VARCHAR2(255 CHAR) not null,
  notifikacija_rodjendan VARCHAR2(1 CHAR) default 'Y',
  obrazac_memoranduma_id NUMBER,
  logo_base64            VARCHAR2(4000 CHAR),
  ribolovno_drustvo      VARCHAR2(1 CHAR) default 'N',
  savez_id               NUMBER,
  sablon_id              NUMBER,
  savez                  VARCHAR2(1 CHAR) default 'N',
  nadredjeni_savez_id    NUMBER
)
;
create index CORE.SEC_FIRME_I1 on CORE.FIRME (INTERVAL_ID);
create index CORE.SEC_FIRME_I2 on CORE.FIRME (ESSCOM_ID);
create index CORE.SEC_FIRME_I3 on CORE.FIRME (BIRO_ID);
create index CORE.SEC_FIRME_I4 on CORE.FIRME (OBRAZAC_FAKTURE_ID);
create index CORE.SEC_FIRME_I5 on CORE.FIRME (TIP_PREDUZETNIKA_ID);
alter table CORE.FIRME
  add constraint SEC_FIRME_ID_PK primary key (ID);
alter table CORE.FIRME
  add constraint FIRME_NADREDJENI_SAVEZ_ID_FK foreign key (NADREDJENI_SAVEZ_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_OBRAZAC_MEMORANDUMA_ID_FK foreign key (OBRAZAC_MEMORANDUMA_ID)
  references SIF.HR_OBRASCI_MEMORANDUMA (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_SAVEZ_ID_FK foreign key (SAVEZ_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_BIRO_ID_FK foreign key (BIRO_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_ESSCOM_ID_FK foreign key (ESSCOM_ID)
  references ACCOUNTING.SEC_KLIJENTI (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_INTERVAL_ID_FK foreign key (INTERVAL_ID)
  references SIF.SIF_INTERVALI (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_OBRAZAC_FAKTURE_ID_FK foreign key (OBRAZAC_FAKTURE_ID)
  references SIF.ACC_OBRASCI_FAKTURA (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_TIP_PREDUZETNIKA_ID_FK foreign key (TIP_PREDUZETNIKA_ID)
  references SIF.SIF_TIPOVI_PREDUZETNIKA (ID)
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_BIRO_CK
  check ( biro in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_BIRO_STATUS_CK
  check ( biro_status in ( 0, 1 ) )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_DVOJNO_KJIGOVODSTVO_CK
  check ( dvojno_knjigovodstvo in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_NOTIFIKACIJA_RODJENDAN
  check ( notifikacija_rodjendan in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_RIBOLOVNO_DRUSTVO_CK
  check ( "RIBOLOVNO_DRUSTVO" IN ('Y', 'N') )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint FIRME_SAVEZ_CK
  check ( "SAVEZ" IN ('Y', 'N') )
  disable
  novalidate;
alter table CORE.FIRME
  add constraint SEC_FIRME_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table KORISNICI
prompt ========================
prompt
create table CORE.KORISNICI
(
  id                    NUMBER default on null core.sec_korisnici_seq.nextval not null,
  firma_id              NUMBER,
  korisnicko_ime        VARCHAR2(255 CHAR),
  lozinka               VARCHAR2(255 CHAR),
  ime                   VARCHAR2(255 CHAR),
  prezime               VARCHAR2(255 CHAR),
  email                 VARCHAR2(255 CHAR),
  telefon               VARCHAR2(255 CHAR),
  mobtel                VARCHAR2(255 CHAR),
  mailing               VARCHAR2(1 CHAR) default 'Y',
  foto                  BLOB,
  foto_filename         VARCHAR2(255 CHAR),
  foto_mimetype         VARCHAR2(255 CHAR),
  foto_charset          VARCHAR2(255 CHAR),
  foto_lastupd          DATE,
  biro_korisnik         VARCHAR2(1 CHAR) default 'N',
  password              RAW(2000),
  last_login            DATE,
  password_version      VARCHAR2(32 CHAR),
  change_required       VARCHAR2(1 CHAR) default 'N',
  password_last_changed DATE,
  valid                 VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version           INTEGER not null,
  created               DATE not null,
  created_by            VARCHAR2(255 CHAR) not null,
  updated               DATE not null,
  updated_by            VARCHAR2(255 CHAR) not null,
  password_reset        VARCHAR2(1 CHAR) default 'N',
  password_reset_valid  DATE,
  password_reset_code   NUMBER,
  sif_application_id    NUMBER default 6,
  email_potpis          CLOB
)
;
create index CORE.SEC_KORISNICI_I1 on CORE.KORISNICI (FIRMA_ID);
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_ID_PK primary key (ID);
alter table CORE.KORISNICI
  add constraint KORISNICI_SIF_APPLICATION_ID_FK foreign key (SIF_APPLICATION_ID)
  references SIF.SIF_APLIKACIJE (ID)
  disable
  novalidate;
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_BIRO_KORISNIK_CK
  check ( biro_korisnik in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_MAILING_CK
  check ( mailing in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_PASSWORD_VERSION_CK
  check ( password_version in ( 'HRM', 'ERP' ) )
  disable
  novalidate;
alter table CORE.KORISNICI
  add constraint SEC_KORISNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table OOJ
prompt ==================
prompt
create table CORE.OOJ
(
  id                             NUMBER default on null core.sec_ooj_seq.nextval not null,
  firma_id                       NUMBER,
  grad_id                        NUMBER,
  export_id                      NUMBER,
  import_id                      NUMBER,
  naziv                          VARCHAR2(255 CHAR),
  adresa                         VARCHAR2(255 CHAR),
  zip                            VARCHAR2(255 CHAR),
  tel                            VARCHAR2(255 CHAR),
  fax                            VARCHAR2(255 CHAR),
  email                          VARCHAR2(255 CHAR),
  jib                            VARCHAR2(255 CHAR),
  pib                            VARCHAR2(255 CHAR),
  djelatnost                     VARCHAR2(255 CHAR),
  lat                            NUMBER,
  lng                            NUMBER,
  mbs                            VARCHAR2(255 CHAR),
  mb                             VARCHAR2(255 CHAR),
  pdv_sistem                     VARCHAR2(1 CHAR),
  rjesenje                       VARCHAR2(1 CHAR),
  broj_rjesenja                  VARCHAR2(255 CHAR),
  datum_rjesenja                 DATE,
  izdavaoc_rjesenja              VARCHAR2(255 CHAR),
  konto_duzina                   NUMBER default 5,
  period_zakljucan_do            DATE,
  data_load_status_id            NUMBER,
  data_load_kif_static_id        VARCHAR2(255 CHAR),
  data_load_kif_example          BLOB,
  data_load_kif_example_filename VARCHAR2(255 CHAR),
  data_load_kif_example_mimetype VARCHAR2(255 CHAR),
  data_load_kif_example_charset  VARCHAR2(255 CHAR),
  data_load_kif_example_lastupd  DATE,
  data_load_kif_before           NUMBER,
  data_load_kif_after            NUMBER,
  data_load_kif_date_format      VARCHAR2(255 CHAR),
  data_load_kuf_static_id        VARCHAR2(255 CHAR),
  data_load_kuf_example          BLOB,
  data_load_kuf_example_filename VARCHAR2(255 CHAR),
  data_load_kuf_example_mimetype VARCHAR2(255 CHAR),
  data_load_kuf_example_charset  VARCHAR2(255 CHAR),
  data_load_kuf_example_lastupd  DATE,
  data_load_kuf_before           NUMBER,
  data_load_kuf_after            NUMBER,
  data_load_kuf_date_format      VARCHAR2(255 CHAR),
  import_data_load_static_id     VARCHAR2(255 CHAR),
  os_zakljucana                  VARCHAR2(1 CHAR),
  valid                          VARCHAR2(1 CHAR) default on null 'Y' not null,
  cms_pin                        NUMBER,
  row_version                    INTEGER not null,
  created                        DATE not null,
  created_by                     VARCHAR2(255 CHAR) not null,
  updated                        DATE not null,
  updated_by                     VARCHAR2(255 CHAR) not null,
  tip_cijene                     VARCHAR2(1 CHAR) default 'M',
  password                       RAW(2000)
)
;
create index CORE.SEC_OOJ_I1 on CORE.OOJ (FIRMA_ID);
create index CORE.SEC_OOJ_I2 on CORE.OOJ (GRAD_ID);
create index CORE.SEC_OOJ_I3 on CORE.OOJ (EXPORT_ID);
create index CORE.SEC_OOJ_I4 on CORE.OOJ (IMPORT_ID);
alter table CORE.OOJ
  add constraint SEC_OOJ_ID_PK primary key (ID);
alter table CORE.OOJ
  add constraint OOJ_DATA_LOAD_STATUS_ID foreign key (DATA_LOAD_STATUS_ID)
  references SIF.SIF_STATUSI (ID)
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_EXPORT_ID_FK foreign key (EXPORT_ID)
  references SIF.PL_TIPOVI_EI (ID)
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_GRAD_ID_FK foreign key (GRAD_ID)
  references SIF.SIF_GRADOVI (ID)
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_IMPORT_ID_FK foreign key (IMPORT_ID)
  references SIF.PL_TIPOVI_EI (ID)
  disable
  novalidate;
alter table CORE.OOJ
  add constraint OOJ_TIP_CIJENE_CK
  check ( tip_cijene in ( 'M', 'V' ) )
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_PDV_SISTEM_CK
  check ( pdv_sistem in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_RJESENJE_CK
  check ( rjesenje in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ
  add constraint SEC_OOJ_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table EXPORT_IMPORT_LOG
prompt ================================
prompt
create table CORE.EXPORT_IMPORT_LOG
(
  id          NUMBER default on null core.export_import_log_seq.nextval not null,
  ooj_id      NUMBER,
  korisnik_id NUMBER,
  tip_id      NUMBER,
  datum       DATE,
  filename    VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.EXPORT_IMPORT_LOG_I1 on CORE.EXPORT_IMPORT_LOG (OOJ_ID);
create index CORE.EXPORT_IMPORT_LOG_I2 on CORE.EXPORT_IMPORT_LOG (KORISNIK_ID);
create index CORE.EXPORT_IMPORT_LOG_I3 on CORE.EXPORT_IMPORT_LOG (TIP_ID);
alter table CORE.EXPORT_IMPORT_LOG
  add constraint EXPORT_IMPORT_LOG_ID_PK primary key (ID);
alter table CORE.EXPORT_IMPORT_LOG
  add constraint EXPORT_IMPORT_LOG_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.EXPORT_IMPORT_LOG
  add constraint EXPORT_IMPORT_LOG_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.EXPORT_IMPORT_LOG
  add constraint EXPORT_IMPORT_LOG_TIP_ID_FK foreign key (TIP_ID)
  references SIF.SIF_TIPOVI_EI (ID)
  disable
  novalidate;
alter table CORE.EXPORT_IMPORT_LOG
  add constraint EXPORT_IMPORT_LOG_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FIRMA_DOKUMENTI
prompt ==============================
prompt
create table CORE.FIRMA_DOKUMENTI
(
  id                NUMBER default on null core.sec_firma_dokumenti_seq.nextval not null,
  firma_id          NUMBER,
  tip_dokumenta_id  NUMBER,
  document          BLOB,
  document_filename VARCHAR2(255 CHAR),
  document_mimetype VARCHAR2(255 CHAR),
  document_charset  VARCHAR2(255 CHAR),
  document_lastupd  DATE,
  datum             DATE,
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_FIRMA_DOKUMENTI_I1 on CORE.FIRMA_DOKUMENTI (FIRMA_ID);
create index CORE.SEC_FIRMA_DOKUMENTI_I2 on CORE.FIRMA_DOKUMENTI (TIP_DOKUMENTA_ID);
alter table CORE.FIRMA_DOKUMENTI
  add constraint SEC_FIRMA_DOKUMENTI_ID_PK primary key (ID);
alter table CORE.FIRMA_DOKUMENTI
  add constraint SEC_FIRMA_DOKUMENTI_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRMA_DOKUMENTI
  add constraint SEC_FIRMA_DOKUMENTI_TIP_DOKUMENTA_ID_FK foreign key (TIP_DOKUMENTA_ID)
  references SIF.HR_SIF_TIPOVI_DOKUMENATA (ID)
  disable
  novalidate;
alter table CORE.FIRMA_DOKUMENTI
  add constraint SEC_FIRMA_DOKUMENTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FIRMA_MODULI
prompt ===========================
prompt
create table CORE.FIRMA_MODULI
(
  id             NUMBER default on null core.sec_firma_moduli_seq.nextval not null,
  firma_id       NUMBER,
  modul_id       NUMBER,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null,
  cijena         NUMBER,
  broj_korisnika NUMBER
)
;
create index CORE.SEC_FIRMA_MODULI_I1 on CORE.FIRMA_MODULI (FIRMA_ID);
create index CORE.SEC_FIRMA_MODULI_I2 on CORE.FIRMA_MODULI (MODUL_ID);
alter table CORE.FIRMA_MODULI
  add constraint SEC_FIRMA_MODULI_ID_PK primary key (ID);
alter table CORE.FIRMA_MODULI
  add constraint SEC_FIRMA_MODULI_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRMA_MODULI
  add constraint SEC_FIRMA_MODULI_MODUL_ID_FK foreign key (MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table CORE.FIRMA_MODULI
  add constraint SEC_FIRMA_MODULI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FIRMA_MODULI_QUEUE
prompt =================================
prompt
create table CORE.FIRMA_MODULI_QUEUE
(
  id             NUMBER default on null core.sec_moduli_queue_seq.nextval not null,
  firma_id       NUMBER,
  modul_id       NUMBER,
  tip            VARCHAR2(1 CHAR),
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null,
  broj_korisnika NUMBER,
  cijena         NUMBER
)
;
comment on column CORE.FIRMA_MODULI_QUEUE.tip
  is 'A-Add,D-Delete,E-Edit';
create index CORE.SEC_MODULI_QUEUE_I1 on CORE.FIRMA_MODULI_QUEUE (FIRMA_ID);
create index CORE.SEC_MODULI_QUEUE_I2 on CORE.FIRMA_MODULI_QUEUE (MODUL_ID);
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint SEC_MODULI_QUEUE_ID_PK primary key (ID);
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint SEC_MODULI_QUEUE_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint SEC_MODULI_QUEUE_MODUL_ID_FK foreign key (MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint FIRMA_MODULI_QUEUE_CON
  check ( tip in ( 'A', 'D', 'E' ) )
  disable
  novalidate;
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint SEC_MODULI_QUEUE_TIP_CK
  check ( tip in ( 'A', 'D' ) )
  disable
  novalidate;
alter table CORE.FIRMA_MODULI_QUEUE
  add constraint SEC_MODULI_QUEUE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table OJ
prompt =================
prompt
create table CORE.OJ
(
  id          NUMBER default on null core.sec_oj_seq.nextval not null,
  ooj_id      NUMBER,
  parent_id   NUMBER,
  naziv       VARCHAR2(255 CHAR),
  lat         NUMBER,
  lng         NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_OJ_I1 on CORE.OJ (OOJ_ID);
create index CORE.SEC_OJ_I2 on CORE.OJ (PARENT_ID);
alter table CORE.OJ
  add constraint SEC_OJ_ID_PK primary key (ID);
alter table CORE.OJ
  add constraint SEC_OJ_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.OJ
  add constraint SEC_OJ_PARENT_ID_FK foreign key (PARENT_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table CORE.OJ
  add constraint SEC_OJ_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FIRMA_RADNA_MJESTA
prompt =================================
prompt
create table CORE.FIRMA_RADNA_MJESTA
(
  id           NUMBER default on null core.sec_radna_mjesta_seq.nextval not null,
  ooj_id       NUMBER,
  oj_id        NUMBER,
  naziv        VARCHAR2(255 CHAR),
  opis         VARCHAR2(1000 CHAR),
  broj_dana_go NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_RADNA_MJESTA_I1 on CORE.FIRMA_RADNA_MJESTA (OOJ_ID);
create index CORE.SEC_RADNA_MJESTA_I2 on CORE.FIRMA_RADNA_MJESTA (OJ_ID);
alter table CORE.FIRMA_RADNA_MJESTA
  add constraint SEC_RADNA_MJESTA_ID_PK primary key (ID);
alter table CORE.FIRMA_RADNA_MJESTA
  add constraint SEC_RADNA_MJESTA_OJ_ID_FK foreign key (OJ_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table CORE.FIRMA_RADNA_MJESTA
  add constraint SEC_RADNA_MJESTA_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.FIRMA_RADNA_MJESTA
  add constraint SEC_RADNA_MJESTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table KORISNICI_BCKP
prompt =============================
prompt
create table CORE.KORISNICI_BCKP
(
  id                    NUMBER not null,
  firma_id              NUMBER,
  korisnicko_ime        VARCHAR2(255 CHAR),
  lozinka               VARCHAR2(255 CHAR),
  ime                   VARCHAR2(255 CHAR),
  prezime               VARCHAR2(255 CHAR),
  email                 VARCHAR2(255 CHAR),
  telefon               VARCHAR2(255 CHAR),
  mobtel                VARCHAR2(255 CHAR),
  mailing               VARCHAR2(1 CHAR),
  foto                  BLOB,
  foto_filename         VARCHAR2(255 CHAR),
  foto_mimetype         VARCHAR2(255 CHAR),
  foto_charset          VARCHAR2(255 CHAR),
  foto_lastupd          DATE,
  biro_korisnik         VARCHAR2(1 CHAR),
  password              RAW(2000),
  last_login            DATE,
  password_version      VARCHAR2(32 CHAR),
  change_required       VARCHAR2(1 CHAR),
  password_last_changed DATE,
  valid                 VARCHAR2(1 CHAR) not null,
  row_version           INTEGER not null,
  created               DATE not null,
  created_by            VARCHAR2(255 CHAR) not null,
  updated               DATE not null,
  updated_by            VARCHAR2(255 CHAR) not null,
  password_reset        VARCHAR2(1 CHAR),
  password_reset_valid  DATE,
  password_reset_code   NUMBER,
  sif_application_id    NUMBER,
  email_potpis          CLOB
)
;
comment on table CORE.KORISNICI_BCKP
  is 'Tabela je kreirana kao backup korisnickih podataka radi izmjene svih korisnickih passworda. Datum izmjene ce biti objavljen u ovom komentaru nakon uradjenog update-a passworda';

prompt
prompt Creating table KORISNIK_BRZI_PRISTUPI
prompt =====================================
prompt
create table CORE.KORISNIK_BRZI_PRISTUPI
(
  id                 NUMBER default on null core.sec_korisnik_brzi_pristupi_seq.nextval not null,
  korisnik_id        NUMBER,
  sif_application_id NUMBER,
  page_id            NUMBER,
  title              VARCHAR2(255 CHAR),
  icon               VARCHAR2(255 CHAR),
  sequence           NUMBER,
  valid              VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version        INTEGER not null,
  created            DATE not null,
  created_by         VARCHAR2(255 CHAR) not null,
  updated            DATE not null,
  updated_by         VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_KORISNICI_BRZI_PRISTUP_I1 on CORE.KORISNIK_BRZI_PRISTUPI (KORISNIK_ID);
create index CORE.SEC_KORISNICI_BRZI_PRISTUP_I2 on CORE.KORISNIK_BRZI_PRISTUPI (SIF_APPLICATION_ID);
alter table CORE.KORISNIK_BRZI_PRISTUPI
  add constraint SEC_KORISNICI_BRZI_PRISTUP_ID_PK primary key (ID);
alter table CORE.KORISNIK_BRZI_PRISTUPI
  add constraint SEC_KORISNICI_BRZI_PRISTUP_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_BRZI_PRISTUPI
  add constraint SEC_KORISNICI_BRZI_PRISTUP_SIF_APPLICATION_ID_FK foreign key (SIF_APPLICATION_ID)
  references SIF.SIF_APLIKACIJE (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_BRZI_PRISTUPI
  add constraint SEC_KORISNICI_BRZI_PRISTUP_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table KORISNIK_MODULI
prompt ==============================
prompt
create table CORE.KORISNIK_MODULI
(
  id          NUMBER default on null core.korisnik_moduli_seq.nextval not null,
  korisnik_id NUMBER,
  modul_id    NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.KORISNIK_MODULI_I1 on CORE.KORISNIK_MODULI (KORISNIK_ID);
create index CORE.KORISNIK_MODULI_I2 on CORE.KORISNIK_MODULI (MODUL_ID);
alter table CORE.KORISNIK_MODULI
  add constraint KORISNIK_MODULI_ID_PK primary key (ID);
alter table CORE.KORISNIK_MODULI
  add constraint KORISNIK_MODULI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_MODULI
  add constraint KORISNIK_MODULI_MODUL_ID_FK foreign key (MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;

prompt
prompt Creating table KORISNIK_NOTIFIKACIJE
prompt ====================================
prompt
create table CORE.KORISNIK_NOTIFIKACIJE
(
  id                  NUMBER default on null core.sec_korisnik_notifikacije_seq.nextval not null,
  tip_notifikacije_id NUMBER,
  korisnik_id         NUMBER,
  note_header         VARCHAR2(255 CHAR) not null,
  note_text           VARCHAR2(1000 CHAR) not null,
  read                VARCHAR2(1 CHAR) default on null 'N' not null,
  valid               VARCHAR2(1 CHAR),
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_KORISNIK_NOTIFIKACIJE_I1 on CORE.KORISNIK_NOTIFIKACIJE (TIP_NOTIFIKACIJE_ID);
create index CORE.SEC_KORISNIK_NOTIFIKACIJE_I2 on CORE.KORISNIK_NOTIFIKACIJE (KORISNIK_ID);
alter table CORE.KORISNIK_NOTIFIKACIJE
  add constraint SEC_KORISNIK_NOTIFIKACIJE_ID_PK primary key (ID);
alter table CORE.KORISNIK_NOTIFIKACIJE
  add constraint SEC_KORISNIK_NOTIFIKACIJE_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_NOTIFIKACIJE
  add constraint SEC_KORISNIK_NOTIFIKACIJE_TIP_NOTIFIKACIJE_ID_FK foreign key (TIP_NOTIFIKACIJE_ID)
  references SIF.SIF_TIPOVI_NOTIFIKACIJA (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_NOTIFIKACIJE
  add constraint SEC_KORISNIK_NOTIFIKACIJE_READ_CK
  check ( read in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table KORISNIK_OJ
prompt ==========================
prompt
create table CORE.KORISNIK_OJ
(
  id          NUMBER default on null "CORE"."KORISNIK_OJ_SEQ"."NEXTVAL" not null,
  korisnik_id NUMBER,
  oj_id       NUMBER,
  klijent_id  NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.KORISNIK_OJ_I1 on CORE.KORISNIK_OJ (KORISNIK_ID);
create index CORE.KORISNIK_OJ_I2 on CORE.KORISNIK_OJ (OJ_ID);
create index CORE.KORISNIK_OJ_I3 on CORE.KORISNIK_OJ (KLIJENT_ID);
alter table CORE.KORISNIK_OJ
  add constraint KORISNIK_OJ_ID_PK primary key (ID);
alter table CORE.KORISNIK_OJ
  add constraint KORISNIK_OJ_KLIJENT_ID_FK foreign key (KLIJENT_ID)
  references ACCOUNTING.SEC_KLIJENTI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_OJ
  add constraint KORISNIK_OJ_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_OJ
  add constraint KORISNIK_OJ_OJ_ID_FK foreign key (OJ_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_OJ
  add constraint KORISNIK_OJ_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table KORISNIK_ROLE
prompt ============================
prompt
create table CORE.KORISNIK_ROLE
(
  id          NUMBER default on null core.sec_korisnik_role_seq.nextval not null,
  korisnik_id NUMBER,
  rola_id     NUMBER not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_KORISNIK_ROLE_I1 on CORE.KORISNIK_ROLE (KORISNIK_ID);
create index CORE.SEC_KORISNIK_ROLE_I2 on CORE.KORISNIK_ROLE (ROLA_ID);
alter table CORE.KORISNIK_ROLE
  add constraint SEC_KORISNIK_ROLE_ID_PK primary key (ID);
alter table CORE.KORISNIK_ROLE
  add constraint SEC_KORISNIK_ROLE_KORISNIK_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_ROLE
  add constraint SEC_KORISNIK_ROLE_ROLA_ID_FK foreign key (ROLA_ID)
  references SIF.SIF_ROLE (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_ROLE
  add constraint SEC_KORISNIK_ROLE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table KORISNIK_SEKRETARICE
prompt ===================================
prompt
create table CORE.KORISNIK_SEKRETARICE
(
  id             NUMBER default on null core.korisnik_sekretarice_seq.nextval not null,
  korisnik_id    NUMBER,
  sekretarica_id NUMBER,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index CORE.KORISNIK_SEKRETARICE_I1 on CORE.KORISNIK_SEKRETARICE (KORISNIK_ID);
create index CORE.KORISNIK_SEKRETARICE_I2 on CORE.KORISNIK_SEKRETARICE (SEKRETARICA_ID);
alter table CORE.KORISNIK_SEKRETARICE
  add constraint KORISNIK_SEKRETARICE_KORISNIK_SEKRETARICE_ID_PK primary key (ID);
alter table CORE.KORISNIK_SEKRETARICE
  add constraint KORISNIK_SEKRETARICE_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.KORISNIK_SEKRETARICE
  add constraint KORISNIK_SEKRETARICE_SEKRETARICA_ID_FK foreign key (SEKRETARICA_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table OOJ_BANKE
prompt ========================
prompt
create table CORE.OOJ_BANKE
(
  id              NUMBER default on null core.sec_ooj_banke_seq.nextval not null,
  ooj_id          NUMBER,
  banka_id        NUMBER,
  kontna_klasa_id NUMBER,
  ziro_racun      VARCHAR2(255 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null,
  za_plate        VARCHAR2(1 CHAR) not null
)
;
create index CORE.SEC_OOJ_BANKE_I1 on CORE.OOJ_BANKE (OOJ_ID);
create index CORE.SEC_OOJ_BANKE_I2 on CORE.OOJ_BANKE (BANKA_ID);
create index CORE.SEC_OOJ_BANKE_I3 on CORE.OOJ_BANKE (KONTNA_KLASA_ID);
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_ID_PK primary key (ID);
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_BANKA_ID_FK foreign key (BANKA_ID)
  references SIF.SIF_BANKE (ID)
  disable
  novalidate;
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_BANKE
  add constraint SEC_OOJ_BANKE_ZA_PLATE_CK
  check ( za_plate in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table OOJ_LOKACIJE
prompt ===========================
prompt
create table CORE.OOJ_LOKACIJE
(
  id          NUMBER default on null core.sec_lokacije_seq.nextval not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR),
  adresa      VARCHAR2(255 CHAR),
  lat         NUMBER,
  lng         NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_LOKACIJE_I1 on CORE.OOJ_LOKACIJE (OOJ_ID);
alter table CORE.OOJ_LOKACIJE
  add constraint SEC_LOKACIJE_ID_PK primary key (ID);
alter table CORE.OOJ_LOKACIJE
  add constraint SEC_LOKACIJE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.OOJ_LOKACIJE
  add constraint SEC_LOKACIJE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table OOJ_LOKACIJA_PROSTORIJE
prompt ======================================
prompt
create table CORE.OOJ_LOKACIJA_PROSTORIJE
(
  id          NUMBER default on null core.sec_lokacija_prostorije_seq.nextval not null,
  lokacija_id NUMBER,
  broj        NUMBER,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.SEC_LOKACIJA_PROSTORIJE_I1 on CORE.OOJ_LOKACIJA_PROSTORIJE (LOKACIJA_ID);
alter table CORE.OOJ_LOKACIJA_PROSTORIJE
  add constraint SEC_LOKACIJA_PROSTORIJE_ID_PK primary key (ID);
alter table CORE.OOJ_LOKACIJA_PROSTORIJE
  add constraint SEC_LOKACIJA_PROSTORIJE_LOKACIJA_ID_FK foreign key (LOKACIJA_ID)
  references CORE.OOJ_LOKACIJE (ID) on delete cascade
  disable
  novalidate;
alter table CORE.OOJ_LOKACIJA_PROSTORIJE
  add constraint SEC_LOKACIJA_PROSTORIJE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table OOJ_VIZITKE
prompt ==========================
prompt
create table CORE.OOJ_VIZITKE
(
  id                  NUMBER default on null core.ooj_vizitke_seq.nextval not null,
  ooj_id              NUMBER,
  firma_logo          VARCHAR2(1 CHAR),
  radnik_logo         VARCHAR2(1 CHAR),
  radno_mjesto        VARCHAR2(1 CHAR),
  telefon             VARCHAR2(1 CHAR),
  email               VARCHAR2(1 CHAR),
  website             VARCHAR2(1 CHAR),
  adresa              VARCHAR2(1 CHAR),
  facebook            VARCHAR2(255 CHAR),
  instagram           VARCHAR2(255 CHAR),
  linkedin            VARCHAR2(255 CHAR),
  twitter             VARCHAR2(255 CHAR),
  accent_color        VARCHAR2(64 CHAR),
  background          BLOB,
  background_filename VARCHAR2(255 CHAR),
  background_mimetype VARCHAR2(255 CHAR),
  background_charset  VARCHAR2(255 CHAR),
  background_lastupd  DATE,
  valid               VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null,
  color               VARCHAR2(64 CHAR),
  radnik_logo_shape   VARCHAR2(64 CHAR),
  youtube             VARCHAR2(255 CHAR),
  background_color    VARCHAR2(64 CHAR),
  firma_logo_height   NUMBER,
  radnik_logo_height  NUMBER
)
;
create index CORE.OOJ_VIZITKE_I1 on CORE.OOJ_VIZITKE (OOJ_ID);
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_ID_PK primary key (ID);
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_ADRESA_CK
  check ( adresa in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_EMAIL_CK
  check ( email in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_FIRMA_LOGO_CK
  check ( firma_logo in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_RADNIK_LOGO_CK
  check ( radnik_logo in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_RADNO_MJESTO_CK
  check ( radno_mjesto in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_TELEFON_CK
  check ( telefon in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.OOJ_VIZITKE
  add constraint OOJ_VIZITKE_WEBSITE_CK
  check ( website in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PM_FOLDERI
prompt =========================
prompt
create table CORE.PM_FOLDERI
(
  id          NUMBER default on null "CORE"."PM_FOLDERI_SEQ"."NEXTVAL" not null,
  ooj_id      NUMBER,
  folder_id   NUMBER,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_FOLDERI_I1 on CORE.PM_FOLDERI (OOJ_ID);
create index CORE.PM_FOLDERI_I2 on CORE.PM_FOLDERI (FOLDER_ID);
alter table CORE.PM_FOLDERI
  add constraint PM_FOLDERI_ID_PK primary key (ID);
alter table CORE.PM_FOLDERI
  add constraint PM_FOLDERI_FOLDER_ID_FK foreign key (FOLDER_ID)
  references CORE.PM_FOLDERI (ID)
  disable
  novalidate;
alter table CORE.PM_FOLDERI
  add constraint PM_FOLDERI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.PM_FOLDERI
  add constraint PM_FOLDERI_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_GRUPE
prompt =======================
prompt
create table CORE.PM_GRUPE
(
  id          NUMBER default on null "CORE"."PM_GRUPE_SEQ"."NEXTVAL" not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR),
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_GRUPE_I1 on CORE.PM_GRUPE (OOJ_ID);
alter table CORE.PM_GRUPE
  add constraint PM_GRUPE_ID_PK primary key (ID);
alter table CORE.PM_GRUPE
  add constraint PM_GRUPE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;

prompt
prompt Creating table PM_GRUPA_KORISNICI
prompt =================================
prompt
create table CORE.PM_GRUPA_KORISNICI
(
  id          NUMBER default on null "CORE"."PM_GRUPA_KORISNICI_SEQ"."NEXTVAL" not null,
  grupa_id    NUMBER,
  korisnik_id NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_GRUPA_KORISNICI_I1 on CORE.PM_GRUPA_KORISNICI (GRUPA_ID);
create index CORE.PM_GRUPA_KORISNICI_I2 on CORE.PM_GRUPA_KORISNICI (KORISNIK_ID);
alter table CORE.PM_GRUPA_KORISNICI
  add constraint PM_GRUPA_KORISNICI_ID_PK primary key (ID);
alter table CORE.PM_GRUPA_KORISNICI
  add constraint PM_GRUPA_KORISNICI_GRUPA_ID_FK foreign key (GRUPA_ID)
  references CORE.PM_GRUPE (ID)
  disable
  novalidate;
alter table CORE.PM_GRUPA_KORISNICI
  add constraint PM_GRUPA_KORISNICI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PM_SABLONI
prompt =========================
prompt
create table CORE.PM_SABLONI
(
  id          NUMBER default on null "CORE"."PM_SABLONI_SEQ"."NEXTVAL" not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_SABLONI_I1 on CORE.PM_SABLONI (OOJ_ID);
alter table CORE.PM_SABLONI
  add constraint PM_SABLONI_ID_PK primary key (ID);
alter table CORE.PM_SABLONI
  add constraint PM_SABLONI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.PM_SABLONI
  add constraint PM_SABLONI_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJE
prompt ===========================
prompt
create table CORE.PM_KONEKCIJE
(
  id                     NUMBER default on null "CORE"."PM_KONEKCIJE_SEQ"."NEXTVAL" not null,
  ooj_id                 NUMBER,
  sablon_id              NUMBER,
  folder_id              NUMBER,
  naziv                  VARCHAR2(255 CHAR),
  username               VARCHAR2(255 CHAR),
  password               RAW(2000),
  password_last_changed  DATE,
  password_change_period NUMBER,
  napomena               VARCHAR2(1000 CHAR),
  master_pw              VARCHAR2(1 CHAR),
  valid                  VARCHAR2(1 CHAR) default 'Y',
  row_version            INTEGER not null,
  created                DATE not null,
  created_by             VARCHAR2(255 CHAR) not null,
  updated                DATE not null,
  updated_by             VARCHAR2(255 CHAR) not null,
  password_iv            RAW(16)
)
;
create index CORE.PM_KONEKCIJE_I1 on CORE.PM_KONEKCIJE (OOJ_ID);
create index CORE.PM_KONEKCIJE_I2 on CORE.PM_KONEKCIJE (SABLON_ID);
create index CORE.PM_KONEKCIJE_I3 on CORE.PM_KONEKCIJE (FOLDER_ID);
alter table CORE.PM_KONEKCIJE
  add constraint PM_KONEKCIJE_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJE
  add constraint PM_KONEKCIJE_FOLDER_ID_FK foreign key (FOLDER_ID)
  references CORE.PM_FOLDERI (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJE
  add constraint PM_KONEKCIJE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJE
  add constraint PM_KONEKCIJE_SABLON_ID_FK foreign key (SABLON_ID)
  references CORE.PM_SABLONI (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJE
  add constraint PM_KONEKCIJE_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJA_DOKUMENTI
prompt =====================================
prompt
create table CORE.PM_KONEKCIJA_DOKUMENTI
(
  id                NUMBER default on null "CORE"."PM_KONEKCIJA_DOKUMENTI_SEQ"."NEXTVAL" not null,
  konekcija_id      NUMBER,
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_KONEKCIJA_DOKUMENTI_I1 on CORE.PM_KONEKCIJA_DOKUMENTI (KONEKCIJA_ID);
alter table CORE.PM_KONEKCIJA_DOKUMENTI
  add constraint PM_KONEKCIJA_DOKUMENTI_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJA_DOKUMENTI
  add constraint PM_KONEKCIJA_DOKUMENTI_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJA_HISTORY
prompt ===================================
prompt
create table CORE.PM_KONEKCIJA_HISTORY
(
  id           NUMBER default on null "CORE"."PM_KONEKCIJA_HISTORY_SEQ"."NEXTVAL" not null,
  konekcija_id NUMBER,
  password     RAW(2000),
  datum        DATE,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null,
  password_iv  RAW(16)
)
;
create index CORE.PM_KONEKCIJA_HISTORY_I1 on CORE.PM_KONEKCIJA_HISTORY (KONEKCIJA_ID);
alter table CORE.PM_KONEKCIJA_HISTORY
  add constraint PM_KONEKCIJA_HISTORY_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJA_HISTORY
  add constraint PM_KONEKCIJA_HISTORY_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJA_POLJA
prompt =================================
prompt
create table CORE.PM_KONEKCIJA_POLJA
(
  id            NUMBER default on null "CORE"."PM_KONEKCIJA_POLJA_SEQ"."NEXTVAL" not null,
  konekcija_id  NUMBER,
  polje_id      NUMBER,
  vrijednost    RAW(2000),
  valid         VARCHAR2(1 CHAR) default 'Y',
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  vrijednost_iv RAW(16)
)
;
create index CORE.PM_KONEKCIJA_POLJA_I1 on CORE.PM_KONEKCIJA_POLJA (KONEKCIJA_ID);
alter table CORE.PM_KONEKCIJA_POLJA
  add constraint PM_KONEKCIJA_POLJA_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJA_POLJA
  add constraint PM_KONEKCIJA_POLJA_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJA_POLJA
  add constraint PM_KONEKCIJA_POLJA_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJA_PRISTUPI
prompt ====================================
prompt
create table CORE.PM_KONEKCIJA_PRISTUPI
(
  id           NUMBER default on null "CORE"."PM_KONEKCIJA_PRISTUPI_SEQ"."NEXTVAL" not null,
  konekcija_id NUMBER,
  korisnik_id  NUMBER,
  grupa_id     NUMBER,
  valid        VARCHAR2(1 CHAR) default 'Y',
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_KONEKCIJA_PRISTUPI_I1 on CORE.PM_KONEKCIJA_PRISTUPI (KONEKCIJA_ID);
create index CORE.PM_KONEKCIJA_PRISTUPI_I2 on CORE.PM_KONEKCIJA_PRISTUPI (KORISNIK_ID);
create index CORE.PM_KONEKCIJA_PRISTUPI_I3 on CORE.PM_KONEKCIJA_PRISTUPI (GRUPA_ID);
alter table CORE.PM_KONEKCIJA_PRISTUPI
  add constraint PM_KONEKCIJA_PRISTUPI_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJA_PRISTUPI
  add constraint PM_KONEKCIJA_PRISTUPI_GRUPA_ID_FK foreign key (GRUPA_ID)
  references CORE.PM_GRUPE (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJA_PRISTUPI
  add constraint PM_KONEKCIJA_PRISTUPI_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJA_PRISTUPI
  add constraint PM_KONEKCIJA_PRISTUPI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJA_PRISTUPI
  add constraint PM_KONEKCIJA_PRISTUPI_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_KONEKCIJA_WEBSITE
prompt ===================================
prompt
create table CORE.PM_KONEKCIJA_WEBSITE
(
  id           NUMBER default on null "CORE"."PM_KONEKCIJA_WEBSITE_SEQ"."NEXTVAL" not null,
  konekcija_id NUMBER,
  url          VARCHAR2(255 CHAR),
  valid        VARCHAR2(1 CHAR) default 'Y',
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_KONEKCIJA_WEBSITE_I1 on CORE.PM_KONEKCIJA_WEBSITE (KONEKCIJA_ID);
alter table CORE.PM_KONEKCIJA_WEBSITE
  add constraint PM_KONEKCIJA_WEBSITE_ID_PK primary key (ID);
alter table CORE.PM_KONEKCIJA_WEBSITE
  add constraint PM_KONEKCIJA_WEBSITE_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;
alter table CORE.PM_KONEKCIJA_WEBSITE
  add constraint PM_KONEKCIJA_WEBSITE_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PM_KORISNIK_PRISTUPI
prompt ===================================
prompt
create table CORE.PM_KORISNIK_PRISTUPI
(
  id           NUMBER default on null "CORE"."PM_KORISNIK_PRISTUPI_SEQ"."NEXTVAL" not null,
  korisnik_id  NUMBER,
  konekcija_id NUMBER,
  favorite     VARCHAR2(1 CHAR),
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index CORE.PM_KORISNIK_PRISTUPI_I1 on CORE.PM_KORISNIK_PRISTUPI (KORISNIK_ID);
create index CORE.PM_KORISNIK_PRISTUPI_I2 on CORE.PM_KORISNIK_PRISTUPI (KONEKCIJA_ID);
alter table CORE.PM_KORISNIK_PRISTUPI
  add constraint PM_KORISNIK_PRISTUPI_ID_PK primary key (ID);
alter table CORE.PM_KORISNIK_PRISTUPI
  add constraint PM_KORISNIK_PRISTUPI_KONEKCIJA_ID_FK foreign key (KONEKCIJA_ID)
  references CORE.PM_KONEKCIJE (ID)
  disable
  novalidate;
alter table CORE.PM_KORISNIK_PRISTUPI
  add constraint PM_KORISNIK_PRISTUPI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PM_SABLON_POLJA
prompt ==============================
prompt
create table CORE.PM_SABLON_POLJA
(
  id          NUMBER default on null "CORE"."PM_SABLON_POLJA_SEQ"."NEXTVAL" not null,
  sablon_id   NUMBER,
  naziv       VARCHAR2(255 CHAR),
  sequence    NUMBER,
  region      VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  tip         VARCHAR2(16 CHAR)
)
;
create index CORE.PM_SABLON_POLJA_I1 on CORE.PM_SABLON_POLJA (SABLON_ID);
alter table CORE.PM_SABLON_POLJA
  add constraint PM_SABLON_POLJA_ID_PK primary key (ID);
alter table CORE.PM_SABLON_POLJA
  add constraint PM_SABLON_POLJA_SABLON_ID_FK foreign key (SABLON_ID)
  references CORE.PM_SABLONI (ID)
  disable
  novalidate;
alter table CORE.PM_SABLON_POLJA
  add constraint PM_SABLON_POLJA_VALID_CK
  check ( "VALID" IN ('Y', 'N') )
  disable
  novalidate;

prompt
prompt Creating table PROTOKOLI
prompt ========================
prompt
create table CORE.PROTOKOLI
(
  id              NUMBER default on null core.protokoli_seq.nextval not null,
  ooj_id          NUMBER,
  vrsta_naloga_id NUMBER,
  godina          NUMBER,
  prefix          VARCHAR2(64 CHAR),
  broj            NUMBER,
  sufix           VARCHAR2(64 CHAR),
  duzina          NUMBER,
  auto_restart    VARCHAR2(1 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index CORE.PROTOKOLI_I1 on CORE.PROTOKOLI (OOJ_ID);
create index CORE.PROTOKOLI_I2 on CORE.PROTOKOLI (VRSTA_NALOGA_ID);
alter table CORE.PROTOKOLI
  add constraint PROTOKOLI_ID_PK primary key (ID);
alter table CORE.PROTOKOLI
  add constraint PROTOKOLI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table CORE.PROTOKOLI
  add constraint PROTOKOLI_VRSTA_NALOGA_ID_FK foreign key (VRSTA_NALOGA_ID)
  references SIF.VRSTE_DOKUMENATA (ID)
  disable
  novalidate;
alter table CORE.PROTOKOLI
  add constraint PROTOKOLI_AUTO_RESTART_CK
  check ( auto_restart in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table CORE.PROTOKOLI
  add constraint PROTOKOLI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating view VW_EXPORT_IMPORT_LOG
prompt ==================================
prompt
create or replace force view core.vw_export_import_log as
select
        l.id,
        l.ooj_id,
        ooj.naziv    as ooj_naziv,
        l.korisnik_id,
        k.ime
        || ' '
        || k.prezime as korisnik_naziv,
        k.korisnicko_ime,
        l.tip_id,
        t.sifra      as tip_sifra,
        t.naziv      as tip_naziv,
        t.ei         as tip_ei,
        l.datum,
        l.filename,
        l.valid,
        l.row_version,
        l.created,
        l.created_by,
        l.updated,
        l.updated_by
    from
        export_import_log l
        left join ooj on l.ooj_id = ooj.id
        left join korisnici         k on l.korisnik_id = k.id
        left join sif.sif_tipovi_ei t on l.tip_id = t.id;

prompt
prompt Creating view VW_FIRMA_MODULI
prompt =============================
prompt
create or replace force view core.vw_firma_moduli as
select
        fm.id,
        fm.firma_id,
        f.naziv    as firma_naziv,
        fm.modul_id,
        m.naziv    as modul_naziv,
        m.sequence as modul_sequence,
        m.opis     as modul_opis,
        m.icon     as modul_icon,
        fm.cijena,
        fm.broj_korisnika,
        (
            select
                count(*)
            from
                korisnik_moduli km
            where
                    km.modul_id = fm.modul_id
                and km.korisnik_id in (
                    select
                        id
                    from
                        korisnici k
                    where
                        k.firma_id = fm.firma_id
                )
        )          as broj_korisnika_aktivnih,
        fm.valid,
        fm.row_version,
        fm.created,
        fm.created_by,
        fm.updated,
        fm.updated_by
    from
        firma_moduli   fm
        left join firme          f on fm.firma_id = f.id
        left join sif.sif_moduli m on fm.modul_id = m.id;

prompt
prompt Creating view VW_FIRMA_MODULI_QUEUE
prompt ===================================
prompt
create or replace force view core.vw_firma_moduli_queue as
select
        q.id,
        q.firma_id,
        f.naziv as firma_naziv,
        q.modul_id,
        m.naziv as modul_naziv,
        q.tip,
        case
            when tip = 'D' then
                'Brisanje'
            when tip = 'A' then
                'Dodavanje'
            else
                'Ažuriranje'
        end     as tip_naziv,
        case
            when tip = 'D' then
                'u-color-9'
            when tip = 'A' then
                'u-color-5'
            else
                'u-color-6'
        end     as tip_color_code,
        q.valid,
        q.row_version,
        q.created,
        q.created_by,
        q.updated,
        q.updated_by
    from
        firma_moduli_queue q
        left join firme              f on q.firma_id = f.id
        left join sif.sif_moduli     m on q.modul_id = m.id;

prompt
prompt Creating view VW_FIRMA_RADNA_MJESTA
prompt ===================================
prompt
create or replace force view core.vw_firma_radna_mjesta as
select
        rm.id,
        f.id      as firma_id,
        f.naziv   as firma_naziv,
        rm.ooj_id,
        ooj.naziv as ooj_naziv,
        rm.oj_id,
        oj.naziv  as oj_naziv,
        rm.naziv,
        rm.opis,
        rm.broj_dana_go,
        rm.valid,
        rm.row_version,
        rm.created,
        rm.created_by,
        rm.updated,
        rm.updated_by
    from
        firma_radna_mjesta rm
        left join ooj                ooj on rm.ooj_id = ooj.id
        left join oj                 oj on rm.oj_id = oj.id
        left join firme              f on ooj.firma_id = f.id;

prompt
prompt Creating view VW_FIRME
prompt ======================
prompt
create or replace force view core.vw_firme as
select
        f.id,
        f.naziv,
        f.www,
        f.odgovorno_lice,
        f.email,
        f.active_to,
        case
            when f.logo is null then
                (
                    select
                        file_content
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'no_logo.png'
                        and rownum = 1
                )
            else
                f.logo
        end            as logo,
        case
            when f.logo is null then
                'no_logo.png'
            else
                f.logo_filename
        end            as logo_filename,
        case
            when f.logo is null then
                (
                    select
                        mime_type
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'no_logo.png'
                        and rownum = 1
                )
            else
                f.logo_mimetype
        end            as logo_mimetype,
        case
            when f.logo is null then
                (
                    select
                        last_updated_on
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'no_logo.png'
                        and rownum = 1
                )
            else
                f.logo_lastupd
        end            as logo_lastupd,
        f.interval_id,
        i.naziv        as interval_naziv,
        i.broj_mjeseci as interval_broj_mjeseci,
        f.esscom_id,
        ek.naziv as esscom_naziv,
        f.biro,
        f.biro_id,
        b.naziv        as biro_naziv,
        f.biro_status,
        case
            when f.biro = 'Y' then
                (
                    select
                        count(*)
                    from
                        firme
                    where
                            biro_id = f.id
                        and biro_status = 1
                )
            else
                null
        end            as klijenti_count,
        f.popust,
        f.obrazac_fakture_id,
        o.naziv        as obrazac_fakture_naziv,
        o.path         as obrazac_fakture_path,
        f.tip_preduzetnika_id,
        tp.sifra       as tip_preduzetnika_sifra,
        tp.naziv       as tip_preduzetnika_naziv,
        f.dvojno_knjigovodstvo,
        f.obrazac_memoranduma_id,
        om.naziv       as obrazac_memoranduma_naziv,
        om.path        as obrazac_memoranduma_path,
        (
            select
                count(*)
            from
                ooj
            where
                firma_id = f.id
        )              as ooj_count,
        f.valid,
        f.created,
        f.created_by,
        f.updated,
        f.updated_by
    from
        firme                       f
        left join sif.sif_intervali           i on f.interval_id = i.id
        left join firme                       b on f.biro_id = b.id
        left join sif.acc_obrasci_faktura     o on f.obrazac_fakture_id = o.id
        left join sif.sif_tipovi_preduzetnika tp on f.tip_preduzetnika_id = tp.id
        left join sif.hr_obrasci_memoranduma  om on f.obrazac_memoranduma_id = om.id
        left join accounting.sec_klijenti     ek on f.esscom_id = ek.id;

prompt
prompt Creating view VW_KORISNICI
prompt ==========================
prompt
create or replace force view core.vw_korisnici as
select
        k.id,
        k.korisnicko_ime,
        k.lozinka,
        k.ime,
        k.prezime,
        k.ime
        || ' '
        || k.prezime     as korisnik_naziv,
        k.email,
        k.telefon,
        k.mobtel,
        k.firma_id,
        k.mailing,
        k.biro_korisnik,
        k.password,
        k.last_login,
        k.password_version,
        k.change_required,
        k.password_last_changed,
        k.password_reset,
        k.password_reset_valid,
        k.password_reset_code,
        k.sif_application_id,
        a.naziv          as application_naziv,
        a.color_code     as application_color_code,
        a.application_id as app_id,
        case
            when k.foto is null then
                (
                    select
                        file_content
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'user_icon.png'
                        and rownum = 1
                )
            else
                k.foto
        end              as foto,
        case
            when k.foto_filename is null then
                'user_icon.png'
            else
                k.foto_filename
        end              as foto_filename,
        case
            when k.foto_mimetype is null then
                (
                    select
                        mime_type
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'user_icon.png'
                        and rownum = 1
                )
            else
                k.foto_mimetype
        end              as foto_mimetype,
        case
            when k.foto_charset is null then
                (
                    select
                        file_charset
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'user_icon.png'
                        and rownum = 1
                )
            else
                k.foto_charset
        end              as foto_charset,
        case
            when k.foto_lastupd is null then
                (
                    select
                        last_updated_on
                    from
                        apex_workspace_static_files
                    where
                            file_name = 'user_icon.png'
                        and rownum = 1
                )
            else
                k.foto_lastupd
        end              as foto_lastupd,
        k.email_potpis,
        k.valid,
        k.created,
        k.updated,
        k.created_by,
        k.updated_by
    from
        korisnici          k
        left join sif.sif_aplikacije a on k.sif_application_id = a.id;

prompt
prompt Creating view VW_KORISNIK_BRZI_PRISTUPI
prompt =======================================
prompt
create or replace force view core.vw_korisnik_brzi_pristupi as
select
        bp.id,
        bp.korisnik_id,
        k.korisnicko_ime as korisnik_naziv,
        bp.page_id,
        bp.title,
        bp.icon,
        bp.sequence,
        bp.sif_application_id,
        a.naziv          as application_naziv,
        a.color_code     as application_color_code,
        a.application_id as app_id,
        bp.valid,
        bp.created,
        bp.created_by,
        bp.updated,
        bp.updated_by,
        bp.row_version
    from
        korisnik_brzi_pristupi bp
        left join korisnici              k on bp.korisnik_id = k.id
        left join sif.sif_aplikacije     a on bp.sif_application_id = a.id;

prompt
prompt Creating view VW_KORISNIK_ROLE
prompt ==============================
prompt
create or replace force view core.vw_korisnik_role as
select
        kr.id,
        kr.korisnik_id,
        k.ime
        || ' '
        || k.prezime as korisnik_naziv,
        kr.rola_id,
        r.naziv      as rola_naziv,
        r.name       as rola_name,
        kr.valid,
        kr.row_version,
        kr.created,
        kr.created_by,
        kr.updated,
        kr.updated_by
    from
        korisnik_role kr
        left join korisnici     k on kr.korisnik_id = k.id
        left join sif.sif_role  r on kr.rola_id = r.id;

prompt
prompt Creating view VW_KORISNIK_SEKRETARICE
prompt =====================================
prompt
create or replace force view core.vw_korisnik_sekretarice as
select
        ks.id,
        ks.korisnik_id,
        ks.sekretarica_id,
        s.email as sekretarica_email,
        ks.row_version,
        ks.created,
        ks.created_by,
        ks.updated,
        ks.updated_by
    from
        korisnik_sekretarice ks
        left join korisnici            s on ks.sekretarica_id = s.id;

prompt
prompt Creating view VW_NOTIFIKACIJE
prompt =============================
prompt
create or replace force view core.vw_notifikacije as
select
        n.id,
        n.tip_notifikacije_id,
        a.naziv                                  as aplikacija_naziv,
        a.application_id                         as app_id,
        t.naziv,
        t.note_icon,
        t.note_icon_color,
        t.note_color,
        t.note_page,
        t.page_item,
        t.sifra,
        n.korisnik_id,
        k.korisnicko_ime,
        k.ime,
        k.prezime,
        n.note_header,
        n.note_text,
        to_char(n.created, 'DD.MM.YYYY HH24:MI') as note_time,
        n.read,
        n.valid,
        n.row_version,
        n.created,
        n.created_by,
        n.updated,
        n.updated_by
    from
        korisnik_notifikacije       n
        left join sif.sif_tipovi_notifikacija t on n.tip_notifikacije_id = t.id
        left join korisnici                   k on n.korisnik_id = k.id
        left join sif.sif_aplikacije          a on t.sif_application_id = a.id;

prompt
prompt Creating view VW_OJ
prompt ===================
prompt
create or replace force view core.vw_oj as
select
        oj.id,
        oj.naziv,
        oj.ooj_id,
        ooj.naziv as ooj_naziv,
        ooj.firma_id,
        oj.parent_id,
        p.naziv   as parent_naziv,
        oj.lat,
        oj.lng,
        oj.valid,
        oj.created_by,
        oj.updated_by,
        oj.created,
        oj.updated
    from
        oj
        left join ooj on oj.ooj_id = ooj.id
        left join oj p on oj.parent_id = p.id;

prompt
prompt Creating view VW_OOJ
prompt ====================
prompt
create or replace force view core.vw_ooj as
select
        ooj.id,
        ooj.naziv,
        ooj.firma_id,
        f.naziv          as firma_naziv,
        f.odgovorno_lice as firma_odgovorno_lice,
        f.logo           as firma_logo,
        
        f.ribolovno_drustvo,
        f.savez_id,
        f.sablon_id,
        f.savez,
        f.nadredjeni_savez_id,
        
        ooj.grad_id,
        g.naziv          as grad_naziv,
        g.sifra          as grad_sifra,
        g.entitet_id     as entitet_id,
        en.naziv AS entitet_naziv,
        ooj.adresa,
        ooj.zip,
        ooj.tel,
        ooj.fax,
        ooj.email,
        ooj.jib,
        ooj.pib,
        ooj.lat,
        ooj.lng,
        ooj.mbs,
        ooj.mb,
        ooj.pdv_sistem,
        ooj.rjesenje,
        ooj.broj_rjesenja,
        ooj.datum_rjesenja,
        ooj.izdavaoc_rjesenja,
        ooj.konto_duzina,
        ooj.period_zakljucan_do,
        ooj.djelatnost,
        ooj.data_load_status_id,
        s.sifra          as data_load_status_sifra,
        s.naziv          as data_load_status_naziv,
        s.color_code     as data_load_color_code,
        ooj.data_load_kif_static_id,
        ooj.data_load_kif_example,
        ooj.data_load_kif_example_filename,
        ooj.data_load_kif_example_mimetype,
        ooj.data_load_kuf_static_id,
        ooj.data_load_kuf_example,
        ooj.data_load_kuf_example_filename,
        ooj.data_load_kuf_example_mimetype,
        ooj.export_id,
        e.naziv          as export_naziv,
        e.sifra          as export_sifra,
        ooj.import_id,
        i.naziv          as import_naziv,
        i.sifra          as import_sifra,
        ooj.import_data_load_static_id,
        ooj.os_zakljucana,
        ooj.cms_pin,
        ooj.tip_cijene,
        ooj.valid
    from
        ooj
        left join firme            f on ooj.firma_id = f.id
        left join sif.sif_gradovi  g on ooj.grad_id = g.id
        left join sif.sif_statusi  s on ooj.data_load_status_id = s.id
        left join sif.pl_tipovi_ei e on ooj.export_id = e.id
        left join sif.pl_tipovi_ei i on ooj.import_id = i.id
        left join sif.sif_entiteti en on g.entitet_id = en.id;

prompt
prompt Creating view VW_OOJ_BANKE
prompt ==========================
prompt
create or replace force view core.vw_ooj_banke as
select
        ob.id,
        ob.ooj_id,
        ooj.naziv as ooj_naziv,
        ob.banka_id,
        b.naziv   as banka_naziv,
        b.email   as banka_email,
        b.www     as banka_www,
        ob.kontna_klasa_id,
        k.code    as kontna_klasa_code,
        k.naziv   as kontna_klasa_naziv,
        ob.ziro_racun,
        ob.za_plate,
        ob.valid,
        ob.row_version,
        ob.created,
        ob.created_by,
        ob.updated,
        ob.updated_by
    from
        ooj_banke                  ob
        left join ooj on ob.ooj_id = ooj.id
        left join sif.sif_banke              b on ob.banka_id = b.id
        left join sif.acc_kontni_okvir_klase k on ob.kontna_klasa_id = k.id;

prompt
prompt Creating view VW_OOJ_LOKACIJA_PROSTORIJE
prompt ========================================
prompt
create or replace force view core.vw_ooj_lokacija_prostorije as
select
        p.id,
        p.lokacija_id,
        l.naziv   as lokacija_naziv,
        l.adresa  as lokacija_adresa,
        l.ooj_id,
        ooj.naziv as ooj_naziv,
        p.broj,
        p.naziv,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        ooj_lokacija_prostorije p
        left join ooj_lokacije            l on p.lokacija_id = l.id
        left join ooj on l.ooj_id = ooj.id;

prompt
prompt Creating view VW_OOJ_LOKACIJE
prompt =============================
prompt
create or replace force view core.vw_ooj_lokacije as
select
        l.id,
        l.ooj_id,
        ooj.naziv as ooj_naziv,
        ooj.firma_id,
        l.naziv,
        l.adresa,
        l.lat,
        l.lng,
        l.valid,
        l.row_version,
        l.created,
        l.created_by,
        l.updated,
        l.updated_by
    from
        ooj_lokacije l
        left join ooj on l.ooj_id = ooj.id;

prompt
prompt Creating package OOJ_PKG
prompt ========================
prompt
create or replace package core.ooj_pkg as
    
    --------------------------------------------------------------
    -- procedures for table OOJ
    --------------------------------------------------------------
    
    --djordjije 08.01.2026--
    function valid_date_op (
       p_date in date, 
       p_id in number
    ) return varchar2;
    ----
    
    
    
    procedure get_ooj_name (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure get_ooj_email (
        p_id    in number,
        p_email out varchar2
    );

    function get_ooj_entitet_id (
        p_ooj_id in number
    ) return number;

    function get_tip_cijene (
        p_ooj_id in number
    ) return varchar2;
    
    function get_ooj_pdv_sistem (
        p_ooj_id in number
    ) return varchar2;


    procedure get_ooj (
        p_id                  in number,
        p_firma_id            out number,
        p_grad_id             out number,
        p_naziv               out varchar2,
        p_adresa              out varchar2,
        p_zip                 out varchar2,
        p_tel                 out varchar2,
        p_fax                 out varchar2,
        p_email               out varchar2,
        p_jib                 out varchar2,
        p_pib                 out varchar2,
        p_lat                 out number,
        p_lng                 out number,
        p_mbs                 out varchar2,
        p_mb                  out varchar2,
        p_pdv_sistem          out varchar2,
        p_rjesenje            out varchar2,
        p_broj_rjesenja       out varchar2,
        p_datum_rjesenja      out date,
        p_izdavaoc_rjesenja   out varchar2,
        p_konto_duzina        out number,
        p_period_zakljucan_do out date,
        p_djelatnost          out varchar2,
        p_valid               out varchar2
    );

    procedure get_ooj (
        p_id                  in number,
        p_mbs                 out varchar2,
        p_mb                  out varchar2,
        p_pdv_sistem          out varchar2,
        p_rjesenje            out varchar2,
        p_broj_rjesenja       out varchar2,
        p_datum_rjesenja      out date,
        p_izdavaoc_rjesenja   out varchar2,
        p_konto_duzina        out number,
        p_period_zakljucan_do out date,
        p_tip_cijene          out varchar2
    );

    procedure get_ooj (
        p_id                         in number,
        p_export_id                  out number,
        p_import_id                  out number,
        p_import_data_load_static_id out varchar2
    );

    -- Za obrasce
    procedure get_ooj (
        p_ooj_id         in number,
        p_naziv          out varchar2,
        p_odgovorno_lice out varchar2,
        p_adresa         out varchar2,
        p_grad_naziv     out varchar2,
        p_zip            out varchar2,
        p_tel            out varchar2,
        p_fax            out varchar2,
        p_jib            out varchar2,
        p_pib            out varchar2,
        p_mbs            out varchar2,
        p_mb             out varchar2
    );

    procedure insert_ooj (
        p_firma_id          in number,
        p_grad_id           in number,
        p_naziv             in varchar2,
        p_adresa            in varchar2,
        p_zip               in varchar2,
        p_tel               in varchar2,
        p_fax               in varchar2,
        p_email             in varchar2,
        p_jib               in varchar2,
        p_pib               in varchar2,
        p_lat               in number,
        p_lng               in number,
        p_mbs               in varchar2,
        p_mb                in varchar2,
        p_pdv_sistem        in varchar2,
        p_rjesenje          in varchar2,
        p_broj_rjesenja     in varchar2,
        p_datum_rjesenja    in date,
        p_izdavaoc_rjesenja in varchar2,
        p_konto_duzina      in number,
        p_djelatnost        in varchar2
    );

    procedure insert_ooj (
        p_firma_id in number,
        p_grad_id  in number,
        p_naziv    in varchar2,
        p_adresa   in varchar2,
        p_zip      in varchar2,
        p_tel      in varchar2,
        p_fax      in varchar2,
        p_email    in varchar2,
        p_jib      in varchar2,
        p_pib      in varchar2
    );

    procedure update_ooj (
        p_id                  in number,
        p_firma_id            in number,
        p_grad_id             in number,
        p_naziv               in varchar2,
        p_adresa              in varchar2,
        p_zip                 in varchar2,
        p_tel                 in varchar2,
        p_fax                 in varchar2,
        p_email               in varchar2,
        p_jib                 in varchar2,
        p_pib                 in varchar2,
        p_lat                 in number,
        p_lng                 in number,
        p_mbs                 in varchar2,
        p_mb                  in varchar2,
        p_pdv_sistem          in varchar2,
        p_rjesenje            in varchar2,
        p_broj_rjesenja       in varchar2,
        p_datum_rjesenja      in date,
        p_izdavaoc_rjesenja   in varchar2,
        p_konto_duzina        in number,
        p_period_zakljucan_do in date,
        p_djelatnost          in varchar2,
        p_valid               in varchar2
    );

    procedure update_ooj (
        p_id                  in number,
        p_mbs                 in varchar2,
        p_mb                  in varchar2,
        p_pdv_sistem          in varchar2,
        p_rjesenje            in varchar2,
        p_broj_rjesenja       in varchar2,
        p_datum_rjesenja      in date,
        p_izdavaoc_rjesenja   in varchar2,
        p_konto_duzina        in number,
        p_period_zakljucan_do in date,
        p_tip_cijene          in varchar2
    );

    procedure update_ooj (
        p_id                         in number,
        p_export_id                  in number,
        p_import_id                  in number,
        p_import_data_load_static_id in varchar2
    );

    procedure lock_ooj (
        p_id                  in number,
        p_period_zakljucan_do in date
    );

    function get_konto_duzina (
        p_id in number
    ) return number;

    -- Accounting
    procedure get_ooj_data_load (
        p_ooj_id                    in number,
        p_data_load_kif_static_id   out varchar2,
        p_data_load_kif_before      out number,
        p_data_load_kif_after       out number,
        p_data_load_kif_date_format out varchar2,
        p_data_load_kuf_static_id   out varchar2,
        p_data_load_kuf_before      out number,
        p_data_load_kuf_after       out number,
        p_data_load_kuf_date_format out varchar2
    );

    function get_ooj_data_load_status (
        p_ooj_id in number
    ) return varchar2;

    procedure upload_data_load_example (
        p_ooj_id      in number,
        p_kif_example in varchar2,
        p_kuf_example in varchar2
    );

    procedure update_data_load (
        p_ooj_id                    in number,
        p_data_load_status_id       in number,
        p_data_load_kif_static_id   in varchar2,
        p_data_load_kif_before      in number,
        p_data_load_kif_after       in number,
        p_data_load_kif_date_format in varchar2,
        p_data_load_kuf_static_id   in varchar2,
        p_data_load_kuf_before      in number,
        p_data_load_kuf_after       in number,
        p_data_load_kuf_date_format in varchar2
    );

    --------------------------------------------------------------
    -- procedures for table OJ
    --------------------------------------------------------------

    procedure get_oj (
        p_id          in number,
        p_ooj_id      out number,
        p_parent_id   out number,
        p_naziv       out varchar2,
        p_lat         out number,
        p_lng         out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_oj (
        p_ooj_id    in number,
        p_parent_id in number,
        p_naziv     in varchar2,
        p_lat       in number,
        p_lng       in number
    );

    procedure update_oj (
        p_id        in number,
        p_ooj_id    in number,
        p_parent_id in number,
        p_naziv     in varchar2,
        p_lat       in number,
        p_lng       in number,
        p_valid     in varchar2
    );

    procedure delete_oj (
        p_id in number
    );
    --------------------------------------------------------------
    -- procedures for table OOJ_BANKE
    --------------------------------------------------------------

    procedure get_ooj_banka (
        p_id              in number,
        p_ooj_id          out number,
        p_banka_id        out number,
        p_kontna_klasa_id out number,
        p_ziro_racun      out varchar2,
        p_za_plate        out varchar2,
        p_valid           out varchar2
    );

    procedure insert_ooj_banka (
        p_ooj_id          in number,
        p_banka_id        in number,
        p_kontna_klasa_id in number,
        p_ziro_racun      in varchar2,
        p_za_plate        in varchar2
    );

    procedure update_ooj_banka (
        p_id              in number,
        p_ooj_id          in number,
        p_banka_id        in number,
        p_kontna_klasa_id in number,
        p_ziro_racun      in varchar2,
        p_za_plate        in varchar2,
        p_valid           in varchar2
    );

    procedure delete_ooj_banka (
        p_id in number
    );
    

    function get_za_plate_banka_id (
        p_ooj_id in number
    ) return number;

    function get_ziro_racun_za_plate (
        p_ooj_banka_id in number
    ) return varchar2;

    function get_banka_za_plate (
        p_ooj_banka_id in number
    ) return varchar2; 
    
    ------------------------------------------------------
    --procedure i funkcije fezane za tabelu sif.sif_ziro_racuni
    --djordjije ristanovic 10.07.2026 --
    ------------------------------------------------------
    
    procedure get_ziro_racun (
        p_id               in  number,
        p_ooj_id           out number,
        p_banka_id         out number,
        p_sifra            out varchar2,
        p_broj             out varchar2,
        p_opis             out varchar2,
        p_valuta_id        out number,
        p_kontna_klasa_id  out number,
        p_vrsta_naloga_id  out number, 
        p_valid            out varchar2
    );

    procedure insert_ziro_racun (
        p_ooj_id           in number,
        p_banka_id         in number,
        p_sifra            in varchar2,
        p_broj             in varchar2,
        p_opis             in varchar2,
        p_valuta_id        in number,
        p_kontna_klasa_id  in number,
        p_vrsta_naloga_id  in number,
        p_valid            in varchar2, 
        p_id               out number
    );

    procedure update_ziro_racun (
        p_id               in number,
        p_ooj_id           in number,
        p_banka_id         in number,
        p_sifra            in varchar2,
        p_broj             in varchar2,
        p_opis             in varchar2,
        p_valuta_id        in number,
        p_kontna_klasa_id  in number,
        p_vrsta_naloga_id  in number, 
        p_valid            in varchar2
    );

    procedure delete_ziro_racun (
        p_id in number
    );
    
    
    --------------------------------------------------------------
    -- procedures for table OJ_LOKACIJE
    --------------------------------------------------------------

    procedure get_lokacija (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_adresa out varchar2,
        p_lat    out number,
        p_lng    out number,
        p_valid  out varchar2
    );

    procedure insert_lokacija (
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_adresa in varchar2,
        p_lat    in number,
        p_lng    in number
    );

    procedure update_lokacija (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_adresa in varchar2,
        p_lat    in number,
        p_lng    in number,
        p_valid  in varchar2
    );

    procedure delete_lokacija (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table LOKACIJA_PROSTORIJE
    --------------------------------------------------------------

    procedure get_lokacija_prostorija (
        p_id          in number,
        p_lokacija_id out number,
        p_broj        out number,
        p_naziv       out varchar2,
        p_valid       out varchar2
    );

    procedure get_lokacija_prostorija (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure insert_lokacija_prostorija (
        p_lokacija_id in number,
        p_broj        in number,
        p_naziv       in varchar2
    );

    procedure update_lokacija_prostorija (
        p_id          in number,
        p_lokacija_id in number,
        p_broj        in number,
        p_naziv       in varchar2,
        p_valid       in varchar2
    );

    procedure delete_lokacija_prostorija (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table EXPORT_IMPORT_LOG
    --------------------------------------------------------------

    procedure insert_import_export_log (
        p_ooj_id      in number,
        p_korisnik_id in number,
        p_tip_id      in number,
        p_datum       in date,
        p_filename    in varchar2
    );

    --------------------------------------------------------------
    -- procedures for table OOJ_VIZITKE
    --------------------------------------------------------------
    
    procedure get_ooj_vizitka (
        p_ooj_id             in number,
        p_id                 out number,
        p_firma_logo         out varchar2,
        p_firma_logo_height  out varchar2,
        p_radnik_logo        out varchar2,
        p_radnik_logo_shape  out varchar2,
        p_radnik_logo_height out varchar2,
        p_radno_mjesto       out varchar2,
        p_telefon            out varchar2,
        p_email              out varchar2,
        p_website            out varchar2,
        p_adresa             out varchar2,
        p_facebook           out varchar2,
        p_instagram          out varchar2,
        p_linkedin           out varchar2,
        p_twitter            out varchar2,
        p_youtube            out varchar2,
        p_accent_color       out varchar2,
        p_color              out varchar2,
        p_background_color   out varchar2,
        p_valid              out varchar2
    );

    procedure insert_ooj_vizitka (
        p_ooj_id             in number,
        p_firma_logo         in varchar2,
        p_firma_logo_height  in varchar2,
        p_radnik_logo        in varchar2,
        p_radnik_logo_shape  in varchar2,
        p_radnik_logo_height in varchar2,
        p_radno_mjesto       in varchar2,
        p_telefon            in varchar2,
        p_email              in varchar2,
        p_website            in varchar2,
        p_adresa             in varchar2,
        p_facebook           in varchar2,
        p_instagram          in varchar2,
        p_linkedin           in varchar2,
        p_twitter            in varchar2,
        p_youtube            in varchar2,
        p_accent_color       in varchar2,
        p_color              in varchar2,
        p_background_color   in varchar2,
        p_background         in varchar2
    );

    procedure update_ooj_vizitka (
        p_id                 in number,
        p_ooj_id             in number,
        p_firma_logo         in varchar2,
        p_firma_logo_height  in varchar2,
        p_radnik_logo        in varchar2,
        p_radnik_logo_shape  in varchar2,
        p_radnik_logo_height in varchar2,
        p_radno_mjesto       in varchar2,
        p_telefon            in varchar2,
        p_email              in varchar2,
        p_website            in varchar2,
        p_adresa             in varchar2,
        p_facebook           in varchar2,
        p_instagram          in varchar2,
        p_linkedin           in varchar2,
        p_twitter            in varchar2,
        p_youtube            in varchar2,
        p_accent_color       in varchar2,
        p_color              in varchar2,
        p_background_color   in varchar2,
        p_background         in varchar2,
        p_valid              in varchar2
    );

    procedure delete_ooj_vizitka (
        p_id in number
    );

end ooj_pkg;
/

prompt
prompt Creating view VW_OOJ_ZIRO_RACUNI
prompt ================================
prompt
create or replace force view core.vw_ooj_ziro_racuni as
select
        zr.id,
        zr.ooj_id,
        b.id as banka_id,
        b.naziv   as banka_naziv,
        b.email   as banka_email,
        rpad(k.code, core.ooj_pkg.get_konto_duzina(zr.ooj_id), '0')   as kontna_klasa_code,
        k.naziv   as kontna_klasa_naziv,
        zr.sifra  as sifra_racuna,
        zr.opis   as opis ,
        zr.broj   as ziro_racun,
        av.sifra as valuta,
        zr.valid
from sif.sif_ziro_racuni  zr
join sif.acc_valute av on av.id=zr.valuta_id
left join core.ooj on zr.ooj_id = ooj.id
left join sif.sif_banke              b on zr.banka_id = b.id
left join sif.acc_kontni_okvir_klase k on zr.kontna_klasa_id = k.id;

prompt
prompt Creating view VW_PM_GRUPA_KORISNICI
prompt ===================================
prompt
CREATE OR REPLACE FORCE VIEW CORE.VW_PM_GRUPA_KORISNICI AS
SELECT
	gk.id,
	gk.grupa_id,
	g.naziv AS grupa_naziv,
	gk.korisnik_id,
	k.ime || ' ' || k.prezime AS korisnik_naziv,
	k.email AS korisnik_email,
    k.foto,
    k.foto_filename,
    k.foto_mimetype,
	gk.row_version,
	gk.created,
	gk.created_by,
	gk.updated,
	gk.updated_by
FROM
	pm_grupa_korisnici gk
	LEFT JOIN pm_grupe g ON gk.grupa_id = g.id
	LEFT JOIN vw_korisnici k ON gk.korisnik_id = k.id;

prompt
prompt Creating view VW_PM_KONEKCIJA_POLJA
prompt ===================================
prompt
CREATE OR REPLACE FORCE VIEW CORE.VW_PM_KONEKCIJA_POLJA AS
SELECT
	kp.id,
	kp.konekcija_id,
	k.naziv AS konekcija_naziv,
	kp.polje_id,
	sp.naziv AS polje_naziv,
	sp.region AS polje_region,
    sp.tip AS polje_tip,
	kp.vrijednost,
	kp.vrijednost_iv,
	kp.valid,
	kp.row_version,
	kp.created,
	kp.created_by,
	kp.updated,
	kp.updated_by
FROM
	pm_konekcija_polja kp
	LEFT JOIN pm_konekcije k ON kp.konekcija_id = k.id
	LEFT JOIN pm_sablon_polja sp ON kp.polje_id = sp.id;

prompt
prompt Creating view VW_PM_KONEKCIJA_PRISTUPI
prompt ======================================
prompt
CREATE OR REPLACE FORCE VIEW CORE.VW_PM_KONEKCIJA_PRISTUPI AS
SELECT
	kp.id,
	kp.konekcija_id,
	k.naziv AS konekcija_naziv,
	kp.korisnik_id,
	ko.ime || ' ' || ko.prezime AS korisnik_naziv,
	ko.korisnicko_ime,
	ko.email AS korisnik_email,
	kp.grupa_id,
	g.naziv AS grupa_naziv,

	CASE
		WHEN kp.korisnik_id IS NOT null THEN
			ko.ime || ' ' || ko.prezime
		WHEN kp.grupa_id IS NOT null THEN
			g.naziv
		ELSE
			'-'
	END AS pristup_naziv,
	CASE
		WHEN kp.korisnik_id IS NOT null THEN
			'Korisnik'
		WHEN kp.grupa_id IS NOT null THEN
			'Grupa'
		ELSE
			'-'
	END AS tip,
	kp.valid,
	kp.row_version,
	kp.created,
	kp.created_by,
	kp.updated,
	kp.updated_by
FROM
	pm_konekcija_pristupi kp
	LEFT JOIN pm_konekcije k ON kp.konekcija_id = k.id
	LEFT JOIN korisnici ko ON kp.korisnik_id = ko.id
	LEFT JOIN pm_grupe g ON kp.grupa_id = g.id;

prompt
prompt Creating view VW_PM_KONEKCIJE
prompt =============================
prompt
CREATE OR REPLACE FORCE VIEW CORE.VW_PM_KONEKCIJE AS
SELECT
	k.id,
	k.ooj_id,
	ooj.naziv AS ooj_naziv,
	k.sablon_id,
	s.naziv AS sablon_naziv,
	k.folder_id,
	f.naziv AS folder_naziv,
	k.naziv,
	k.username,
	k.password,
	k.password_iv,
	k.password_last_changed,
	k.password_change_period,
	k.napomena,
	k.master_pw,
	k.valid,
	k.row_version,
	k.created,
	k.created_by,
	k.updated,
	k.updated_by
FROM
	pm_konekcije k
	LEFT JOIN ooj ON k.ooj_id = ooj.id
	LEFT JOIN pm_sabloni s ON k.sablon_id = s.id
	LEFT JOIN pm_folderi f ON k.folder_id = f.id;

prompt
prompt Creating view VW_PROTOKOLI
prompt ==========================
prompt
create or replace force view core.vw_protokoli as
select
        p.id,
        p.ooj_id,
        ooj.naziv as ooj_naziv,
        p.vrsta_naloga_id,
        vn.sifra  as vrsta_naloga_sifra,
        vn.naziv  as vrsta_naloga_naziv,
        ap.grupa  as vrsta_naloga_app,
        am.sifra  as vrsta_naloga_modul,
        ap.naziv  as vrsta_naloga_app_naziv,
        p.godina,
        p.prefix,
        p.broj,
        p.sufix,
        p.duzina,
        p.auto_restart,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        protokoli            p
        left join core.ooj on p.ooj_id = ooj.id
        left join sif.vrste_dokumenata vn on p.vrsta_naloga_id = vn.id
        left join sif.sif_aplikacije ap on ap.id=vn.app_id
        left join sif.acc_moduli am on am.id=vn.acc_modul_id;

prompt
prompt Creating package ERROR_MANAGER
prompt ==============================
prompt
CREATE OR REPLACE PACKAGE CORE.error_manager AS
  /*
  Package: error_manager
  Description: Centralizovani sistem za upravljanje greškama
  GDPR: Automatska anonimizacija i data retention
  WORM: Podaci se pišu jednom i više se ne mijenjaju
  */
    /********************************************************************
    *
    * Package: audit_manager
    * Description: Upravljanje WORM audit trail-om
    *
    *********************************************************************/

  -- Konstante za severity level
  c_severity_info     CONSTANT VARCHAR2(20) := 'INFO';
  c_severity_warning  CONSTANT VARCHAR2(20) := 'WARNING';
  c_severity_error    CONSTANT VARCHAR2(20) := 'ERROR';
  c_severity_critical CONSTANT VARCHAR2(20) := 'CRITICAL';

  -- Konstante za GDPR retention (u danima)
  c_retention_error   CONSTANT NUMBER := 90;
  c_retention_critical CONSTANT NUMBER := 180;
  c_retention_gdpr    CONSTANT NUMBER := 30;

  /*
  Procedure: p_log_error
  Description: Glavna procedura za logovanje grešaka
  */
  PROCEDURE p_log_error(
    pi_error_code      IN NUMBER DEFAULT NULL,
    pi_error_message   IN VARCHAR2 DEFAULT NULL,
    pi_module_name     IN VARCHAR2 DEFAULT NULL,
    pi_action_name     IN VARCHAR2 DEFAULT NULL,
    pi_apex_page_id    IN NUMBER DEFAULT NULL,
    pi_additional_info IN CLOB DEFAULT NULL,
    pi_severity_level  IN VARCHAR2 DEFAULT c_severity_error,
    pi_is_sensitive    IN BOOLEAN DEFAULT FALSE,
    po_error_id        OUT VARCHAR2
  );

  /*
  Function: f_log_error
  Description: Funkcijska verzija za korištenje u EXCEPTION bloku
  */
  FUNCTION f_log_error(
    pi_error_code      IN NUMBER DEFAULT NULL,
    pi_error_message   IN VARCHAR2 DEFAULT NULL,
    pi_module_name     IN VARCHAR2 DEFAULT NULL,
    pi_action_name     IN VARCHAR2 DEFAULT NULL,
    pi_apex_page_id    IN NUMBER DEFAULT NULL,
    pi_additional_info IN CLOB DEFAULT NULL,
    pi_severity_level  IN VARCHAR2 DEFAULT c_severity_error,
    pi_is_sensitive    IN BOOLEAN DEFAULT FALSE
  ) RETURN VARCHAR2;

  /*
  Function: f_generate_error_id
  Description: Generisanje jedinstvenog error ID-a
  */
  FUNCTION f_generate_error_id RETURN VARCHAR2;

  /*
  Function: f_get_user_display_message
  Description: Poruka za prikaz korisniku
  */
  FUNCTION f_get_user_display_message(
    pi_error_id IN VARCHAR2
  ) RETURN VARCHAR2;

  /*
  Procedure: p_cleanup_old_logs
  Description: Čišćenje starih logova prema GDPR
  */
  PROCEDURE p_cleanup_old_logs;

  /*
  Function: f_apex_error_handler
  Description: Error handling funkcija za Oracle Apex
  Note: apex_error.t_error NEMA page_id property!
        page_id se dohvata iz APEX_APPLICATION.G_FLOW_STEP_ID
  */
  FUNCTION f_apex_error_handler(
    p_error IN apex_error.t_error
  ) RETURN apex_error.t_error_result;

END error_manager;
/

prompt
prompt Creating package FIRMA_PKG
prompt ==========================
prompt
create or replace package core.firma_pkg as

    --------------------------------------------------------------
    -- procedures for table SEC_FIRMA
    --------------------------------------------------------------

    procedure get_firma (
        p_id                   in number,
        p_naziv                out varchar2,
        p_email                out varchar2,
        p_www                  out varchar2,
        p_odgovorno_lice       out varchar2,
        p_active_to            out date,
        p_interval_id          out number,
        p_biro                 out varchar2,
        p_tip_preduzetnika_id  out number,
        p_dvojno_knjigovodstvo out varchar2
    );

    procedure get_firma (
        p_id             in number,
        p_naziv          out varchar2,
        p_odgovorno_lice out varchar2,
        p_email          out varchar2,
        p_active_to      out date,
        p_popust         out number,
        p_esscom_id      out number
    );

    procedure get_firma (
        p_id    in number,
        p_naziv out varchar2,
        p_www   out varchar2
    );

    procedure get_firma (
        p_id          in number,
        p_min_dana_go out number
    );

    -- Za aktivaciju
    procedure get_firma (
        p_id             in number,
        p_naziv          out varchar2,
        p_email          out varchar2,
        p_odgovorno_lice out varchar2,
        p_active_to      out date,
        p_popust         out number
    );

    function insert_firma (
        p_naziv                in varchar2,
        p_email                in varchar2,
        p_www                  in varchar2,
        p_odgovorno_lice       in varchar2,
        p_interval_id          in number,
        p_esscom_id            in number,
        p_biro                 in varchar2,
        p_tip_preduzetnika_id  in number,
        p_dvojno_knjigovodstvo in varchar2
    ) return number;

    procedure update_firma (
        p_id                   in number,
        p_email                in varchar2,
        p_naziv                in varchar2,
        p_www                  in varchar2,
        p_odgovorno_lice       in varchar2,
        p_interval_id          in number,
        p_biro                 in varchar2,
        p_tip_preduzetnika_id  in number,
        p_dvojno_knjigovodstvo in varchar2
    );

    procedure update_firma (
        p_id          in number,
        p_min_dana_go in number
    );

    procedure update_firma (
        p_id                     in number,
        p_notifikacija_rodjendan in firme.notifikacija_rodjendan%TYPE
    );

    procedure update_firma (
        p_id        in number,
        p_popust    in number,
        p_esscom_id in number
    );

    procedure update_firma_logo (
        p_firma_id in number,
        p_logo     in varchar2
    );

    procedure update_firma_logo_base64 (
        p_firma_id    in number,
        p_logo_base64 in clob
    );

    procedure change_biro (
        p_id      in number,
        p_biro_id in number
    );

    procedure accept_biro (
        p_id in number
    );

    procedure decline_biro (
        p_id in number
    );

    procedure check_popust (
        p_id in number
    );

    -- Hr
    procedure get_firma_obrazac_memo (
        p_firma_id               in number,
        p_obrazac_memoranduma_id out number
    );

    function check_firma_obrazac_memo (
        p_firma_id in number
    ) return boolean;

    procedure update_firma_obrazac_memo (
        p_firma_id               in number,
        p_obrazac_memoranduma_id in number
    );

    -- Accounting
    procedure get_firma_obrazac (
        p_firma_id           in number,
        p_obrazac_fakture_id out number
    );

    function check_firma_obrazac (
        p_firma_id in number
    ) return boolean;

    procedure update_firma_obrazac (
        p_firma_id           in number,
        p_obrazac_fakture_id in number
    );

    --------------------------------------------------------------
    -- procedures for table FIRMA_RADNA_MJESTA
    --------------------------------------------------------------

    procedure get_radno_mjesto (
        p_id    in number,
        p_oj_id out number
    );

    procedure get_radno_mjesto (
        p_id           in number,
        p_ooj_id       out number,
        p_oj_id        out number,
        p_naziv        out varchar2,
        p_opis         out varchar2,
        p_broj_dana_go out number,
        p_valid        out varchar2
    );

    procedure insert_radno_mjesto (
        p_ooj_id       in number,
        p_oj_id        in number,
        p_naziv        in varchar2,
        p_opis         in varchar2,
        p_broj_dana_go in number
    );

    procedure update_radno_mjesto (
        p_id           in number,
        p_ooj_id       in number,
        p_oj_id        in number,
        p_naziv        in varchar2,
        p_opis         in varchar2,
        p_broj_dana_go in number,
        p_valid        in varchar2
    );

    procedure delete_radno_mjesto (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table FIRMA_DOKUMENTI
    --------------------------------------------------------------

    -- Insert dokumenata za firmu
    procedure insert_firma_docs (
        p_firma_id         in number,
        p_documents        in varchar2,
        p_tip_dokumenta_id in number,
        p_datum            in date
    );

end firma_pkg;
/

prompt
prompt Creating package KORISNIK_PKG
prompt =============================
prompt
CREATE OR REPLACE PACKAGE CORE.korisnik_pkg AS
    c_connect_role VARCHAR2(30) := 'KONEKCIJA_RLE';

    --------------------------------------------------------------
    -- procedures for table KORISNICI
    --------------------------------------------------------------
    FUNCTION get_hash (
        p_username IN VARCHAR2,
        p_password IN VARCHAR2,
        p_salt     IN RAW DEFAULT NULL
    ) RETURN VARCHAR2;

    FUNCTION get_hash_md5 (
        p_password IN VARCHAR2
    ) RETURN VARCHAR2;

    FUNCTION authenticate (
        p_username IN VARCHAR2,
        p_password IN VARCHAR2
    ) RETURN BOOLEAN;

    PROCEDURE change_password (
        p_id           IN NUMBER,
        p_username     IN VARCHAR2,
        p_old_password IN VARCHAR2,
        p_new_password IN VARCHAR2
    );

    PROCEDURE change_password (
        p_id           IN NUMBER,
        p_username     IN VARCHAR2,
        p_new_password IN VARCHAR2
    );

    PROCEDURE get_user (
        p_id       IN NUMBER,
        p_name     OUT VARCHAR2,
        p_email    OUT VARCHAR2,
        p_username OUT VARCHAR2
    );

    PROCEDURE rejoin_session (
        p_firma_id        IN OUT NUMBER,
        p_ooj_id          IN OUT NUMBER,
        p_user_id         IN OUT NUMBER,
        p_radnik_id       IN OUT NUMBER,
        p_session_changed IN OUT NUMBER,
        p_firma_id_new    IN NUMBER DEFAULT NULL,
        p_ooj_id_new      IN NUMBER DEFAULT NULL,
        p_user_id_new     IN NUMBER DEFAULT NULL,
        p_radnik_id_new   IN NUMBER DEFAULT NULL,
        p_firma_id_back   IN OUT NUMBER,
        p_ooj_id_back     IN OUT NUMBER,
        p_user_id_back    IN OUT NUMBER,
        p_radnik_id_back  IN OUT NUMBER
    );

    -- On Login procedure
    PROCEDURE get_user_data (
        p_korisnicko_ime         IN VARCHAR2,
        p_user_id                OUT NUMBER,
        p_firma_id               OUT NUMBER,
        p_radnik_id              OUT NUMBER,
        p_radnik_name            OUT VARCHAR2,
        p_ooj_id                 OUT NUMBER,
        p_tip_preduzetnika_sifra OUT VARCHAR2
    );

    -- In all applications Before Header process
    PROCEDURE get_application_data (
        p_app_id      IN NUMBER,
        p_page_id     IN NUMBER,
        p_firma_id    IN NUMBER,
        p_ooj_id      IN NUMBER,
        p_guide       OUT CLOB,
        p_firma_naziv OUT VARCHAR2,
        p_ooj_naziv   OUT VARCHAR2
    );

    -- Application 290
    PROCEDURE get_application_data (
        p_ooj_id              IN NUMBER,
        p_konto_duzina        OUT NUMBER,
        p_pib                 OUT VARCHAR2,
        p_period_zakljucan_do OUT DATE
    );

    PROCEDURE get_korisnik (
        p_id                    IN NUMBER,
        p_firma_id              OUT NUMBER,
        p_korisnicko_ime        OUT VARCHAR2,
        p_ime                   OUT VARCHAR2,
        p_prezime               OUT VARCHAR2,
        p_email                 OUT VARCHAR2,
        p_telefon               OUT VARCHAR2,
        p_mobtel                OUT VARCHAR2,
        p_biro_korisnik         OUT VARCHAR2,
        p_last_login            OUT DATE,
        p_change_required       OUT VARCHAR2,
        p_password_last_changed OUT DATE,
        p_valid                 OUT VARCHAR2
    );
    
    --Car Service (ID 380) aplikacija
    PROCEDURE get_korisnik (
        p_id                    IN NUMBER,
        p_korisnicko_ime        OUT VARCHAR2,
        p_ime                   OUT VARCHAR2,
        p_prezime               OUT VARCHAR2,
        p_email                 OUT VARCHAR2,
        p_change_required       OUT VARCHAR2,
        p_valid                 OUT VARCHAR2
    );
    PROCEDURE get_korisnik_by_klijent (
        p_klijent_id             IN  NUMBER,
        p_korisnik_id            OUT NUMBER

    );
     --Car Service(ID 380) aplikacija END

    PROCEDURE get_korisnik (
        p_korisnik_id IN NUMBER,
        p_ime_prezime OUT VARCHAR2
    );

    FUNCTION get_korisnik_application_id (
        p_korisnik_id IN NUMBER
    ) RETURN NUMBER;

    FUNCTION insert_korisnik (
        p_firma_id        IN NUMBER,
        p_korisnicko_ime  IN VARCHAR2,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_telefon         IN VARCHAR2,
        p_mobtel          IN VARCHAR2,
        p_biro_korisnik   IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2
    ) RETURN NUMBER;
    
    --Car Service(ID 380) aplikacija
    FUNCTION insert_korisnik (
        p_korisnicko_ime  IN VARCHAR2,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2
    ) RETURN NUMBER;

    PROCEDURE update_korisnik (
        p_id              IN NUMBER,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_telefon         IN VARCHAR2,
        p_mobtel          IN VARCHAR2,
        p_biro_korisnik   IN VARCHAR2,
        p_change_password IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2,
        p_valid           IN VARCHAR2
    );
    
    PROCEDURE delete_korisnik(
        p_id IN NUMBER
    );
    --Car Service(ID 380) aplikacija END
    
       PROCEDURE update_korisnik (
        p_id              IN NUMBER,
        p_email           IN VARCHAR2,
        p_change_password IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2,
        p_valid           IN VARCHAR2
    );
    PROCEDURE update_korisnik (
        p_id                 IN NUMBER,
        p_sif_application_id IN NUMBER
    );

    PROCEDURE update_foto (
        p_id   IN NUMBER,
        p_foto IN VARCHAR2
    );

    -- Password reset
    PROCEDURE setup_reset_password (
        p_app_id         IN NUMBER,
        p_email          IN VARCHAR2,
        p_korisnicko_ime IN VARCHAR2 DEFAULT NULL
    );

    PROCEDURE reset_password (
        p_email            IN VARCHAR2,
        p_korisnicko_ime   IN VARCHAR2 DEFAULT NULL,
        p_code             IN NUMBER,
        p_password         IN VARCHAR2,
        p_confirm_password IN VARCHAR2
    );

    -- Role
    PROCEDURE insert_korisnik_role (
        p_korisnik_id IN NUMBER,
        p_role        IN VARCHAR2
    );

    FUNCTION user_authorization (
        p_korisnik_id IN NUMBER,
        p_role        IN VARCHAR2
    ) RETURN BOOLEAN;

    FUNCTION user_has_role (
        p_korisnik_id IN NUMBER,
        p_rola        IN VARCHAR2
    ) RETURN NUMBER;

    -- Moduli
    FUNCTION exists_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    ) RETURN NUMBER;

    PROCEDURE handle_korisnik_moduli (
        p_korisnik_id IN NUMBER,
        p_moduli      IN VARCHAR2
    );

    PROCEDURE insert_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    );

    PROCEDURE delete_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    );

    -- Mailing
    PROCEDURE get_mailing (
        p_korisnik_id IN NUMBER,
        p_mailing     OUT VARCHAR2
    );

    PROCEDURE get_korisnik_mailing (
        p_korisnicko_ime    IN VARCHAR2,
        p_email             IN VARCHAR2,
        p_mailing           OUT VARCHAR2,
        p_sekretarice_email OUT VARCHAR2
    );

    PROCEDURE get_korisnik_mailing (
        p_korisnik_id       IN NUMBER,
        p_mailing           OUT VARCHAR2,
        p_sekretarice_email OUT VARCHAR2
    );

    PROCEDURE toggle_mailing (
        p_korisnik_id IN NUMBER,
        p_mailing     IN VARCHAR2
    );

    PROCEDURE get_email_potpis (
        p_korisnik_id  IN NUMBER,
        p_email_potpis OUT CLOB
    );

    PROCEDURE update_email_potpis (
        p_korisnik_id  IN NUMBER,
        p_email_potpis IN CLOB
    );

    PROCEDURE delete_email_potpis (
        p_korisnik_id IN NUMBER
    );

    --------------------------------------------------------------
    -- procedures for table KORISNIK_BRZI_PRISTUP
    --------------------------------------------------------------

    PROCEDURE get_brzi_pristup (
        p_id          IN NUMBER,
        p_korisnik_id OUT NUMBER,
        p_page_id     OUT NUMBER,
        p_title       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_sequence    OUT NUMBER,
        p_valid       OUT VARCHAR2,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2,
        p_row_version OUT NUMBER
    );

    PROCEDURE insert_brzi_pristup (
        p_korisnik_id        IN NUMBER,
        p_page_id            IN NUMBER,
        p_title              IN VARCHAR2,
        p_icon               IN VARCHAR2,
        p_sif_application_id IN NUMBER
    );

    PROCEDURE update_brzi_pristup (
        p_id       IN NUMBER,
        p_title    IN VARCHAR2,
        p_sequence IN NUMBER
    );

    PROCEDURE update_valid (
        p_id    IN NUMBER,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_brzi_pristup (
        p_id IN NUMBER
    );

    FUNCTION can_add_brzi_pristup (
        p_korisnik_id IN NUMBER,
        p_app_id      IN NUMBER,
        p_page_id     IN NUMBER
    ) RETURN BOOLEAN;

    FUNCTION can_update_brzi_pristup (
        p_korisnik_id IN NUMBER,
        p_valid       IN NUMBER
    ) RETURN BOOLEAN;

    --------------------------------------------------------------
    -- procedures for table KORISNIK_SEKRETARICE
    --------------------------------------------------------------

    PROCEDURE get_korisnik_sekretarice (
        p_korisnik_id IN NUMBER,
        p_sekretarice OUT VARCHAR2
    );

    PROCEDURE insert_korisnik_sekretarice (
        p_korisnik_id IN NUMBER,
        p_sekretarice IN VARCHAR2
    );

    PROCEDURE delete_korisnik_sekretarice (
        p_korisnik_id IN NUMBER
    );
    
    --Car Service(ID 380) aplikacija

    PROCEDURE get_korisnik_oj (
        p_id          IN NUMBER,
        p_korisnik_id OUT NUMBER,
        p_oj_id       OUT NUMBER,
        p_klijent_id  OUT NUMBER,
        p_valid       OUT VARCHAR2
    );

    PROCEDURE insert_korisnik_oj (
        p_korisnik_id IN NUMBER,
        p_oj_id       IN NUMBER,
        p_klijent_id  IN NUMBER
    );

    PROCEDURE update_korisnik_oj (
        p_id          IN NUMBER,
        p_korisnik_id IN NUMBER,
        p_oj_id       IN NUMBER,
        p_klijent_id  IN NUMBER,
        p_valid       IN VARCHAR2
    );

    PROCEDURE delete_korisnik_oj (
        p_id IN NUMBER
    );

END korisnik_pkg;
/

prompt
prompt Creating package MAIL_PKG
prompt =========================
prompt
create or replace package core.mail_pkg as

    -- Firma
    procedure posalji_nova_firma (
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_username  in varchar2,
        p_firma     in varchar2,
        p_login_url in varchar2
    );

    procedure posalji_firma_aktivacija (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_firma          in varchar2,
        p_valid          in varchar2,
        p_datum          in varchar2
    );

    procedure posalji_firma_predracun (
        p_app_id         in number,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_razlog         in varchar2
    );

    procedure posalji_firma_faktura (
        p_app_id         in number,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_razlog         in varchar2
    );

    procedure posalji_novi_korisnik (
        p_mail_to  in varchar2,
        p_name     in varchar2,
        p_username in varchar2,
        p_firma    in varchar2
    );

    procedure posalji_reset_lozinke (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_name       in varchar2,
        p_reset_code in varchar2
    );

    procedure posalji_dokument_firma (
        p_app_id        in varchar2,
        p_username      in varchar2,
        p_mail_to       in varchar2,
        p_name          in varchar2,
        p_document_name in varchar2
    );

    -- Biro mejlovi
    procedure posalji_biro_zahtjev (
        p_firma_id in number,
        p_biro_id  in number
    );

    procedure posalji_biro_odgovor (
        p_firma_id in number,
        p_biro_id  in number,
        p_odgovor  in varchar2
    );

    procedure posalji_biro_brisanje (
        p_firma_id in number,
        p_biro_id  in number
    );

end mail_pkg;
/

prompt
prompt Creating package MODULI_PKG
prompt ===========================
prompt
create or replace package core.moduli_pkg as
    
    -- firma moduli
    procedure get_firma_modul (
        p_id       in number,
        p_firma_id out number,
        p_modul_id out number
    );
    
    function get_firma_modul (
        p_firma_id in number,
        p_modul_id in number
    ) return number;

    function get_korisnik_modul_count (
        p_firma_id in number,
        p_modul_id in number
    ) return number;

    procedure insert_firma_modul (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    );

    procedure update_firma_modul (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    );

    procedure delete_firma_modul (
        p_firma_id in number,
        p_modul_id in number
    );

    -- queue
    procedure get_queue (
        p_id             in number,
        p_firma_id       out number,
        p_modul_id       out number,
        p_tip            out varchar2,
        p_cijena         out number,
        p_broj_korisnika out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2,
        p_row_version    out number
    );

    procedure add_to_queue (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    );

    procedure add_to_edit_queue (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    );

    procedure add_to_remove_queue (
        p_firma_id in number,
        p_modul_id in number
    );

    procedure remove_to_queue (
        p_id in number
    );

    procedure clear_queue (
        p_firma_id in number
    );

    -- Aktivacija modula
    procedure activate_queue (
        p_firma_id in number,
        p_delete   in varchar2
    );

end moduli_pkg;
/

prompt
prompt Creating package NOTIFIKACIJE_PKG
prompt =================================
prompt
create or replace package core.notifikacije_pkg is

    -- Notifikacije
    procedure get_notifikacija (
        p_id                  in number,
        p_tip_notifikacije_id out number,
        p_korisnik_id         out number,
        p_note_header         out varchar2,
        p_note_text           out varchar2,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    );

    function insert_notifikacija (
        p_tip_notifikacije_id in number,
        p_korisnik_id         in number,
        p_note_header         in varchar2,
        p_note_text           in varchar2
    ) return number;

    procedure update_notifikacija (
        p_id                  in number,
        p_tip_notifikacije_id in number,
        p_korisnik_id         in number,
        p_note_header         in varchar2,
        p_note_text           in varchar2,
        p_valid               in varchar2
    );

    -- User
    procedure send_notification (
        p_application_id in number default null,
        p_sifra          in varchar2,
        p_user_name      in varchar2,
        p_title          in varchar2,
        p_body           in varchar2,
        p_icon_url       in varchar2 default null,
        p_target_url     in varchar2 default null
    );

    procedure read_notification (
        p_id in number
    );

    procedure read_all_notification (
        p_user_id in number
    );
    
    /*stefanl 21.10.2026 dodavanje notifikacije za sluzbeni put za sekretaricu*/
    
        procedure send_notification_sekretarice (
        p_application_id in number default null,
        p_sifra          in varchar2,
        p_user_name      in varchar2,
        p_title          in varchar2,
        p_body           in varchar2
    );

    

end notifikacije_pkg;
/

prompt
prompt Creating package PM_PKG
prompt =======================
prompt
CREATE OR REPLACE PACKAGE CORE.pm_pkg IS

    -- Encrypt/Decrypt
    FUNCTION derive_aes_key (
        p_ooj_id   IN NUMBER,
        p_password IN RAW
    ) RETURN RAW;
    
    PROCEDURE aes_encrypt (
        p_data   IN VARCHAR2,
        p_key    IN RAW,
        p_cipher OUT RAW,
        p_iv     OUT RAW
    );
    
    FUNCTION aes_decrypt (
        p_cipher IN RAW,
        p_key    IN RAW,
        p_iv     IN RAW
    ) RETURN VARCHAR2;

    -- OOJ
    function authenticate_ooj (
        p_ooj_id   in number,
        p_password in varchar2
    ) return boolean;
    
    function setup_ooj_password (
        p_ooj_id   in number,
        p_password in varchar2
    ) return varchar2;

    -- Sabloni    
    PROCEDURE get_sablon (
        p_id     IN NUMBER,
        p_ooj_id OUT NUMBER,
        p_naziv  OUT VARCHAR2,
        p_valid  OUT VARCHAR2
    );

    FUNCTION insert_sablon (
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    ) RETURN NUMBER;

    PROCEDURE update_sablon (
        p_id     IN NUMBER,
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2,
        p_valid  IN VARCHAR2
    );

    PROCEDURE delete_sablon (
        p_id IN NUMBER
    );

    -- Sablon polja
    PROCEDURE generate_sablon_polja_collection (
        p_sablon_id IN NUMBER,
        p_page_id   IN NUMBER
    );
    
    PROCEDURE update_sablon_polja_sequence (
        p_sablon_id     IN NUMBER,
        p_sequence_list IN VARCHAR2
    );

    FUNCTION get_next_sablon_polje_sequence (
        p_sablon_id IN NUMBER
    ) RETURN NUMBER;
    
    PROCEDURE get_sablon_polje (
        p_id        IN NUMBER,
        p_sablon_id OUT NUMBER,
        p_naziv     OUT VARCHAR2,
        p_sequence  OUT NUMBER,
        p_region    OUT VARCHAR2,
        p_tip       OUT VARCHAR2,
        p_valid     OUT VARCHAR2
    );

    PROCEDURE insert_sablon_polje (
        p_sablon_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_sequence  IN NUMBER,
        p_region    IN VARCHAR2,
        p_tip       IN VARCHAR2
    );

    PROCEDURE update_sablon_polje (
        p_id        IN NUMBER,
        p_sablon_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_sequence  IN NUMBER,
        p_region    IN VARCHAR2,
        p_tip       IN VARCHAR2,
        p_valid     IN VARCHAR2
    );

    PROCEDURE delete_sablon_polje (
        p_id IN NUMBER
    );

    -- Folderi
    PROCEDURE get_folder (
        p_id        IN NUMBER,
        p_ooj_id    OUT NUMBER,
        p_folder_id OUT NUMBER,
        p_naziv     OUT VARCHAR2,
        p_valid     OUT VARCHAR2
    );

    PROCEDURE insert_folder (
        p_ooj_id    IN NUMBER,
        p_folder_id IN NUMBER,
        p_naziv     IN VARCHAR2
    );

    PROCEDURE update_folder (
        p_id        IN NUMBER,
        p_ooj_id    IN NUMBER,
        p_folder_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_valid     IN VARCHAR2
    );

    PROCEDURE delete_folder (
        p_id IN NUMBER
    );

    -- Grupe
    PROCEDURE get_grupa (
        p_id     IN NUMBER,
        p_ooj_id OUT NUMBER,
        p_naziv  OUT VARCHAR2
    );

    FUNCTION insert_grupa (
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    ) RETURN NUMBER;

    PROCEDURE update_grupa (
        p_id     IN NUMBER,
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    );

    PROCEDURE delete_grupa (
        p_id IN NUMBER
    );

    -- Grupa korisnici
    PROCEDURE insert_grupa_korisnici (
        p_grupa_id  IN NUMBER,
        p_korisnici IN VARCHAR2
    );

    PROCEDURE delete_grupa_korisnik (
        p_id IN NUMBER
    );

    -- Konekcije
    PROCEDURE get_konekcija (
        p_id                     IN NUMBER,
        p_ooj_id                 OUT NUMBER,
        p_sablon_id              OUT NUMBER,
        p_folder_id              OUT NUMBER,
        p_naziv                  OUT VARCHAR2,
        p_username               OUT VARCHAR2,
        p_password               OUT VARCHAR2,
        p_password_last_changed  OUT DATE,
        p_password_change_period OUT NUMBER,
        p_napomena               OUT VARCHAR2,
        p_master_pw              OUT VARCHAR2
    );

    FUNCTION insert_konekcija (
        p_ooj_id                 IN NUMBER,
        p_sablon_id              IN NUMBER,
        p_folder_id              IN NUMBER,
        p_naziv                  IN VARCHAR2,
        p_username               IN VARCHAR2,
        p_password               IN VARCHAR2,
        p_password_change_period IN NUMBER,
        p_napomena               IN VARCHAR2,
        p_master_pw              IN VARCHAR2,
        p_key                    IN RAW
    ) RETURN NUMBER;

    PROCEDURE update_konekcija (
        p_id                     IN NUMBER,
        p_ooj_id                 IN NUMBER,
        p_sablon_id              IN NUMBER,
        p_folder_id              IN NUMBER,
        p_naziv                  IN VARCHAR2,
        p_username               IN VARCHAR2,
        p_password               IN VARCHAR2,
        p_password_change_period IN NUMBER,
        p_napomena               IN VARCHAR2,
        p_master_pw              IN VARCHAR2,
        p_change_pw              IN VARCHAR2,
        p_key                    IN RAW
    );

    PROCEDURE delete_konekcija (
        p_id IN NUMBER
    );

    FUNCTION clone_konekcija (
        p_konekcija_id IN NUMBER
    ) RETURN NUMBER;

    -- Konekcija polja
    PROCEDURE get_konekcija_polja_into_collection (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_key          IN RAW
    );
    
    PROCEDURE get_konekcija_polje (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_polje_id     IN NUMBER,
        p_key          IN RAW,
        p_vrijednost   OUT VARCHAR2
    );
    
    PROCEDURE insert_konekcija_polje (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_polje_id     IN NUMBER,
        p_vrijednost   IN VARCHAR2,
        p_key          IN RAW
    );

    PROCEDURE delete_konekcija_polja (
        p_konekcija_id IN NUMBER
    );

    -- Konekcija website
    PROCEDURE insert_konekcija_website (
        p_konekcija_id IN NUMBER,
        p_url          IN VARCHAR2
    );

    PROCEDURE delete_konekcija_website (
        p_id IN NUMBER
    );

    -- Pristupi
    PROCEDURE insert_konekcija_pristup_grupa (
        p_konekcija_id IN NUMBER,
        p_grupa_id     IN VARCHAR2
    );

    PROCEDURE insert_konekcija_pristup_korisnik (
        p_konekcija_id IN NUMBER,
        p_korisnik_id  IN VARCHAR2
    );

    PROCEDURE delete_konekcija_pristup (
        p_id IN NUMBER
    );

    -- Konekcija dokumenti
    PROCEDURE insert_konekcija_dokumenti (
        p_konekcija_id IN NUMBER,
        p_dokument     IN VARCHAR2
    );

    PROCEDURE delete_konekcija_dokument (
        p_id IN NUMBER
    );
    
    -- Konekcija history
    PROCEDURE insert_konekcija_history (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_password     IN VARCHAR2,
        p_datum        IN DATE,
        p_key          IN RAW
    );

    -- Korisnik pristupi
    PROCEDURE get_korisnik_pristupi (
        p_id           IN NUMBER,
        p_korisnik_id  OUT NUMBER,
        p_konekcija_id OUT NUMBER,
        p_favorite     OUT VARCHAR2
    );

    PROCEDURE insert_korisnik_pristupi (
        p_korisnik_id  IN NUMBER,
        p_konekcija_id IN NUMBER
    );

    PROCEDURE update_korisnik_pristupi (
        p_id           IN NUMBER,
        p_korisnik_id  IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_favorite     IN VARCHAR2
    );

    PROCEDURE delete_korisnik_pristupi (
        p_id IN NUMBER
    );

END pm_pkg;
/

prompt
prompt Creating package PROTOKOLI_PKG
prompt ==============================
prompt
create or replace package core.protokoli_pkg as

    --------------------------------------------------------------
    -- procedures for table PROTOKOLI
    --------------------------------------------------------------

    procedure get_protokol (
        p_id              in number,
        p_ooj_id          out number,
        p_vrsta_naloga_id out number,
        p_godina          out number,
        p_prefix          out varchar2,
        p_broj            out number,
        p_sufix           out varchar2,
        p_duzina          out number,
        p_auto_restart    out varchar2,
        p_valid           out varchar2
    );

    procedure insert_protokol (
        p_ooj_id          in number,
        p_vrsta_naloga_id in number,
        p_godina          in number,
        p_prefix          in varchar2,
        p_broj            in number,
        p_sufix           in varchar2,
        p_duzina          in number,
        p_auto_restart    in varchar2
    );

    procedure update_protokol (
        p_id              in number,
        p_ooj_id          in number,
        p_vrsta_naloga_id in number,
        p_godina          in number,
        p_prefix          in varchar2,
        p_broj            in number,
        p_sufix           in varchar2,
        p_duzina          in number,
        p_auto_restart    in varchar2,
        p_valid           in varchar2
    );

    procedure delete_protokol (
        p_id in number
    );

    procedure get_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_broj               out number,
        p_naziv              out varchar2
    );

    procedure get_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_prefix             out varchar2,
        p_duzina             out number,
        p_sufix              out varchar2
    );

    procedure update_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_value              in number
    );

    function check_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number
    ) return boolean;
    
    procedure insert_from_collection (
        p_ooj_id in number
    );
   

end protokoli_pkg;
/

prompt
prompt Creating package SYSTEM_PKG
prompt ===========================
prompt
create or replace package core.system_pkg as

    -- Kreiranje predracuna, faktura za koristenje sistema..
    function check_system_predracun_exist (
        p_firma_id in number
    ) return number;

    function create_system_predracun (
        p_firma_id in number,
        p_zahtjev  in varchar2
    ) return number;

    procedure create_system_predracun_stavka (
        p_predracun_id in number,
        p_stavka_id    in number,
        p_kolicina     in number,
        p_cijena       in number,
        p_popust       in number
    );

    function create_system_faktura (
        p_firma_id      in number,
        p_predracun_id  in number,
        p_datum_fakture in date,
        p_datum_valute  in date
    ) return number;

    function create_system_ugovor (
        p_firma_id in number,
        p_datum    in date,
        p_iznos    in number
    ) return number;

end system_pkg;
/

prompt
prompt Creating procedure CHECK_DOKUMENT_FIRMA
prompt =======================================
prompt
create or replace procedure core.check_dokument_firma (
    p_app_id in number
) as

    cursor firma_dokumenti is
    (
        select
            d.document_filename,
            f.email,
            f.odgovorno_lice
        from
            firma_dokumenti d
            left join firme           f on d.firma_id = f.id
        where
                d.valid = 'Y'
            and trunc(d.datum) - trunc(sysdate) in ( 1, 7, 15 )
    );

    l_username varchar2(255);
begin
    for dokument in firma_dokumenti loop
        select
            korisnicko_ime
        into l_username
        from
            korisnici
        where
                email = dokument.email
            and rownum = 1;

        mail_pkg.posalji_dokument_firma(
            p_app_id        => p_app_id,
            p_username      => l_username,
            p_mail_to       => dokument.email,
            p_name          => dokument.odgovorno_lice,
            p_document_name => dokument.document_filename
        );

    end loop;

    apex_pwa.push_queue;
    apex_mail.push_queue;
end check_dokument_firma;
/

prompt
prompt Creating procedure CHECK_FIRMA_ACTIVATION
prompt =========================================
prompt
create or replace procedure core.check_firma_activation (
    p_app_id in number
) as

    cursor c_firme is
    (
        select
            f.id    as firma_id,
            f.naziv as firma_naziv,
            f.email,
            f.odgovorno_lice,
            f.active_to,
            f.interval_id
        from
            core.firme        f
            left join sif.sif_intervali i on f.interval_id = i.id
        where
                f.valid = 'Y'
            and trunc(f.active_to - 15) = trunc(sysdate)
    );

    l_predracun_id number;
    l_username     varchar2(255);
begin
    for firma in c_firme loop
        -- Kreiramo predracun
        l_predracun_id := system_pkg.create_system_predracun(
            p_firma_id => firma.firma_id,
            p_zahtjev  => 'N'
        );

        select
            korisnicko_ime
        into l_username
        from
            core.korisnici
        where
                email = firma.email
            and rownum = 1;

        mail_pkg.posalji_firma_predracun(
            p_app_id         => p_app_id,
            p_username       => l_username,
            p_mail_to        => firma.email,
            p_odgovorno_lice => firma.odgovorno_lice,
            p_razlog         => 'Automatsko slanje predračuna 15 dana prije isteka aktivacionog perioda'
        );

    end loop;
end check_firma_activation;
/

prompt
prompt Creating procedure CHECK_PROTOKOLI
prompt ==================================
prompt
create or replace procedure core.check_protokoli as

    l_current_year number := extract(year from sysdate);
    cursor c_protokoli is
    (
        select
            ooj_id,
            vrsta_naloga_id,
            case
                when prefix = to_char(godina) then
                    to_char(l_current_year)
                when instr(prefix,
                           to_char(godina)) > 0     then
                    replace(prefix,
                            to_char(godina),
                            to_char(l_current_year))
                when instr(prefix,
                           substr(godina, -2)) > 0  then
                    replace(prefix,
                            substr(godina, -2),
                            substr(l_current_year, -2))
                else
                    prefix
            end as prefix,
            case
                when sufix = to_char(godina) then
                    to_char(l_current_year)
                when instr(sufix,
                           to_char(godina)) > 0    then
                    replace(sufix,
                            to_char(godina),
                            to_char(l_current_year))
                when instr(sufix,
                           substr(godina, -2)) > 0 then
                    replace(sufix,
                            substr(godina, -2),
                            substr(l_current_year, -2))
                else
                    sufix
            end as sufix,
            godina,
            duzina,
            auto_restart
        from
            core.protokoli
        where
                valid = 'Y'
            and auto_restart = 'Y'
            and ( godina + 1 ) = l_current_year
    );

begin
    for protokol in c_protokoli loop
        core.protokoli_pkg.insert_protokol(
            p_ooj_id          => protokol.ooj_id,
            p_vrsta_naloga_id => protokol.vrsta_naloga_id,
            p_godina          => l_current_year,
            p_prefix          => protokol.prefix,
            p_broj            => 0,
            p_sufix           => protokol.sufix,
            p_duzina          => protokol.duzina,
            p_auto_restart    => protokol.auto_restart
        );
    end loop;

    -- UPDATE sec_dokument_brojac SET
    --     valid = 'N'
    -- WHERE
    --     godina < l_current_year;

end check_protokoli;
/

prompt
prompt Creating package body ERROR_MANAGER
prompt ===================================
prompt
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

prompt
prompt Creating package body FIRMA_PKG
prompt ===============================
prompt
create or replace package body core.firma_pkg as

    --------------------------------------------------------------
    -- procedures for table SEC_FIRMA
    --------------------------------------------------------------

    procedure get_firma (
        p_id                   in number,
        p_naziv                out varchar2,
        p_email                out varchar2,
        p_www                  out varchar2,
        p_odgovorno_lice       out varchar2,
        p_active_to            out date,
        p_interval_id          out number,
        p_biro                 out varchar2,
        p_tip_preduzetnika_id  out number,
        p_dvojno_knjigovodstvo out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                firme
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_email := c1.email;
            p_www := c1.www;
            p_odgovorno_lice := c1.odgovorno_lice;
            p_active_to := c1.active_to;
            p_interval_id := c1.interval_id;
            p_biro := c1.biro;
            p_tip_preduzetnika_id := c1.tip_preduzetnika_id;
            p_dvojno_knjigovodstvo := c1.dvojno_knjigovodstvo;
        end loop;
    end get_firma;

    procedure get_firma (
        p_id             in number,
        p_naziv          out varchar2,
        p_odgovorno_lice out varchar2,
        p_email          out varchar2,
        p_active_to      out date,
        p_popust         out number,
        p_esscom_id      out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                firme
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_email := c1.email;
            p_odgovorno_lice := c1.odgovorno_lice;
            p_active_to := c1.active_to;
            p_popust := c1.popust;
            p_esscom_id := c1.esscom_id;
        end loop;
    end get_firma;

    procedure get_firma (
        p_id    in number,
        p_naziv out varchar2,
        p_www   out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                firme
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_www := c1.www;
        end loop;
    end get_firma;

    procedure get_firma (
        p_id          in number,
        p_min_dana_go out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                firme
            where
                id = p_id
        ) loop
            p_min_dana_go := c1.min_dana_go;
        end loop;
    end get_firma;

    -- Za aktivaciju
    procedure get_firma (
        p_id             in number,
        p_naziv          out varchar2,
        p_email          out varchar2,
        p_odgovorno_lice out varchar2,
        p_active_to      out date,
        p_popust         out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                firme
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_email := c1.email;
            p_odgovorno_lice := c1.odgovorno_lice;
            p_active_to := c1.active_to;
            p_popust := c1.popust;
        end loop;
    end get_firma;

    function insert_firma (
        p_naziv                in varchar2,
        p_email                in varchar2,
        p_www                  in varchar2,
        p_odgovorno_lice       in varchar2,
        p_interval_id          in number,
        p_esscom_id            in number,
        p_biro                 in varchar2,
        p_tip_preduzetnika_id  in number,
        p_dvojno_knjigovodstvo in varchar2
    ) return number is
        l_id number;
    begin
        insert into firme (
            naziv,
            email,
            www,
            odgovorno_lice,
            interval_id,
            esscom_id,
            biro,
            tip_preduzetnika_id,
            dvojno_knjigovodstvo,
            valid
        ) values ( p_naziv,
                   p_email,
                   p_www,
                   p_odgovorno_lice,
                   p_interval_id,
                   p_esscom_id,
                   p_biro,
                   p_tip_preduzetnika_id,
                   p_dvojno_knjigovodstvo,
                   'N' ) returning id into l_id;

        return l_id;
    end insert_firma;

    procedure update_firma (
        p_id                   in number,
        p_email                in varchar2,
        p_naziv                in varchar2,
        p_www                  in varchar2,
        p_odgovorno_lice       in varchar2,
        p_interval_id          in number,
        p_biro                 in varchar2,
        p_tip_preduzetnika_id  in number,
        p_dvojno_knjigovodstvo in varchar2
    ) is
    begin
        update firme
        set
            naziv = p_naziv,
            email = p_email,
            www = p_www,
            odgovorno_lice = p_odgovorno_lice,
            interval_id = p_interval_id,
            biro = p_biro,
            tip_preduzetnika_id = p_tip_preduzetnika_id,
            dvojno_knjigovodstvo = p_dvojno_knjigovodstvo
        where
            id = p_id;

    end update_firma;

    procedure update_firma (
        p_id          in number,
        p_min_dana_go in number
    ) is
    begin
        update firme
        set
            min_dana_go = p_min_dana_go
        where
            id = p_id;

    end update_firma;

    procedure update_firma (
        p_id                     in number,
        p_notifikacija_rodjendan in firme.notifikacija_rodjendan%TYPE
    ) is
    begin
        update firme
        set
            notifikacija_rodjendan = p_notifikacija_rodjendan
        where
            id = p_id;

    end update_firma;

    procedure update_firma (
        p_id        in number,
        p_popust    in number,
        p_esscom_id in number
    ) is
    begin
        update firme
        set
            popust = p_popust,
            esscom_id = p_esscom_id
        where
            id = p_id;
    
    end update_firma;

    procedure update_firma_logo (
        p_firma_id in number,
        p_logo     in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
        l_base64   clob;
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_logo,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

--        l_base64 := sif.utils_pkg.base64encode (
--            p_blob => l_blob
--        );

        update firme
        set
            logo = l_blob,
            logo_filename = l_filename,
            logo_mimetype = l_mimetype,
            logo_lastupd = sysdate,
            logo_base64 = l_base64
        where
            id = p_firma_id;

    end update_firma_logo;

    procedure update_firma_logo_base64 (
        p_firma_id    in number,
        p_logo_base64 in clob
    ) is
    begin
        update firme
        set
            logo_base64 = p_logo_base64
        where
            id = p_firma_id;

    end update_firma_logo_base64;

    procedure change_biro (
        p_id      in number,
        p_biro_id in number
    ) is
    begin
        update firme
        set
            biro_id = p_biro_id,
            biro_status = 0
        where
            id = p_id;

    end change_biro;

    procedure accept_biro (
        p_id in number
    ) is
    begin
        update firme
        set
            biro_status = 1
        where
            id = p_id;

    end accept_biro;

    procedure decline_biro (
        p_id in number
    ) is
    begin
        update firme
        set
            biro_id = null,
            biro_status = 0
        where
            id = p_id;

    end decline_biro;

    procedure check_popust (
        p_id in number
    ) is
        l_klijenti_count number;
    begin
        select
            klijenti_count
        into l_klijenti_count
        from
            vw_firme
        where
            id = p_id;

        if l_klijenti_count >= 5 then
            update firme
            set
                popust = 100
            where
                id = p_id;

        else
            update firme
            set
                popust = 0
            where
                id = p_id;

        end if;

    end check_popust;

    -- Hr
    procedure get_firma_obrazac_memo (
        p_firma_id               in number,
        p_obrazac_memoranduma_id out number
    ) is
    begin
        for c1 in (
            select
                obrazac_memoranduma_id
            from
                firme
            where
                id = p_firma_id
        ) loop
            p_obrazac_memoranduma_id := c1.obrazac_memoranduma_id;
        end loop;
    end get_firma_obrazac_memo;

    function check_firma_obrazac_memo (
        p_firma_id in number
    ) return boolean is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            firme
        where
                id = p_firma_id
            and obrazac_memoranduma_id is not null;

        if l_count > 0 then
            return true;
        else
            return false;
        end if;
    end check_firma_obrazac_memo;

    procedure update_firma_obrazac_memo (
        p_firma_id               in number,
        p_obrazac_memoranduma_id in number
    ) is
    begin
        update firme
        set
            obrazac_memoranduma_id = p_obrazac_memoranduma_id
        where
            id = p_firma_id;

    end update_firma_obrazac_memo;

    -- Accounting
    procedure get_firma_obrazac (
        p_firma_id           in number,
        p_obrazac_fakture_id out number
    ) is
    begin
        for c1 in (
            select
                obrazac_fakture_id
            from
                firme
            where
                id = p_firma_id
        ) loop
            p_obrazac_fakture_id := c1.obrazac_fakture_id;
        end loop;
    end get_firma_obrazac;

    function check_firma_obrazac (
        p_firma_id in number
    ) return boolean is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            firme
        where
                id = p_firma_id
            and obrazac_fakture_id is not null;

        if l_count > 0 then
            return true;
        else
            return false;
        end if;
    end check_firma_obrazac;

    procedure update_firma_obrazac (
        p_firma_id           in number,
        p_obrazac_fakture_id in number
    ) is
    begin
        update firme
        set
            obrazac_fakture_id = p_obrazac_fakture_id
        where
            id = p_firma_id;

    end update_firma_obrazac;

    --------------------------------------------------------------
    -- procedures for table FIRMA_RADNA_MJESTA
    --------------------------------------------------------------

    procedure get_radno_mjesto (
        p_id    in number,
        p_oj_id out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                firma_radna_mjesta
            where
                id = p_id
        ) loop
            p_oj_id := c1.oj_id;
        end loop;
    end get_radno_mjesto;

    procedure get_radno_mjesto (
        p_id           in number,
        p_ooj_id       out number,
        p_oj_id        out number,
        p_naziv        out varchar2,
        p_opis         out varchar2,
        p_broj_dana_go out number,
        p_valid        out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                firma_radna_mjesta
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_oj_id := c1.oj_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_broj_dana_go := c1.broj_dana_go;
            p_valid := c1.valid;
        end loop;
    end get_radno_mjesto;

    procedure insert_radno_mjesto (
        p_ooj_id       in number,
        p_oj_id        in number,
        p_naziv        in varchar2,
        p_opis         in varchar2,
        p_broj_dana_go in number
    ) is
    begin
        insert into firma_radna_mjesta (
            ooj_id,
            oj_id,
            naziv,
            opis,
            broj_dana_go
        ) values ( p_ooj_id,
                   p_oj_id,
                   p_naziv,
                   p_opis,
                   p_broj_dana_go );

    end insert_radno_mjesto;

    procedure update_radno_mjesto (
        p_id           in number,
        p_ooj_id       in number,
        p_oj_id        in number,
        p_naziv        in varchar2,
        p_opis         in varchar2,
        p_broj_dana_go in number,
        p_valid        in varchar2
    ) is
    begin
        update firma_radna_mjesta
        set
            ooj_id = p_ooj_id,
            oj_id = p_oj_id,
            naziv = p_naziv,
            opis = p_opis,
            broj_dana_go = p_broj_dana_go,
            valid = p_valid
        where
            id = p_id;

    end update_radno_mjesto;

    procedure delete_radno_mjesto (
        p_id in number
    ) is
    begin
        delete from firma_radna_mjesta
        where
            id = p_id;

    end delete_radno_mjesto;

    --------------------------------------------------------------
    -- procedures for table FIRMA_DOKUMENTI
    --------------------------------------------------------------

    -- Insert dokumenata za firmu
    procedure insert_firma_docs (
        p_firma_id         in number,
        p_documents        in varchar2,
        p_tip_dokumenta_id in number,
        p_datum            in date
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        for x in (
            select
                column_value as document
            from
                apex_string.split(p_documents, ':')
        ) loop
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => x.document,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            insert into firma_dokumenti (
                firma_id,
                document,
                document_mimetype,
                document_filename,
                document_lastupd,
                tip_dokumenta_id,
                datum
            ) values ( p_firma_id,
                       l_blob,
                       l_mimetype,
                       l_filename,
                       sysdate,
                       p_tip_dokumenta_id,
                       p_datum );

        end loop;
    end insert_firma_docs;

end firma_pkg;
/

prompt
prompt Creating package body KORISNIK_PKG
prompt ==================================
prompt
CREATE OR REPLACE PACKAGE BODY CORE.korisnik_pkg AS

    gc_module CONSTANT VARCHAR2(100) := 'core.korisnik_pkg';

    --------------------------------------------------------------
    -- procedures for table KORISNICI
    --------------------------------------------------------------
    FUNCTION get_hash (
        p_username IN VARCHAR2,
        p_password IN VARCHAR2,
        p_salt     IN RAW DEFAULT NULL
    ) RETURN VARCHAR2 IS

        l_salt     RAW(64) := p_salt;
        l_password RAW(32767);
        l_hashed   RAW(32767);
    BEGIN
        IF l_salt IS NULL THEN
            l_salt := dbms_crypto.randombytes(64);
        END IF;

        -- Convert password to RAW and concatenate with salt
        l_password := utl_raw.cast_to_raw(upper(p_password)
                                          || upper(p_username))
                      || l_salt;

        -- Hash with SHA-512 and iterate for "key stretching"
        l_hashed := dbms_crypto.hash(
            src => l_password,
            typ => dbms_crypto.hash_sh512
        );

        RETURN l_salt || l_hashed; -- Store salt + final hash
    END get_hash;

    FUNCTION get_hash_md5 (
        p_password IN VARCHAR2
    ) RETURN VARCHAR2 IS
        l_hash VARCHAR2(255);
    BEGIN
        SELECT
            standard_hash(p_password)
        INTO l_hash
        FROM
            dual;

        RETURN l_hash;
    EXCEPTION
        WHEN no_data_found THEN
            NULL;
        WHEN OTHERS THEN
            RAISE;
    END get_hash_md5;

    FUNCTION authenticate (
        p_username IN VARCHAR2,
        p_password IN VARCHAR2
    ) RETURN BOOLEAN AS
        l_user_id   NUMBER;
        l_firma_id  NUMBER;
        l_activated VARCHAR2(1);
        l_active_to DATE;
    BEGIN
        SELECT
            id,
            firma_id
        INTO
            l_user_id,
            l_firma_id
        FROM
            korisnici
        WHERE
                upper(korisnicko_ime) = upper(p_username)
            AND ( ( lozinka = get_hash_md5(p_password)
                    AND password_version = 'HRM' )
                  OR ( password = get_hash(p_username,
                                               p_password,
                                               utl_raw.substr(password, 1, 64))
                       AND password_version = 'ERP' ) )
            AND user_has_role(id, c_connect_role) > 0
            AND valid = 'Y'
            ;

        IF l_user_id IS NULL THEN
            dbms_output.put_line('No user found.');
            RETURN FALSE;
        END IF;
        SELECT
            valid,
            nvl(active_to, sysdate - 1)
        INTO
            l_activated,
            l_active_to
        FROM
            firme
        WHERE
            id = l_firma_id;

        IF l_activated = 'N' THEN
            dbms_output.put_line('Firma not activated.');
            RETURN FALSE;
        END IF;
        IF trunc(l_active_to) < trunc(sysdate) THEN
            dbms_output.put_line('Firma aktivacija istekla.');
            RETURN FALSE;
        END IF;
        /*
        UPDATE korisnici
        SET
            last_login = sysdate
        WHERE
            id = l_user_id;*/

        dbms_output.put_line('Login successful');
        RETURN TRUE;
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('error');
            RETURN FALSE;
    END authenticate;

    PROCEDURE change_password (
        p_id           IN NUMBER,
        p_username     IN VARCHAR2,
        p_old_password IN VARCHAR2,
        p_new_password IN VARCHAR2
    ) AS
    BEGIN
        IF authenticate(
            p_username => p_username,
            p_password => p_old_password
        ) = false THEN
            raise_application_error(-20001, 'Pogrešna stara lozinka.');
        END IF;

        UPDATE korisnici
        SET
            lozinka = NULL,
            password = get_hash(p_username, p_new_password),
            password_version = 'ERP',
            change_required = 'N',
            password_last_changed = sysdate
        WHERE
            id = p_id;

    END change_password;

    PROCEDURE change_password (
        p_id           IN NUMBER,
        p_username     IN VARCHAR2,
        p_new_password IN VARCHAR2
    ) AS
    BEGIN
        UPDATE korisnici
        SET
            lozinka = NULL,
            password = get_hash(p_username, p_new_password),
            password_version = 'ERP',
            change_required = 'N',
            password_last_changed = sysdate
        WHERE
            id = p_id;

    END change_password;

    PROCEDURE rejoin_session (
        p_firma_id        IN OUT NUMBER,
        p_ooj_id          IN OUT NUMBER,
        p_user_id         IN OUT NUMBER,
        p_radnik_id       IN OUT NUMBER,
        p_session_changed IN OUT NUMBER,
        p_firma_id_new    IN NUMBER DEFAULT NULL,
        p_ooj_id_new      IN NUMBER DEFAULT NULL,
        p_user_id_new     IN NUMBER DEFAULT NULL,
        p_radnik_id_new   IN NUMBER DEFAULT NULL,
        p_firma_id_back   IN OUT NUMBER,
        p_ooj_id_back     IN OUT NUMBER,
        p_user_id_back    IN OUT NUMBER,
        p_radnik_id_back  IN OUT NUMBER
    ) IS
    BEGIN
        IF p_session_changed IS NULL
           OR p_session_changed = 0 THEN
            p_firma_id_back := p_firma_id;
            p_ooj_id_back := p_ooj_id;
            p_user_id_back := p_user_id;
            p_radnik_id_back := p_radnik_id;
        END IF;

        IF p_firma_id_new IS NOT NULL THEN
            p_firma_id := p_firma_id_new;
        END IF;
        IF p_ooj_id_new IS NOT NULL THEN
            p_ooj_id := p_ooj_id_new;
        END IF;
        IF p_user_id_new IS NOT NULL THEN
            p_user_id := p_user_id_new;
        END IF;
        IF p_radnik_id_new IS NOT NULL THEN
            p_radnik_id := p_radnik_id_new;
        END IF;
        p_session_changed := 1;
    END rejoin_session;

    PROCEDURE get_user (
        p_id       IN NUMBER,
        p_name     OUT VARCHAR2,
        p_email    OUT VARCHAR2,
        p_username OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                korisnici
            WHERE
                id = p_id
        ) LOOP
            p_name := initcap(c1.ime)
                      || ' '
                      || initcap(c1.prezime);

            p_email := c1.email;
            p_username := c1.korisnicko_ime;
        END LOOP;
    END get_user;

    -- On Login procedure
    PROCEDURE get_user_data (
        p_korisnicko_ime         IN VARCHAR2,
        p_user_id                OUT NUMBER,
        p_firma_id               OUT NUMBER,
        p_radnik_id              OUT NUMBER,
        p_radnik_name            OUT VARCHAR2,
        p_ooj_id                 OUT NUMBER,
        p_tip_preduzetnika_sifra OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                id,
                firma_id
            FROM
                korisnici
            WHERE
                upper(korisnicko_ime) = upper(p_korisnicko_ime)
        ) LOOP
            p_user_id := c1.id;
            p_firma_id := c1.firma_id;
        END LOOP;

        FOR c1 IN (
            SELECT
                id,
                ime
                || ' '
                || prezime AS ime_prezime,
                ooj_id
            FROM
                hrm.hr_radnici
            WHERE
                    korisnik_id = p_user_id
                AND zaposlen_do IS NULL
        ) LOOP
            p_radnik_id := c1.id;
            p_radnik_name := c1.ime_prezime;
            p_ooj_id := c1.ooj_id;
        END LOOP;

        FOR c1 IN (
            SELECT
                tip_preduzetnika_sifra,
                dvojno_knjigovodstvo
            FROM
                vw_firme
            WHERE
                id = p_firma_id
        ) LOOP
            IF c1.tip_preduzetnika_sifra = 'vsp' THEN
                IF c1.dvojno_knjigovodstvo = 'Y' THEN
                    p_tip_preduzetnika_sifra := 'vsp_dvojno';
                ELSE
                    p_tip_preduzetnika_sifra := 'vsp_prosto';
                END IF;

            ELSE
                p_tip_preduzetnika_sifra := c1.tip_preduzetnika_sifra;
            END IF;
        END LOOP;

    END get_user_data;

    PROCEDURE get_application_data (
        p_app_id      IN NUMBER,
        p_page_id     IN NUMBER,
        p_firma_id    IN NUMBER,
        p_ooj_id      IN NUMBER,
        p_guide       OUT CLOB,
        p_firma_naziv OUT VARCHAR2,
        p_ooj_naziv   OUT VARCHAR2
    ) IS
    BEGIN
        -- Komentarisano da se vidi da li ovo mozda pravi loading problem
--        p_guide := sif.sif_pkg.get_guide_steps(
--            p_application_id => p_app_id,
--            p_page_id        => p_page_id
--        );    
        p_guide := '[];';

        FOR c1 IN (
            SELECT
                naziv
            FROM
                firme
            WHERE
                id = p_firma_id
        ) LOOP
            p_firma_naziv := c1.naziv;
        END LOOP;

        FOR c1 IN (
            SELECT
                naziv
            FROM
                ooj
            WHERE
                id = p_ooj_id
        ) LOOP
            p_ooj_naziv := c1.naziv;
        END LOOP;

    END get_application_data;

    -- Application 290
    PROCEDURE get_application_data (
        p_ooj_id              IN NUMBER,
        p_konto_duzina        OUT NUMBER,
        p_pib                 OUT VARCHAR2,
        p_period_zakljucan_do OUT DATE
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                konto_duzina,
                pib,
                period_zakljucan_do
            FROM
                ooj
            WHERE
                id = p_ooj_id
        ) LOOP
            p_konto_duzina := c1.konto_duzina;
            p_pib := c1.pib;
            p_period_zakljucan_do := c1.period_zakljucan_do + 1;
        END LOOP;
    END get_application_data;

    PROCEDURE get_korisnik (
        p_id                    IN NUMBER,
        p_firma_id              OUT NUMBER,
        p_korisnicko_ime        OUT VARCHAR2,
        p_ime                   OUT VARCHAR2,
        p_prezime               OUT VARCHAR2,
        p_email                 OUT VARCHAR2,
        p_telefon               OUT VARCHAR2,
        p_mobtel                OUT VARCHAR2,
        p_biro_korisnik         OUT VARCHAR2,
        p_last_login            OUT DATE,
        p_change_required       OUT VARCHAR2,
        p_password_last_changed OUT DATE,
        p_valid                 OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                korisnici
            WHERE
                id = p_id
        ) LOOP
            p_firma_id := c1.firma_id;
            p_korisnicko_ime := c1.korisnicko_ime;
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_email := c1.email;
            p_telefon := c1.telefon;
            p_mobtel := c1.mobtel;
            p_biro_korisnik := c1.biro_korisnik;
            p_last_login := c1.last_login;
            p_change_required := c1.change_required;
            p_password_last_changed := c1.password_last_changed;
            p_valid := c1.valid;
        END LOOP;
    END get_korisnik;
    
     --Car Service (ID 380) aplikacija
        PROCEDURE get_korisnik (
        p_id                    IN NUMBER,
        p_korisnicko_ime        OUT VARCHAR2,
        p_ime                   OUT VARCHAR2,
        p_prezime               OUT VARCHAR2,
        p_email                 OUT VARCHAR2,
        p_change_required       OUT VARCHAR2,
        p_valid                 OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                korisnici
            WHERE
                id = p_id
        ) LOOP
            p_korisnicko_ime := c1.korisnicko_ime;
            p_ime:=c1.ime;
            p_prezime:=c1.prezime;
            p_email:=c1.email;
            p_change_required := c1.change_required;
            p_valid := c1.valid;
        END LOOP;
    END get_korisnik;
    
    PROCEDURE get_korisnik_by_klijent (
        p_klijent_id             IN  NUMBER,
        p_korisnik_id            OUT NUMBER
    ) IS
    BEGIN
        SELECT k.id
          INTO p_korisnik_id
          FROM core.korisnik_oj  ko
          JOIN core.korisnici     k  ON k.id    = ko.korisnik_id
         WHERE ko.klijent_id = p_klijent_id and k.valid='Y';
       
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_korisnik_id           := NULL;
        WHEN TOO_MANY_ROWS THEN
            p_korisnik_id           := NULL;
    END get_korisnik_by_klijent;
    

    PROCEDURE get_korisnik (
        p_korisnik_id IN NUMBER,
        p_ime_prezime OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                korisnik_naziv
            FROM
                vw_korisnici
            WHERE
                id = p_korisnik_id
        ) LOOP
            p_ime_prezime := c1.korisnik_naziv;
        END LOOP;
    END get_korisnik;

    FUNCTION get_korisnik_application_id (
        p_korisnik_id IN NUMBER
    ) RETURN NUMBER IS
    BEGIN
        FOR c1 IN (
            SELECT
                app_id
            FROM
                vw_korisnici
            WHERE
                id = p_korisnik_id
        ) LOOP
            RETURN c1.app_id;
        END LOOP;
    END get_korisnik_application_id;
    
   
    

    PROCEDURE ce_users (
        p_phone         IN VARCHAR2,
        p_user_id       IN NUMBER,
        p_l_password    IN VARCHAR2,
        p_last_name     IN VARCHAR2,
        p_email         IN VARCHAR2,
        p_first_name    IN VARCHAR2,
        p_ou_id         IN NUMBER,
        p_username      IN VARCHAR2,
        p_enabled       IN VARCHAR2,
        p_mobile        IN VARCHAR2,
        p_biro_korisnik IN VARCHAR2,
        p_chpwd         IN VARCHAR2,
        p_role_id       IN VARCHAR2,
        o_id            OUT NUMBER
    ) AS
        l_count       NUMBER;
        l_korisnik_id NUMBER;
    BEGIN
        IF p_user_id IS NULL THEN
            INSERT INTO korisnici (
                telefon,
                prezime,
                email,
                ime,
                firma_id,
                korisnicko_ime,
                mobtel,
                biro_korisnik,
                password,
                password_version,
                change_required
            ) VALUES ( p_phone,
                       upper(p_last_name),
                       p_email,
                       upper(p_first_name),
                       p_ou_id,
                       upper(p_username),
                       p_mobile,
                       p_biro_korisnik,
                       get_hash(p_username, p_l_password),
                       'ERP',
                       'N' ) RETURN id INTO l_korisnik_id;

            insert_korisnik_role(
                p_korisnik_id => l_korisnik_id,
                p_role        => p_role_id
            );
            o_id := l_korisnik_id;
        ELSE
            IF nvl(p_chpwd, 'N') = 'Y' THEN
                UPDATE korisnici
                SET
                    telefon = p_phone,
                    lozinka = NULL,
                    prezime = upper(p_last_name),
                    email = p_email,
                    ime = upper(p_first_name),
                    korisnicko_ime = p_username,
                    valid = p_enabled,
                    mobtel = p_mobile,
                    biro_korisnik = p_biro_korisnik,
                    password = get_hash(p_username, p_l_password),
                    password_version = 'ERP',
                    change_required = 'N'
                WHERE
                    id = p_user_id;

            ELSE
                UPDATE korisnici
                SET
                    telefon = p_phone,
                    prezime = upper(p_last_name),
                    email = p_email,
                    ime = upper(p_first_name),
                    korisnicko_ime = p_username,
                    valid = p_enabled,
                    mobtel = p_mobile,
                    biro_korisnik = p_biro_korisnik
                WHERE
                    id = p_user_id;

            END IF;

            insert_korisnik_role(
                p_korisnik_id => p_user_id,
                p_role        => p_role_id
            );
            SELECT
                COUNT(*)
            INTO l_count
            FROM
                hrm.hr_radnici
            WHERE
                korisnik_id = p_user_id;

            IF l_count = 1 THEN
                UPDATE hrm.hr_radnici
                SET
                    ime = upper(p_first_name),
                    prezime = upper(p_last_name),
                    telefon = p_phone,
                    email = p_email,
                    mobitel = p_mobile
                WHERE
                    korisnik_id = p_user_id;

            END IF;

            o_id := p_user_id;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            RAISE;
    END ce_users;

    FUNCTION insert_korisnik (
        p_firma_id        IN NUMBER,
        p_korisnicko_ime  IN VARCHAR2,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_telefon         IN VARCHAR2,
        p_mobtel          IN VARCHAR2,
        p_biro_korisnik   IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2
    ) RETURN NUMBER IS
        l_id NUMBER;
    BEGIN
        INSERT INTO korisnici (
            firma_id,
            korisnicko_ime,
            ime,
            prezime,
            email,
            telefon,
            mobtel,
            biro_korisnik,
            password,
            password_version,
            change_required
        ) VALUES ( p_firma_id,
                   p_korisnicko_ime,
                   p_ime,
                   p_prezime,
                   p_email,
                   p_telefon,
                   p_mobtel,
                   p_biro_korisnik,
                   get_hash(p_korisnicko_ime, p_password),
                   'ERP',
                   p_change_required ) RETURNING id INTO l_id;

        RETURN l_id;
    ---> mm20260809 Start 
    -- 
    EXCEPTION
        WHEN OTHERS THEN
            DECLARE
                l_e VARCHAR2(50);
            BEGIN
                l_e := core.error_manager.f_log_error(
                    pi_module_name     => gc_module,
                    pi_action_name     => 'Kreiranje korisnika',
                    pi_additional_info => 'username: ' || lower(trim(p_korisnicko_ime)),
                    pi_severity_level  => core.error_manager.c_severity_critical
                );
            END;
    --<--- mm20260809 End
    END insert_korisnik;
    
    --Car Service(ID 380) aplikacija
        FUNCTION insert_korisnik (
        p_korisnicko_ime  IN VARCHAR2,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2
    ) RETURN NUMBER IS
        l_id NUMBER;
    BEGIN
        INSERT INTO korisnici (
            korisnicko_ime,
            ime,
            prezime,
            email,
            password,
            password_version,
            change_required
        ) VALUES (
                   p_korisnicko_ime,
                   p_ime,
                   p_prezime,
                   p_email,
                   get_hash(p_korisnicko_ime, p_password),
                   'ERP',
                   p_change_required ) RETURNING id INTO l_id;

        RETURN l_id;
    END insert_korisnik;

    PROCEDURE update_korisnik (
        p_id              IN NUMBER,
        p_ime             IN VARCHAR2,
        p_prezime         IN VARCHAR2,
        p_email           IN VARCHAR2,
        p_telefon         IN VARCHAR2,
        p_mobtel          IN VARCHAR2,
        p_biro_korisnik   IN VARCHAR2,
        p_change_password IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2,
        p_valid           IN VARCHAR2
    ) IS
    BEGIN
        IF p_change_password = 'Y' THEN
            UPDATE korisnici
            SET
                ime = p_ime,
                prezime = p_prezime,
                email = p_email,
                telefon = p_telefon,
                mobtel = p_mobtel,
                biro_korisnik = p_biro_korisnik,
                lozinka = NULL,
                password = get_hash(korisnicko_ime, p_password),
                password_version = 'ERP',
                password_last_changed = sysdate,
                change_required = p_change_required,
                valid = p_valid
            WHERE
                id = p_id;

        ELSE
            UPDATE korisnici
            SET
                ime = p_ime,
                prezime = p_prezime,
                email = p_email,
                telefon = p_telefon,
                mobtel = p_mobtel,
                biro_korisnik = p_biro_korisnik,
                change_required = p_change_required,
                valid = p_valid
            WHERE
                id = p_id;

        END IF;
    END update_korisnik;
    
    PROCEDURE delete_korisnik(
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM korisnici
        WHERE
            id = p_id;
    END delete_korisnik;

    --Car Service(ID 380) aplikacija END
    
        PROCEDURE update_korisnik (
        p_id              IN NUMBER,
        p_email           IN VARCHAR2,
        p_change_password IN VARCHAR2,
        p_password        IN VARCHAR2,
        p_change_required IN VARCHAR2,
        p_valid           IN VARCHAR2
    ) IS
    BEGIN
        IF p_change_password = 'Y' THEN
            UPDATE korisnici
            SET
                email = p_email,
                lozinka = NULL,
                password = get_hash(korisnicko_ime, p_password),
                password_version = 'ERP',
                password_last_changed = sysdate,
                change_required = p_change_required,
                valid = p_valid
            WHERE
                id = p_id;

        ELSE
            UPDATE korisnici
            SET
                
                email = p_email,
                
                change_required = p_change_required,
                valid = p_valid
            WHERE
                id = p_id;

        END IF;
    END update_korisnik;
    

    PROCEDURE update_korisnik (
        p_id                 IN NUMBER,
        p_sif_application_id IN NUMBER
    ) IS
    BEGIN
        UPDATE korisnici
        SET
            sif_application_id = p_sif_application_id
        WHERE
            id = p_id;

    END update_korisnik;

    PROCEDURE update_foto (
        p_id   IN NUMBER,
        p_foto IN VARCHAR2
    ) IS
        l_blob     BLOB;
        l_filename VARCHAR2(255);
        l_mimetype VARCHAR2(255);
    BEGIN
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_foto,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        UPDATE korisnici
        SET
            foto = l_blob,
            foto_filename = l_filename,
            foto_mimetype = l_mimetype,
            foto_lastupd = sysdate
        WHERE
            id = p_id;

    END update_foto;

    -- Password reset
    PROCEDURE setup_reset_password (
        p_app_id         IN NUMBER,
        p_email          IN VARCHAR2,
        p_korisnicko_ime IN VARCHAR2 DEFAULT NULL
    ) IS
        l_code           NUMBER;
        l_korisnicko_ime VARCHAR2(255);
        l_ime_prezime    VARCHAR2(255);
    BEGIN
        l_code := trunc(dbms_random.value(10000, 1000000));
        IF p_korisnicko_ime IS NULL THEN
            UPDATE korisnici
            SET
                password_reset = 'Y',
                password_reset_valid = sysdate + 1,
                password_reset_code = l_code
            WHERE
                lower(email) = lower(p_email);

            SELECT
                korisnicko_ime,
                ime
                || ' '
                || prezime
            INTO
                l_korisnicko_ime,
                l_ime_prezime
            FROM
                korisnici
            WHERE
                lower(email) = lower(p_email);

        ELSE
            UPDATE korisnici
            SET
                password_reset = 'Y',
                password_reset_valid = sysdate + 1,
                password_reset_code = l_code
            WHERE
                    lower(email) = lower(p_email)
                AND lower(korisnicko_ime) = lower(p_korisnicko_ime);

            SELECT
                korisnicko_ime,
                ime
                || ' '
                || prezime
            INTO
                l_korisnicko_ime,
                l_ime_prezime
            FROM
                korisnici
            WHERE
                    lower(email) = lower(p_email)
                AND lower(korisnicko_ime) = lower(p_korisnicko_ime);

        END IF;

        mail_pkg.posalji_reset_lozinke(
            p_app_id     => p_app_id,
            p_username   => l_korisnicko_ime,
            p_mail_to    => p_email,
            p_name       => l_ime_prezime,
            p_reset_code => l_code
        );

    END setup_reset_password;

    PROCEDURE reset_password (
        p_email            IN VARCHAR2,
        p_korisnicko_ime   IN VARCHAR2 DEFAULT NULL,
        p_code             IN NUMBER,
        p_password         IN VARCHAR2,
        p_confirm_password IN VARCHAR2
    ) IS

        l_korisnik_id    NUMBER;
        l_korisnicko_ime VARCHAR2(255);
        l_reset          VARCHAR2(1);
        l_reset_valid    DATE;
        l_reset_code     NUMBER;
    BEGIN
        IF p_korisnicko_ime IS NULL THEN
            SELECT
                id,
                korisnicko_ime,
                password_reset,
                password_reset_valid,
                password_reset_code
            INTO
                l_korisnik_id,
                l_korisnicko_ime,
                l_reset,
                l_reset_valid,
                l_reset_code
            FROM
                korisnici
            WHERE
                lower(email) = lower(p_email);

        ELSE
            SELECT
                id,
                korisnicko_ime,
                password_reset,
                password_reset_valid,
                password_reset_code
            INTO
                l_korisnik_id,
                l_korisnicko_ime,
                l_reset,
                l_reset_valid,
                l_reset_code
            FROM
                korisnici
            WHERE
                    lower(email) = lower(p_email)
                AND lower(korisnicko_ime) = lower(p_korisnicko_ime);

        END IF;

        IF sysdate > l_reset_valid THEN
            raise_application_error(-20001, 'Kod za restartovanje lozinke je istekao.');
        END IF;
        IF l_reset = 'N' THEN
            raise_application_error(-20002, 'Nije pokrenut proces restartovanja lozinke.');
        END IF;
        IF l_reset_code != p_code THEN
            raise_application_error(-20003, 'Netačan kod za potvrdu.');
        END IF;
        IF p_password != p_confirm_password THEN
            raise_application_error(-20004, 'Lozinka i ponovljena lozinka moraju biti identične..');
        END IF;
        change_password(
            p_id           => l_korisnik_id,
            p_username     => l_korisnicko_ime,
            p_new_password => p_password
        );
        UPDATE korisnici
        SET
            password_reset = 'N',
            password_reset_valid = NULL,
            password_reset_code = NULL
        WHERE
            id = l_korisnik_id;

    END reset_password;

    -- Role
    PROCEDURE insert_korisnik_role (
        p_korisnik_id IN NUMBER,
        p_role        IN VARCHAR2
    ) AS
        l_ima_role NUMBER;
    BEGIN
        SELECT
            COUNT(*)
        INTO l_ima_role
        FROM
            korisnik_role
        WHERE
            korisnik_id = p_korisnik_id;

        IF l_ima_role > 0 THEN
            DELETE FROM korisnik_role
            WHERE
                korisnik_id = p_korisnik_id;

        END IF;
        FOR x IN (
            SELECT
                sif.sif_pkg.get_rola_id(column_value) AS role_value
            FROM
                apex_string.split(p_role, ':')
        ) LOOP
            INSERT INTO korisnik_role (
                korisnik_id,
                rola_id
            ) VALUES ( p_korisnik_id,
                       x.role_value );

        END LOOP;

    END insert_korisnik_role;

    FUNCTION user_authorization (
        p_korisnik_id IN NUMBER,
        p_role        IN VARCHAR2
    ) RETURN BOOLEAN IS
    BEGIN
        FOR c1 IN (
            SELECT
                column_value AS rola
            FROM
                apex_string.split(p_role, ',')
        ) LOOP
            IF user_has_role(p_korisnik_id, c1.rola) > 0 THEN
                RETURN TRUE;
            END IF;
            CONTINUE;
        END LOOP;

        RETURN FALSE;
    END user_authorization;

    FUNCTION user_has_role (
        p_korisnik_id IN NUMBER,
        p_rola        IN VARCHAR2
    ) RETURN NUMBER IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                vw_korisnik_role
            WHERE
                    korisnik_id = p_korisnik_id
                AND lower(rola_naziv) = lower(p_rola)
        ) LOOP
            RETURN 1;
        END LOOP;

        RETURN 0;
    END user_has_role;

    -- Moduli
    FUNCTION exists_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    ) RETURN NUMBER IS
    BEGIN
        FOR c1 IN (
            SELECT
                1
            FROM
                korisnik_moduli
            WHERE
                    korisnik_id = p_korisnik_id
                AND modul_id = p_modul_id
        ) LOOP
            RETURN 1;
        END LOOP;

        RETURN 0;
    END exists_korisnik_modul;

    PROCEDURE handle_korisnik_moduli (
        p_korisnik_id IN NUMBER,
        p_moduli      IN VARCHAR2
    ) IS
        -- Novi nepostojeci moduli (dodavamo ih)
        CURSOR c_moduli IS
        (
            SELECT
                column_value AS modul_id
            FROM
                apex_string.split(p_moduli, ':')
            WHERE
                exists_korisnik_modul(p_korisnik_id, column_value) = 0
        );

        -- Stari nepostojeci moduli (brisemo ih)
        CURSOR c_nepostojeci_moduli IS
        (
            SELECT
                modul_id
            FROM
                korisnik_moduli
            WHERE
                korisnik_id = p_korisnik_id
                AND modul_id NOT IN (
                    SELECT
                        column_value
                    FROM
                        apex_string.split(p_moduli, ':')
                )
        );

    BEGIN
        FOR c1 IN c_moduli LOOP
            insert_korisnik_modul(
                p_korisnik_id => p_korisnik_id,
                p_modul_id    => c1.modul_id
            );
        END LOOP;

        FOR c1 IN c_nepostojeci_moduli LOOP
            delete_korisnik_modul(
                p_korisnik_id => p_korisnik_id,
                p_modul_id    => c1.modul_id
            );
        END LOOP;

    END handle_korisnik_moduli;

    PROCEDURE insert_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    ) IS
    BEGIN
        INSERT INTO korisnik_moduli (
            korisnik_id,
            modul_id
        ) VALUES ( p_korisnik_id,
                   p_modul_id );

    END insert_korisnik_modul;

    PROCEDURE delete_korisnik_modul (
        p_korisnik_id IN NUMBER,
        p_modul_id    IN NUMBER
    ) IS
    BEGIN
        DELETE FROM korisnik_moduli
        WHERE
                korisnik_id = p_korisnik_id
            AND modul_id = p_modul_id;

        DELETE FROM korisnik_role
        WHERE
                korisnik_id = p_korisnik_id
            AND rola_id IN (
                SELECT
                    rola_id
                FROM
                    sif.sif_moduli_role
                WHERE
                    modul_id = p_modul_id
            );

    END delete_korisnik_modul;

    -- Mailing
    PROCEDURE get_mailing (
        p_korisnik_id IN NUMBER,
        p_mailing     OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                vw_korisnici
            WHERE
                id = p_korisnik_id
        ) LOOP
            p_mailing := c1.mailing;
        END LOOP;
    END get_mailing;

    PROCEDURE get_korisnik_mailing (
        p_korisnicko_ime    IN VARCHAR2,
        p_email             IN VARCHAR2,
        p_mailing           OUT VARCHAR2,
        p_sekretarice_email OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                mailing,
                (
                    SELECT
                        LISTAGG(sekretarica_email, ',')
                    FROM
                        vw_korisnik_sekretarice ks
                    WHERE
                        ks.korisnik_id = k.id
                ) AS sekretarice_email
            FROM
                vw_korisnici k
            WHERE
                    korisnicko_ime = p_korisnicko_ime
                AND email = p_email
        ) LOOP
            p_mailing := c1.mailing;
            p_sekretarice_email := c1.sekretarice_email;
        END LOOP;
    END get_korisnik_mailing;

    PROCEDURE get_korisnik_mailing (
        p_korisnik_id       IN NUMBER,
        p_mailing           OUT VARCHAR2,
        p_sekretarice_email OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                mailing,
                (
                    SELECT
                        LISTAGG(sekretarica_email, ',')
                    FROM
                        vw_korisnik_sekretarice ks
                    WHERE
                        ks.korisnik_id = k.id
                ) AS sekretarice_email
            FROM
                vw_korisnici k
            WHERE
                id = p_korisnik_id
        ) LOOP
            p_mailing := c1.mailing;
            p_sekretarice_email := c1.sekretarice_email;
        END LOOP;
    END get_korisnik_mailing;

    PROCEDURE toggle_mailing (
        p_korisnik_id IN NUMBER,
        p_mailing     IN VARCHAR2
    ) AS
    BEGIN
        UPDATE korisnici
        SET
            mailing = p_mailing
        WHERE
            id = p_korisnik_id;

    END toggle_mailing;

    PROCEDURE get_email_potpis (
        p_korisnik_id  IN NUMBER,
        p_email_potpis OUT CLOB
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                email_potpis
            FROM
                vw_korisnici
            WHERE
                id = p_korisnik_id
        ) LOOP
            p_email_potpis := c1.email_potpis;
        END LOOP;
    END get_email_potpis;

    PROCEDURE update_email_potpis (
        p_korisnik_id  IN NUMBER,
        p_email_potpis IN CLOB
    ) IS
    BEGIN
        UPDATE korisnici
        SET
            email_potpis = p_email_potpis
        WHERE
            id = p_korisnik_id;

    END update_email_potpis;

    PROCEDURE delete_email_potpis (
        p_korisnik_id IN NUMBER
    ) IS
    BEGIN
        UPDATE korisnici
        SET
            email_potpis = NULL
        WHERE
            id = p_korisnik_id;

    END delete_email_potpis;

    --------------------------------------------------------------
    -- procedures for table KORISNIK_BRZI_PRISTUP
    --------------------------------------------------------------

    PROCEDURE get_brzi_pristup (
        p_id          IN NUMBER,
        p_korisnik_id OUT NUMBER,
        p_page_id     OUT NUMBER,
        p_title       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_sequence    OUT NUMBER,
        p_valid       OUT VARCHAR2,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2,
        p_row_version OUT NUMBER
    ) AS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                korisnik_brzi_pristupi
            WHERE
                id = p_id
        ) LOOP
            p_korisnik_id := c1.korisnik_id;
            p_page_id := c1.page_id;
            p_title := c1.title;
            p_icon := c1.icon;
            p_sequence := c1.sequence;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        END LOOP;
    END get_brzi_pristup;

    PROCEDURE insert_brzi_pristup (
        p_korisnik_id        IN NUMBER,
        p_page_id            IN NUMBER,
        p_title              IN VARCHAR2,
        p_icon               IN VARCHAR2,
        p_sif_application_id IN NUMBER
    ) AS
        l_sequence NUMBER;
    BEGIN
        SELECT
            ( COUNT(*) + 1 ) * 10
        INTO l_sequence
        FROM
            korisnik_brzi_pristupi
        WHERE
            korisnik_id = p_korisnik_id;

        INSERT INTO korisnik_brzi_pristupi (
            korisnik_id,
            page_id,
            title,
            icon,
            sequence,
            sif_application_id
        ) VALUES ( p_korisnik_id,
                   p_page_id,
                   p_title,
                   p_icon,
                   l_sequence,
                   p_sif_application_id );

    END insert_brzi_pristup;

    PROCEDURE update_brzi_pristup (
        p_id       IN NUMBER,
        p_title    IN VARCHAR2,
        p_sequence IN NUMBER
    ) AS
    BEGIN
        UPDATE korisnik_brzi_pristupi
        SET
            title = p_title,
            sequence = p_sequence
        WHERE
            id = p_id;

    END update_brzi_pristup;

    PROCEDURE update_valid (
        p_id    IN NUMBER,
        p_valid IN VARCHAR2
    ) AS
    BEGIN
        UPDATE korisnik_brzi_pristupi
        SET
            valid = p_valid
        WHERE
            id = p_id;

    END update_valid;

    PROCEDURE delete_brzi_pristup (
        p_id IN NUMBER
    ) AS
    BEGIN
        DELETE FROM korisnik_brzi_pristupi
        WHERE
            id = p_id;

    END delete_brzi_pristup;

    FUNCTION can_add_brzi_pristup (
        p_korisnik_id IN NUMBER,
        p_app_id      IN NUMBER,
        p_page_id     IN NUMBER
    ) RETURN BOOLEAN IS
        l_max   NUMBER := 8;
        l_count NUMBER;
        l_page  NUMBER;
    BEGIN
        SELECT
            COUNT(*)
        INTO l_count
        FROM
            korisnik_brzi_pristupi
        WHERE
                korisnik_id = p_korisnik_id
            AND valid = 'Y';

        IF l_count >= l_max THEN
            RETURN FALSE;
        END IF;
        SELECT
            COUNT(*)
        INTO l_count
        FROM
            apex_application_list_entries
        WHERE
                application_id = p_app_id
            AND entry_attribute_03 = p_page_id;

        IF l_count = 0 THEN
            RETURN FALSE;
        END IF;
        SELECT
            COUNT(*)
        INTO l_count
        FROM
            vw_korisnik_brzi_pristupi
        WHERE
                korisnik_id = p_korisnik_id
            AND page_id = p_page_id
            AND app_id = p_app_id;

        IF l_count > 0 THEN
            RETURN FALSE;
        END IF;
        RETURN TRUE;
    END can_add_brzi_pristup;

    FUNCTION can_update_brzi_pristup (
        p_korisnik_id IN NUMBER,
        p_valid       IN NUMBER
    ) RETURN BOOLEAN IS
        l_max   NUMBER := 8;
        l_count NUMBER;
    BEGIN
        IF p_valid = 'Y' THEN
            RETURN FALSE;
        END IF;
        SELECT
            COUNT(*)
        INTO l_count
        FROM
            korisnik_brzi_pristupi
        WHERE
                korisnik_id = p_korisnik_id
            AND valid = 'Y';

        IF l_count >= l_max THEN
            RETURN FALSE;
        END IF;
        RETURN TRUE;
    END can_update_brzi_pristup;

    --------------------------------------------------------------
    -- procedures for table KORISNIK_SEKRETARICE
    --------------------------------------------------------------

    PROCEDURE get_korisnik_sekretarice (
        p_korisnik_id IN NUMBER,
        p_sekretarice OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                LISTAGG(sekretarica_id, ':') AS sekretarice
            FROM
                vw_korisnik_sekretarice
            WHERE
                korisnik_id = p_korisnik_id
        ) LOOP
            p_sekretarice := c1.sekretarice;
        END LOOP;
    END get_korisnik_sekretarice;

    PROCEDURE insert_korisnik_sekretarice (
        p_korisnik_id IN NUMBER,
        p_sekretarice IN VARCHAR2
    ) IS
    BEGIN
        delete_korisnik_sekretarice(p_korisnik_id => p_korisnik_id);
        FOR c1 IN (
            SELECT
                column_value AS sekretarica_id
            FROM
                apex_string.split(p_sekretarice, ':')
        ) LOOP
            INSERT INTO korisnik_sekretarice (
                korisnik_id,
                sekretarica_id
            ) VALUES ( p_korisnik_id,
                       c1.sekretarica_id );

        END LOOP;

    END insert_korisnik_sekretarice;

    PROCEDURE delete_korisnik_sekretarice (
        p_korisnik_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM korisnik_sekretarice
        WHERE
            korisnik_id = p_korisnik_id;

    END delete_korisnik_sekretarice;
    
    --Car Service(ID 380) aplikacija
    PROCEDURE get_korisnik_oj (
        p_id          IN NUMBER,
        p_korisnik_id OUT NUMBER,
        p_oj_id       OUT NUMBER,
        p_klijent_id  OUT NUMBER,
        p_valid       OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                korisnik_oj
            WHERE
                id = p_id
        ) LOOP
            p_korisnik_id := c1.korisnik_id;
            p_oj_id := c1.oj_id;
            p_klijent_id := c1.klijent_id;
            p_valid := c1.valid;
        END LOOP;
    END get_korisnik_oj;

     PROCEDURE insert_korisnik_oj (
        p_korisnik_id IN NUMBER,
        p_oj_id       IN NUMBER,
        p_klijent_id  IN NUMBER
    )  IS
        
    BEGIN
        INSERT INTO korisnik_oj (
            korisnik_id,
            oj_id,
            klijent_id
        ) VALUES ( p_korisnik_id,
                   p_oj_id,
                   p_klijent_id );
   
    END insert_korisnik_oj;

    PROCEDURE update_korisnik_oj (
        p_id          IN NUMBER,
        p_korisnik_id IN NUMBER,
        p_oj_id       IN NUMBER,
        p_klijent_id  IN NUMBER,
        p_valid       IN VARCHAR2
    ) IS
    BEGIN
        UPDATE korisnik_oj
        SET
            korisnik_id = p_korisnik_id,
            oj_id = p_oj_id,
            klijent_id = p_klijent_id,
            valid = p_valid
        WHERE
            id = p_id;

    END update_korisnik_oj;

    PROCEDURE delete_korisnik_oj (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM korisnik_oj
        WHERE
            id = p_id;

    END delete_korisnik_oj;

END korisnik_pkg;
/

prompt
prompt Creating package body MAIL_PKG
prompt ==============================
prompt
create or replace package body core.mail_pkg as

    -- Firma
    procedure posalji_nova_firma (
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_username  in varchar2,
        p_firma     in varchar2,
        p_login_url in varchar2
    ) as
        l_subject varchar2(255);
    begin
        l_subject := 'Dobrodošli u CORP';
        apex_mail.send(
            p_to                 => p_mail_to,
            p_from               => hrm.mail_pkg.mail_from,
            p_template_static_id => 'NOVA_FIRMA',
            p_placeholders       => '{'
                              || '    "SUBJECT":'
                              || apex_json.stringify(l_subject)
                              || '   ,"NAME":'
                              || apex_json.stringify(p_name)
                              || '   ,"FIRMA":'
                              || apex_json.stringify(p_firma)
                              || '   ,"USERNAME":'
                              || apex_json.stringify(p_username)
                              || '   ,"LOGIN_URL":'
                              || apex_json.stringify(p_login_url)
                              || '   ,"MAIL_FOOTER":'
                              || apex_json.stringify(hrm.mail_pkg.footer)
                              || '}'
        );

        apex_mail.push_queue;
    end posalji_nova_firma;

    procedure posalji_firma_aktivacija (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_firma          in varchar2,
        p_valid          in varchar2,
        p_datum          in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not hrm.mail_pkg.check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Aktivacija CORP';
        l_mini := 'Promjena statusa aktivacije Vaše firme';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'FIRMA_AKTIVACIJA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"FIRMA":'
                                  || apex_json.stringify(p_firma)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(hrm.mail_pkg.login_url)
                                  || '   ,"VALID":'
                                  || apex_json.stringify(p_valid)
                                  || '   ,"DATUM":'
                                  || apex_json.stringify(p_datum)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(hrm.mail_pkg.footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'FIRMA_AKTIVACIJA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_firma_aktivacija;

    procedure posalji_firma_predracun (
        p_app_id         in number,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_razlog         in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not hrm.mail_pkg.check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Predračun za CORP';
        l_mini := 'Razlog slanja predračuna - ' || p_razlog;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'FIRMA_PREDRACUN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"RAZLOG":'
                                  || apex_json.stringify(p_razlog)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(hrm.mail_pkg.login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(hrm.mail_pkg.footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'FIRMA_PREDRACUN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_firma_predracun;

    procedure posalji_firma_faktura (
        p_app_id         in number,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_razlog         in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not hrm.mail_pkg.check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Faktura za CORP';
        l_mini := 'Razlog slanja fakture - ' || p_razlog;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'FIRMA_FAKTURA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"RAZLOG":'
                                  || apex_json.stringify(p_razlog)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(hrm.mail_pkg.login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(hrm.mail_pkg.footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'FIRMA_FAKTURA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_firma_faktura;

    procedure posalji_novi_korisnik (
        p_mail_to  in varchar2,
        p_name     in varchar2,
        p_username in varchar2,
        p_firma    in varchar2
    ) as
        l_subject varchar2(255);
    begin
        l_subject := 'Dobrodošli u CORP';
        apex_mail.send(
            p_to                 => p_mail_to,
            p_from               => hrm.mail_pkg.mail_from,
            p_template_static_id => 'NOVI_KORISNIK',
            p_placeholders       => '{'
                              || '    "SUBJECT":'
                              || apex_json.stringify(l_subject)
                              || '   ,"NAME":'
                              || apex_json.stringify(p_name)
                              || '   ,"USERNAME":'
                              || apex_json.stringify(p_username)
                              || '   ,"FIRMA":'
                              || apex_json.stringify(p_firma)
                              || '   ,"LOGIN_URL":'
                              || apex_json.stringify(hrm.mail_pkg.login_url)
                              || '   ,"MAIL_FOOTER":'
                              || apex_json.stringify(hrm.mail_pkg.footer)
                              || '}'
        );

        apex_mail.push_queue;
    end posalji_novi_korisnik;

    procedure posalji_reset_lozinke (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_name       in varchar2,
        p_reset_code in varchar2
    ) as
        l_subject           varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not hrm.mail_pkg.check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za promjenu lozinke';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'RESET_PASSWORD',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"RESET_CODE":'
                                  || apex_json.stringify(p_reset_code)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(hrm.mail_pkg.footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

    end posalji_reset_lozinke;

    procedure posalji_dokument_firma (
        p_app_id        in varchar2,
        p_username      in varchar2,
        p_mail_to       in varchar2,
        p_name          in varchar2,
        p_document_name in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not hrm.mail_pkg.check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Validnost dokumenta se završava';
        l_mini := 'Validnost dokumenta u Vašoj firmi ističe za 15 dana';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'DOKUMENT_FIRMA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"DOCUMENT_NAME":'
                                  || apex_json.stringify(p_document_name)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(hrm.mail_pkg.login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(hrm.mail_pkg.footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'DOKUMENT_FIRMA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_dokument_firma;

    -- Biro mejlovi
    procedure posalji_biro_zahtjev (
        p_firma_id in number,
        p_biro_id  in number
    ) is

        cursor c_korisnici is
        (
            select
                korisnicko_ime,
                initcap(ime)
                || ' '
                || initcap(prezime) as naziv,
                email,
                mailing,
                (
                    select
                        listagg(sekretarica_id, ':')
                    from
                        core.vw_korisnik_sekretarice
                    where
                        korisnik_id = k.id
                )                   as sekretarice_email
            from
                core.korisnici k
            where
                    firma_id = p_biro_id
                and core.korisnik_pkg.user_has_role(id, 'A_KLIJENTI_RLE') > 0
        );

        l_subject     varchar2(255);
        l_mini        varchar2(255);
        l_firma_naziv varchar2(255);
    begin
        select
            naziv
        into l_firma_naziv
        from
            core.firme
        where
            id = p_firma_id;

        l_subject := 'Novi zahtjev za klijenta';
        l_mini := 'Primili ste novi zahtjev da Vaša firma bude njihov biro.';
        for c1 in c_korisnici loop
            if c1.mailing = 'Y' then
                apex_mail.send(
                    p_to                 => c1.email,
                    p_cc                 => c1.sekretarice_email,
                    p_from               => hrm.mail_pkg.mail_from,
                    p_template_static_id => 'BIRO_ZAHTJEV',
                    p_placeholders       => '{'
                                      || '    "SUBJECT":'
                                      || apex_json.stringify(l_subject)
                                      || '   ,"NAME":'
                                      || apex_json.stringify(c1.naziv)
                                      || '   ,"FIRMA_NAZIV":'
                                      || apex_json.stringify(l_firma_naziv)
                                      || '   ,"LOGIN_URL":'
                                      || apex_json.stringify(hrm.mail_pkg.login_url)
                                      || '   ,"MAIL_FOOTER":'
                                      || apex_json.stringify(hrm.mail_pkg.footer)
                                      || '}'
                );
            end if;

            core.notifikacije_pkg.send_notification(
                p_sifra     => 'BIRO_ZAHTJEV',
                p_user_name => c1.korisnicko_ime,
                p_title     => l_subject,
                p_body      => l_mini
            );

        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end posalji_biro_zahtjev;

    procedure posalji_biro_odgovor (
        p_firma_id in number,
        p_biro_id  in number,
        p_odgovor  in varchar2
    ) is

        cursor c_korisnici is
        (
            select
                korisnicko_ime,
                initcap(ime)
                || ' '
                || initcap(prezime) as naziv,
                email,
                mailing,
                (
                    select
                        listagg(sekretarica_id, ':')
                    from
                        core.vw_korisnik_sekretarice
                    where
                        korisnik_id = k.id
                )                   as sekretarice_email
            from
                core.korisnici k
            where
                    firma_id = p_firma_id
                and core.korisnik_pkg.user_has_role(id, 'A_BIRO_RLE') > 0
        );

        l_subject    varchar2(255);
        l_mini       varchar2(255);
        l_biro_naziv varchar2(255);
    begin
        select
            naziv
        into l_biro_naziv
        from
            core.firme
        where
            id = p_biro_id;

        l_subject := 'Odgovor na zahtjev prema birou';
        l_mini := 'Biro je odgovorio na Vaš zahtjev.';
        for c1 in c_korisnici loop
            if c1.mailing = 'Y' then
                apex_mail.send(
                    p_to                 => c1.email,
                    p_cc                 => c1.sekretarice_email,
                    p_from               => hrm.mail_pkg.mail_from,
                    p_template_static_id => 'BIRO_ODGOVOR',
                    p_placeholders       => '{'
                                      || '    "SUBJECT":'
                                      || apex_json.stringify(l_subject)
                                      || '   ,"NAME":'
                                      || apex_json.stringify(c1.naziv)
                                      || '   ,"BIRO_NAZIV":'
                                      || apex_json.stringify(l_biro_naziv)
                                      || '   ,"ODGOVOR":'
                                      || apex_json.stringify(p_odgovor)
                                      || '   ,"LOGIN_URL":'
                                      || apex_json.stringify(hrm.mail_pkg.login_url)
                                      || '   ,"MAIL_FOOTER":'
                                      || apex_json.stringify(hrm.mail_pkg.footer)
                                      || '}'
                );
            end if;

            core.notifikacije_pkg.send_notification(
                p_sifra     => 'BIRO_ODGOVOR',
                p_user_name => c1.korisnicko_ime,
                p_title     => l_subject,
                p_body      => l_mini
            );

        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end posalji_biro_odgovor;

    procedure posalji_biro_brisanje (
        p_firma_id in number,
        p_biro_id  in number
    ) is

        cursor c_korisnici is
        (
            select
                korisnicko_ime,
                initcap(ime)
                || ' '
                || initcap(prezime) as naziv,
                email,
                mailing,
                (
                    select
                        listagg(sekretarica_id, ':')
                    from
                        core.vw_korisnik_sekretarice
                    where
                        korisnik_id = k.id
                )                   as sekretarice_email
            from
                core.korisnici k
            where
                    firma_id = p_firma_id
                and core.korisnik_pkg.user_has_role(id, 'A_BIRO_RLE') > 0
        );

        l_subject    varchar2(255);
        l_mini       varchar2(255);
        l_biro_naziv varchar2(255);
    begin
        select
            naziv
        into l_biro_naziv
        from
            core.firme
        where
            id = p_biro_id;

        l_subject := 'Biro vas je izbrisao sa liste njihovih klijenata';
        l_mini := 'Sada možete da pronađete neki drugi biro u aplikaciji Administracija.';
        for c1 in c_korisnici loop
            if c1.mailing = 'Y' then
                apex_mail.send(
                    p_to                 => c1.email,
                    p_cc                 => c1.sekretarice_email,
                    p_from               => hrm.mail_pkg.mail_from,
                    p_template_static_id => 'BIRO_BRISANJE',
                    p_placeholders       => '{'
                                      || '    "SUBJECT":'
                                      || apex_json.stringify(l_subject)
                                      || '   ,"NAME":'
                                      || apex_json.stringify(c1.naziv)
                                      || '   ,"BIRO_NAZIV":'
                                      || apex_json.stringify(l_biro_naziv)
                                      || '   ,"LOGIN_URL":'
                                      || apex_json.stringify(hrm.mail_pkg.login_url)
                                      || '   ,"MAIL_FOOTER":'
                                      || apex_json.stringify(hrm.mail_pkg.footer)
                                      || '}'
                );
            end if;

            core.notifikacije_pkg.send_notification(
                p_sifra     => 'BIRO_BRISANJE',
                p_user_name => c1.korisnicko_ime,
                p_title     => l_subject,
                p_body      => l_mini
            );

        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end posalji_biro_brisanje;

end mail_pkg;
/

prompt
prompt Creating package body MODULI_PKG
prompt ================================
prompt
create or replace package body core.moduli_pkg as

    -- firma moduli
    procedure get_firma_modul (
        p_id       in number,
        p_firma_id out number,
        p_modul_id out number
    ) is
    begin
        for c1 in (
            select
                firma_id,
                modul_id
            from
                firma_moduli
            where
                id = p_id
        ) loop
            p_firma_id := c1.firma_id;
            p_modul_id := c1.modul_id;
        end loop;
        
    end get_firma_modul;
   
    
    function get_firma_modul (
        p_firma_id in number,
        p_modul_id in number
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                firma_moduli
            where
                    firma_id = p_firma_id
                and modul_id = p_modul_id
        ) loop
            return c1.broj_korisnika;
        end loop;
        
        return 0;
    end get_firma_modul;

    function get_korisnik_modul_count (
        p_firma_id in number,
        p_modul_id in number
    ) return number is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            korisnik_moduli
        where
                modul_id = p_modul_id
            and korisnik_id in (
                select
                    id
                from
                    korisnici
                where
                    firma_id = p_firma_id
            );

        return l_count;
    end get_korisnik_modul_count;

    procedure insert_firma_modul (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    ) as
    begin
        insert into firma_moduli (
            firma_id,
            modul_id,
            cijena,
            broj_korisnika
        ) values ( p_firma_id,
                   p_modul_id,
                   p_cijena,
                   p_broj_korisnika );

    end insert_firma_modul;

    procedure update_firma_modul (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    ) is
        l_broj_korisnika number;
    begin
        l_broj_korisnika := get_korisnik_modul_count(p_firma_id, p_modul_id);
        if l_broj_korisnika > p_broj_korisnika then
            raise_application_error(-20001, 'Ne može se ažurirati modul. Broj trenutnih korisnika u tom modulu je veći od unešenog.')
            ;
        end if;
        update firma_moduli
        set
            cijena = p_cijena,
            broj_korisnika = p_broj_korisnika
        where
                firma_id = p_firma_id
            and modul_id = p_modul_id;

    end update_firma_modul;

    procedure delete_firma_modul (
        p_firma_id in number,
        p_modul_id in number
    ) as
    begin
        -- Brisemo sve role
        delete from korisnik_role
        where
            rola_id in (
                select
                    id
                from
                    sif.sif_role
                where
                    id in (
                        select
                            rola_id
                        from
                            sif.sif_moduli_role
                        where
                            modul_id = p_modul_id
                    )
            )
            and korisnik_id in (
                select
                    id
                from
                    korisnici
                where
                    firma_id = p_firma_id
            );

        delete from korisnik_moduli
        where
                modul_id = p_modul_id
            and korisnik_id in (
                select
                    id
                from
                    korisnici
                where
                    firma_id = p_firma_id
            );

        -- Brisemo modul iz ove firme
        delete from firma_moduli
        where
                firma_id = p_firma_id
            and modul_id = p_modul_id;

    end delete_firma_modul;

    -- queue
    procedure get_queue (
        p_id             in number,
        p_firma_id       out number,
        p_modul_id       out number,
        p_tip            out varchar2,
        p_cijena         out number,
        p_broj_korisnika out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2,
        p_row_version    out number
    ) as
    begin
        for c1 in (
            select
                *
            from
                firma_moduli_queue
            where
                id = p_id
        ) loop
            p_firma_id := c1.firma_id;
            p_modul_id := c1.modul_id;
            p_tip := c1.tip;
            p_cijena := c1.cijena;
            p_broj_korisnika := c1.broj_korisnika;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_queue;

    procedure add_to_queue (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    ) as
    begin
        insert into firma_moduli_queue (
            firma_id,
            modul_id,
            tip,
            broj_korisnika,
            cijena
        ) values ( p_firma_id,
                   p_modul_id,
                   'A',
                   p_broj_korisnika,
                   p_cijena );

    end add_to_queue;

    procedure add_to_edit_queue (
        p_firma_id       in number,
        p_modul_id       in number,
        p_cijena         in number,
        p_broj_korisnika in number
    ) is
    begin
        insert into firma_moduli_queue (
            firma_id,
            modul_id,
            tip,
            broj_korisnika,
            cijena
        ) values ( p_firma_id,
                   p_modul_id,
                   'E',
                   p_broj_korisnika,
                   p_cijena );

    end add_to_edit_queue;

    procedure add_to_remove_queue (
        p_firma_id in number,
        p_modul_id in number
    ) as
        l_exist number;
    begin
        select
            1
        into l_exist
        from
            firma_moduli_queue
        where
                firma_id = p_firma_id
            and modul_id = p_modul_id;

        raise_application_error(-20001, 'Ne možete deaktivirati ovaj modul, već postoji u akcijama nad modulima');
    exception
        when no_data_found then
            insert into firma_moduli_queue (
                firma_id,
                modul_id,
                tip
            ) values ( p_firma_id,
                       p_modul_id,
                       'D' );

    end add_to_remove_queue;

    procedure remove_to_queue (
        p_id in number
    ) as
        l_modul_id number;
    begin
        select
            modul_id
        into l_modul_id
        from
            firma_moduli_queue
        where
            id = p_id;

        if l_modul_id = 1 then -- Gratis modul ne mozes izbrisati iz queue
            return;
        end if;
        delete from firma_moduli_queue
        where
            id = p_id;

    end remove_to_queue;

    procedure clear_queue (
        p_firma_id in number
    ) as
    begin
        delete from firma_moduli_queue
        where
            firma_id = p_firma_id;

    end clear_queue;

    -- Aktivacija modula
    procedure activate_queue (
        p_firma_id in number,
        p_delete   in varchar2
    ) is
        l_broj_korisnika number;
    begin
        -- Prolazimo kroz queue
        for modul in (
            select
                tip,
                modul_id,
                broj_korisnika
            from
                firma_moduli_queue
            where
                firma_id = p_firma_id
        ) loop
            if modul.tip = 'A' then -- Sve module iz queue koji se trebaju dodati se dodaju..
                insert_firma_modul(
                    p_firma_id       => p_firma_id,
                    p_modul_id       => modul.modul_id,
                    p_cijena         => 0,
                    p_broj_korisnika => modul.broj_korisnika
                );

            elsif
                modul.tip = 'D'
                and p_delete = 'Y'
            then -- Sve module iz queue koji trebaa da se obrisu se brisu..
                delete_firma_modul(
                    p_firma_id => p_firma_id,
                    p_modul_id => modul.modul_id
                );
            elsif modul.tip = 'E' then -- Sve module iz queue koji trebaa da se azuriraju..
                l_broj_korisnika := get_firma_modul(p_firma_id, modul.modul_id);
                if modul.broj_korisnika > l_broj_korisnika
                or p_delete = 'Y' then
                    update_firma_modul(
                        p_firma_id       => p_firma_id,
                        p_modul_id       => modul.modul_id,
                        p_cijena         => 0,
                        p_broj_korisnika => modul.broj_korisnika
                    );

                end if;

            end if;
        end loop;

        -- Cistimo queue
        clear_queue(p_firma_id => p_firma_id);
    end activate_queue;

end moduli_pkg;
/

prompt
prompt Creating package body NOTIFIKACIJE_PKG
prompt ======================================
prompt
create or replace package body core.notifikacije_pkg is

    -- Notifikacije
    procedure get_notifikacija (
        p_id                  in number,
        p_tip_notifikacije_id out number,
        p_korisnik_id         out number,
        p_note_header         out varchar2,
        p_note_text           out varchar2,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                korisnik_notifikacije
            where
                id = p_id
        ) loop
            p_tip_notifikacije_id := c1.tip_notifikacije_id;
            p_korisnik_id := c1.korisnik_id;
            p_tip_notifikacije_id := c1.tip_notifikacije_id;
            p_korisnik_id := c1.korisnik_id;
            p_note_header := c1.note_header;
            p_note_text := c1.note_text;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_notifikacija;

    function insert_notifikacija (
        p_tip_notifikacije_id in number,
        p_korisnik_id         in number,
        p_note_header         in varchar2,
        p_note_text           in varchar2
    ) return number is
        l_id number;
    begin
        insert into korisnik_notifikacije (
            tip_notifikacije_id,
            korisnik_id,
            note_header,
            note_text
        ) values ( p_tip_notifikacije_id,
                   p_korisnik_id,
                   p_note_header,
                   p_note_text ) returning id into l_id;

        return l_id;
    end insert_notifikacija;

    procedure update_notifikacija (
        p_id                  in number,
        p_tip_notifikacije_id in number,
        p_korisnik_id         in number,
        p_note_header         in varchar2,
        p_note_text           in varchar2,
        p_valid               in varchar2
    ) is
    begin
        update korisnik_notifikacije
        set
            tip_notifikacije_id = p_tip_notifikacije_id,
            korisnik_id = p_korisnik_id,
            note_header = p_note_header,
            note_text = p_note_text,
            valid = p_valid
        where
            id = p_id;

    end update_notifikacija;

    -- User
    procedure send_notification (
        p_application_id in number default null,
        p_sifra          in varchar2,
        p_user_name      in varchar2,
        p_title          in varchar2,
        p_body           in varchar2,
        p_icon_url       in varchar2 default null,
        p_target_url     in varchar2 default null
    ) is

        l_tip_notifikacije_id number;
        l_note_page           number;
        l_page_item           varchar2(255);
        l_notifikacija_id     number;
        l_korisnik_id         number;
        l_url                 varchar2(1000);
    begin
        select
            id,
            note_page,
            page_item
        into
            l_tip_notifikacije_id,
            l_note_page,
            l_page_item
        from
            sif.sif_tipovi_notifikacija
        where
            lower(sifra) = lower(p_sifra);

        select
            id
        into l_korisnik_id
        from
            korisnici
        where
            lower(korisnicko_ime) = lower(p_user_name);

        -- Insert notifikacije
        l_notifikacija_id := insert_notifikacija(
            p_tip_notifikacije_id => l_tip_notifikacije_id,
            p_korisnik_id         => l_korisnik_id,
            p_note_header         => p_title,
            p_note_text           => p_body
        );

        l_url := apex_util.host_url
                 || apex_page.get_url(
            p_page    => l_note_page,
            p_items   => l_page_item,
            p_values  => l_notifikacija_id,
            p_request => 'notification'
        );

        dbms_output.put_line(l_url);

        -- Slanje PWA notifikacije
        apex_pwa.send_push_notification(
            p_application_id => p_application_id,
            p_user_name      => p_user_name,
            p_title          => p_title,
            p_body           => p_body
--            p_target_url     => l_url
        );

    end send_notification;

    procedure read_notification (
        p_id in number
    ) is
    begin
        update korisnik_notifikacije
        set
            read = 'Y'
        where
            id = p_id;

    end read_notification;

    procedure read_all_notification (
        p_user_id in number
    ) is
    begin
        update korisnik_notifikacije
        set
            read = 'Y'
        where
            korisnik_id = p_user_id;

    end read_all_notification;
    
    /*stefanl 21.10.2026 dodavanje notifikacije za sluzbeni put za sekretaricu */
    
        procedure send_notification_sekretarice (
        p_application_id in number default null,
        p_sifra          in varchar2,
        p_user_name      in varchar2,
        p_title          in varchar2,
        p_body           in varchar2
    ) is
    begin
        for s in (
            select sk.korisnicko_ime
              from korisnik_sekretarice ks
              join korisnici b  on b.id  = ks.korisnik_id
              join korisnici sk on sk.id = ks.sekretarica_id
             where lower(b.korisnicko_ime) = lower(p_user_name)
               and sk.valid = 'Y'
               and sk.id <> b.id
        ) loop
            begin
                send_notification(
                    p_application_id => p_application_id,
                    p_sifra          => p_sifra,
                    p_user_name      => s.korisnicko_ime,
                    p_title          => p_title,
                    p_body           => p_body
                );
            exception
                when others then
                    declare
                        l_e varchar2(50);
                    begin
                        l_e := core.error_manager.f_log_error(
                            pi_module_name     => 'NOTIFIKACIJE_PKG',
                            pi_action_name     => 'send_notification_sekretarice',
                            pi_additional_info => 'sekretarica: ' || s.korisnicko_ime,
                            pi_severity_level  => core.error_manager.c_severity_warning
                        );
                    end;
            end;
        end loop;
    end send_notification_sekretarice;


end notifikacije_pkg;
/

prompt
prompt Creating package body OOJ_PKG
prompt =============================
prompt
create or replace package body core.ooj_pkg as
    
    --------------------------------------------------------------
    -- procedures for table OOJ
    --------------------------------------------------------------
    
        --djordjije 08.01.2026--
    function valid_date_op (p_date in date,p_id in number) return varchar2 is
      l_valid varchar2(1):='Y';
    begin
      for c in (select *
                from ooj
                where id=p_id)
      loop
         
          if c.period_zakljucan_do>=p_date then 
            
             l_valid:='N';
             
          end if;
        
      end loop; 
      
      return l_valid;
    
    end;

    procedure get_ooj_name (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                naziv
            from
                ooj
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_ooj_name;

    procedure get_ooj_email (
        p_id    in number,
        p_email out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj
            where
                id = p_id
        ) loop
            p_email := c1.email;
        end loop;
    end get_ooj_email;

    function get_ooj_entitet_id (
        p_ooj_id in number
    ) return number is
    begin
        for c1 in (
            select
                entitet_id
            from
                vw_ooj
            where
                id = p_ooj_id
        ) loop
            return c1.entitet_id;
        end loop;

        return null;
    end get_ooj_entitet_id;

    function get_tip_cijene (
        p_ooj_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                tip_cijene
            from
                ooj
            where
                id = p_ooj_id
        ) loop
            return c1.tip_cijene;
        end loop;

        return null;
    end get_tip_cijene;
    
    function get_ooj_pdv_sistem (
        p_ooj_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                pdv_sistem
            from
                ooj
            where
                id = p_ooj_id
        ) loop
            return c1.pdv_sistem;
        end loop;

        return null;
    end get_ooj_pdv_sistem; 


    procedure get_ooj (
        p_id                  in number,
        p_firma_id            out number,
        p_grad_id             out number,
        p_naziv               out varchar2,
        p_adresa              out varchar2,
        p_zip                 out varchar2,
        p_tel                 out varchar2,
        p_fax                 out varchar2,
        p_email               out varchar2,
        p_jib                 out varchar2,
        p_pib                 out varchar2,
        p_lat                 out number,
        p_lng                 out number,
        p_mbs                 out varchar2,
        p_mb                  out varchar2,
        p_pdv_sistem          out varchar2,
        p_rjesenje            out varchar2,
        p_broj_rjesenja       out varchar2,
        p_datum_rjesenja      out date,
        p_izdavaoc_rjesenja   out varchar2,
        p_konto_duzina        out number,
        p_period_zakljucan_do out date,
        p_djelatnost          out varchar2,
        p_valid               out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj
            where
                id = p_id
        ) loop
            p_firma_id := c1.firma_id;
            p_grad_id := c1.grad_id;
            p_naziv := c1.naziv;
            p_adresa := c1.adresa;
            p_zip := c1.zip;
            p_tel := c1.tel;
            p_fax := c1.fax;
            p_email := c1.email;
            p_jib := c1.jib;
            p_pib := c1.pib;
            p_lat := c1.lat;
            p_lng := c1.lng;
            p_mbs := c1.mbs;
            p_mb := c1.mb;
            p_pdv_sistem := c1.pdv_sistem;
            p_rjesenje := c1.rjesenje;
            p_broj_rjesenja := c1.broj_rjesenja;
            p_datum_rjesenja := c1.datum_rjesenja;
            p_izdavaoc_rjesenja := c1.izdavaoc_rjesenja;
            p_konto_duzina := c1.konto_duzina;
            p_period_zakljucan_do := c1.period_zakljucan_do;
            p_djelatnost := c1.djelatnost;
            p_valid := c1.valid;
        end loop;
    end get_ooj;

    procedure get_ooj (
        p_id                  in number,
        p_mbs                 out varchar2,
        p_mb                  out varchar2,
        p_pdv_sistem          out varchar2,
        p_rjesenje            out varchar2,
        p_broj_rjesenja       out varchar2,
        p_datum_rjesenja      out date,
        p_izdavaoc_rjesenja   out varchar2,
        p_konto_duzina        out number,
        p_period_zakljucan_do out date,
        p_tip_cijene          out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj
            where
                id = p_id
        ) loop
            p_mbs := c1.mbs;
            p_mb := c1.mb;
            p_pdv_sistem := c1.pdv_sistem;
            p_rjesenje := c1.rjesenje;
            p_broj_rjesenja := c1.broj_rjesenja;
            p_datum_rjesenja := c1.datum_rjesenja;
            p_izdavaoc_rjesenja := c1.izdavaoc_rjesenja;
            p_konto_duzina := c1.konto_duzina;
            p_period_zakljucan_do := c1.period_zakljucan_do;
            p_tip_cijene := c1.tip_cijene;
        end loop;
    end get_ooj;

    procedure get_ooj (
        p_id                         in number,
        p_export_id                  out number,
        p_import_id                  out number,
        p_import_data_load_static_id out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj
            where
                id = p_id
        ) loop
            p_export_id := c1.export_id;
            p_import_id := c1.import_id;
            p_import_data_load_static_id := c1.import_data_load_static_id;
        end loop;
    end get_ooj;

    -- Za obrasce
    procedure get_ooj (
        p_ooj_id         in number,
        p_naziv          out varchar2,
        p_odgovorno_lice out varchar2,
        p_adresa         out varchar2,
        p_grad_naziv     out varchar2,
        p_zip            out varchar2,
        p_tel            out varchar2,
        p_fax            out varchar2,
        p_jib            out varchar2,
        p_pib            out varchar2,
        p_mbs            out varchar2,
        p_mb             out varchar2
    ) is
    begin
        for c1 in (
            select
                naziv,
                firma_odgovorno_lice,
                adresa,
                grad_naziv,
                zip,
                tel,
                fax,
                jib,
                pib,
                mbs,
                mb
            from
                vw_ooj
            where
                id = p_ooj_id
        ) loop
            p_naziv := c1.naziv;
            p_odgovorno_lice := c1.firma_odgovorno_lice;
            p_adresa := c1.adresa;
            p_grad_naziv := c1.grad_naziv;
            p_zip := c1.zip;
            p_tel := c1.tel;
            p_fax := c1.fax;
            p_jib := c1.jib;
            p_pib := c1.pib;
            p_mbs := c1.mbs;
            p_mb := c1.mb;
        end loop;
    end get_ooj;

    procedure insert_ooj (
        p_firma_id          in number,
        p_grad_id           in number,
        p_naziv             in varchar2,
        p_adresa            in varchar2,
        p_zip               in varchar2,
        p_tel               in varchar2,
        p_fax               in varchar2,
        p_email             in varchar2,
        p_jib               in varchar2,
        p_pib               in varchar2,
        p_lat               in number,
        p_lng               in number,
        p_mbs               in varchar2,
        p_mb                in varchar2,
        p_pdv_sistem        in varchar2,
        p_rjesenje          in varchar2,
        p_broj_rjesenja     in varchar2,
        p_datum_rjesenja    in date,
        p_izdavaoc_rjesenja in varchar2,
        p_konto_duzina      in number,
        p_djelatnost        in varchar2
    ) is
    begin
        insert into ooj (
            firma_id,
            grad_id,
            naziv,
            adresa,
            zip,
            tel,
            fax,
            email,
            jib,
            pib,
            lat,
            lng,
            mbs,
            mb,
            pdv_sistem,
            rjesenje,
            broj_rjesenja,
            datum_rjesenja,
            izdavaoc_rjesenja,
            konto_duzina,
            djelatnost
        ) values ( p_firma_id,
                   p_grad_id,
                   p_naziv,
                   p_adresa,
                   p_zip,
                   p_tel,
                   p_fax,
                   p_email,
                   p_jib,
                   p_pib,
                   p_lat,
                   p_lng,
                   p_mbs,
                   p_mb,
                   p_pdv_sistem,
                   p_rjesenje,
                   p_broj_rjesenja,
                   p_datum_rjesenja,
                   p_izdavaoc_rjesenja,
                   p_konto_duzina,
                   p_djelatnost );

    end insert_ooj;

    procedure insert_ooj (
        p_firma_id in number,
        p_grad_id  in number,
        p_naziv    in varchar2,
        p_adresa   in varchar2,
        p_zip      in varchar2,
        p_tel      in varchar2,
        p_fax      in varchar2,
        p_email    in varchar2,
        p_jib      in varchar2,
        p_pib      in varchar2
    ) is
        l_zakljucan_do date := add_months(
            last_day(sysdate),
            -1
        );
    begin
        insert into ooj (
            firma_id,
            grad_id,
            naziv,
            adresa,
            zip,
            tel,
            fax,
            email,
            jib,
            pib,
            period_zakljucan_do
        ) values ( p_firma_id,
                   p_grad_id,
                   p_naziv,
                   p_adresa,
                   p_zip,
                   p_tel,
                   p_fax,
                   p_email,
                   p_jib,
                   p_pib,
                   l_zakljucan_do );

    end insert_ooj;

    procedure update_ooj (
        p_id                  in number,
        p_firma_id            in number,
        p_grad_id             in number,
        p_naziv               in varchar2,
        p_adresa              in varchar2,
        p_zip                 in varchar2,
        p_tel                 in varchar2,
        p_fax                 in varchar2,
        p_email               in varchar2,
        p_jib                 in varchar2,
        p_pib                 in varchar2,
        p_lat                 in number,
        p_lng                 in number,
        p_mbs                 in varchar2,
        p_mb                  in varchar2,
        p_pdv_sistem          in varchar2,
        p_rjesenje            in varchar2,
        p_broj_rjesenja       in varchar2,
        p_datum_rjesenja      in date,
        p_izdavaoc_rjesenja   in varchar2,
        p_konto_duzina        in number,
        p_period_zakljucan_do in date,
        p_djelatnost          in varchar2,
        p_valid               in varchar2
    ) is

        l_count             number;
        l_rjesenje          varchar2(1) := p_rjesenje;
        l_broj_rjesenja     varchar2(255) := p_broj_rjesenja;
        l_datum_rjesenja    date := p_datum_rjesenja;
        l_izdavaoc_rjesenja varchar2(255) := p_izdavaoc_rjesenja;
    begin
        -- Provjera da li ima vazecih organizaconih jedinica pod ovom osnovnom organizacionom jedinicom
        if p_valid = 'N' then
            select
                count(*)
            into l_count
            from
                oj
            where
                    ooj_id = p_id
                and valid = 'Y';

        end if;

        if l_count > 0 then
            raise_application_error(-20002, 'Postoji važeća organizaciona jedninica.');
        end if;

        -- Provjera da li ima vazecih osnovnih organizacionih jedinica (Mora uvijek imati bar jedna osnovna organizaicona jedinica)
        if p_valid = 'N' then
            select
                count(*)
            into l_count
            from
                ooj
            where
                    id <> p_id
                and firma_id = p_firma_id
                and valid = 'Y';

        end if;

        if l_count > 0 then
            raise_application_error(-20002, 'Mora da postoji bar jedna važeća organizaciona jedninica.');
        end if;
        if p_pdv_sistem = 'Y' then
            l_rjesenje := 'N';
        end if;
        if l_rjesenje = 'N' then
            l_broj_rjesenja := null;
            l_datum_rjesenja := null;
            l_izdavaoc_rjesenja := null;
        end if;

        select
            count(*)
        into l_count
        from
            sif.acc_kontni_okvir_klase
        where
                ooj_id = p_id
            and length(code) > p_konto_duzina;

        if l_count > 0 then
            raise_application_error(-20002, 'Već ste otključali konto manje dužine, ne možete staviti manje cifara.');
        end if;
        if p_konto_duzina < 4 then
            raise_application_error(-20002, 'Dužina konta ne može biti manja od 4.');
        end if;
        update ooj
        set
            firma_id = p_firma_id,
            grad_id = p_grad_id,
            naziv = p_naziv,
            adresa = p_adresa,
            zip = p_zip,
            tel = p_tel,
            fax = p_fax,
            email = p_email,
            jib = p_jib,
            pib = p_pib,
            lat = p_lat,
            lng = p_lng,
            mbs = p_mbs,
            mb = p_mb,
            pdv_sistem = p_pdv_sistem,
            rjesenje = l_rjesenje,
            broj_rjesenja = l_broj_rjesenja,
            datum_rjesenja = l_datum_rjesenja,
            izdavaoc_rjesenja = l_izdavaoc_rjesenja,
            konto_duzina = p_konto_duzina,
            period_zakljucan_do = p_period_zakljucan_do,
            djelatnost = p_djelatnost,
            valid = p_valid
        where
            id = p_id;

    end update_ooj;

    procedure update_ooj (
        p_id                  in number,
        p_mbs                 in varchar2,
        p_mb                  in varchar2,
        p_pdv_sistem          in varchar2,
        p_rjesenje            in varchar2,
        p_broj_rjesenja       in varchar2,
        p_datum_rjesenja      in date,
        p_izdavaoc_rjesenja   in varchar2,
        p_konto_duzina        in number,
        p_period_zakljucan_do in date,
        p_tip_cijene          in varchar2
    ) is

        l_count             number;
        l_rjesenje          varchar2(1) := p_rjesenje;
        l_broj_rjesenja     varchar2(255) := p_broj_rjesenja;
        l_datum_rjesenja    date := p_datum_rjesenja;
        l_izdavaoc_rjesenja varchar2(255) := p_izdavaoc_rjesenja;
    begin
        if p_pdv_sistem = 'Y' then
            l_rjesenje := 'N';
        end if;
        if l_rjesenje = 'N' then
            l_broj_rjesenja := null;
            l_datum_rjesenja := null;
            l_izdavaoc_rjesenja := null;
        end if;

        select
            count(*)
        into l_count
        from
            sif.acc_kontni_okvir_klase
        where
                ooj_id = p_id
            and length(code) > p_konto_duzina;

        if l_count > 0 then
            raise_application_error(-20002, 'Već ste otključali konto manje dužine, ne možete staviti manje cifara.');
        end if;
        if p_konto_duzina < 4 then
            raise_application_error(-20002, 'Dužina konta ne može biti manja od 4.');
        end if;
        update ooj
        set
            mbs = p_mbs,
            mb = p_mb,
            pdv_sistem = p_pdv_sistem,
            rjesenje = l_rjesenje,
            broj_rjesenja = l_broj_rjesenja,
            datum_rjesenja = l_datum_rjesenja,
            izdavaoc_rjesenja = l_izdavaoc_rjesenja,
            konto_duzina = p_konto_duzina,
            period_zakljucan_do = p_period_zakljucan_do,
            tip_cijene = p_tip_cijene
        where
            id = p_id;

    end update_ooj;

    procedure update_ooj (
        p_id                         in number,
        p_export_id                  in number,
        p_import_id                  in number,
        p_import_data_load_static_id in varchar2
    ) is
    begin
        update ooj
        set
            export_id = p_export_id,
            import_id = p_import_id,
            import_data_load_static_id = p_import_data_load_static_id
        where
            id = p_id;

    end update_ooj;

    procedure lock_ooj (
        p_id                  in number,
        p_period_zakljucan_do in date
    ) is
    begin
        update ooj
        set
            period_zakljucan_do = p_period_zakljucan_do
        where
            id = p_id;

    end lock_ooj;

    function get_konto_duzina (
        p_id in number
    ) return number is
    begin
        for c1 in (
            select
                konto_duzina
            from
                ooj
            where
                id = p_id
        ) loop
            return c1.konto_duzina;
        end loop;

        return null;
    end get_konto_duzina;

    -- Accounting
    procedure get_ooj_data_load (
        p_ooj_id                    in number,
        p_data_load_kif_static_id   out varchar2,
        p_data_load_kif_before      out number,
        p_data_load_kif_after       out number,
        p_data_load_kif_date_format out varchar2,
        p_data_load_kuf_static_id   out varchar2,
        p_data_load_kuf_before      out number,
        p_data_load_kuf_after       out number,
        p_data_load_kuf_date_format out varchar2
    ) is
    begin
        for c1 in (
            select
                data_load_kif_static_id,
                data_load_kif_before,
                data_load_kif_after,
                data_load_kif_date_format,
                data_load_kuf_static_id,
                data_load_kuf_before,
                data_load_kuf_after,
                data_load_kuf_date_format
            from
                ooj
            where
                id = p_ooj_id
        ) loop
            p_data_load_kif_static_id := c1.data_load_kif_static_id;
            p_data_load_kif_before := c1.data_load_kif_before;
            p_data_load_kif_after := c1.data_load_kif_after;
            p_data_load_kif_date_format := c1.data_load_kif_date_format;
            p_data_load_kuf_static_id := c1.data_load_kuf_static_id;
            p_data_load_kuf_before := c1.data_load_kuf_before;
            p_data_load_kuf_after := c1.data_load_kuf_after;
            p_data_load_kuf_date_format := c1.data_load_kuf_date_format;
        end loop;
    end get_ooj_data_load;

    function get_ooj_data_load_status (
        p_ooj_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                data_load_status_sifra
            from
                vw_ooj
            where
                id = p_ooj_id
        ) loop
            return c1.data_load_status_sifra;
        end loop;

        return null;
    end get_ooj_data_load_status;

    procedure upload_data_load_example (
        p_ooj_id      in number,
        p_kif_example in varchar2,
        p_kuf_example in varchar2
    ) is

        l_kif_blob     blob;
        l_kif_filename varchar2(255);
        l_kif_mimetype varchar2(255);
        l_kuf_blob     blob;
        l_kuf_filename varchar2(255);
        l_kuf_mimetype varchar2(255);
        l_status_id    number := sif.sif_pkg.get_status_id('obrada');
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_kif_example,
            p_blob          => l_kif_blob,
            p_filename      => l_kif_filename,
            p_mimetype      => l_kif_mimetype
        );

        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_kuf_example,
            p_blob          => l_kuf_blob,
            p_filename      => l_kuf_filename,
            p_mimetype      => l_kuf_mimetype
        );

        update ooj
        set
            data_load_kif_example = l_kif_blob,
            data_load_kif_example_filename = l_kif_filename,
            data_load_kif_example_mimetype = l_kif_mimetype,
            data_load_kuf_example = l_kuf_blob,
            data_load_kuf_example_filename = l_kuf_filename,
            data_load_kuf_example_mimetype = l_kuf_mimetype,
            data_load_status_id = l_status_id
        where
            id = p_ooj_id;

    end upload_data_load_example;

    procedure update_data_load (
        p_ooj_id                    in number,
        p_data_load_status_id       in number,
        p_data_load_kif_static_id   in varchar2,
        p_data_load_kif_before      in number,
        p_data_load_kif_after       in number,
        p_data_load_kif_date_format in varchar2,
        p_data_load_kuf_static_id   in varchar2,
        p_data_load_kuf_before      in number,
        p_data_load_kuf_after       in number,
        p_data_load_kuf_date_format in varchar2
    ) is
    begin
        update ooj
        set
            data_load_status_id = p_data_load_status_id,
            data_load_kif_static_id = p_data_load_kif_static_id,
            data_load_kif_before = p_data_load_kif_before,
            data_load_kif_after = p_data_load_kif_after,
            data_load_kif_date_format = p_data_load_kif_date_format,
            data_load_kuf_static_id = p_data_load_kuf_static_id,
            data_load_kuf_before = p_data_load_kuf_before,
            data_load_kuf_after = p_data_load_kuf_after,
            data_load_kuf_date_format = p_data_load_kuf_date_format
        where
            id = p_ooj_id;

    end update_data_load;

    --------------------------------------------------------------
    -- procedures for table OJ
    --------------------------------------------------------------

    procedure get_oj (
        p_id          in number,
        p_ooj_id      out number,
        p_parent_id   out number,
        p_naziv       out varchar2,
        p_lat         out number,
        p_lng         out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                oj
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_parent_id := c1.parent_id;
            p_naziv := c1.naziv;
            p_lat := c1.lat;
            p_lng := c1.lng;
            p_valid := c1.valid;
        end loop;
    end get_oj;

    procedure insert_oj (
        p_ooj_id    in number,
        p_parent_id in number,
        p_naziv     in varchar2,
        p_lat       in number,
        p_lng       in number
    ) is
    begin
        insert into oj (
            ooj_id,
            parent_id,
            naziv,
            lat,
            lng
        ) values ( p_ooj_id,
                   p_parent_id,
                   p_naziv,
                   p_lat,
                   p_lng );

    end insert_oj;

    procedure update_oj (
        p_id        in number,
        p_ooj_id    in number,
        p_parent_id in number,
        p_naziv     in varchar2,
        p_lat       in number,
        p_lng       in number,
        p_valid     in varchar2
    ) is
    begin
        update oj
        set
            ooj_id = p_ooj_id,
            parent_id = p_parent_id,
            naziv = p_naziv,
            lat = p_lat,
            lng = p_lng,
            valid = p_valid
        where
            id = p_id;

    end update_oj;

    procedure delete_oj (
        p_id in number
    ) is
    begin
        delete from oj
        where
            id = p_id;

    end delete_oj;

    --------------------------------------------------------------
    -- procedures for table OOJ_BANKE
    --------------------------------------------------------------

    procedure get_ooj_banka (
        p_id              in number,
        p_ooj_id          out number,
        p_banka_id        out number,
        p_kontna_klasa_id out number,
        p_ziro_racun      out varchar2,
        p_za_plate        out varchar2,
        p_valid           out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj_banke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_banka_id := c1.banka_id;
            p_kontna_klasa_id := c1.kontna_klasa_id;
            p_ziro_racun := c1.ziro_racun;
            p_za_plate := c1.za_plate;
            p_valid := c1.valid;
        end loop;
    end get_ooj_banka;

    procedure insert_ooj_banka (
        p_ooj_id          in number,
        p_banka_id        in number,
        p_kontna_klasa_id in number,
        p_ziro_racun      in varchar2,
        p_za_plate        in varchar2
    ) is
        l_id    number;
        l_count number;
    begin
        insert into ooj_banke (
            ooj_id,
            banka_id,
            kontna_klasa_id,
            ziro_racun,
            za_plate
        ) values ( p_ooj_id,
                   p_banka_id,
                   p_kontna_klasa_id,
                   p_ziro_racun,
                   p_za_plate ) returning id into l_id;

        if p_za_plate = 'Y' then
            update ooj_banke
            set
                za_plate = 'N'
            where
                id != l_id;

        else
            select
                count(*)
            into l_count
            from
                ooj_banke
            where
                za_plate = 'Y';

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu banku za isplatu plata.');
            end if;
        end if;

    end insert_ooj_banka;

    procedure update_ooj_banka (
        p_id              in number,
        p_ooj_id          in number,
        p_banka_id        in number,
        p_kontna_klasa_id in number,
        p_ziro_racun      in varchar2,
        p_za_plate        in varchar2,
        p_valid           in varchar2
    ) is
        l_count number;
    begin
        update ooj_banke
        set
            ooj_id = p_ooj_id,
            banka_id = p_banka_id,
            kontna_klasa_id = p_kontna_klasa_id,
            ziro_racun = p_ziro_racun,
            za_plate = p_za_plate,
            valid = p_valid
        where
            id = p_id;

        if p_za_plate = 'Y' then
            update ooj_banke
            set
                za_plate = 'N'
            where
                    id != p_id
                and ooj_id = p_ooj_id;

        else
            select
                count(*)
            into l_count
            from
                ooj_banke
            where
                    za_plate = 'Y'
                and ooj_id = p_ooj_id;

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu banku za isplatu plata.');
            end if;
        end if;

    end update_ooj_banka;

    procedure delete_ooj_banka (
        p_id in number
    ) is
        l_za_plate varchar2(1);
    begin
        select
            za_plate
        into l_za_plate
        from
            ooj_banke
        where
            id = p_id;

        if l_za_plate = 'Y' then
            raise_application_error(-20001, 'Ne možete obrisati račun za isplatu plata.');
        end if;
        delete from ooj_banke
        where
            id = p_id;

    end delete_ooj_banka;

    function get_za_plate_banka_id (
        p_ooj_id in number
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                ooj_banke
            where
                    ooj_id = p_ooj_id
                and za_plate = 'Y'
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_za_plate_banka_id;

    function get_ziro_racun_za_plate (
        p_ooj_banka_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                ziro_racun
            from
                ooj_banke
            where
                    id = p_ooj_banka_id
                and za_plate = 'Y'
        ) loop
            return c1.ziro_racun;
        end loop;

        return null;
    end get_ziro_racun_za_plate;

    function get_banka_za_plate (
        p_ooj_banka_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                banka_naziv
            from
                vw_ooj_banke
            where
                    id = p_ooj_banka_id
                and za_plate = 'Y'
        ) loop
            return c1.banka_naziv;
        end loop;

        return null;
    end get_banka_za_plate;
    
    
    ------------------------------------------------------
    --procedure i funkcije fezane za tabelu sif.sif_ziro_racuni
    --djordjije ristanovic 10.07.2026 --
    ------------------------------------------------------
    
    procedure get_ziro_racun (
        p_id               in  number,
        p_ooj_id           out number,
        p_banka_id         out number,
        p_sifra            out varchar2,
        p_broj             out varchar2,
        p_opis             out varchar2,
        p_valuta_id        out number,
        p_kontna_klasa_id  out number,
        p_vrsta_naloga_id  out number, 
        p_valid out varchar2
    ) is
    begin
        select ooj_id,
               banka_id,
               sifra,
               broj,
               opis,
               valuta_id,
               kontna_klasa_id,
               vrsta_naloga_id, 
               valid
          into p_ooj_id,
               p_banka_id,
               p_sifra,
               p_broj,
               p_opis,
               p_valuta_id,
               p_kontna_klasa_id,
               p_vrsta_naloga_id, 
               p_valid
          from sif.sif_ziro_racuni
         where id = p_id;
    exception
        when no_data_found then
            p_ooj_id          := null;
            p_banka_id        := null;
            p_sifra           := null;
            p_broj            := null;
            p_opis            := null;
            p_valuta_id       := null;
            p_kontna_klasa_id := null;
            p_vrsta_naloga_id := null;
            p_valid :=null;
    end get_ziro_racun;


    procedure insert_ziro_racun (
        p_ooj_id           in number,
        p_banka_id         in number,
        p_sifra            in varchar2,
        p_broj             in varchar2,
        p_opis             in varchar2,
        p_valuta_id        in number,
        p_kontna_klasa_id  in number,
        p_vrsta_naloga_id  in number, 
        p_valid            in varchar2,
        p_id               out number
    ) is
    begin
        insert into sif.sif_ziro_racuni (
            ooj_id,
            banka_id,
            sifra,
            broj,
            opis,
            valuta_id,
            kontna_klasa_id,
            vrsta_naloga_id, 
            valid
        ) values (
            p_ooj_id,
            p_banka_id,
            p_sifra,
            p_broj,
            p_opis,
            p_valuta_id,
            p_kontna_klasa_id,
            p_vrsta_naloga_id, 
            p_valid
        )
        returning id into p_id;
    end insert_ziro_racun;


    procedure update_ziro_racun (
        p_id               in number,
        p_ooj_id           in number,
        p_banka_id         in number,
        p_sifra            in varchar2,
        p_broj             in varchar2,
        p_opis             in varchar2,
        p_valuta_id        in number,
        p_kontna_klasa_id  in number,
        p_vrsta_naloga_id  in number, 
        p_valid            in varchar2
        
    ) is
    begin
        update sif.sif_ziro_racuni
           set ooj_id           = p_ooj_id,
               banka_id         = p_banka_id,
               sifra            = p_sifra,
               broj             = p_broj,
               opis             = p_opis,
               valuta_id        = p_valuta_id,
               kontna_klasa_id  = p_kontna_klasa_id,
               vrsta_naloga_id  = p_vrsta_naloga_id, 
               valid = p_valid
         where id = p_id;
    end update_ziro_racun;


    procedure delete_ziro_racun (
        p_id in number
    ) is
    begin
        delete from sif.sif_ziro_racuni
         where id = p_id;
    end delete_ziro_racun;

    --------------------------------------------------------------
    -- procedures for table OOJ_LOKACIJE
    --------------------------------------------------------------

    procedure get_lokacija (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_adresa out varchar2,
        p_lat    out number,
        p_lng    out number,
        p_valid  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj_lokacije
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_adresa := c1.adresa;
            p_lat := c1.lat;
            p_lng := c1.lng;
            p_valid := c1.valid;
        end loop;
    end get_lokacija;

    procedure insert_lokacija (
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_adresa in varchar2,
        p_lat    in number,
        p_lng    in number
    ) is
    begin
        insert into ooj_lokacije (
            ooj_id,
            naziv,
            adresa,
            lat,
            lng
        ) values ( p_ooj_id,
                   p_naziv,
                   p_adresa,
                   p_lat,
                   p_lng );

    end insert_lokacija;

    procedure update_lokacija (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_adresa in varchar2,
        p_lat    in number,
        p_lng    in number,
        p_valid  in varchar2
    ) is
    begin
        update ooj_lokacije
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            adresa = p_adresa,
            lat = p_lat,
            lng = p_lng,
            valid = p_valid
        where
            id = p_id;

    end update_lokacija;

    procedure delete_lokacija (
        p_id in number
    ) is
    begin
        delete from ooj_lokacije
        where
            id = p_id;

    end delete_lokacija;

    --------------------------------------------------------------
    -- procedures for table OOJ_LOKACIJA_PROSTORIJE
    --------------------------------------------------------------

    procedure get_lokacija_prostorija (
        p_id          in number,
        p_lokacija_id out number,
        p_broj        out number,
        p_naziv       out varchar2,
        p_valid       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj_lokacija_prostorije
            where
                id = p_id
        ) loop
            p_lokacija_id := c1.lokacija_id;
            p_broj := c1.broj;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        end loop;
    end get_lokacija_prostorija;

    procedure get_lokacija_prostorija (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                ooj_lokacija_prostorije
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_lokacija_prostorija;

    procedure insert_lokacija_prostorija (
        p_lokacija_id in number,
        p_broj        in number,
        p_naziv       in varchar2
    ) is
    begin
        insert into ooj_lokacija_prostorije (
            lokacija_id,
            broj,
            naziv
        ) values ( p_lokacija_id,
                   p_broj,
                   p_naziv );

    end insert_lokacija_prostorija;

    procedure update_lokacija_prostorija (
        p_id          in number,
        p_lokacija_id in number,
        p_broj        in number,
        p_naziv       in varchar2,
        p_valid       in varchar2
    ) is
    begin
        update ooj_lokacija_prostorije
        set
            lokacija_id = p_lokacija_id,
            broj = p_broj,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_lokacija_prostorija;

    procedure delete_lokacija_prostorija (
        p_id in number
    ) is
    begin
        delete from ooj_lokacija_prostorije
        where
            id = p_id;

    end delete_lokacija_prostorija;

    --------------------------------------------------------------
    -- procedures for table EXPORT_IMPORT_LOG
    --------------------------------------------------------------

    procedure insert_import_export_log (
        p_ooj_id      in number,
        p_korisnik_id in number,
        p_tip_id      in number,
        p_datum       in date,
        p_filename    in varchar2
    ) is
    begin
        insert into export_import_log (
            ooj_id,
            korisnik_id,
            tip_id,
            datum,
            filename
        ) values ( p_ooj_id,
                   p_korisnik_id,
                   p_tip_id,
                   p_datum,
                   p_filename );

    end insert_import_export_log;

    --------------------------------------------------------------
    -- procedures for table OOJ_VIZITKE
    --------------------------------------------------------------
    
    procedure get_ooj_vizitka (
        p_ooj_id             in number,
        p_id                 out number,
        p_firma_logo         out varchar2,
        p_firma_logo_height  out varchar2,
        p_radnik_logo        out varchar2,
        p_radnik_logo_shape  out varchar2,
        p_radnik_logo_height out varchar2,
        p_radno_mjesto       out varchar2,
        p_telefon            out varchar2,
        p_email              out varchar2,
        p_website            out varchar2,
        p_adresa             out varchar2,
        p_facebook           out varchar2,
        p_instagram          out varchar2,
        p_linkedin           out varchar2,
        p_twitter            out varchar2,
        p_youtube            out varchar2,
        p_accent_color       out varchar2,
        p_color              out varchar2,
        p_background_color   out varchar2,
        p_valid              out varchar2
    ) is
    begin
        for c1 in (
            select
                id,
                firma_logo,
                firma_logo_height,
                radnik_logo,
                radnik_logo_shape,
                radnik_logo_height,
                radno_mjesto,
                telefon,
                email,
                website,
                adresa,
                facebook,
                instagram,
                linkedin,
                twitter,
                youtube,
                accent_color,
                color,
                background_color,
                valid
            from
                ooj_vizitke
            where
                ooj_id = p_ooj_id
        ) loop
            p_id := c1.id; 
            p_firma_logo := c1.firma_logo; 
            p_firma_logo_height := c1.firma_logo_height; 
            p_radnik_logo := c1.radnik_logo; 
            p_radnik_logo_shape := c1.radnik_logo_shape; 
            p_radnik_logo_height := c1.radnik_logo_height; 
            p_radno_mjesto := c1.radno_mjesto; 
            p_telefon := c1.telefon; 
            p_email := c1.email; 
            p_website := c1.website; 
            p_adresa := c1.adresa; 
            p_facebook := c1.facebook; 
            p_instagram := c1.instagram; 
            p_linkedin := c1.linkedin; 
            p_twitter := c1.twitter; 
            p_youtube := c1.youtube; 
            p_accent_color := c1.accent_color; 
            p_color := c1.color; 
            p_background_color := c1.background_color; 
            p_valid := c1.valid; 
        end loop;
    end get_ooj_vizitka;

    procedure insert_ooj_vizitka (
        p_ooj_id             in number,
        p_firma_logo         in varchar2,
        p_firma_logo_height  in varchar2,
        p_radnik_logo        in varchar2,
        p_radnik_logo_shape  in varchar2,
        p_radnik_logo_height in varchar2,
        p_radno_mjesto       in varchar2,
        p_telefon            in varchar2,
        p_email              in varchar2,
        p_website            in varchar2,
        p_adresa             in varchar2,
        p_facebook           in varchar2,
        p_instagram          in varchar2,
        p_linkedin           in varchar2,
        p_twitter            in varchar2,
        p_youtube            in varchar2,
        p_accent_color       in varchar2,
        p_color              in varchar2,
        p_background_color   in varchar2,
        p_background         in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_background,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into ooj_vizitke (
            ooj_id,
            firma_logo,
            firma_logo_height,
            radnik_logo,
            radnik_logo_shape,
            radnik_logo_height,
            radno_mjesto,
            telefon,
            email,
            website,
            adresa,
            facebook,
            instagram,
            linkedin,
            twitter,
            youtube,
            accent_color,
            color,
            background_color,
            background,
            background_mimetype,
            background_filename,
            background_lastupd
        ) values (
            p_ooj_id,
            p_firma_logo,
            p_firma_logo_height,
            p_radnik_logo,
            p_radnik_logo_shape,
            p_radnik_logo_height,
            p_radno_mjesto,
            p_telefon,
            p_email,
            p_website,
            p_adresa,
            p_facebook,
            p_instagram,
            p_linkedin,
            p_twitter,
            p_youtube,
            p_accent_color,
            p_color,
            p_background_color,
            l_blob,
            l_mimetype,
            l_filename,
            sysdate 
        );

    end insert_ooj_vizitka;

    procedure update_ooj_vizitka (
        p_id                 in number,
        p_ooj_id             in number,
        p_firma_logo         in varchar2,
        p_firma_logo_height  in varchar2,
        p_radnik_logo        in varchar2,
        p_radnik_logo_shape  in varchar2,
        p_radnik_logo_height in varchar2,
        p_radno_mjesto       in varchar2,
        p_telefon            in varchar2,
        p_email              in varchar2,
        p_website            in varchar2,
        p_adresa             in varchar2,
        p_facebook           in varchar2,
        p_instagram          in varchar2,
        p_linkedin           in varchar2,
        p_twitter            in varchar2,
        p_youtube            in varchar2,
        p_accent_color       in varchar2,
        p_color              in varchar2,
        p_background_color   in varchar2,
        p_background         in varchar2,
        p_valid              in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_background is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_background,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update ooj_vizitke
            set
                ooj_id = p_ooj_id,
                firma_logo = p_firma_logo,
                firma_logo_height = p_firma_logo_height,
                radnik_logo = p_radnik_logo,
                radnik_logo_shape = p_radnik_logo_shape,
                radnik_logo_height = p_radnik_logo_height,
                radno_mjesto = p_radno_mjesto,
                telefon = p_telefon,
                email = p_email,
                website = p_website,
                adresa = p_adresa,
                facebook = p_facebook,
                instagram = p_instagram,
                linkedin = p_linkedin,
                twitter = p_twitter,
                youtube = p_youtube,
                accent_color = p_accent_color,
                color = p_color,
                background_color = p_background_color,
                background = l_blob,
                background_filename = l_filename,
                background_mimetype = l_mimetype,
                background_lastupd = sysdate,
                valid = p_valid
            where
                id = p_id;

        else
            update ooj_vizitke
            set
                ooj_id = p_ooj_id,
                firma_logo = p_firma_logo,
                firma_logo_height = p_firma_logo_height,
                radnik_logo = p_radnik_logo,
                radnik_logo_shape = p_radnik_logo_shape,
                radnik_logo_height = p_radnik_logo_height,
                radno_mjesto = p_radno_mjesto,
                telefon = p_telefon,
                email = p_email,
                website = p_website,
                adresa = p_adresa,
                facebook = p_facebook,
                instagram = p_instagram,
                linkedin = p_linkedin,
                twitter = p_twitter,
                youtube = p_youtube,
                accent_color = p_accent_color,
                color = p_color,
                background_color = p_background_color,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_ooj_vizitka;

    procedure delete_ooj_vizitka (
        p_id in number
    ) is
    begin
        delete from ooj_vizitke
        where
            id = p_id;

    end delete_ooj_vizitka;

end ooj_pkg;
/

prompt
prompt Creating package body PM_PKG
prompt ============================
prompt
CREATE OR REPLACE PACKAGE BODY CORE.pm_pkg IS

    -- Encrypt/Decrypt
    FUNCTION derive_aes_key (
        p_ooj_id   IN NUMBER,
        p_password IN RAW
    ) RETURN RAW IS
        l_salt RAW(64);
        l_raw RAW(2000);
        l_hash RAW(2000); 
    BEGIN
        apex_debug.message('derive_aes_key');
        apex_debug.message('p_ooj_id: ' || p_ooj_id);
        apex_debug.message('p_password: ' || p_password);
        
        SELECT
            utl_raw.substr(password, 1, 64)
        INTO
            l_salt
        FROM
            ooj
        WHERE
            id = p_ooj_id;
        
        l_raw := utl_i18n.string_to_raw(p_password, 'UTF8');
    
        -- SHA-512(password + salt)
        l_hash := dbms_crypto.hash(
            src => l_raw || l_salt,
            typ => dbms_crypto.hash_sh512
        );
    
        -- AES-256 key = first 32 bytes of SHA-512
        RETURN utl_raw.substr(l_hash, 1, 32);
    
    END derive_aes_key;
    
    PROCEDURE aes_encrypt (
        p_data   IN VARCHAR2,
        p_key    IN RAW,
        p_cipher OUT RAW,
        p_iv     OUT RAW
    ) IS
    BEGIN
        p_iv := dbms_crypto.randombytes(16);
        
        p_cipher := dbms_crypto.encrypt(
            src => utl_i18n.string_to_raw(p_data, 'UTF8'),
            typ => DBMS_CRYPTO.AES_CBC_PKCS5,
            key => p_key,
            iv  => p_iv
        );
        
    END aes_encrypt;
    
    FUNCTION aes_decrypt (
        p_cipher IN RAW,
        p_key    IN RAW,
        p_iv     IN RAW
    ) RETURN VARCHAR2 IS
        l_plain RAW(32767);
    BEGIN
        apex_debug.message('aes_decrypt');
        apex_debug.message('p_cipher: ' || p_cipher);
        apex_debug.message('p_key: ' || p_key);
        apex_debug.message('p_iv: ' || p_iv);
    
        l_plain := dbms_crypto.decrypt(
            src => p_cipher,
            typ => DBMS_CRYPTO.AES_CBC_PKCS5,
            key => p_key,
            iv  => p_iv
        );

        RETURN UTL_I18N.RAW_TO_CHAR(l_plain, 'UTF8');
    
    END aes_decrypt;

    -- OOJ
    function authenticate_ooj (
        p_ooj_id   in number,
        p_password in varchar2
    ) return boolean is
        l_ooj_id number;
    begin
        select
            id
        into
            l_ooj_id
        from
            ooj
        where
            id = p_ooj_id
            and password = korisnik_pkg.get_hash(p_ooj_id, p_password, utl_raw.substr(password, 1, 64))
            and valid = 'Y';
            
        return true;
    
    exception
        when others then
            return false;
    end authenticate_ooj;
    
    function setup_ooj_password (
        p_ooj_id   in number,
        p_password in varchar2
    ) return varchar2 is
        l_password raw(2000) := korisnik_pkg.get_hash(p_ooj_id, p_password);
    begin
        update ooj set
            password = l_password
        where
            id = p_ooj_id;
            
        return UTL_I18N.STRING_TO_RAW(l_password, 'UTF8');

    end setup_ooj_password;
    
    -- Sabloni
    PROCEDURE get_sablon (
        p_id     IN NUMBER,
        p_ooj_id OUT NUMBER,
        p_naziv  OUT VARCHAR2,
        p_valid  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_sabloni
            WHERE
                id = p_id
        ) LOOP
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        END LOOP;
    END get_sablon;

    FUNCTION insert_sablon (
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    ) RETURN NUMBER IS
        l_id NUMBER;
    BEGIN
        INSERT INTO pm_sabloni (
            ooj_id,
            naziv
        ) VALUES (
            p_ooj_id,
            p_naziv
        ) RETURNING id INTO l_id;
        
        RETURN l_id;

    END insert_sablon;

    PROCEDURE update_sablon (
        p_id     IN NUMBER,
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2,
        p_valid  IN VARCHAR2
    ) IS
    BEGIN
        UPDATE pm_sabloni
        SET
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_sablon;

    PROCEDURE delete_sablon (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_sabloni
        WHERE
            id = p_id;

    END delete_sablon;

    -- Sablon polja
    PROCEDURE generate_sablon_polja_collection (
        p_sablon_id IN NUMBER,
        p_page_id   IN NUMBER
    ) IS
        /*

            c001 - item_name
            c002 - label
            c003 - item_type
            c004 - idx
            c005 - value
            c006 - options_display (separated by :)
            c007 - options_return (separated by :)
            c008 - required
            c009 - polje_id

        */
        l_query varchar2(1000);
    begin
        l_query := '
SELECT
    sif.dynamic_pkg.generate_item_name('''
                   || p_page_id
                   || ''', naziv),
    naziv,
    ''INPUT'',
    rownum,
    null,
    null,
    null,
    ''N'',
    id
FROM (
    SELECT
        id,
        naziv
    FROM
        pm_sablon_polja
    WHERE
        sablon_id = '''
                   || p_sablon_id
                   || '''
    ORDER BY
        sequence
)      
        ';
        if apex_collection.collection_exists('PM_SABLON_ITEMS') then
            apex_collection.delete_collection('PM_SABLON_ITEMS');
        end if;
        apex_collection.create_collection_from_query(
            p_collection_name => 'PM_SABLON_ITEMS',
            p_query           => l_query
        );
    
    END generate_sablon_polja_collection;
    
    PROCEDURE update_sablon_polja_sequence (
        p_sablon_id     IN NUMBER,
        p_sequence_list IN VARCHAR2
    ) IS
        l_sequence NUMBER := 1;
    BEGIN
        FOR c1 IN (
            SELECT
                column_value AS polje_id
            FROM
                apex_string.split(p_sequence_list, ':')
        ) LOOP
            UPDATE pm_sablon_polja
            SET
                sequence = l_sequence
            WHERE
                id = c1.polje_id;

            l_sequence := l_sequence + 1;
        END LOOP;
    
    END update_sablon_polja_sequence;

    FUNCTION get_next_sablon_polje_sequence (
        p_sablon_id IN NUMBER
    ) RETURN NUMBER IS
        l_sequence NUMBER;
    BEGIN
        SELECT
            coalesce(
                max(sequence),
                0
            ) + 1
        INTO l_sequence
        FROM
            pm_sablon_polja
        WHERE
            sablon_id = p_sablon_id;

        RETURN l_sequence;
    
    END get_next_sablon_polje_sequence;
    
    PROCEDURE get_sablon_polje (
        p_id        IN NUMBER,
        p_sablon_id OUT NUMBER,
        p_naziv     OUT VARCHAR2,
        p_sequence  OUT NUMBER,
        p_region    OUT VARCHAR2,
        p_tip       OUT VARCHAR2,
        p_valid     OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_sablon_polja
            WHERE
                id = p_id
        ) LOOP
            p_sablon_id := c1.sablon_id;
            p_naziv := c1.naziv;
            p_sequence := c1.sequence;
            p_region := c1.region;
            p_tip := c1.tip;
            p_valid := c1.valid;
        END LOOP;
    END get_sablon_polje;

    PROCEDURE insert_sablon_polje (
        p_sablon_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_sequence  IN NUMBER,
        p_region    IN VARCHAR2,
        p_tip       IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_sablon_polja (
            sablon_id,
            naziv,
            sequence,
            region,
            tip
        ) VALUES (
            p_sablon_id,
            p_naziv,
            p_sequence,
            p_region,
            p_tip
        );

    END insert_sablon_polje;

    PROCEDURE update_sablon_polje (
        p_id        IN NUMBER,
        p_sablon_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_sequence  IN NUMBER,
        p_region    IN VARCHAR2,
        p_tip       IN VARCHAR2,
        p_valid     IN VARCHAR2
    ) IS
    BEGIN
        UPDATE pm_sablon_polja
        SET
            sablon_id = p_sablon_id,
            naziv = p_naziv,
            sequence = p_sequence,
            region = p_region,
            tip = p_tip,
            valid = p_valid
        WHERE
            id = p_id;

    END update_sablon_polje;

    PROCEDURE delete_sablon_polje (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_sablon_polja
        WHERE
            id = p_id;

    END delete_sablon_polje;

    -- Folderi
    PROCEDURE get_folder (
        p_id        IN NUMBER,
        p_ooj_id    OUT NUMBER,
        p_folder_id OUT NUMBER,
        p_naziv     OUT VARCHAR2,
        p_valid     OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_folderi
            WHERE
                id = p_id
        ) LOOP
            p_ooj_id := c1.ooj_id;
            p_folder_id := c1.folder_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        END LOOP;
    END get_folder;

    PROCEDURE insert_folder (
        p_ooj_id    IN NUMBER,
        p_folder_id IN NUMBER,
        p_naziv     IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_folderi (
            ooj_id,
            folder_id,
            naziv
        ) VALUES (
            p_ooj_id,
            p_folder_id,
            p_naziv
        );

    END insert_folder;

    PROCEDURE update_folder (
        p_id        IN NUMBER,
        p_ooj_id    IN NUMBER,
        p_folder_id IN NUMBER,
        p_naziv     IN VARCHAR2,
        p_valid     IN VARCHAR2
    ) IS
    BEGIN
        UPDATE pm_folderi
        SET
            ooj_id = p_ooj_id,
            folder_id = p_folder_id,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_folder;

    PROCEDURE delete_folder (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_folderi
        WHERE
            id = p_id;

    END delete_folder;

    -- Grupe
    PROCEDURE get_grupa (
        p_id     IN NUMBER,
        p_ooj_id OUT NUMBER,
        p_naziv  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_grupe
            WHERE
                id = p_id
        ) LOOP
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
        END LOOP;
    END get_grupa;

    FUNCTION insert_grupa (
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    ) RETURN NUMBER IS
        l_id NUMBER;
    BEGIN
        INSERT INTO pm_grupe (
            ooj_id,
            naziv
        ) VALUES (
            p_ooj_id,
            p_naziv 
        ) RETURNING id INTO l_id;
        
        RETURN l_id;

    END insert_grupa;

    PROCEDURE update_grupa (
        p_id     IN NUMBER,
        p_ooj_id IN NUMBER,
        p_naziv  IN VARCHAR2
    ) IS
    BEGIN
        UPDATE pm_grupe
        SET
            ooj_id = p_ooj_id,
            naziv = p_naziv
        WHERE
            id = p_id;

    END update_grupa;

    PROCEDURE delete_grupa (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_grupa_korisnici
        WHERE
            grupa_id = p_id;
    
        DELETE FROM pm_grupe
        WHERE
            id = p_id;

    END delete_grupa;

    -- Grupa korisnici
    PROCEDURE insert_grupa_korisnici (
        p_grupa_id  IN NUMBER,
        p_korisnici IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_grupa_korisnici (
            grupa_id,
            korisnik_id
        ) 
        SELECT
            p_grupa_id,
            column_value
        FROM
            apex_string.split(p_korisnici, ':');
        
    END insert_grupa_korisnici;

    PROCEDURE delete_grupa_korisnik (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_grupa_korisnici
        WHERE
            id = p_id;

    END delete_grupa_korisnik;

    -- Konekcije
    PROCEDURE get_konekcija (
        p_id                     IN NUMBER,
        p_ooj_id                 OUT NUMBER,
        p_sablon_id              OUT NUMBER,
        p_folder_id              OUT NUMBER,
        p_naziv                  OUT VARCHAR2,
        p_username               OUT VARCHAR2,
        p_password               OUT VARCHAR2,
        p_password_last_changed  OUT DATE,
        p_password_change_period OUT NUMBER,
        p_napomena               OUT VARCHAR2,
        p_master_pw              OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_konekcije
            WHERE
                id = p_id
        ) LOOP
            p_ooj_id := c1.ooj_id;
            p_sablon_id := c1.sablon_id;
            p_folder_id := c1.folder_id;
            p_naziv := c1.naziv;
            p_username := c1.username;
            p_password := c1.password;
            p_password_last_changed := c1.password_last_changed;
            p_password_change_period := c1.password_change_period;
            p_napomena := c1.napomena;
            p_master_pw := c1.master_pw;
        END LOOP;
    END get_konekcija;

    FUNCTION insert_konekcija (
        p_ooj_id                 IN NUMBER,
        p_sablon_id              IN NUMBER,
        p_folder_id              IN NUMBER,
        p_naziv                  IN VARCHAR2,
        p_username               IN VARCHAR2,
        p_password               IN VARCHAR2,
        p_password_change_period IN NUMBER,
        p_napomena               IN VARCHAR2,
        p_master_pw              IN VARCHAR2,
        p_key                    IN RAW
    ) RETURN NUMBER IS
        l_id          NUMBER;
        l_password    RAW(2000);
        l_password_iv RAW(16);
    BEGIN
        aes_encrypt (
            p_data   => p_password,
            p_key    => derive_aes_key(p_ooj_id, p_key),
            p_cipher => l_password,
            p_iv     => l_password_iv
        );
        
        INSERT INTO pm_konekcije (
            ooj_id,
            sablon_id,
            folder_id,
            naziv,
            username,
            password,
            password_iv,
            password_change_period,
            napomena,
            master_pw
        ) VALUES (
            p_ooj_id,
            p_sablon_id,
            p_folder_id,
            p_naziv,
            p_username,
            l_password,
            l_password_iv,
            p_password_change_period,
            p_napomena,
            p_master_pw
        ) RETURNING id INTO l_id;
        
        RETURN l_id;

    END insert_konekcija;

    PROCEDURE update_konekcija (
        p_id                     IN NUMBER,
        p_ooj_id                 IN NUMBER,
        p_sablon_id              IN NUMBER,
        p_folder_id              IN NUMBER,
        p_naziv                  IN VARCHAR2,
        p_username               IN VARCHAR2,
        p_password               IN VARCHAR2,
        p_password_change_period IN NUMBER,
        p_napomena               IN VARCHAR2,
        p_master_pw              IN VARCHAR2,
        p_change_pw              IN VARCHAR2,
        p_key                    IN RAW
    ) IS
        l_old_password VARCHAR2(1000);
        l_password     RAW(2000);
        l_password_iv  RAW(16);
    BEGIN
        IF p_change_pw = 'Y' THEN
            SELECT
                pm_pkg.aes_decrypt (
                    p_cipher => password,
                    p_key    => pm_pkg.derive_aes_key(p_ooj_id, p_key),
                    p_iv     => password_iv
                ) 
            INTO
                l_old_password
            FROM
                pm_konekcije
            WHERE
                id = p_id;
                
            aes_encrypt (
                p_data   => p_password,
                p_key    => derive_aes_key(p_ooj_id, p_key),
                p_cipher => l_password,
                p_iv     => l_password_iv
            );
            
            UPDATE pm_konekcije
            SET
                ooj_id = p_ooj_id,
                sablon_id = p_sablon_id,
                folder_id = p_folder_id,
                naziv = p_naziv,
                username = p_username,
                password = l_password,
                password_iv = l_password_iv,
                password_last_changed = sysdate,
                password_change_period = p_password_change_period,
                napomena = p_napomena,
                master_pw = p_master_pw
            WHERE
                id = p_id;
                
            insert_konekcija_history (
                p_ooj_id       => p_ooj_id,
                p_konekcija_id => p_id,
                p_password     => l_old_password,
                p_datum        => sysdate,
                p_key          => p_key
            );
        ELSE
            UPDATE pm_konekcije
            SET
                ooj_id = p_ooj_id,
                sablon_id = p_sablon_id,
                folder_id = p_folder_id,
                naziv = p_naziv,
                username = p_username,
                password_change_period = p_password_change_period,
                napomena = p_napomena,
                master_pw = p_master_pw
            WHERE
                id = p_id;
        
        END IF;

    END update_konekcija;

    PROCEDURE delete_konekcija (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_konekcije
        WHERE
            id = p_id;

    END delete_konekcija;

    FUNCTION clone_konekcija (
        p_konekcija_id IN NUMBER
    ) RETURN NUMBER IS
        l_clone_id NUMBER;
        r_konekcija pm_konekcije%rowtype;
    BEGIN
        SELECT * INTO r_konekcija FROM pm_konekcije WHERE id = p_konekcija_id;
        
        r_konekcija.id := null;
        r_konekcija.password_last_changed := null;
        r_konekcija.naziv := r_konekcija.naziv || ' - Clone';
        
        INSERT INTO pm_konekcije VALUES r_konekcija RETURNING id INTO l_clone_id;
            
        -- Polja
        INSERT INTO pm_konekcija_polja (
            konekcija_id,
            polje_id,
            vrijednost,
            vrijednost_iv
        )
        SELECT
            l_clone_id,
            polje_id,
            vrijednost,
            vrijednost_iv
        FROM
            pm_konekcija_polja
        WHERE
            konekcija_id = p_konekcija_id;
            
        -- Website
        INSERT INTO pm_konekcija_website (
            konekcija_id,
            url
        )
        SELECT
            l_clone_id,
            url
        FROM
            pm_konekcija_website
        WHERE
            konekcija_id = p_konekcija_id;
        
        -- Pristupi
        INSERT INTO pm_konekcija_pristupi (
            konekcija_id,
            korisnik_id,
            grupa_id
        )
        SELECT
            l_clone_id,
            korisnik_id,
            grupa_id
        FROM
            pm_konekcija_pristupi
        WHERE
            konekcija_id = p_konekcija_id;
        
        -- Dokumenti
        INSERT INTO pm_konekcija_dokumenti (
            konekcija_id,
            dokument,
            dokument_filename,
            dokument_mimetype,
            dokument_lastupd,
            dokument_charset
        )
        SELECT
            l_clone_id,
            dokument,
            dokument_filename,
            dokument_mimetype,
            dokument_lastupd,
            dokument_charset
        FROM
            pm_konekcija_dokumenti
        WHERE
            konekcija_id = p_konekcija_id;
        
        RETURN l_clone_id;
    
    END clone_konekcija;

    -- Konekcija polja
    PROCEDURE get_konekcija_polja_into_collection (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_key          IN RAW
    ) IS
        l_vrijednost VARCHAR2(1000);
    BEGIN
        FOR c1 IN (
            SELECT
                seq_id,
                c009 AS polje_id
            FROM
                apex_collections
            WHERE
                collection_name = 'PM_SABLON_ITEMS'
        ) LOOP
            get_konekcija_polje (
                p_ooj_id       => p_ooj_id,
                p_konekcija_id => p_konekcija_id,
                p_polje_id     => c1.polje_id,
                p_vrijednost   => l_vrijednost,
                p_key          => p_key
            );
            
            apex_collection.update_member_attribute (
                p_collection_name => 'PM_SABLON_ITEMS',
                p_seq             => c1.seq_id,
                p_attr_number     => 5,
                p_attr_value      => l_vrijednost
            );
        
        END LOOP;
    
    END get_konekcija_polja_into_collection;
    
    PROCEDURE get_konekcija_polje (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_polje_id     IN NUMBER,
        p_key          IN RAW,
        p_vrijednost   OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_konekcija_polja
            WHERE
                konekcija_id = p_konekcija_id
                AND polje_id = p_polje_id
        ) LOOP
            p_vrijednost := aes_decrypt (
                p_cipher => c1.vrijednost,
                p_key    => derive_aes_key(p_ooj_id, p_key),
                p_iv     => c1.vrijednost_iv
            );
        END LOOP;
    
    END get_konekcija_polje;
    
    PROCEDURE insert_konekcija_polje (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_polje_id     IN NUMBER,
        p_vrijednost   IN VARCHAR2,
        p_key          IN RAW
    ) IS
        l_vrijednost    RAW(2000);
        l_vrijednost_iv RAW(16);
    BEGIN
        aes_encrypt (
            p_data   => p_vrijednost,
            p_key    => derive_aes_key(p_ooj_id, p_key),
            p_cipher => l_vrijednost,
            p_iv     => l_vrijednost_iv
        );
        
        INSERT INTO pm_konekcija_polja (
            konekcija_id,
            polje_id,
            vrijednost,
            vrijednost_iv
        ) VALUES (
            p_konekcija_id,
            p_polje_id,
            l_vrijednost,
            l_vrijednost_iv
        );

    END insert_konekcija_polje;

    PROCEDURE delete_konekcija_polja (
        p_konekcija_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_konekcija_polja
        WHERE
            konekcija_id = p_konekcija_id;

    END delete_konekcija_polja;

    -- Konekcija website
    PROCEDURE insert_konekcija_website (
        p_konekcija_id IN NUMBER,
        p_url          IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_konekcija_website (
            konekcija_id,
            url
        ) VALUES (
            p_konekcija_id,
            p_url
        );

    END insert_konekcija_website;

    PROCEDURE delete_konekcija_website (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_konekcija_website
        WHERE
            id = p_id;

    END delete_konekcija_website;

    -- Pristupi
    PROCEDURE insert_konekcija_pristup_grupa (
        p_konekcija_id IN NUMBER,
        p_grupa_id     IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_konekcija_pristupi (
            konekcija_id,
            grupa_id
        ) 
        SELECT
            p_konekcija_id,
            column_value
        FROM
            apex_string.split(p_grupa_id, ':');
    
    END insert_konekcija_pristup_grupa;

    PROCEDURE insert_konekcija_pristup_korisnik (
        p_konekcija_id IN NUMBER,
        p_korisnik_id  IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO pm_konekcija_pristupi (
            konekcija_id,
            korisnik_id
        ) 
        SELECT
            p_konekcija_id,
            column_value
        FROM
            apex_string.split(p_korisnik_id, ':');
    
    END insert_konekcija_pristup_korisnik;

    PROCEDURE delete_konekcija_pristup (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_konekcija_pristupi
        WHERE
            id = p_id;

    END delete_konekcija_pristup;

    -- Konekcija dokumenti
    PROCEDURE insert_konekcija_dokumenti (
        p_konekcija_id IN NUMBER,
        p_dokument     IN VARCHAR2
    ) IS
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    BEGIN
        for c1 in (
            select
                column_value as dokument
            from
                apex_string.split(p_dokument, ':')
        ) loop
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => c1.dokument,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            INSERT INTO pm_konekcija_dokumenti (
                konekcija_id,
                dokument,
                dokument_mimetype,
                dokument_filename,
                dokument_lastupd
            ) VALUES (
                p_konekcija_id,
                l_blob,
                l_mimetype,
                l_filename,
                sysdate
            );
        end loop;

    END insert_konekcija_dokumenti;

    PROCEDURE delete_konekcija_dokument (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_konekcija_dokumenti
        WHERE
            id = p_id;

    END delete_konekcija_dokument;
    
    -- Konekcija history
    PROCEDURE insert_konekcija_history (
        p_ooj_id       IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_password     IN VARCHAR2,
        p_datum        IN DATE,
        p_key          IN RAW
    ) IS
        l_password    RAW(2000);
        l_password_iv RAW(16);
    BEGIN
        aes_encrypt (
            p_data   => p_password,
            p_key    => derive_aes_key(p_ooj_id, p_key),
            p_cipher => l_password,
            p_iv     => l_password_iv
        );
        
        INSERT INTO pm_konekcija_history (
            konekcija_id,
            password,
            password_iv,
            datum
        ) VALUES (
            p_konekcija_id,
            l_password,
            l_password_iv,
            p_datum 
        );

    END insert_konekcija_history;
    
    -- Korisnik pristupi
    PROCEDURE get_korisnik_pristupi (
        p_id           IN NUMBER,
        p_korisnik_id  OUT NUMBER,
        p_konekcija_id OUT NUMBER,
        p_favorite     OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                pm_korisnik_pristupi
            WHERE
                id = p_id
        ) LOOP
            p_korisnik_id := c1.korisnik_id;
            p_konekcija_id := c1.konekcija_id;
            p_favorite := c1.favorite;
        END LOOP;
    END get_korisnik_pristupi;

    PROCEDURE insert_korisnik_pristupi (
        p_korisnik_id  IN NUMBER,
        p_konekcija_id IN NUMBER
    ) IS
    BEGIN
        INSERT INTO pm_korisnik_pristupi (
            korisnik_id,
            konekcija_id,
            favorite
        ) VALUES (
            p_korisnik_id,
            p_konekcija_id,
            'Y' 
        );

    END insert_korisnik_pristupi;

    PROCEDURE update_korisnik_pristupi (
        p_id           IN NUMBER,
        p_korisnik_id  IN NUMBER,
        p_konekcija_id IN NUMBER,
        p_favorite     IN VARCHAR2
    ) IS
    BEGIN
        UPDATE pm_korisnik_pristupi
        SET
            korisnik_id = p_korisnik_id,
            konekcija_id = p_konekcija_id,
            favorite = p_favorite
        WHERE
            id = p_id;

    END update_korisnik_pristupi;

    PROCEDURE delete_korisnik_pristupi (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM pm_korisnik_pristupi
        WHERE
            id = p_id;

    END delete_korisnik_pristupi;
END pm_pkg;
/

prompt
prompt Creating package body PROTOKOLI_PKG
prompt ===================================
prompt
create or replace package body core.protokoli_pkg as

    --------------------------------------------------------------
    -- procedures for table PROTOKOLI
    --------------------------------------------------------------

    procedure get_protokol (
        p_id              in number,
        p_ooj_id          out number,
        p_vrsta_naloga_id out number,
        p_godina          out number,
        p_prefix          out varchar2,
        p_broj            out number,
        p_sufix           out varchar2,
        p_duzina          out number,
        p_auto_restart    out varchar2,
        p_valid           out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                protokoli
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_vrsta_naloga_id := c1.vrsta_naloga_id;
            p_godina := c1.godina;
            p_prefix := c1.prefix;
            p_broj := c1.broj;
            p_sufix := c1.sufix;
            p_duzina := c1.duzina;
            p_auto_restart := c1.auto_restart;
            p_valid := c1.valid;
        end loop;
    end get_protokol;

    procedure insert_protokol (
        p_ooj_id          in number,
        p_vrsta_naloga_id in number,
        p_godina          in number,
        p_prefix          in varchar2,
        p_broj            in number,
        p_sufix           in varchar2,
        p_duzina          in number,
        p_auto_restart    in varchar2
    ) is
    begin
        insert into protokoli (
            ooj_id,
            vrsta_naloga_id,
            godina,
            prefix,
            broj,
            sufix,
            duzina,
            auto_restart
        ) values ( p_ooj_id,
                   p_vrsta_naloga_id,
                   p_godina,
                   p_prefix,
                   p_broj,
                   p_sufix,
                   p_duzina,
                   p_auto_restart );

    end insert_protokol;

    procedure update_protokol (
        p_id              in number,
        p_ooj_id          in number,
        p_vrsta_naloga_id in number,
        p_godina          in number,
        p_prefix          in varchar2,
        p_broj            in number,
        p_sufix           in varchar2,
        p_duzina          in number,
        p_auto_restart    in varchar2,
        p_valid           in varchar2
    ) is
    begin
        update protokoli
        set
            ooj_id = p_ooj_id,
            vrsta_naloga_id = p_vrsta_naloga_id,
            godina = p_godina,
            prefix = p_prefix,
            broj = p_broj,
            sufix = p_sufix,
            duzina = p_duzina,
            auto_restart = p_auto_restart,
            valid = p_valid
        where
            id = p_id;

    end update_protokol;

    procedure delete_protokol (
        p_id in number
    ) is
    begin
        delete from protokoli
        where
            id = p_id;

    end delete_protokol;

    procedure get_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_broj               out number,
        p_naziv              out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_protokoli
            where
                    ooj_id = p_ooj_id
                and lower(vrsta_naloga_sifra) = lower(p_vrsta_naloga_sifra)
                and godina = p_godina
                and valid = 'Y'
        ) loop
            p_broj := c1.broj + 1;
            p_naziv := c1.prefix
                       || lpad(
                to_char(c1.broj + 1),
                c1.duzina,
                '0'
            )
                       || c1.sufix;

        end loop;
    end get_brojac;

    procedure get_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_prefix             out varchar2,
        p_duzina             out number,
        p_sufix              out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_protokoli
            where
                    ooj_id = p_ooj_id
                and lower(vrsta_naloga_sifra) = lower(p_vrsta_naloga_sifra)
                and godina = p_godina
                and valid = 'Y'
        ) loop
            p_prefix := c1.prefix;
            p_duzina := c1.duzina;
            p_sufix := c1.sufix;
        end loop;
    end get_brojac;

    procedure update_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number,
        p_value              in number
    ) is
        l_protokol_id number;
    begin
        select
            id
        into l_protokol_id
        from
            vw_protokoli
        where
                ooj_id = p_ooj_id
            and lower(vrsta_naloga_sifra) = lower(p_vrsta_naloga_sifra)
            and godina = p_godina;

        update protokoli
        set
            broj = broj + p_value
        where
            id = l_protokol_id;

    end update_brojac;

    function check_brojac (
        p_ooj_id             in number,
        p_vrsta_naloga_sifra in varchar2,
        p_godina             in number
    ) return boolean is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            vw_protokoli
        where
                ooj_id = p_ooj_id
            and lower(vrsta_naloga_sifra) = lower(p_vrsta_naloga_sifra)
            and godina = p_godina
            and valid = 'Y';

        if l_count > 0 then
            return true;
        else
            return false;
        end if;
    end check_brojac;
    
    procedure insert_from_collection (
        p_ooj_id in number
    ) is
    begin
        insert into protokoli (
            ooj_id,
            vrsta_naloga_id,
            godina,
            prefix,
            broj,
            sufix,
            duzina,
            auto_restart
        ) 
        select
            p_ooj_id,
            c001,
            extract(year from sysdate),
            c002,
            0,
            c004,
            c003,
            c005 
        from
            apex_collections
        where
            collection_name = 'NUMERACIJA_STAVKE';
    
            
    end insert_from_collection;

end protokoli_pkg;
/

prompt
prompt Creating package body SYSTEM_PKG
prompt ================================
prompt
create or replace package body core.system_pkg as

    -- Kreiranje predracuna, faktura za koristenje sistema..
    function check_system_predracun_exist (
        p_firma_id in number
    ) return number is
        l_esscom_id   number;
        l_interval_id number;
        l_modul_list  varchar2(1000);
        l_result      number;
    begin
        select
            esscom_id,
            interval_id
        into
            l_esscom_id,
            l_interval_id
        from
            core.firme
        where
            id = p_firma_id;

        select
            modul_list
        into l_modul_list
        from
            (
                select
                    listagg(stavka_id, ',') as modul_list
                from
                    (
                        select
                            sif.moduli_pkg.get_modul_cijena_stavka_id(modul_id, l_interval_id, broj_korisnika) as stavka_id
                        from
                            core.firma_moduli_queue
                        where
                                firma_id = p_firma_id
                            and tip in ( 'A', 'D' )
                    )
                order by
                    stavka_id asc
            )
        where
            rownum = 1;

        l_result := accounting.finansije_pkg.check_system_predracun_exist(
            p_klijent_id => l_esscom_id,
            p_modules    => l_modul_list
        );

        return l_result;
    end check_system_predracun_exist;

    function create_system_predracun (
        p_firma_id in number,
        p_zahtjev  in varchar2
    ) return number is

        l_datum_valute          date := add_months(sysdate, 1);
        l_datum_fakture         date := sysdate;
        l_predracun_id          number;
        l_esscom_id             number;
        l_interval_id           number;
        l_interval_broj_mjeseci number;
        l_firma_odgovorno_lice  varchar2(255);
        l_popust                number;
        l_broj_korisnika        number;
    begin
        select
            esscom_id,
            odgovorno_lice,
            interval_id,
            popust,
            interval_broj_mjeseci
        into
            l_esscom_id,
            l_firma_odgovorno_lice,
            l_interval_id,
            l_popust,
            l_interval_broj_mjeseci
        from
            core.vw_firme
        where
            id = p_firma_id;

        if p_zahtjev = 'Y' then
            select
                greatest(
                    trunc(months_between(active_to, sysdate)),
                    1
                )
            into l_interval_broj_mjeseci
            from
                core.firme
            where
                id = p_firma_id;

        end if;

        -- Kreiranje predracuna
        l_predracun_id := accounting.finansije_pkg.insert_system_predracun(
            p_klijent_id    => l_esscom_id,
            p_datum_fakture => l_datum_fakture,
            p_datum_valute  => l_datum_valute
        );

        -- Kreiranje stavki predracuna (samo oni dodatni koji zeli)
        for modul in (
            select
                broj_korisnika,
                modul_id,
                sif.moduli_pkg.get_modul_cijena(modul_id, l_interval_id, broj_korisnika)           as cijena,
                sif.moduli_pkg.get_modul_cijena_stavka_id(modul_id, l_interval_id, broj_korisnika) as stavka_id
            from
                core.firma_moduli_queue
            where
                    firma_id = p_firma_id
                and tip in ( 'A', 'D' )
        ) loop
            l_broj_korisnika := modul.broj_korisnika - moduli_pkg.get_firma_modul(p_firma_id, modul.modul_id);
            if l_broj_korisnika > 0 then
                create_system_predracun_stavka(
                    p_predracun_id => l_predracun_id,
                    p_stavka_id    => modul.stavka_id,
                    p_kolicina     => l_interval_broj_mjeseci * l_broj_korisnika,
                    p_cijena       => modul.cijena,
                    p_popust       => l_popust
                );

            end if;

        end loop;

        -- Kreiranje stavki predracuna (ukoliko je automatski predracun, oni moduli koje vec koristi)
        if p_zahtjev = 'N' then
            for modul in (
                select
                    broj_korisnika,
                    sif.moduli_pkg.get_modul_cijena(modul_id, l_interval_id, broj_korisnika)           as cijena,
                    sif.moduli_pkg.get_modul_cijena_stavka_id(modul_id, l_interval_id, broj_korisnika) as stavka_id
                from
                    core.firma_moduli
                where
                    firma_id = p_firma_id
            ) loop
                create_system_predracun_stavka(
                    p_predracun_id => l_predracun_id,
                    p_stavka_id    => modul.stavka_id,
                    p_kolicina     => l_interval_broj_mjeseci * modul.broj_korisnika,
                    p_cijena       => modul.cijena,
                    p_popust       => l_popust
                );
            end loop;
        end if;

        accounting.finansije_pkg.update_system_predracun(p_predracun_id => l_predracun_id);
        return l_predracun_id;
    end create_system_predracun;

    procedure create_system_predracun_stavka (
        p_predracun_id in number,
        p_stavka_id    in number,
        p_kolicina     in number,
        p_cijena       in number,
        p_popust       in number
    ) is
        l_url          varchar2(1000);
        l_clob         clob;
        l_stavka_iznos number;
    begin
        l_stavka_iznos := round(p_kolicina * p_cijena, 2);
        if p_popust > 0 then
            l_stavka_iznos := round(l_stavka_iznos -(l_stavka_iznos * p_popust / 100), 2);
        end if;

        accounting.finansije_pkg.insert_kif_stavka(
            p_kif_id           => p_predracun_id,
            p_stavka_id        => p_stavka_id,
            p_jm_id            => 4,
            p_kolicina         => p_kolicina,
            p_cijena           => round(p_cijena, 2),
            p_rabat            => p_popust,
            p_pdv              => 17,
            p_iznos            => l_stavka_iznos,
            p_pdv_indikator_id => 1
        );

    end create_system_predracun_stavka;

    function create_system_faktura (
        p_firma_id      in number,
        p_predracun_id  in number,
        p_datum_fakture in date,
        p_datum_valute  in date
    ) return number is
        l_faktura_id number;
        l_ugovor_id  number;
        l_ooj_id     number;
        l_iznos      number;
    begin
        accounting.finansije_pkg.get_kif(
            p_id                  => p_predracun_id,
            p_iznos_fakture_nopdv => l_iznos
        );
        l_ugovor_id := create_system_ugovor(
            p_firma_id => p_firma_id,
            p_datum    => p_datum_fakture,
            p_iznos    => l_iznos
        );

        l_faktura_id := accounting.finansije_pkg.create_kif_from_predracun(
            p_godina          => extract(year from sysdate),
            p_predracun_id    => p_predracun_id,
            p_datum_fakture   => p_datum_fakture,
            p_datum_valute    => p_datum_valute,
--            p_datum_uplatnice => p_datum_fakture,
            p_print_pn        => 'N',
            p_ugovor_id       => l_ugovor_id
        );

    end create_system_faktura;

    function create_system_ugovor (
        p_firma_id in number,
        p_datum    in date,
        p_iznos    in number
    ) return number is

        l_id          number;
        l_esscom_id   number;
        l_ooj_id      number := apex_app_setting.get_value('ESSCOM_OOJ_ID');
        l_oj_id       number := apex_app_setting.get_value('ESSCOM_SOFTWARE_OJ_ID');
        l_valuta_id   number := 1;
        l_interval_id number := 4;
        l_godina      number := extract(year from p_datum);
        l_broj        number;
        l_naziv       varchar2(255);
    begin
        select
            esscom_id
        into l_esscom_id
        from
            core.firme
        where
            id = p_firma_id;

        core.protokoli_pkg.get_brojac(
            p_ooj_id             => l_ooj_id,
            p_vrsta_naloga_sifra => 'ug',
            p_godina             => l_godina,
            p_broj               => l_broj,
            p_naziv              => l_naziv
        );

        l_id := accounting.ugovori_pkg.insert_ugovor(
            p_ooj_id             => l_ooj_id,
            p_klijent_id         => l_esscom_id,
            p_valuta_id          => l_valuta_id,
            p_izvrsilac_narucioc => 'N',
            p_ugovor_start       => p_datum,
            p_ugovor_end         => add_months(p_datum, 12),
            p_iznos              => p_iznos,
            p_naziv              => l_naziv,
            p_broj               => l_broj,
            p_predmet            => 'Ugovor o korištenju ESSCOM ERP sistema',
            p_referenca          => 'N',
            p_referenca_id       => null,
            p_oj_id              => l_oj_id,
            p_interval_id        => l_interval_id,
            p_system             => 'Y'
        );

        core.protokoli_pkg.update_brojac(
            p_ooj_id             => l_ooj_id,
            p_vrsta_naloga_sifra => 'ug',
            p_godina             => l_godina,
            p_value              => 1
        );

        return l_id;
    end create_system_ugovor;

end system_pkg;
/

prompt
prompt Creating trigger EXPORT_IMPORT_LOG_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER CORE."EXPORT_IMPORT_LOG_BIU" BEFORE
    INSERT OR UPDATE ON core.export_import_log
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END export_import_log_biu;
/

prompt
prompt Creating trigger KORISNIK_MODULI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER CORE."KORISNIK_MODULI_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_moduli
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END korisnik_moduli_biu;
/

prompt
prompt Creating trigger KORISNIK_OJ_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER CORE."KORISNIK_OJ_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_oj
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END korisnik_oj_biu;
/

prompt
prompt Creating trigger KORISNIK_SEKRETARICE_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER CORE."KORISNIK_SEKRETARICE_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_sekretarice
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END korisnik_sekretarice_biu;
/

prompt
prompt Creating trigger LOKI_BEFORE_DDL_TGR
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER CORE."LOKI_BEFORE_DDL_TGR"
    before ddl on core.schema begin
        execute immediate 'begin LOKI.loki_lock.handle_ddl_event(); end;';
    end loki_before_ddl_tgr;
/

prompt
prompt Creating trigger OOJ_VIZITKE_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER CORE."OOJ_VIZITKE_BIU" BEFORE
    INSERT OR UPDATE ON core.ooj_vizitke
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END ooj_vizitke_biu;
/

prompt
prompt Creating trigger PM_FOLDERI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_FOLDERI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_folderi
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_folderi_biu;
/

prompt
prompt Creating trigger PM_GRUPA_KORISNICI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_GRUPA_KORISNICI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_grupa_korisnici
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_grupa_korisnici_biu;
/

prompt
prompt Creating trigger PM_GRUPE_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_GRUPE_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_grupe
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_grupe_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJA_DOKUMENTI_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJA_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcija_dokumenti
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcija_dokumenti_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJA_HISTORY_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJA_HISTORY_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcija_history
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcija_history_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJA_POLJA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJA_POLJA_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcija_polja
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcija_polja_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJA_PRISTUPI_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJA_PRISTUPI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcija_pristupi
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcija_pristupi_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJA_WEBSITE_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJA_WEBSITE_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcija_website
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcija_website_biu;
/

prompt
prompt Creating trigger PM_KONEKCIJE_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KONEKCIJE_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_konekcije
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_konekcije_biu;
/

prompt
prompt Creating trigger PM_KORISNIK_PRISTUPI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_KORISNIK_PRISTUPI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_korisnik_pristupi
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_korisnik_pristupi_biu;
/

prompt
prompt Creating trigger PM_SABLONI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_SABLONI_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_sabloni
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_sabloni_biu;
/

prompt
prompt Creating trigger PM_SABLON_POLJA_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER CORE."PM_SABLON_POLJA_BIU" BEFORE
    INSERT OR UPDATE ON core.pm_sablon_polja
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END pm_sablon_polja_biu;
/

prompt
prompt Creating trigger PROTOKOLI_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER CORE."PROTOKOLI_BIU" BEFORE
    INSERT OR UPDATE ON core.protokoli
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END protokoli_biu;
/

prompt
prompt Creating trigger SEC_FIRMA_DOKUMENTI_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_FIRMA_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON core.firma_dokumenti
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_firma_dokumenti_biu;
/

prompt
prompt Creating trigger SEC_FIRMA_MODULI_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_FIRMA_MODULI_BIU" BEFORE
    INSERT OR UPDATE ON core.firma_moduli
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_firma_moduli_biu;
/

prompt
prompt Creating trigger SEC_FIRME_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_FIRME_BIU" BEFORE
    INSERT OR UPDATE ON core.firme
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_firme_biu;
/

prompt
prompt Creating trigger SEC_KORISNICI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_KORISNICI_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnici
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_korisnici_biu;
/

prompt
prompt Creating trigger SEC_KORISNICI_BRZI_PRISTUP_BIU
prompt ===============================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_KORISNICI_BRZI_PRISTUP_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_brzi_pristupi
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_korisnici_brzi_pristup_biu;
/

prompt
prompt Creating trigger SEC_KORISNIK_NOTIFIKACIJE_BIU
prompt ==============================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_KORISNIK_NOTIFIKACIJE_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_notifikacije
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_korisnik_notifikacije_biu;
/

prompt
prompt Creating trigger SEC_KORISNIK_ROLE_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_KORISNIK_ROLE_BIU" BEFORE
    INSERT OR UPDATE ON core.korisnik_role
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_korisnik_role_biu;
/

prompt
prompt Creating trigger SEC_LOKACIJA_PROSTORIJE_BIU
prompt ============================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_LOKACIJA_PROSTORIJE_BIU" BEFORE
    INSERT OR UPDATE ON core.ooj_lokacija_prostorije
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_lokacija_prostorije_biu;
/

prompt
prompt Creating trigger SEC_LOKACIJE_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_LOKACIJE_BIU" BEFORE
    INSERT OR UPDATE ON core.ooj_lokacije
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_lokacije_biu;
/

prompt
prompt Creating trigger SEC_MODULI_QUEUE_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_MODULI_QUEUE_BIU" BEFORE
    INSERT OR UPDATE ON core.firma_moduli_queue
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_moduli_queue_biu;
/

prompt
prompt Creating trigger SEC_OJ_BIU
prompt ===========================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_OJ_BIU" BEFORE
    INSERT OR UPDATE ON core.oj
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_oj_biu;
/

prompt
prompt Creating trigger SEC_OOJ_BANKE_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_OOJ_BANKE_BIU" BEFORE
    INSERT OR UPDATE ON core.ooj_banke
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_ooj_banke_biu;
/

prompt
prompt Creating trigger SEC_OOJ_BIU
prompt ============================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_OOJ_BIU" BEFORE
    INSERT OR UPDATE ON core.ooj
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_ooj_biu;
/

prompt
prompt Creating trigger SEC_RADNA_MJESTA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER CORE."SEC_RADNA_MJESTA_BIU" BEFORE
    INSERT OR UPDATE ON core.firma_radna_mjesta
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            sys_context('userenv', 'proxy_user'),
            user
        );

        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    END IF;

    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        sys_context('userenv', 'proxy_user'),
        user
    );

    :new.updated := sysdate;

END sec_radna_mjesta_biu;
/


prompt Done
spool off
set define on
