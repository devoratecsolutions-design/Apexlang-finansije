prompt PL/SQL Developer Export User Objects for user HRM@ESSCOMDEV_HIGH
prompt Created by Djordjije.Ristanovic on Thursday, October 29, 2026
set define off
spool hrm_ddl.log

prompt
prompt Creating sequence A_ANKETA_KORISNICI_SEQ
prompt ========================================
prompt
create sequence HRM.A_ANKETA_KORISNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 441
increment by 1
cache 20;

prompt
prompt Creating sequence A_ANKETE_SEQ
prompt ==============================
prompt
create sequence HRM.A_ANKETE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence A_OBAVJESTENJA_SEQ
prompt ====================================
prompt
create sequence HRM.A_OBAVJESTENJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence A_PITANJA_ODGOVORI_SEQ
prompt ========================================
prompt
create sequence HRM.A_PITANJA_ODGOVORI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 321
increment by 1
cache 20;

prompt
prompt Creating sequence A_PITANJA_SEQ
prompt ===============================
prompt
create sequence HRM.A_PITANJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 141
increment by 1
cache 20;

prompt
prompt Creating sequence A_PORUKE_SEQ
prompt ==============================
prompt
create sequence HRM.A_PORUKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 181
increment by 1
cache 20;

prompt
prompt Creating sequence B_DOKUMENTI_SEQ
prompt =================================
prompt
create sequence HRM.B_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 221
increment by 1
cache 20;

prompt
prompt Creating sequence B_ZAHTJEVI_SEQ
prompt ================================
prompt
create sequence HRM.B_ZAHTJEVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 461
increment by 1
cache 20;

prompt
prompt Creating sequence B_ZAHTJEV_HIST_SEQ
prompt ====================================
prompt
create sequence HRM.B_ZAHTJEV_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 741
increment by 1
cache 20;

prompt
prompt Creating sequence FV_REZERVACIJE_VOZILA_SEQ
prompt ===========================================
prompt
create sequence HRM.FV_REZERVACIJE_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1001
increment by 1
cache 20;

prompt
prompt Creating sequence FV_SERVISI_VOZILA_SEQ
prompt =======================================
prompt
create sequence HRM.FV_SERVISI_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 221
increment by 1
cache 20;

prompt
prompt Creating sequence FV_TOCENJE_VOZILA_SEQ
prompt =======================================
prompt
create sequence HRM.FV_TOCENJE_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence FV_VOZILA_SEQ
prompt ===============================
prompt
create sequence HRM.FV_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 361
increment by 1
cache 20;

prompt
prompt Creating sequence GO_PLAN_DANA_DETALJI_SEQ
prompt ==========================================
prompt
create sequence HRM.GO_PLAN_DANA_DETALJI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 481
increment by 1
cache 20;

prompt
prompt Creating sequence HR_OBRAZOVANJE_CJENOVNIK_SEQ
prompt ==============================================
prompt
create sequence HRM.HR_OBRAZOVANJE_CJENOVNIK_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence HR_OOJ_PRIJAVA_SEQ
prompt ====================================
prompt
create sequence HRM.HR_OOJ_PRIJAVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence HR_OOJ_PVS_SEQ
prompt ================================
prompt
create sequence HRM.HR_OOJ_PVS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence HR_POTVRDE_SEQ
prompt ================================
prompt
create sequence HRM.HR_POTVRDE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIHT_LISTA_VRIJEME_SEQ
prompt ===========================================
prompt
create sequence HRM.HR_SIHT_LISTA_VRIJEME_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 5881
increment by 1
cache 20;

prompt
prompt Creating sequence HR_ZAHTJEVI_SEQ
prompt =================================
prompt
create sequence HRM.HR_ZAHTJEVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence I_KANDIDATI_SEQ
prompt =================================
prompt
create sequence HRM.I_KANDIDATI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 221
increment by 1
cache 20;

prompt
prompt Creating sequence I_KANDIDAT_DOKUMENTI_SEQ
prompt ==========================================
prompt
create sequence HRM.I_KANDIDAT_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 181
increment by 1
cache 20;

prompt
prompt Creating sequence I_KANDIDAT_HIST_SEQ
prompt =====================================
prompt
create sequence HRM.I_KANDIDAT_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 421
increment by 1
cache 20;

prompt
prompt Creating sequence I_KANDIDAT_TAGOVI_SEQ
prompt =======================================
prompt
create sequence HRM.I_KANDIDAT_TAGOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 501
increment by 1
cache 20;

prompt
prompt Creating sequence I_TAGOVI_SEQ
prompt ==============================
prompt
create sequence HRM.I_TAGOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 401
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_OBLASTI_SEQ
prompt =================================
prompt
create sequence HRM.LPR_OBLASTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_RADNICI_HIST_SEQ
prompt ======================================
prompt
create sequence HRM.LPR_RADNICI_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 501
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_RADNICI_IZVJESTAJI_SEQ
prompt ============================================
prompt
create sequence HRM.LPR_RADNICI_IZVJESTAJI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 221
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_RADNICI_SEQ
prompt =================================
prompt
create sequence HRM.LPR_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 261
increment by 1
cache 20;

prompt
prompt Creating sequence MIDDLEWARE_LOG_SEQ
prompt ====================================
prompt
create sequence HRM.MIDDLEWARE_LOG_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 9361
increment by 1
cache 20;

prompt
prompt Creating sequence OBRASCI_SEQ
prompt =============================
prompt
create sequence HRM.OBRASCI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence OBRAZAC_POLJA_SEQ
prompt ===================================
prompt
create sequence HRM.OBRAZAC_POLJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence PL_BOLOVANJA_SEQ
prompt ==================================
prompt
create sequence HRM.PL_BOLOVANJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 461
increment by 1
cache 20;

prompt
prompt Creating sequence PL_DETALJI_SEQ
prompt ================================
prompt
create sequence HRM.PL_DETALJI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence PL_OBUSTAVE_HIST_SEQ
prompt ======================================
prompt
create sequence HRM.PL_OBUSTAVE_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 541
increment by 1
cache 20;

prompt
prompt Creating sequence PL_PLATE_SEQ
prompt ==============================
prompt
create sequence HRM.PL_PLATE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2183
increment by 1
nocache;

prompt
prompt Creating sequence PL_PREKOVREMENI_SEQ
prompt =====================================
prompt
create sequence HRM.PL_PREKOVREMENI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 141
increment by 1
cache 20;

prompt
prompt Creating sequence PORSEKI_ODB_SEQ
prompt =================================
prompt
create sequence HRM.PORSEKI_ODB_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 17
increment by 1
nocache;

prompt
prompt Creating sequence PRU_OOJ_INTERVALI_SEQ
prompt =======================================
prompt
create sequence HRM.PRU_OOJ_INTERVALI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_RADNICI_HIST_SEQ
prompt ======================================
prompt
create sequence HRM.PRU_RADNICI_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1121
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_RADNICI_OCJENE_SEQ
prompt ========================================
prompt
create sequence HRM.PRU_RADNICI_OCJENE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 9532
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_RADNICI_SEQ
prompt =================================
prompt
create sequence HRM.PRU_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 861
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_VREMENSKI_ROKOVI_HIST_SEQ
prompt ===============================================
prompt
create sequence HRM.PRU_VREMENSKI_ROKOVI_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 481
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_VREMENSKI_ROKOVI_SEQ
prompt ==========================================
prompt
create sequence HRM.PRU_VREMENSKI_ROKOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence P_CHECKLIST_RADNICI_SEQ
prompt =========================================
prompt
create sequence HRM.P_CHECKLIST_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence P_OOJ_LABELI_SEQ
prompt ==================================
prompt
create sequence HRM.P_OOJ_LABELI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence P_OOJ_PROJEKTI_SEQ
prompt ====================================
prompt
create sequence HRM.P_OOJ_PROJEKTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 301
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_CHECKLIST_STAVKE_SEQ
prompt =================================================
prompt
create sequence HRM.P_PROJEKAT_CHECKLIST_STAVKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 861
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_DOKUMENTI_SEQ
prompt ==========================================
prompt
create sequence HRM.P_PROJEKAT_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KARTICA_CHECKLIST_SEQ
prompt ==================================================
prompt
create sequence HRM.P_PROJEKAT_KARTICA_CHECKLIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 521
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KARTICA_DOKUMENTI_SEQ
prompt ==================================================
prompt
create sequence HRM.P_PROJEKAT_KARTICA_DOKUMENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 181
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KARTICA_LABELI_SEQ
prompt ===============================================
prompt
create sequence HRM.P_PROJEKAT_KARTICA_LABELI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 481
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KARTICA_RADNICI_SEQ
prompt ================================================
prompt
create sequence HRM.P_PROJEKAT_KARTICA_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 821
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KARTICE_SEQ
prompt ========================================
prompt
create sequence HRM.P_PROJEKAT_KARTICE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 461
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_KOMENTARI_SEQ
prompt ==========================================
prompt
create sequence HRM.P_PROJEKAT_KOMENTARI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 4041
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_LISTE_SEQ
prompt ======================================
prompt
create sequence HRM.P_PROJEKAT_LISTE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence P_PROJEKAT_RADNICI_SEQ
prompt ========================================
prompt
create sequence HRM.P_PROJEKAT_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 441
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DJECA
prompt ===========================
prompt
create sequence HRM.SEQ_DJECA
minvalue 1
maxvalue 9999999999999999999999999999
start with 26
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_GO_PLAN_DAN
prompt =================================
prompt
create sequence HRM.SEQ_GO_PLAN_DAN
minvalue 1
maxvalue 9999999999999999999999999999
start with 961
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GO_STAT_HIST
prompt ==================================
prompt
create sequence HRM.SEQ_GO_STAT_HIST
minvalue 1
maxvalue 9999999999999999999999999999
start with 982
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_GO_ZAHTJEVI
prompt =================================
prompt
create sequence HRM.SEQ_GO_ZAHTJEVI
minvalue 1
maxvalue 9999999999999999999999999999
start with 483
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_IZVJESTAJ
prompt ===============================
prompt
create sequence HRM.SEQ_IZVJESTAJ
minvalue 1
maxvalue 9999999999999999999999999999
start with 223
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_OBUSTAVE
prompt ==============================
prompt
create sequence HRM.SEQ_OBUSTAVE
minvalue 1
maxvalue 9999999999999999999999999999
start with 29
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_PLATE_TROSAK
prompt ==================================
prompt
create sequence HRM.SEQ_PLATE_TROSAK
minvalue 1
maxvalue 9999999999999999999999999999
start with 2393
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_PLATE_UPLATNICE
prompt =====================================
prompt
create sequence HRM.SEQ_PLATE_UPLATNICE
minvalue 1
maxvalue 9999999999999999999999999999
start with 3136
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_PL_RADNICI
prompt ================================
prompt
create sequence HRM.SEQ_PL_RADNICI
minvalue 1
maxvalue 9999999999999999999999999999
start with 3246
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_RADNICI
prompt =============================
prompt
create sequence HRM.SEQ_RADNICI
minvalue 1
maxvalue 9999999999999999999999999999
start with 939
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_RADNIK_DOKUMENTI
prompt ======================================
prompt
create sequence HRM.SEQ_RADNIK_DOKUMENTI
minvalue 1
maxvalue 9999999999999999999999999999
start with 182
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_SL
prompt ========================
prompt
create sequence HRM.SEQ_SL
minvalue 1
maxvalue 9999999999999999999999999999
start with 84844
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_SP_STATUSI_HIST
prompt =====================================
prompt
create sequence HRM.SEQ_SP_STATUSI_HIST
minvalue 1
maxvalue 9999999999999999999999999999
start with 1106
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_SP_ZAHTJEVI
prompt =================================
prompt
create sequence HRM.SEQ_SP_ZAHTJEVI
minvalue 1
maxvalue 9999999999999999999999999999
start with 276
increment by 1
nocache;

prompt
prompt Creating sequence SEQ_TROSKOVI
prompt ==============================
prompt
create sequence HRM.SEQ_TROSKOVI
minvalue 1
maxvalue 9999999999999999999999999999
start with 314
increment by 1
nocache;

prompt
prompt Creating sequence SMJENA_SABLONI_SEQ
prompt ====================================
prompt
create sequence HRM.SMJENA_SABLONI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence SMJENA_SABLON_DANI_SEQ
prompt ========================================
prompt
create sequence HRM.SMJENA_SABLON_DANI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 481
increment by 1
cache 20;

prompt
prompt Creating sequence SMJENA_SIHT_LISTA_SEQ
prompt =======================================
prompt
create sequence HRM.SMJENA_SIHT_LISTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence SMJENE_SEQ
prompt ============================
prompt
create sequence HRM.SMJENE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence SP_PUTNICI_SEQ
prompt ================================
prompt
create sequence HRM.SP_PUTNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1281
increment by 1
cache 20;

prompt
prompt Creating sequence S_OOJ_PROSTORIJE_SEQ
prompt ======================================
prompt
create sequence HRM.S_OOJ_PROSTORIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence S_SASTANACI_SEQ
prompt =================================
prompt
create sequence HRM.S_SASTANACI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 741
increment by 1
cache 20;

prompt
prompt Creating sequence S_SASTANAK_HIST_SEQ
prompt =====================================
prompt
create sequence HRM.S_SASTANAK_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 821
increment by 1
cache 20;

prompt
prompt Creating sequence S_SASTANAK_RADNICI_SEQ
prompt ========================================
prompt
create sequence HRM.S_SASTANAK_RADNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 781
increment by 1
cache 20;

prompt
prompt Creating sequence VP_ZAHTJEVI_SEQ
prompt =================================
prompt
create sequence HRM.VP_ZAHTJEVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 361
increment by 1
cache 20;

prompt
prompt Creating sequence VP_ZAHTJEV_HIST_SEQ
prompt =====================================
prompt
create sequence HRM.VP_ZAHTJEV_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 581
increment by 1
cache 20;

prompt
prompt Creating table A_ANKETE
prompt =======================
prompt
create table HRM.A_ANKETE
(
  id          NUMBER default on null hrm.a_ankete_seq.nextval not null,
  ooj_id      NUMBER,
  korisnik_id NUMBER,
  naziv       VARCHAR2(255 CHAR),
  status_id   NUMBER,
  anonimno    VARCHAR2(1) default 'Y' not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_ANKETE_I1 on HRM.A_ANKETE (OOJ_ID);
create index HRM.A_ANKETE_I2 on HRM.A_ANKETE (KORISNIK_ID);
alter table HRM.A_ANKETE
  add constraint A_ANKETE_ID_PK primary key (ID);
alter table HRM.A_ANKETE
  add constraint A_ANKETE_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.A_ANKETE
  add constraint A_ANKETE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.A_ANKETE
  add constraint A_ANKETE_STATUS_ID foreign key (STATUS_ID)
  references SIF.A_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.A_ANKETE
  add constraint A_ANKETE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_PITANJA
prompt ========================
prompt
create table HRM.A_PITANJA
(
  id          NUMBER default on null hrm.a_pitanja_seq.nextval not null,
  anketa_id   NUMBER,
  pitanje     VARCHAR2(255 CHAR),
  obavezno    VARCHAR2(1 CHAR),
  sequence    NUMBER not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_PITANJA_I1 on HRM.A_PITANJA (ANKETA_ID);
alter table HRM.A_PITANJA
  add constraint A_PITANJA_ID_PK primary key (ID);
alter table HRM.A_PITANJA
  add constraint A_PITANJA_ANKETA_ID_FK foreign key (ANKETA_ID)
  references HRM.A_ANKETE (ID)
  disable
  novalidate;
alter table HRM.A_PITANJA
  add constraint A_PITANJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_PITANJA_ODGOVORI
prompt =================================
prompt
create table HRM.A_PITANJA_ODGOVORI
(
  id          NUMBER default on null hrm.a_pitanja_odgovori_seq.nextval not null,
  pitanje_id  NUMBER,
  odgovor     VARCHAR2(255 CHAR),
  sequence    NUMBER not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_PITANJA_ODGOVORI_I1 on HRM.A_PITANJA_ODGOVORI (PITANJE_ID);
alter table HRM.A_PITANJA_ODGOVORI
  add constraint A_PITANJA_ODGOVORI_ID_PK primary key (ID);
alter table HRM.A_PITANJA_ODGOVORI
  add constraint A_PITANJA_ODGOVORI_PITANJE_ID_FK foreign key (PITANJE_ID)
  references HRM.A_PITANJA (ID)
  disable
  novalidate;
alter table HRM.A_PITANJA_ODGOVORI
  add constraint A_PITANJA_ODGOVORI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_ANKETA_KORISNICI
prompt =================================
prompt
create table HRM.A_ANKETA_KORISNICI
(
  id          NUMBER default on null hrm.a_anketa_korisnici_seq.nextval not null,
  anketa_id   NUMBER,
  korisnik_id NUMBER,
  pitanje_id  NUMBER,
  odgovor_id  NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_ANKETA_KORISNICI_I1 on HRM.A_ANKETA_KORISNICI (ANKETA_ID);
create index HRM.A_ANKETA_KORISNICI_I2 on HRM.A_ANKETA_KORISNICI (KORISNIK_ID);
create index HRM.A_ANKETA_KORISNICI_I3 on HRM.A_ANKETA_KORISNICI (PITANJE_ID);
create index HRM.A_ANKETA_KORISNICI_I4 on HRM.A_ANKETA_KORISNICI (ODGOVOR_ID);
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_ID_PK primary key (ID);
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_ANKETA_ID_FK foreign key (ANKETA_ID)
  references HRM.A_ANKETE (ID)
  disable
  novalidate;
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_ODGOVOR_ID_FK foreign key (ODGOVOR_ID)
  references HRM.A_PITANJA_ODGOVORI (ID)
  disable
  novalidate;
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_PITANJE_ID_FK foreign key (PITANJE_ID)
  references HRM.A_PITANJA (ID)
  disable
  novalidate;
alter table HRM.A_ANKETA_KORISNICI
  add constraint A_ANKETA_KORISNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_OBAVJESTENJA
prompt =============================
prompt
create table HRM.A_OBAVJESTENJA
(
  id                  NUMBER default on null hrm.a_obavjestenja_seq.nextval not null,
  ooj_id              NUMBER,
  tip_obavjestenja_id NUMBER,
  korisnik_id         NUMBER,
  poruka              VARCHAR2(1000 CHAR) not null,
  datum_od            DATE,
  datum_do            DATE,
  valid               VARCHAR2(1 CHAR) default 'Y',
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_OBAVJESTENJA_I1 on HRM.A_OBAVJESTENJA (OOJ_ID);
create index HRM.A_OBAVJESTENJA_I2 on HRM.A_OBAVJESTENJA (TIP_OBAVJESTENJA_ID);
create index HRM.A_OBAVJESTENJA_I3 on HRM.A_OBAVJESTENJA (KORISNIK_ID);
alter table HRM.A_OBAVJESTENJA
  add constraint A_OBAVJESTENJA_ID_PK primary key (ID);
alter table HRM.A_OBAVJESTENJA
  add constraint A_OBAVJESTENJA_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.A_OBAVJESTENJA
  add constraint A_OBAVJESTENJA_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.A_OBAVJESTENJA
  add constraint A_OBAVJESTENJA_TIP_OBAVJESTENJA_ID foreign key (TIP_OBAVJESTENJA_ID)
  references SIF.A_SIF_TIPOVI_OBAVJESTENJA (ID)
  disable
  novalidate;
alter table HRM.A_OBAVJESTENJA
  add constraint A_OBAVJESTENJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_PORUKE
prompt =======================
prompt
create table HRM.A_PORUKE
(
  id          NUMBER default on null hrm.a_poruke_seq.nextval not null,
  ooj_id      NUMBER,
  korisnik_id NUMBER,
  subject     VARCHAR2(255 CHAR),
  poruka      VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.A_PORUKE_I1 on HRM.A_PORUKE (OOJ_ID);
create index HRM.A_PORUKE_I2 on HRM.A_PORUKE (KORISNIK_ID);
alter table HRM.A_PORUKE
  add constraint A_PORUKE_ID_PK primary key (ID);
alter table HRM.A_PORUKE
  add constraint A_PORUKE_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.A_PORUKE
  add constraint A_PORUKE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.A_PORUKE
  add constraint A_PORUKE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_RADNICI
prompt =========================
prompt
create table HRM.HR_RADNICI
(
  id                    NUMBER default on null hrm.seq_radnici.nextval not null,
  nadredjeni_id         NUMBER,
  ime                   VARCHAR2(50) not null,
  prezime               VARCHAR2(50) not null,
  jmbg                  VARCHAR2(13 CHAR) not null,
  zaposlen_od           DATE,
  zaposlen_do           DATE,
  adresa                VARCHAR2(100),
  grad_id               NUMBER,
  entitet_id            NUMBER,
  telefon               VARCHAR2(50),
  mobitel               VARCHAR2(50),
  samohrani_roditelj    VARCHAR2(1) default on null 'N' not null,
  invaliditet           VARCHAR2(1) default on null 'N' not null,
  hronicno_oboljenje    VARCHAR2(1) default on null 'N' not null,
  oj_id                 NUMBER,
  staz_godina           NUMBER default 0,
  staz_mjesec           NUMBER default 0,
  staz_dan              NUMBER default 0,
  email                 VARCHAR2(200 CHAR),
  radno_mjesto_id       NUMBER,
  kanton_id             NUMBER,
  korisnik_id           NUMBER,
  ooj_id                NUMBER not null,
  tip_ugovora_id        NUMBER,
  prijava_kod           VARCHAR2(6 CHAR),
  pol                   VARCHAR2(1 CHAR),
  obrazovanje_id        NUMBER,
  tip_radnog_vremena_id NUMBER,
  tip_radnog_odnosa_id  NUMBER,
  korisnik              VARCHAR2(1 CHAR),
  row_version           NUMBER,
  created               DATE,
  created_by            VARCHAR2(255),
  updated               DATE,
  updated_by            VARCHAR2(255),
  cijena_sata           NUMBER
)
;
alter table HRM.HR_RADNICI
  add constraint PK_SIF_RADNICI_1 primary key (ID);
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_PRIJAVA_KOD_UK unique (PRIJAVA_KOD);
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_ENTITET_ID foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_GRAD_ID foreign key (GRAD_ID)
  references SIF.SIF_GRADOVI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_KANTON_ID foreign key (KANTON_ID)
  references SIF.SIF_KANTONI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_NADREDJENI_ID_FK foreign key (NADREDJENI_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_OBRAZOVANJE_ID foreign key (OBRAZOVANJE_ID)
  references SIF.HR_SIF_OBRAZOVANJA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_OJ_ID foreign key (OJ_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_OOJ_ID foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_RADNO_MJESTO_FK foreign key (RADNO_MJESTO_ID)
  references CORE.FIRMA_RADNA_MJESTA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_SEC_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_TIP_RADNOG_ODNOSA_ID foreign key (TIP_RADNOG_ODNOSA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_TIP_RADNOG_VREMENA_ID foreign key (TIP_RADNOG_VREMENA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_VREMENA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_TIP_UGOVORA_ID foreign key (TIP_UGOVORA_ID)
  references SIF.HR_SIF_TIPOVI_UGOVORA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_KORISNIK_CK
  check ( korisnik in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table HRM.HR_RADNICI
  add constraint HR_RADNICI_POL_CK
  check ( pol in ( 'M', 'Z' ) )
  disable
  novalidate;

prompt
prompt Creating table B_ZAHTJEVI
prompt =========================
prompt
create table HRM.B_ZAHTJEVI
(
  id            NUMBER default on null hrm.b_zahtjevi_seq.nextval not null,
  radnik_id     NUMBER,
  status_id     NUMBER,
  tip_id        NUMBER,
  datum_od      DATE not null,
  datum_do      DATE,
  napomena      VARCHAR2(1000 CHAR),
  procenat      NUMBER,
  broj_zahtjeva NUMBER not null,
  godina        NUMBER not null,
  broj_dana     NUMBER,
  komentar      VARCHAR2(1000),
  prisutnost_id NUMBER,
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
create index HRM.B_ZAHTJEVI_I1 on HRM.B_ZAHTJEVI (RADNIK_ID);
create index HRM.B_ZAHTJEVI_I2 on HRM.B_ZAHTJEVI (STATUS_ID);
create index HRM.B_ZAHTJEVI_I3 on HRM.B_ZAHTJEVI (TIP_ID);
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_ID_PK primary key (ID);
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_PRISUTNOST_ID foreign key (PRISUTNOST_ID)
  references SIF.B_SIF_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_STATUS_ID foreign key (STATUS_ID)
  references SIF.B_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_TIP_ID foreign key (TIP_ID)
  references SIF.B_SIF_TIPOVI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEVI
  add constraint B_ZAHTJEVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table B_DOKUMENTI
prompt ==========================
prompt
create table HRM.B_DOKUMENTI
(
  id                NUMBER default on null hrm.b_dokumenti_seq.nextval not null,
  zahtjev_id        NUMBER,
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index HRM.B_DOKUMENTI_I1 on HRM.B_DOKUMENTI (ZAHTJEV_ID);
alter table HRM.B_DOKUMENTI
  add constraint B_DOKUMENTI_ID_PK primary key (ID);
alter table HRM.B_DOKUMENTI
  add constraint B_DOKUMENTI_ZAHTJEV_ID_FK foreign key (ZAHTJEV_ID)
  references HRM.B_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.B_DOKUMENTI
  add constraint B_DOKUMENTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table B_ZAHTJEV_HIST
prompt =============================
prompt
create table HRM.B_ZAHTJEV_HIST
(
  id          NUMBER default on null hrm.b_zahtjev_hist_seq.nextval not null,
  zahtjev_id  NUMBER,
  status_id   NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.B_ZAHTJEV_HIST_I1 on HRM.B_ZAHTJEV_HIST (ZAHTJEV_ID);
create index HRM.B_ZAHTJEV_HIST_I2 on HRM.B_ZAHTJEV_HIST (STATUS_ID);
alter table HRM.B_ZAHTJEV_HIST
  add constraint B_ZAHTJEV_HIST_ID_PK primary key (ID);
alter table HRM.B_ZAHTJEV_HIST
  add constraint B_ZAHTJEV_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.B_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEV_HIST
  add constraint B_ZAHTJEV_HIST_ZAHTJEV_ID_FK foreign key (ZAHTJEV_ID)
  references HRM.B_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.B_ZAHTJEV_HIST
  add constraint B_ZAHTJEV_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FV_VOZILA
prompt ========================
prompt
create table HRM.FV_VOZILA
(
  id               NUMBER default on null hrm.fv_vozila_seq.nextval not null,
  row_version      INTEGER not null,
  vrsta_vozila_id  NUMBER,
  firma_id         NUMBER,
  radnik_id        NUMBER,
  ooj_id           NUMBER,
  oj_id            NUMBER,
  status           NUMBER,
  reg_oznaka       VARCHAR2(255),
  reg_datum        DATE,
  tip_vozila       VARCHAR2(255),
  marka_vozila     VARCHAR2(255),
  model_vozila     VARCHAR2(255),
  gorivo_max       NUMBER,
  zapremina_motora VARCHAR2(255),
  snaga_motora     VARCHAR2(255),
  vrsta_goriva     VARCHAR2(255),
  boja             VARCHAR2(255),
  broj_sasije      VARCHAR2(255),
  masa_vozila      VARCHAR2(255),
  broj_mjesta      NUMBER,
  valid            VARCHAR2(1) default 'Y',
  created          DATE not null,
  created_by       VARCHAR2(255) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255) not null
)
;
create index HRM.FV_VOZILA_I1 on HRM.FV_VOZILA (FIRMA_ID);
create index HRM.FV_VOZILA_I2 on HRM.FV_VOZILA (OJ_ID);
create index HRM.FV_VOZILA_I3 on HRM.FV_VOZILA (OOJ_ID);
create index HRM.FV_VOZILA_I4 on HRM.FV_VOZILA (RADNIK_ID);
create index HRM.FV_VOZILA_I5 on HRM.FV_VOZILA (VRSTA_VOZILA_ID);
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_ID_PK primary key (ID);
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_FIRMA_ID_FK foreign key (FIRMA_ID)
  references CORE.FIRME (ID)
  disable
  novalidate;
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_OJ_ID_FK foreign key (OJ_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.FV_VOZILA
  add constraint FV_VOZILA_VRSTA_VOZILA_ID foreign key (VRSTA_VOZILA_ID)
  references SIF.FV_VRSTE_VOZILA (ID)
  disable
  novalidate;

prompt
prompt Creating table SP_ZAHTJEVI
prompt ==========================
prompt
create table HRM.SP_ZAHTJEVI
(
  id                NUMBER default on null hrm.seq_sp_zahtjevi.nextval not null,
  broj_zahtjeva     NUMBER not null,
  datum_od          DATE not null,
  datum_do          DATE not null,
  relacija          VARCHAR2(200) not null,
  reg_oznaka        VARCHAR2(100) not null,
  svrha_putovanja   VARCHAR2(200) not null,
  komentar          VARCHAR2(2000),
  komentar_statusa  VARCHAR2(100),
  status_id         NUMBER,
  godina            NUMBER,
  teret_troskova    VARCHAR2(255),
  vrsta_vozila_id   NUMBER,
  valid             VARCHAR2(1) default 'Y',
  mjesto_putovanja  VARCHAR2(255 CHAR),
  row_version       NUMBER,
  created           DATE,
  created_by        VARCHAR2(255),
  updated           DATE,
  updated_by        VARCHAR2(255),
  radnik_id         NUMBER,
  radnik_odobrio_id NUMBER,
  glavna_knjiga_id  NUMBER
)
;
alter table HRM.SP_ZAHTJEVI
  add constraint SP_ZAHTJEVI_PK primary key (ID);
alter table HRM.SP_ZAHTJEVI
  add constraint FK_RADNIK_ODOBRIO foreign key (RADNIK_ODOBRIO_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.SP_ZAHTJEVI
  add constraint FK_SP_RADNIK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.SP_ZAHTJEVI
  add constraint SP_ZAHTJEVI_GLAVNA_KNJIGA_ID_FK foreign key (GLAVNA_KNJIGA_ID)
  references ACCOUNTING.GLAVNA_KNJIGA (ID)
  disable
  novalidate;
alter table HRM.SP_ZAHTJEVI
  add constraint SP_ZAHTJEVI_STATUS_ID foreign key (STATUS_ID)
  references SIF.GO_STATUSI (ID)
  disable
  novalidate;
alter table HRM.SP_ZAHTJEVI
  add constraint SP_ZAHTJEVI_VRSTA_VOZILA_ID foreign key (VRSTA_VOZILA_ID)
  references SIF.FV_VRSTE_VOZILA (ID)
  disable
  novalidate;

prompt
prompt Creating table FV_REZERVACIJE_VOZILA
prompt ====================================
prompt
create table HRM.FV_REZERVACIJE_VOZILA
(
  id                  NUMBER default on null hrm.fv_rezervacije_vozila_seq.nextval not null,
  row_version         INTEGER not null,
  vozilo_id           NUMBER,
  radnik_id           NUMBER,
  tip_rezervacije_id  NUMBER,
  zahtjev_id          NUMBER,
  kilometraza_pocetak NUMBER,
  kilometraza_kraj    NUMBER,
  datum_od            DATE,
  datum_do            DATE,
  valid               VARCHAR2(1) default 'Y',
  created             DATE not null,
  created_by          VARCHAR2(255) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255) not null
)
;
create index HRM.FV_REZERVACIJE_VOZILA_I1 on HRM.FV_REZERVACIJE_VOZILA (RADNIK_ID);
create index HRM.FV_REZERVACIJE_VOZILA_I2 on HRM.FV_REZERVACIJE_VOZILA (TIP_REZERVACIJE_ID);
create index HRM.FV_REZERVACIJE_VOZILA_I3 on HRM.FV_REZERVACIJE_VOZILA (VOZILO_ID);
create index HRM.FV_REZERVACIJE_VOZILA_I4 on HRM.FV_REZERVACIJE_VOZILA (ZAHTJEV_ID);
alter table HRM.FV_REZERVACIJE_VOZILA
  add constraint FV_REZERVACIJE_VOZ_ID_PK primary key (ID);
alter table HRM.FV_REZERVACIJE_VOZILA
  add constraint FV_REZERVACIJE_VOZILA_TIP_REZERVACIJE_ID foreign key (TIP_REZERVACIJE_ID)
  references SIF.FV_TIPOVI_REZERVACIJA (ID)
  disable
  novalidate;
alter table HRM.FV_REZERVACIJE_VOZILA
  add constraint FV_REZERVACIJE_VOZ_RADNIK_I_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.FV_REZERVACIJE_VOZILA
  add constraint FV_REZERVACIJE_VOZ_VOZILO_I_FK foreign key (VOZILO_ID)
  references HRM.FV_VOZILA (ID) on delete cascade
  disable
  novalidate;
alter table HRM.FV_REZERVACIJE_VOZILA
  add constraint FV_REZERVACIJE_ZAHTJEV_ID_FK foreign key (ZAHTJEV_ID)
  references HRM.SP_ZAHTJEVI (ID) on delete cascade
  disable
  novalidate;

prompt
prompt Creating table FV_SERVISI_VOZILA
prompt ================================
prompt
create table HRM.FV_SERVISI_VOZILA
(
  id          NUMBER default on null hrm.fv_servisi_vozila_seq.nextval not null,
  vozilo_id   NUMBER,
  datum       DATE,
  kilometraza NUMBER,
  cijena      NUMBER,
  vrsta_id    NUMBER,
  row_version INTEGER not null,
  valid       VARCHAR2(1) default 'Y',
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
create index HRM.FV_SERVISI_VOZILA_I1 on HRM.FV_SERVISI_VOZILA (VOZILO_ID);
alter table HRM.FV_SERVISI_VOZILA
  add constraint FV_SERVISI_VOZILA_ID_PK primary key (ID);
alter table HRM.FV_SERVISI_VOZILA
  add constraint FV_SERVISI_VOZILA_VOZILO_ID_FK foreign key (VOZILO_ID)
  references HRM.FV_VOZILA (ID) on delete cascade
  disable
  novalidate;
alter table HRM.FV_SERVISI_VOZILA
  add constraint FV_SERVISI_VOZILA_VRSTA_ID foreign key (VRSTA_ID)
  references SIF.FV_VRSTE_SERVISA (ID)
  disable
  novalidate;

prompt
prompt Creating table FV_TOCENJE_VOZILA
prompt ================================
prompt
create table HRM.FV_TOCENJE_VOZILA
(
  id          NUMBER default on null hrm.fv_tocenje_vozila_seq.nextval not null,
  vozilo_id   NUMBER,
  kolicina    NUMBER,
  cijena      NUMBER,
  datum       DATE,
  row_version INTEGER not null,
  valid       VARCHAR2(1) default 'Y',
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
create index HRM.FV_TOCENJE_VOZILA_I1 on HRM.FV_TOCENJE_VOZILA (VOZILO_ID);
alter table HRM.FV_TOCENJE_VOZILA
  add constraint FV_TOCENJE_VOZILA_ID_PK primary key (ID);
alter table HRM.FV_TOCENJE_VOZILA
  add constraint FV_TOCENJE_VOZILA_VOZILO_ID_FK foreign key (VOZILO_ID)
  references HRM.FV_VOZILA (ID) on delete cascade
  disable
  novalidate;

prompt
prompt Creating table GO_PLAN_DANA
prompt ===========================
prompt
create table HRM.GO_PLAN_DANA
(
  id          NUMBER default on null hrm.seq_go_plan_dan.nextval not null,
  radnik_id   NUMBER not null,
  godina      NUMBER not null,
  broj_dana   NUMBER not null,
  komentar    VARCHAR2(2000 CHAR),
  poslato     VARCHAR2(1) default 'N',
  valid       VARCHAR2(1) default 'Y',
  row_version NUMBER,
  created     DATE,
  created_by  VARCHAR2(255),
  updated     DATE,
  updated_by  VARCHAR2(255)
)
;
alter table HRM.GO_PLAN_DANA
  add constraint PK_GO_PLAN_DANA primary key (ID);
alter table HRM.GO_PLAN_DANA
  add constraint FK_GO_PLAN_RAD foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.GO_PLAN_DANA
  add constraint GO_PLAN_DANA_POSLATO_CHK
  check ( poslato in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_PLAN_DANA_DETALJI
prompt ===================================
prompt
create table HRM.GO_PLAN_DANA_DETALJI
(
  id           NUMBER default on null hrm.go_plan_dana_detalji_seq.nextval not null,
  plan_dana_id NUMBER,
  tip_id       NUMBER,
  broj_dana    NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index HRM.GO_PLAN_DANA_DETALJI_I1 on HRM.GO_PLAN_DANA_DETALJI (PLAN_DANA_ID);
create index HRM.GO_PLAN_DANA_DETALJI_I2 on HRM.GO_PLAN_DANA_DETALJI (TIP_ID);
alter table HRM.GO_PLAN_DANA_DETALJI
  add constraint GO_PLAN_DANA_DETALJI_ID_PK primary key (ID);
alter table HRM.GO_PLAN_DANA_DETALJI
  add constraint GO_PLAN_DANA_DETALJI_PLAN_DANA_ID_FK foreign key (PLAN_DANA_ID)
  references HRM.GO_PLAN_DANA (ID)
  disable
  novalidate;
alter table HRM.GO_PLAN_DANA_DETALJI
  add constraint GO_PLAN_DANA_DETALJI_TIP_ID foreign key (TIP_ID)
  references SIF.GO_TIPOVI_PARAMETARA (ID)
  disable
  novalidate;
alter table HRM.GO_PLAN_DANA_DETALJI
  add constraint GO_PLAN_DANA_DETALJI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_ZAHTJEVI
prompt ==========================
prompt
create table HRM.GO_ZAHTJEVI
(
  id                NUMBER default on null hrm.seq_go_zahtjevi.nextval not null,
  radnik_id         NUMBER not null,
  broj_zahtjeva     NUMBER not null,
  datum_od          DATE not null,
  datum_do          DATE not null,
  komentar          VARCHAR2(200),
  broj_dana         NUMBER,
  status_id         NUMBER,
  komentar_statusa  VARCHAR2(500),
  radnik_odobrio_id NUMBER,
  ukupno_dana       NUMBER,
  preostalo_dana    NUMBER,
  godina            NUMBER,
  tip_zahtjeva_id   NUMBER not null,
  valid             VARCHAR2(1) default 'Y' not null,
  row_version       NUMBER,
  created           DATE,
  created_by        VARCHAR2(255),
  updated           DATE,
  updated_by        VARCHAR2(255)
)
;
alter table HRM.GO_ZAHTJEVI
  add constraint PK_GO_ZAHTJEVI primary key (ID);
alter table HRM.GO_ZAHTJEVI
  add constraint FK_GO_ZAH_RADNIK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.GO_ZAHTJEVI
  add constraint GO_ZAHTJEVI_RADNIK_ODOBRIO_ID foreign key (RADNIK_ODOBRIO_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.GO_ZAHTJEVI
  add constraint GO_ZAHTJEVI_STATUS_ID foreign key (STATUS_ID)
  references SIF.GO_STATUSI (ID)
  disable
  novalidate;
alter table HRM.GO_ZAHTJEVI
  add constraint GO_ZAHTJEVI_TIP_ZAHTJEVA_ID foreign key (TIP_ZAHTJEVA_ID)
  references SIF.GO_TIPOVI_ZAHTJEVA (ID)
  disable
  novalidate;

prompt
prompt Creating table GO_STATUSI_HIST
prompt ==============================
prompt
create table HRM.GO_STATUSI_HIST
(
  id          NUMBER default on null hrm.seq_go_stat_hist.nextval not null,
  datum       DATE not null,
  status_id   NUMBER,
  komentar    VARCHAR2(200),
  row_version NUMBER,
  created     DATE,
  created_by  VARCHAR2(255),
  updated     DATE,
  updated_by  VARCHAR2(255),
  zahtjev_id  NUMBER not null
)
;
alter table HRM.GO_STATUSI_HIST
  add constraint PK_GO_STAT_ZAHTJEVA primary key (ID);
alter table HRM.GO_STATUSI_HIST
  add constraint FK_HIST_RADNICI foreign key (ZAHTJEV_ID)
  references HRM.GO_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.GO_STATUSI_HIST
  add constraint GO_STATUSI_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.GO_STATUSI (ID)
  disable
  novalidate;

prompt
prompt Creating table HR_OBRAZOVANJE_CJENOVNIK
prompt =======================================
prompt
create table HRM.HR_OBRAZOVANJE_CJENOVNIK
(
  id             NUMBER default on null hrm.hr_obrazovanje_cjenovnik_seq.nextval not null,
  ooj_id         NUMBER,
  obrazovanje_id NUMBER,
  cijena_sata    NUMBER,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null,
  oj_id          NUMBER not null
)
;
create index HRM.HR_OBRAZOVANJE_CJENOVNIK_I1 on HRM.HR_OBRAZOVANJE_CJENOVNIK (OOJ_ID);
create index HRM.HR_OBRAZOVANJE_CJENOVNIK_I2 on HRM.HR_OBRAZOVANJE_CJENOVNIK (OBRAZOVANJE_ID);
alter table HRM.HR_OBRAZOVANJE_CJENOVNIK
  add constraint HR_OBRAZOVANJE_CJENOVNIK_ID_PK primary key (ID);
alter table HRM.HR_OBRAZOVANJE_CJENOVNIK
  add constraint HR_OBRAZOVANJE_CJENOVNIK_OBRAZOVANJE_ID_FK foreign key (OBRAZOVANJE_ID)
  references SIF.HR_SIF_OBRAZOVANJA (ID)
  disable
  novalidate;
alter table HRM.HR_OBRAZOVANJE_CJENOVNIK
  add constraint HR_OBRAZOVANJE_CJENOVNIK_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;

prompt
prompt Creating table HR_OOJ_PRIJAVA
prompt =============================
prompt
create table HRM.HR_OOJ_PRIJAVA
(
  id             NUMBER default on null hrm.hr_ooj_prijava_seq.nextval not null,
  ooj_id         NUMBER,
  tip_prijave_id NUMBER,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index HRM.HR_OOJ_PRIJAVA_I1 on HRM.HR_OOJ_PRIJAVA (OOJ_ID);
create index HRM.HR_OOJ_PRIJAVA_I2 on HRM.HR_OOJ_PRIJAVA (TIP_PRIJAVE_ID);
alter table HRM.HR_OOJ_PRIJAVA
  add constraint HR_OOJ_PRIJAVA_ID_PK primary key (ID);
alter table HRM.HR_OOJ_PRIJAVA
  add constraint HR_OOJ_PRIJAVA_UK unique (OOJ_ID, TIP_PRIJAVE_ID);
alter table HRM.HR_OOJ_PRIJAVA
  add constraint HR_OOJ_PRIJAVA_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_OOJ_PRIJAVA
  add constraint HR_OOJ_PRIJAVA_TIP_PRIJAVE_ID foreign key (TIP_PRIJAVE_ID)
  references SIF.HR_SIF_TIPOVI_PRIJAVA (ID)
  disable
  novalidate;
alter table HRM.HR_OOJ_PRIJAVA
  add constraint HR_OOJ_PRIJAVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_OOJ_PVS
prompt =========================
prompt
create table HRM.HR_OOJ_PVS
(
  id          NUMBER default on null hrm.hr_ooj_pvs_seq.nextval not null,
  ooj_id      NUMBER,
  pvs_id      NUMBER,
  procenat    NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.HR_OOJ_PVS_I1 on HRM.HR_OOJ_PVS (OOJ_ID);
create index HRM.HR_OOJ_PVS_I2 on HRM.HR_OOJ_PVS (PVS_ID);
alter table HRM.HR_OOJ_PVS
  add constraint HR_OOJ_PVS_ID_PK primary key (ID);
alter table HRM.HR_OOJ_PVS
  add constraint HR_OOJ_PVS_OOJ_UK unique (OOJ_ID, PVS_ID);
alter table HRM.HR_OOJ_PVS
  add constraint HR_OOJ_PVS_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_OOJ_PVS
  add constraint HR_OOJ_PVS_PVS_ID foreign key (PVS_ID)
  references SIF.HR_PVS_TIPOVI (ID)
  disable
  novalidate;
alter table HRM.HR_OOJ_PVS
  add constraint HR_OOJ_PVS_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_POTVRDE
prompt =========================
prompt
create table HRM.HR_POTVRDE
(
  id             NUMBER default on null hrm.hr_potvrde_seq.nextval not null,
  ooj_id         NUMBER,
  radnik_id      NUMBER,
  tip_potvrde_id NUMBER,
  godina         NUMBER,
  naziv          VARCHAR2(255 CHAR),
  broj           NUMBER,
  datum_potvrde  DATE,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index HRM.HR_POTVRDE_I1 on HRM.HR_POTVRDE (OOJ_ID);
create index HRM.HR_POTVRDE_I2 on HRM.HR_POTVRDE (RADNIK_ID);
create index HRM.HR_POTVRDE_I3 on HRM.HR_POTVRDE (TIP_POTVRDE_ID);
alter table HRM.HR_POTVRDE
  add constraint HR_POTVRDE_ID_PK primary key (ID);
alter table HRM.HR_POTVRDE
  add constraint HR_POTVRDE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_POTVRDE
  add constraint HR_POTVRDE_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_POTVRDE
  add constraint HR_POTVRDE_TIP_POTVRDE_ID_FK foreign key (TIP_POTVRDE_ID)
  references SIF.HR_TIPOVI_POTVRDA (ID)
  disable
  novalidate;
alter table HRM.HR_POTVRDE
  add constraint HR_POTVRDE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_RADNICI_DJECA
prompt ===============================
prompt
create table HRM.HR_RADNICI_DJECA
(
  id          NUMBER default on null hrm.seq_djeca.nextval not null,
  radnik_id   NUMBER not null,
  jmbg        VARCHAR2(13 CHAR) not null,
  ime         VARCHAR2(50),
  prezime     VARCHAR2(50),
  rodjendan   DATE,
  valid       VARCHAR2(1) default 'Y' not null,
  row_version NUMBER,
  created     DATE,
  created_by  VARCHAR2(255),
  updated     DATE,
  updated_by  VARCHAR2(255)
)
;
alter table HRM.HR_RADNICI_DJECA
  add constraint PK_SIF_RADNICI_DJECA primary key (ID);
alter table HRM.HR_RADNICI_DJECA
  add constraint FK_DJECA_RADNIK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table HR_RADNICI_HIST
prompt ==============================
prompt
create table HRM.HR_RADNICI_HIST
(
  id                    NUMBER not null,
  nadredjeni_id         NUMBER,
  ime                   VARCHAR2(50) not null,
  prezime               VARCHAR2(50) not null,
  jmbg                  VARCHAR2(13 CHAR) not null,
  zaposlen_od           DATE not null,
  zaposlen_do           DATE,
  adresa                VARCHAR2(100),
  grad_id               NUMBER,
  entitet_id            NUMBER,
  telefon               VARCHAR2(50),
  mobitel               VARCHAR2(50),
  samohrani_roditelj    VARCHAR2(1) not null,
  invaliditet           VARCHAR2(1) not null,
  hronicno_oboljenje    VARCHAR2(1) not null,
  oj_id                 NUMBER,
  staz_godina           NUMBER,
  staz_mjesec           NUMBER,
  staz_dan              NUMBER,
  email                 VARCHAR2(200 CHAR),
  radno_mjesto_id       NUMBER,
  kanton_id             NUMBER,
  korisnik_id           NUMBER not null,
  ooj_id                NUMBER not null,
  hist_id               NUMBER default on null hrm.seq_hist_id.nextval not null,
  tip_ugovora_id        NUMBER,
  prijava_kod           VARCHAR2(6 CHAR),
  pol                   VARCHAR2(1 CHAR),
  obrazovanje_id        NUMBER,
  tip_radnog_vremena_id NUMBER,
  tip_radnog_odnosa_id  NUMBER,
  korisnik              VARCHAR2(1 CHAR),
  row_version           NUMBER,
  created               DATE,
  created_by            VARCHAR2(255),
  updated               DATE,
  updated_by            VARCHAR2(255),
  cijena_sata           NUMBER
)
;
alter table HRM.HR_RADNICI_HIST
  add constraint PK_HR_RADNICI_HIST primary key (HIST_ID);
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_ENTITET_ID foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_GRAD_ID foreign key (GRAD_ID)
  references SIF.SIF_GRADOVI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_KANTON_ID foreign key (KANTON_ID)
  references SIF.SIF_KANTONI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_NADREDJENI_ID foreign key (NADREDJENI_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_OBRAZOVANJE_ID foreign key (OBRAZOVANJE_ID)
  references SIF.HR_SIF_OBRAZOVANJA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_OJ_ID foreign key (OJ_ID)
  references CORE.OJ (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_OOJ_ID foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_RADNO_MJESTO_ID foreign key (RADNO_MJESTO_ID)
  references CORE.FIRMA_RADNA_MJESTA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_SEC_KORISNIK_ID foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_TIP_RADNOG_ODNOSA_ID foreign key (TIP_RADNOG_ODNOSA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_TIP_RADNOG_VREMENA_ID foreign key (TIP_RADNOG_VREMENA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_VREMENA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_TIP_UGOVORA_ID foreign key (TIP_UGOVORA_ID)
  references SIF.HR_SIF_TIPOVI_UGOVORA (ID)
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_KORISNIK_CK
  check ( korisnik in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table HRM.HR_RADNICI_HIST
  add constraint HR_RADNICI_HIST_POL_CK
  check ( pol in ( 'M', 'Z' ) )
  disable
  novalidate;

prompt
prompt Creating table OBRASCI
prompt ======================
prompt
create table HRM.OBRASCI
(
  id                NUMBER default on null hrm.obrasci_seq.nextval not null,
  ooj_id            NUMBER,
  naziv             VARCHAR2(255 CHAR),
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index HRM.OBRASCI_I1 on HRM.OBRASCI (OOJ_ID);
alter table HRM.OBRASCI
  add constraint OBRASCI_ID_PK primary key (ID);
alter table HRM.OBRASCI
  add constraint OBRASCI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.OBRASCI
  add constraint OBRASCI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_RADNIK_DOKUMENTI
prompt ==================================
prompt
create table HRM.HR_RADNIK_DOKUMENTI
(
  id                NUMBER default on null hrm.seq_radnik_dokumenti.nextval not null,
  radnik_id         NUMBER,
  dokument          BLOB,
  dokument_mimetype VARCHAR2(255),
  dokument_filename VARCHAR2(255 CHAR),
  tip_dokumenta_id  NUMBER,
  datum             DATE,
  valid             VARCHAR2(1) default 'Y',
  row_version       NUMBER,
  created           DATE,
  created_by        VARCHAR2(255),
  updated           DATE,
  updated_by        VARCHAR2(255),
  obrazac_id        NUMBER
)
;
alter table HRM.HR_RADNIK_DOKUMENTI
  add constraint PK_RADNIK_DOKUMENTI primary key (ID);
alter table HRM.HR_RADNIK_DOKUMENTI
  add constraint HR_RADNIK_DOKUMENTI_OBRAZAC_ID_FK foreign key (OBRAZAC_ID)
  references HRM.OBRASCI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNIK_DOKUMENTI
  add constraint RADNIK_DOKUMENTI_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_RADNIK_DOKUMENTI
  add constraint RADNIK_DOKUMENTI_TIP_DOKUMENTA_ID foreign key (TIP_DOKUMENTA_ID)
  references SIF.HR_SIF_TIPOVI_DOKUMENATA (ID)
  disable
  novalidate;

prompt
prompt Creating table SMJENE
prompt =====================
prompt
create table HRM.SMJENE
(
  id          NUMBER default on null hrm.smjene_seq.nextval not null,
  ooj_id      NUMBER,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  pocetak     VARCHAR2(255 CHAR),
  kraj        VARCHAR2(255 CHAR),
  color_code  VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.SMJENE_I1 on HRM.SMJENE (OOJ_ID);
alter table HRM.SMJENE
  add constraint SMJENE_ID_PK primary key (ID);
alter table HRM.SMJENE
  add constraint SMJENE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.SMJENE
  add constraint SMJENE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIHT_LISTA
prompt ============================
prompt
create table HRM.HR_SIHT_LISTA
(
  radnik_id                 NUMBER(10) not null,
  id                        NUMBER default on null hrm.seq_sl.nextval not null,
  datum                     DATE,
  evidencija_prisutnosti_id NUMBER(10) not null,
  radni_dan                 VARCHAR2(5),
  dan                       VARCHAR2(50),
  status_id                 NUMBER not null,
  pvs_kolicina              NUMBER,
  pvs_tip_id                NUMBER,
  broj_sati                 NUMBER default 8,
  napomena                  VARCHAR2(1000),
  pvs_napomena              VARCHAR2(1000 CHAR),
  pvs_pocetak               VARCHAR2(16 CHAR),
  pvs_kraj                  VARCHAR2(16 CHAR),
  row_version               NUMBER,
  created                   DATE,
  created_by                VARCHAR2(255),
  updated                   DATE,
  updated_by                VARCHAR2(255),
  smjena_id                 NUMBER
)
;
alter table HRM.HR_SIHT_LISTA
  add constraint SIHT_LISTA_PK primary key (ID);
alter table HRM.HR_SIHT_LISTA
  add constraint FK_SL_RADNIK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA
  add constraint HR_SIHT_LISTA_EVIDENCIJA_PRISUTNOSTI_ID foreign key (EVIDENCIJA_PRISUTNOSTI_ID)
  references SIF.HR_SIF_EV_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA
  add constraint HR_SIHT_LISTA_PVS_TIP_ID foreign key (PVS_TIP_ID)
  references SIF.HR_PVS_TIPOVI (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA
  add constraint HR_SIHT_LISTA_SMJENA_ID_FK foreign key (SMJENA_ID)
  references HRM.SMJENE (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA
  add constraint HR_SIHT_LISTA_STATUS_ID foreign key (STATUS_ID)
  references SIF.HR_SIF_SIHTL_STATUSI (ID)
  disable
  novalidate;

prompt
prompt Creating table HR_SIHT_LISTA_VRIJEME
prompt ====================================
prompt
create table HRM.HR_SIHT_LISTA_VRIJEME
(
  id             NUMBER default on null hrm.hr_siht_lista_vrijeme_seq.nextval not null,
  siht_lista_id  NUMBER,
  tip_rada_id    NUMBER,
  start_time     DATE,
  start_lat      NUMBER,
  start_lng      NUMBER,
  end_time       DATE,
  end_lat        NUMBER,
  end_lng        NUMBER,
  tip_prijave_id NUMBER not null,
  trajanje       NUMBER,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index HRM.HR_SIHT_LISTA_VRIJEME_I1 on HRM.HR_SIHT_LISTA_VRIJEME (SIHT_LISTA_ID);
create index HRM.HR_SIHT_LISTA_VRIJEME_I2 on HRM.HR_SIHT_LISTA_VRIJEME (TIP_RADA_ID);
alter table HRM.HR_SIHT_LISTA_VRIJEME
  add constraint HR_SIHT_LISTA_VRIJEME_ID_PK primary key (ID);
alter table HRM.HR_SIHT_LISTA_VRIJEME
  add constraint HR_SIHT_LISTA_VRIJEME_SIHT_LISTA_ID_FK foreign key (SIHT_LISTA_ID)
  references HRM.HR_SIHT_LISTA (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA_VRIJEME
  add constraint HR_SIHT_LISTA_VRIJEME_TIP_PRIJAVE_ID foreign key (TIP_PRIJAVE_ID)
  references SIF.HR_SIF_TIPOVI_PRIJAVA (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA_VRIJEME
  add constraint HR_SIHT_LISTA_VRIJEME_TIP_RADA_ID foreign key (TIP_RADA_ID)
  references SIF.HR_SIF_TIPOVI_RADA (ID)
  disable
  novalidate;
alter table HRM.HR_SIHT_LISTA_VRIJEME
  add constraint HR_SIHT_LISTA_VRIJEME_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_ZAHTJEVI
prompt ==========================
prompt
create table HRM.HR_ZAHTJEVI
(
  id              NUMBER default on null hrm.hr_zahtjevi_seq.nextval not null,
  ooj_id          NUMBER,
  radnik_id       NUMBER,
  tip_zahtjeva_id NUMBER,
  status_id       NUMBER,
  godina          NUMBER,
  naziv           VARCHAR2(255 CHAR),
  broj            NUMBER,
  datum_zahtjeva  DATE,
  datum_od        DATE,
  datum_do        DATE,
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index HRM.HR_ZAHTJEVI_I1 on HRM.HR_ZAHTJEVI (OOJ_ID);
create index HRM.HR_ZAHTJEVI_I2 on HRM.HR_ZAHTJEVI (RADNIK_ID);
create index HRM.HR_ZAHTJEVI_I3 on HRM.HR_ZAHTJEVI (TIP_ZAHTJEVA_ID);
create index HRM.HR_ZAHTJEVI_I4 on HRM.HR_ZAHTJEVI (STATUS_ID);
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_ID_PK primary key (ID);
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_STATUS_ID_FK foreign key (STATUS_ID)
  references SIF.SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_TIP_ZAHTJEVA_ID_FK foreign key (TIP_ZAHTJEVA_ID)
  references SIF.HR_TIPOVI_ZAHTJEVA (ID)
  disable
  novalidate;
alter table HRM.HR_ZAHTJEVI
  add constraint HR_ZAHTJEVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HTMLDB_PLAN_TABLE
prompt ================================
prompt
create table HRM.HTMLDB_PLAN_TABLE
(
  statement_id      VARCHAR2(30),
  plan_id           NUMBER,
  timestamp         DATE,
  remarks           VARCHAR2(4000),
  operation         VARCHAR2(30),
  options           VARCHAR2(255),
  object_node       VARCHAR2(128),
  object_owner      VARCHAR2(128),
  object_name       VARCHAR2(128),
  object_alias      VARCHAR2(261),
  object_instance   INTEGER,
  object_type       VARCHAR2(128),
  optimizer         VARCHAR2(255),
  search_columns    NUMBER,
  id                INTEGER,
  parent_id         INTEGER,
  depth             INTEGER,
  position          INTEGER,
  cost              INTEGER,
  cardinality       INTEGER,
  bytes             INTEGER,
  other_tag         VARCHAR2(255),
  partition_start   VARCHAR2(255),
  partition_stop    VARCHAR2(255),
  partition_id      INTEGER,
  other             LONG,
  distribution      VARCHAR2(30),
  cpu_cost          INTEGER,
  io_cost           INTEGER,
  temp_space        INTEGER,
  access_predicates VARCHAR2(4000),
  filter_predicates VARCHAR2(4000),
  projection        VARCHAR2(4000),
  time              INTEGER,
  qblock_name       VARCHAR2(128)
)
;

prompt
prompt Creating table I_KANDIDATI
prompt ==========================
prompt
create table HRM.I_KANDIDATI
(
  id          NUMBER default on null hrm.i_kandidati_seq.nextval not null,
  ooj_id      NUMBER not null,
  status_id   NUMBER,
  entitet_id  NUMBER,
  kanton_id   NUMBER,
  grad_id     NUMBER,
  ime         VARCHAR2(255 CHAR) not null,
  prezime     VARCHAR2(255 CHAR) not null,
  adresa      VARCHAR2(255 CHAR),
  telefon     VARCHAR2(255 CHAR),
  mobitel     VARCHAR2(255 CHAR),
  email       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.I_KANDIDATI_I1 on HRM.I_KANDIDATI (OOJ_ID);
create index HRM.I_KANDIDATI_I2 on HRM.I_KANDIDATI (STATUS_ID);
create index HRM.I_KANDIDATI_I3 on HRM.I_KANDIDATI (ENTITET_ID);
create index HRM.I_KANDIDATI_I4 on HRM.I_KANDIDATI (KANTON_ID);
create index HRM.I_KANDIDATI_I5 on HRM.I_KANDIDATI (GRAD_ID);
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_ID_PK primary key (ID);
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_ENTITET_ID foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_GRAD_ID foreign key (GRAD_ID)
  references SIF.SIF_GRADOVI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_KANTON_ID foreign key (KANTON_ID)
  references SIF.SIF_KANTONI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_STATUS_ID foreign key (STATUS_ID)
  references SIF.I_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDATI
  add constraint I_KANDIDATI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_KANDIDAT_DOKUMENTI
prompt ===================================
prompt
create table HRM.I_KANDIDAT_DOKUMENTI
(
  id                NUMBER default on null hrm.i_kandidat_dokumenti_seq.nextval not null,
  kandidat_id       NUMBER,
  tip_dokumenta_id  NUMBER,
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index HRM.I_KANDIDAT_DOKUMENTI_I1 on HRM.I_KANDIDAT_DOKUMENTI (KANDIDAT_ID);
create index HRM.I_KANDIDAT_DOKUMENTI_I2 on HRM.I_KANDIDAT_DOKUMENTI (TIP_DOKUMENTA_ID);
alter table HRM.I_KANDIDAT_DOKUMENTI
  add constraint I_KANDIDAT_DOKUMENTI_ID_PK primary key (ID);
alter table HRM.I_KANDIDAT_DOKUMENTI
  add constraint I_KANDIDAT_DOKUMENTI_KANDIDAT_ID_FK foreign key (KANDIDAT_ID)
  references HRM.I_KANDIDATI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_DOKUMENTI
  add constraint I_KANDIDAT_DOKUMENTI_TIP_DOKUMENTA_ID foreign key (TIP_DOKUMENTA_ID)
  references SIF.I_SIF_TIPOVI_DOKUMENATA (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_DOKUMENTI
  add constraint I_KANDIDAT_DOKUMENTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_KANDIDAT_HIST
prompt ==============================
prompt
create table HRM.I_KANDIDAT_HIST
(
  id          NUMBER default on null hrm.i_kandidat_hist_seq.nextval not null,
  kandidat_id NUMBER,
  status_id   NUMBER,
  komentar    VARCHAR2(1000),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.I_KANDIDAT_HIST_I1 on HRM.I_KANDIDAT_HIST (KANDIDAT_ID);
create index HRM.I_KANDIDAT_HIST_I2 on HRM.I_KANDIDAT_HIST (STATUS_ID);
alter table HRM.I_KANDIDAT_HIST
  add constraint I_KANDIDAT_HIST_ID_PK primary key (ID);
alter table HRM.I_KANDIDAT_HIST
  add constraint I_KANDIDAT_HIST_KANDIDAT_ID_FK foreign key (KANDIDAT_ID)
  references HRM.I_KANDIDATI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_HIST
  add constraint I_KANDIDAT_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.I_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_HIST
  add constraint I_KANDIDAT_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_TAGOVI
prompt =======================
prompt
create table HRM.I_TAGOVI
(
  id          NUMBER default on null hrm.i_tagovi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table HRM.I_TAGOVI
  add constraint I_TAGOVI_ID_PK primary key (ID);
alter table HRM.I_TAGOVI
  add constraint I_TAKOVI_NAZIV_UK unique (NAZIV);
alter table HRM.I_TAGOVI
  add constraint I_TAGOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_KANDIDAT_TAGOVI
prompt ================================
prompt
create table HRM.I_KANDIDAT_TAGOVI
(
  id          NUMBER default on null hrm.i_kandidat_tagovi_seq.nextval not null,
  kandidat_id NUMBER,
  tag_id      NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.I_KANDIDAT_TAGOVI_I1 on HRM.I_KANDIDAT_TAGOVI (KANDIDAT_ID);
create index HRM.I_KANDIDAT_TAGOVI_I2 on HRM.I_KANDIDAT_TAGOVI (TAG_ID);
alter table HRM.I_KANDIDAT_TAGOVI
  add constraint I_KANDIDAT_TAGOVI_ID_PK primary key (ID);
alter table HRM.I_KANDIDAT_TAGOVI
  add constraint I_KANDIDAT_TAGOVI_KANDIDAT_ID_FK foreign key (KANDIDAT_ID)
  references HRM.I_KANDIDATI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_TAGOVI
  add constraint I_KANDIDAT_TAGOVI_TAG_ID_FK foreign key (TAG_ID)
  references HRM.I_TAGOVI (ID)
  disable
  novalidate;
alter table HRM.I_KANDIDAT_TAGOVI
  add constraint I_KANDIDAT_TAGOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_OBLASTI
prompt ==========================
prompt
create table HRM.LPR_OBLASTI
(
  id          NUMBER default on null hrm.lpr_oblasti_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(255 CHAR),
  ooj_id      NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y' not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  row_version INTEGER not null
)
;
create index HRM.LPR_OBLASTI_I1 on HRM.LPR_OBLASTI (OOJ_ID);
alter table HRM.LPR_OBLASTI
  add constraint LPR_OBLASTI_ID_PK primary key (ID);
alter table HRM.LPR_OBLASTI
  add constraint LPR_OBLASTI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.LPR_OBLASTI
  add constraint LPR_OBLASTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_RADNICI
prompt ==========================
prompt
create table HRM.LPR_RADNICI
(
  id            NUMBER default on null hrm.lpr_radnici_seq.nextval not null,
  prioritet_id  NUMBER,
  radnik_id     NUMBER,
  nadredjeni_id NUMBER,
  oblast_id     NUMBER,
  status_id     NUMBER,
  opis          VARCHAR2(1000 CHAR),
  komentar      VARCHAR2(1000),
  valid         VARCHAR2(1 CHAR) default 'Y' not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  row_version   INTEGER not null
)
;
create index HRM.LPR_RADNICI_I1 on HRM.LPR_RADNICI (NADREDJENI_ID);
create index HRM.LPR_RADNICI_I172 on HRM.LPR_RADNICI (OBLAST_ID);
create index HRM.LPR_RADNICI_I183 on HRM.LPR_RADNICI (PRIORITET_ID);
create index HRM.LPR_RADNICI_I194 on HRM.LPR_RADNICI (RADNIK_ID);
create index HRM.LPR_RADNICI_I205 on HRM.LPR_RADNICI (STATUS_ID);
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_ID_PK primary key (ID);
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_NADREDJENI_ID_FK foreign key (NADREDJENI_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_OBLAST_ID_FK foreign key (OBLAST_ID)
  references HRM.LPR_OBLASTI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_PRIORITET_ID foreign key (PRIORITET_ID)
  references SIF.LPR_SIF_PRIORITETI (ID)
  disable
  novalidate;
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_STATUS_ID foreign key (STATUS_ID)
  references SIF.LPR_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.LPR_RADNICI
  add constraint LPR_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_RADNICI_HIST
prompt ===============================
prompt
create table HRM.LPR_RADNICI_HIST
(
  id            NUMBER default on null hrm.lpr_radnici_hist_seq.nextval not null,
  lpr_radnik_id NUMBER not null,
  status_id     NUMBER not null,
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  row_version   INTEGER not null
)
;
create index HRM.LPR_RADNICI_HIST_I1 on HRM.LPR_RADNICI_HIST (LPR_RADNIK_ID);
create index HRM.LPR_RADNICI_HIST_I172 on HRM.LPR_RADNICI_HIST (STATUS_ID);
alter table HRM.LPR_RADNICI_HIST
  add constraint LPR_RADNICI_HIST_ID_PK primary key (ID);
alter table HRM.LPR_RADNICI_HIST
  add constraint LPR_RADNICI_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.LPR_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.LPR_RADNICI_HIST
  add constraint LPR_R_HIS_RADNIK_FK foreign key (LPR_RADNIK_ID)
  references HRM.LPR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.LPR_RADNICI_HIST
  add constraint LPR_R_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_RADNICI_IZVJESTAJI
prompt =====================================
prompt
create table HRM.LPR_RADNICI_IZVJESTAJI
(
  id            NUMBER default on null hrm.lpr_radnici_izvjestaji_seq.nextval not null,
  lpr_radnik_id NUMBER,
  datum_od      DATE,
  datum_do      DATE,
  napomena      VARCHAR2(1000 CHAR),
  valid         VARCHAR2(1 CHAR) default 'Y' not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  row_version   INTEGER not null
)
;
create index HRM.LPR_RADNICI_IZVJES_I1 on HRM.LPR_RADNICI_IZVJESTAJI (LPR_RADNIK_ID);
alter table HRM.LPR_RADNICI_IZVJESTAJI
  add constraint LPR_RADNICI_IZVJES_ID_PK primary key (ID);
alter table HRM.LPR_RADNICI_IZVJESTAJI
  add constraint LPR_RADNICI_IZV_LPR_RADNIK_FK foreign key (LPR_RADNIK_ID)
  references HRM.LPR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.LPR_RADNICI_IZVJESTAJI
  add constraint LPR_RADNICI_IZVJES_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table MIDDLEWARE_LOG
prompt =============================
prompt
create table HRM.MIDDLEWARE_LOG
(
  id          NUMBER default on null hrm.middleware_log_seq.nextval not null,
  request     VARCHAR2(255 CHAR),
  username    VARCHAR2(255 CHAR),
  longitude   NUMBER,
  latitude    NUMBER,
  vrijeme     VARCHAR2(255),
  status      NUMBER,
  message     VARCHAR2(1000 CHAR),
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table HRM.MIDDLEWARE_LOG
  add constraint MIDDLEWARE_LOG_ID_PK primary key (ID);

prompt
prompt Creating table OBRAZAC_POLJA
prompt ============================
prompt
create table HRM.OBRAZAC_POLJA
(
  id          NUMBER default on null hrm.obrazac_polja_seq.nextval not null,
  obrazac_id  NUMBER,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(255 CHAR),
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.OBRAZAC_POLJA_I1 on HRM.OBRAZAC_POLJA (OBRAZAC_ID);
alter table HRM.OBRAZAC_POLJA
  add constraint OBRAZAC_POLJA_ID_PK primary key (ID);
alter table HRM.OBRAZAC_POLJA
  add constraint OBRAZAC_POLJA_OBRAZAC_ID_FK foreign key (OBRAZAC_ID)
  references HRM.OBRASCI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_PLATE
prompt =======================
prompt
create table HRM.PL_PLATE
(
  id                        NUMBER default on null hrm.pl_plate_seq.nextval not null,
  radnik_id                 NUMBER not null,
  godina                    NUMBER,
  mjesec                    NUMBER,
  datum_obracuna_od         DATE,
  datum_obracuna_do         DATE,
  iznos_bruto               NUMBER,
  licni_odbitak             NUMBER,
  pio_poslodavac            NUMBER,
  zdravstvo_poslodavac      NUMBER,
  nezaposlesnost_poslodavac NUMBER,
  pio_uposlenik             NUMBER,
  zdravstvo_uposlenik       NUMBER,
  nezaposlenost_uposlenik   NUMBER,
  osnovica_porez            NUMBER,
  porez_dohodak             NUMBER,
  porez_zastita_nepogode    NUMBER,
  vodna_naknada             NUMBER,
  rehabilitacija            NUMBER,
  poreska_umanjenje         NUMBER,
  doprinos_solidarnost      NUMBER,
  topli_obrok               NUMBER,
  minuli_rad                NUMBER,
  prevoz                    NUMBER,
  ukupno_dadzbina           NUMBER,
  ukupno_troskova           NUMBER,
  neto_poslije_poreza       NUMBER,
  ukupno_primanja           NUMBER,
  neto_prije_poreza         NUMBER,
  izos_obustave             NUMBER,
  ukupno_sa_obustavom       NUMBER,
  osnovni_licni_odb         NUMBER,
  odb_porodica              NUMBER,
  odb_kredit                NUMBER,
  odb_osiguranje            NUMBER,
  tip_ugovora_id            NUMBER,
  broj_sati                 NUMBER,
  topli_obrok_isplata       NUMBER,
  vazi                      VARCHAR2(1 CHAR) default 'Y',
  created_by                VARCHAR2(255),
  obrazovanje_id            NUMBER,
  tip_radnog_vremena_id     NUMBER,
  tip_radnog_odnosa_id      NUMBER,
  row_version               NUMBER,
  created                   DATE,
  updated                   DATE,
  updated_by                VARCHAR2(255),
  banka_id                  NUMBER,
  ugovorena_bruto_plata     NUMBER,
  cijena_sata               NUMBER,
  korekcija                 NUMBER
)
;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_PK primary key (ID);
alter table HRM.PL_PLATE
  add constraint PL_PLATE_BANKA_ID_FK foreign key (BANKA_ID)
  references SIF.SIF_BANKE (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_OBRAZOVANJE_ID foreign key (OBRAZOVANJE_ID)
  references SIF.HR_SIF_OBRAZOVANJA (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_TIP_RADNOG_ODNOSA_ID foreign key (TIP_RADNOG_ODNOSA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_TIP_RADNOG_VREMENA_ID foreign key (TIP_RADNOG_VREMENA_ID)
  references SIF.HR_SIF_TIPOVI_RADNOG_VREMENA (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE
  add constraint PL_PLATE_TIP_UGOVORA_ID foreign key (TIP_UGOVORA_ID)
  references SIF.HR_SIF_TIPOVI_UGOVORA (ID)
  disable
  novalidate;

prompt
prompt Creating table PLATE_DETALJI
prompt ============================
prompt
create table HRM.PLATE_DETALJI
(
  mjesec                    NUMBER,
  godina                    NUMBER,
  radnik_id                 NUMBER(10) not null,
  evidencija_prisutnosti_id NUMBER(10) not null,
  sati                      NUMBER,
  neto_plata                NUMBER,
  cijena_sata               NUMBER,
  iznos_evident             NUMBER,
  pl_id                     NUMBER,
  koeficijent               NUMBER,
  neto_iznos                NUMBER,
  neto_cijena_sata          NUMBER,
  row_version               NUMBER,
  created                   DATE,
  created_by                VARCHAR2(255),
  updated                   DATE,
  updated_by                VARCHAR2(255)
)
;
alter table HRM.PLATE_DETALJI
  add constraint FK_DETALJI_PLATE foreign key (PL_ID)
  references HRM.PL_PLATE (ID)
  disable
  novalidate;
alter table HRM.PLATE_DETALJI
  add constraint PLATE_DETALJI_EVIDENCIJA_PRISUTNOSTI_ID foreign key (EVIDENCIJA_PRISUTNOSTI_ID)
  references SIF.HR_SIF_EV_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table HRM.PLATE_DETALJI
  add constraint PLATE_DETALJI_RADNIKID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_BOLOVANJA
prompt ===========================
prompt
create table HRM.PL_BOLOVANJA
(
  id               NUMBER default on null hrm.pl_bolovanja_seq.nextval not null,
  plata_id         NUMBER,
  radnik_id        NUMBER,
  bruto_iznos_full NUMBER,
  neto_iznos_full  NUMBER,
  bruto_iznos      NUMBER,
  neto_iznos       NUMBER,
  broj_sati        NUMBER,
  valid            VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version      INTEGER not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null
)
;
create index HRM.PL_BOLOVANJA_I1 on HRM.PL_BOLOVANJA (PLATA_ID);
create index HRM.PL_BOLOVANJA_I2 on HRM.PL_BOLOVANJA (RADNIK_ID);
alter table HRM.PL_BOLOVANJA
  add constraint PL_BOLOVANJA_ID_PK primary key (ID);
alter table HRM.PL_BOLOVANJA
  add constraint PL_BOLOVANJA_PLATA_ID_FK foreign key (PLATA_ID)
  references HRM.PL_PLATE (ID)
  disable
  novalidate;
alter table HRM.PL_BOLOVANJA
  add constraint PL_BOLOVANJA_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_BOLOVANJA
  add constraint PL_BOLOVANJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PL_DETALJI
prompt =========================
prompt
create table HRM.PL_DETALJI
(
  id                        NUMBER default on null hrm.pl_detalji_seq.nextval not null,
  radnik_id                 NUMBER,
  evidencija_prisutnosti_id NUMBER,
  datum_od                  DATE,
  datum_do                  DATE,
  iznos                     NUMBER,
  valid                     VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version               INTEGER not null,
  created                   DATE not null,
  created_by                VARCHAR2(255 CHAR) not null,
  updated                   DATE not null,
  updated_by                VARCHAR2(255 CHAR) not null,
  sati                      NUMBER,
  koeficijent               NUMBER,
  cijena_sata               NUMBER
)
;
create index HRM.PL_DETALJI_I1 on HRM.PL_DETALJI (RADNIK_ID);
create index HRM.PL_DETALJI_I2 on HRM.PL_DETALJI (EVIDENCIJA_PRISUTNOSTI_ID);
alter table HRM.PL_DETALJI
  add constraint PL_DETALJI_ID_PK primary key (ID);
alter table HRM.PL_DETALJI
  add constraint PL_DETALJI_EVIDENCIJA_PRISUTNOSTI_ID_FK foreign key (EVIDENCIJA_PRISUTNOSTI_ID)
  references SIF.HR_SIF_EV_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table HRM.PL_DETALJI
  add constraint PL_DETALJI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_DETALJI
  add constraint PL_DETALJI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PL_OBUSTAVE
prompt ==========================
prompt
create table HRM.PL_OBUSTAVE
(
  id               NUMBER default on null hrm.seq_obustave.nextval not null,
  radnik_id        NUMBER not null,
  iznos_ukupno     NUMBER,
  iznos_trenutno   NUMBER,
  mjesecni_anuitet NUMBER,
  naziv            VARCHAR2(200),
  vazi             VARCHAR2(1 CHAR) default 'Y',
  created_by       VARCHAR2(255),
  row_version      NUMBER,
  created          DATE,
  updated          DATE,
  updated_by       VARCHAR2(255)
)
;
alter table HRM.PL_OBUSTAVE
  add constraint PL_OBUSTAVE_PK primary key (ID);
alter table HRM.PL_OBUSTAVE
  add constraint PL_OBUSTAVE_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_OBUSTAVE_HIST
prompt ===============================
prompt
create table HRM.PL_OBUSTAVE_HIST
(
  id          NUMBER default on null hrm.pl_obustave_hist_seq.nextval not null,
  row_version INTEGER not null,
  plata_id    NUMBER,
  radnik_id   NUMBER,
  obustava_id NUMBER,
  anuitet     NUMBER,
  vazi        VARCHAR2(255) default 'Y',
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
create index HRM.PL_OBUSTAVE_HIST_I1 on HRM.PL_OBUSTAVE_HIST (OBUSTAVA_ID);
create index HRM.PL_OBUSTAVE_HIST_I2 on HRM.PL_OBUSTAVE_HIST (PLATA_ID);
create index HRM.PL_OBUSTAVE_HIST_I3 on HRM.PL_OBUSTAVE_HIST (RADNIK_ID);
alter table HRM.PL_OBUSTAVE_HIST
  add constraint PL_OBUSTAVE_HIST_ID_PK primary key (ID);
alter table HRM.PL_OBUSTAVE_HIST
  add constraint PL_OBUSTAVE_HIST_PLATA_ID_FK foreign key (PLATA_ID)
  references HRM.PL_PLATE (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PL_OBUSTAVE_HIST
  add constraint PL_OBUSTAVE_HIST_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PL_OBUSTAVE_HIST
  add constraint PL_OBUSTAVE_HIS_OBUSTAVA_ID_FK foreign key (OBUSTAVA_ID)
  references HRM.PL_OBUSTAVE (ID) on delete cascade
  disable
  novalidate;

prompt
prompt Creating table PL_PLATE_TROSKOVI
prompt ================================
prompt
create table HRM.PL_PLATE_TROSKOVI
(
  id                    NUMBER default on null hrm.seq_plate_trosak.nextval not null,
  plata_id              NUMBER not null,
  radnik_id             NUMBER not null,
  plata_porez           NUMBER,
  ukupno_pio            NUMBER,
  ukupno_zdravstvo      NUMBER,
  nezaposlenost         NUMBER,
  ostale_naknade        NUMBER,
  ukupno_dazbina        NUMBER,
  ukupni_troskovi_plate NUMBER,
  vazi                  VARCHAR2(1 CHAR) default 'Y',
  created_by            VARCHAR2(255),
  row_version           NUMBER,
  created               DATE,
  updated               DATE,
  updated_by            VARCHAR2(255)
)
;
alter table HRM.PL_PLATE_TROSKOVI
  add constraint PL_PLATE_TROSKOVI_PLATA_ID foreign key (PLATA_ID)
  references HRM.PL_PLATE (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE_TROSKOVI
  add constraint PL_PLATE_TROSKOVI_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_PLATE_UPLATNICE
prompt =================================
prompt
create table HRM.PL_PLATE_UPLATNICE
(
  id                     NUMBER default on null hrm.seq_plate_uplatnice.nextval not null,
  plata_id               NUMBER not null,
  radnik_id              NUMBER not null,
  plata_porez            NUMBER,
  pio_doprinos           NUMBER,
  zdravstvo_fond_solid   NUMBER,
  zdravstvo_fond_kantona NUMBER,
  nezaposlenost_f        NUMBER,
  nezaposlenos_k         NUMBER,
  porez_dohodak          NUMBER,
  opca_vodna_naknada     NUMBER,
  naknada_zastita_eln    NUMBER,
  naknada_rehabil        NUMBER,
  neto_plata             NUMBER,
  vazi                   VARCHAR2(1 CHAR) default 'Y',
  created_by             VARCHAR2(255),
  row_version            NUMBER,
  created                DATE,
  updated                DATE,
  updated_by             VARCHAR2(255)
)
;
alter table HRM.PL_PLATE_UPLATNICE
  add constraint PL_PLATE_UPLATNICE_PLATA_ID foreign key (PLATA_ID)
  references HRM.PL_PLATE (ID)
  disable
  novalidate;
alter table HRM.PL_PLATE_UPLATNICE
  add constraint PL_PLATE_UPLATNICE_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_RADNICI
prompt =========================
prompt
create table HRM.PL_RADNICI
(
  id                    NUMBER default on null hrm.seq_pl_radnici.nextval not null,
  radnik_id             NUMBER,
  koeficijent_lo        VARCHAR2(20),
  plata_bruto           NUMBER,
  plata_neto            NUMBER,
  prevoz_iznos          NUMBER default 0,
  prevoz_tip            VARCHAR2(1),
  tp_obrok_iznos        NUMBER default 0,
  tekuci_racun          VARCHAR2(50),
  banka                 VARCHAR2(100),
  history               VARCHAR2(1) default 'N',
  tip_ugovora_id        NUMBER,
  created_by            VARCHAR2(255),
  vazi                  VARCHAR2(2) default 'Y',
  row_version           NUMBER,
  created               DATE,
  updated               DATE,
  updated_by            VARCHAR2(255),
  banka_id              NUMBER,
  ugovorena_bruto_plata NUMBER,
  korekcija             NUMBER
)
;
alter table HRM.PL_RADNICI
  add constraint PL_RADNICI_PK primary key (ID);
alter table HRM.PL_RADNICI
  add constraint FK_RADNICIPL foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_RADNICI
  add constraint PL_RADNICI_BANKA_ID foreign key (BANKA_ID)
  references SIF.SIF_BANKE (ID)
  disable
  novalidate;
alter table HRM.PL_RADNICI
  add constraint PL_RADNICI_TIP_UGOVORA_ID foreign key (TIP_UGOVORA_ID)
  references SIF.HR_SIF_TIPOVI_UGOVORA (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_PORESKI_ODBICI
prompt ================================
prompt
create table HRM.PL_PORESKI_ODBICI
(
  id              NUMBER default on null hrm.porseki_odb_seq.nextval not null,
  vrsta           VARCHAR2(1 CHAR) not null,
  iznos           NUMBER not null,
  plata_radnik_id NUMBER not null,
  vazi            VARCHAR2(1 CHAR) default 'Y' not null,
  radnik_id       NUMBER not null,
  row_version     NUMBER,
  created         DATE,
  created_by      VARCHAR2(255),
  updated         DATE,
  updated_by      VARCHAR2(255)
)
;
alter table HRM.PL_PORESKI_ODBICI
  add constraint PL_PORESKI_ODBICI_PK primary key (ID);
alter table HRM.PL_PORESKI_ODBICI
  add constraint PL_PORESKI_ODBICI_PLATA_RADNIK_ID foreign key (PLATA_RADNIK_ID)
  references HRM.PL_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_PORESKI_ODBICI
  add constraint PL_PORESKI_ODBICI_RADNIK_ID foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;

prompt
prompt Creating table PL_PREKOVREMENI
prompt ==============================
prompt
create table HRM.PL_PREKOVREMENI
(
  id                 NUMBER default on null hrm.pl_prekovremeni_seq.nextval not null,
  plata_id           NUMBER,
  radnik_id          NUMBER,
  pvs_id             NUMBER,
  cijena_sata        NUMBER,
  broj_sati          NUMBER,
  procenat           NUMBER,
  bruto_iznos_before NUMBER,
  neto_iznos_before  NUMBER,
  bruto_iznos_after  NUMBER,
  neto_iznos_after   NUMBER,
  valid              VARCHAR2(1 CHAR) default 'Y',
  row_version        INTEGER not null,
  created            DATE not null,
  created_by         VARCHAR2(255 CHAR) not null,
  updated            DATE not null,
  updated_by         VARCHAR2(255 CHAR) not null
)
;
create index HRM.PL_PREKOVREMENI_I1 on HRM.PL_PREKOVREMENI (PLATA_ID);
create index HRM.PL_PREKOVREMENI_I2 on HRM.PL_PREKOVREMENI (RADNIK_ID);
create index HRM.PL_PREKOVREMENI_I3 on HRM.PL_PREKOVREMENI (PVS_ID);
alter table HRM.PL_PREKOVREMENI
  add constraint PL_PREKOVREMENI_ID_PK primary key (ID);
alter table HRM.PL_PREKOVREMENI
  add constraint PL_PREKOVREMENI_PLATA_ID_FK foreign key (PLATA_ID)
  references HRM.PL_PLATE (ID)
  disable
  novalidate;
alter table HRM.PL_PREKOVREMENI
  add constraint PL_PREKOVREMENI_PVS_ID foreign key (PVS_ID)
  references SIF.HR_PVS_TIPOVI (ID)
  disable
  novalidate;
alter table HRM.PL_PREKOVREMENI
  add constraint PL_PREKOVREMENI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.PL_PREKOVREMENI
  add constraint PL_PREKOVREMENI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_OOJ_INTERVALI
prompt ================================
prompt
create table HRM.PRU_OOJ_INTERVALI
(
  id          NUMBER default on null hrm.pru_ooj_intervali_seq.nextval not null,
  ooj_id      NUMBER,
  interval_id NUMBER,
  next_datum  DATE,
  valid       VARCHAR2(1 CHAR) default 'Y' not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  row_version INTEGER not null
)
;
create index HRM.PRU_OOJ_INTERVALI_I1 on HRM.PRU_OOJ_INTERVALI (INTERVAL_ID);
create index HRM.PRU_OOJ_INTERVALI_I282 on HRM.PRU_OOJ_INTERVALI (OOJ_ID);
alter table HRM.PRU_OOJ_INTERVALI
  add constraint PRU_OOJ_INTERVALI_ID_PK primary key (ID);
alter table HRM.PRU_OOJ_INTERVALI
  add constraint PRU_OOJ_INTERVALI_INTERVAL_ID foreign key (INTERVAL_ID)
  references SIF.PRU_SIF_INTERVALI (ID)
  disable
  novalidate;
alter table HRM.PRU_OOJ_INTERVALI
  add constraint PRU_OOJ_INTERVALI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.PRU_OOJ_INTERVALI
  add constraint PRU_OOJ_INTERVALI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_VREMENSKI_ROKOVI
prompt ===================================
prompt
create table HRM.PRU_VREMENSKI_ROKOVI
(
  id          NUMBER default on null hrm.pru_vremenski_rokovi_seq.nextval not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR),
  status_id   NUMBER,
  datum_od    DATE,
  datum_do    DATE,
  valid       VARCHAR2(1 CHAR) default 'Y' not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  row_version INTEGER not null
)
;
create index HRM.PRU_VREMENSKI_ROKO_I1 on HRM.PRU_VREMENSKI_ROKOVI (OOJ_ID);
create index HRM.PRU_VREMENSKI_ROKO_I332 on HRM.PRU_VREMENSKI_ROKOVI (STATUS_ID);
alter table HRM.PRU_VREMENSKI_ROKOVI
  add constraint PRU_VREMENSKI_ROKO_ID_PK primary key (ID);
alter table HRM.PRU_VREMENSKI_ROKOVI
  add constraint PRU_VREMENSKI_ROKOVI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.PRU_VREMENSKI_ROKOVI
  add constraint PRU_VREMENSKI_ROKOVI_STATUS_ID foreign key (STATUS_ID)
  references SIF.PRU_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.PRU_VREMENSKI_ROKOVI
  add constraint PRU_VREMENSKI_ROKO_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_RADNICI
prompt ==========================
prompt
create table HRM.PRU_RADNICI
(
  id               NUMBER default on null hrm.pru_radnici_seq.nextval not null,
  vremenski_rok_id NUMBER,
  radnik_id        NUMBER,
  radno_mjesto_id  NUMBER,
  status_id        NUMBER,
  nadredjeni_id    NUMBER,
  supervizor_id    NUMBER,
  tip_radnika      VARCHAR2(1 CHAR),
  neocijenjen_id   NUMBER,
  valid            VARCHAR2(1 CHAR) default 'Y' not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null,
  row_version      INTEGER not null
)
;
create index HRM.PRU_RADNICI_I1 on HRM.PRU_RADNICI (NADREDJENI_ID);
create index HRM.PRU_RADNICI_I432 on HRM.PRU_RADNICI (NEOCIJENJEN_ID);
create index HRM.PRU_RADNICI_I443 on HRM.PRU_RADNICI (RADNIK_ID);
create index HRM.PRU_RADNICI_I454 on HRM.PRU_RADNICI (RADNO_MJESTO_ID);
create index HRM.PRU_RADNICI_I465 on HRM.PRU_RADNICI (STATUS_ID);
create index HRM.PRU_RADNICI_I476 on HRM.PRU_RADNICI (SUPERVIZOR_ID);
create index HRM.PRU_RADNICI_I487 on HRM.PRU_RADNICI (VREMENSKI_ROK_ID);
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_ID_PK primary key (ID);
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_NADREDJENI_ID_FK foreign key (NADREDJENI_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_NEOCIJENJEN_ID foreign key (NEOCIJENJEN_ID)
  references SIF.PRU_SIF_RAZLOZI_NEOCJENIVANJA (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_RADNO_MJESTO_ID_FK foreign key (RADNO_MJESTO_ID)
  references CORE.FIRMA_RADNA_MJESTA (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_STATUS_ID foreign key (STATUS_ID)
  references SIF.PRU_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_SUPERVIZOR_ID_FK foreign key (SUPERVIZOR_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_VREMENSKI_ROK_I_FK foreign key (VREMENSKI_ROK_ID)
  references HRM.PRU_VREMENSKI_ROKOVI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_TIP_RADNIKA_CK
  check ( tip_radnika in ( 'R', 'N' ) )
  disable
  novalidate;
alter table HRM.PRU_RADNICI
  add constraint PRU_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_RADNICI_HIST
prompt ===============================
prompt
create table HRM.PRU_RADNICI_HIST
(
  id            NUMBER default on null hrm.pru_radnici_hist_seq.nextval not null,
  pru_radnik_id NUMBER not null,
  status_id     NUMBER not null,
  komentar      VARCHAR2(1000 CHAR),
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  row_version   INTEGER not null
)
;
create index HRM.PRU_RADNICI_HIST_I1 on HRM.PRU_RADNICI_HIST (PRU_RADNIK_ID);
create index HRM.PRU_RADNICI_HIST_I122 on HRM.PRU_RADNICI_HIST (STATUS_ID);
alter table HRM.PRU_RADNICI_HIST
  add constraint PRU_RADNICI_HIST_ID_PK primary key (ID);
alter table HRM.PRU_RADNICI_HIST
  add constraint PRU_RADNICI_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.PRU_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI_HIST
  add constraint PRU_R_HIST_RADNIK_FK foreign key (PRU_RADNIK_ID)
  references HRM.PRU_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI_HIST
  add constraint PRU_R_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_RADNICI_OCJENE
prompt =================================
prompt
create table HRM.PRU_RADNICI_OCJENE
(
  id               NUMBER default on null hrm.pru_radnici_ocjene_seq.nextval not null,
  vremenski_rok_id NUMBER,
  kompetencija_id  NUMBER,
  ocjena_id        NUMBER,
  radnik_id        NUMBER,
  valid            VARCHAR2(1 CHAR) default 'Y' not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null,
  row_version      INTEGER not null
)
;
create index HRM.PRU_RADNICI_OCJENE_I1 on HRM.PRU_RADNICI_OCJENE (KOMPETENCIJA_ID);
create index HRM.PRU_RADNICI_OCJENE_I552 on HRM.PRU_RADNICI_OCJENE (OCJENA_ID);
create index HRM.PRU_RADNICI_OCJENE_I563 on HRM.PRU_RADNICI_OCJENE (RADNIK_ID);
create index HRM.PRU_RADNICI_OCJENE_I574 on HRM.PRU_RADNICI_OCJENE (VREMENSKI_ROK_ID);
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_OCJENE_ID_PK primary key (ID);
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_OCJENE_KOMPETENCIJA_ID foreign key (KOMPETENCIJA_ID)
  references SIF.PRU_SIF_KOMPETENCIJE (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_OCJENE_OCJENA_ID foreign key (OCJENA_ID)
  references SIF.PRU_SIF_TIPOVI_OCJENA (ID)
  disable
  novalidate;
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_OCJENE_RADNIK_I_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_O_VREMENSKI_ROK_FK foreign key (VREMENSKI_ROK_ID)
  references HRM.PRU_VREMENSKI_ROKOVI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_RADNICI_OCJENE
  add constraint PRU_RADNICI_OCJENE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_VREMENSKI_ROKOVI_HIST
prompt ========================================
prompt
create table HRM.PRU_VREMENSKI_ROKOVI_HIST
(
  id               NUMBER default on null hrm.pru_vremenski_rokovi_hist_seq.nextval not null,
  vremenski_rok_id NUMBER not null,
  status_id        NUMBER not null,
  valid            VARCHAR2(1 CHAR) default on null 'Y' not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null,
  row_version      INTEGER not null
)
;
create index HRM.PRU_VREMENSKI_ROKO_I72 on HRM.PRU_VREMENSKI_ROKOVI_HIST (VREMENSKI_ROK_ID);
alter table HRM.PRU_VREMENSKI_ROKOVI_HIST
  add constraint PRU_VREMENSKI_HIST_ID_PK primary key (ID);
alter table HRM.PRU_VREMENSKI_ROKOVI_HIST
  add constraint PRU_VREMENSKI_ROKOVI_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.PRU_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.PRU_VREMENSKI_ROKOVI_HIST
  add constraint PRU_V_HIST_FK foreign key (VREMENSKI_ROK_ID)
  references HRM.PRU_VREMENSKI_ROKOVI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.PRU_VREMENSKI_ROKOVI_HIST
  add constraint PRU_V_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_PROJEKTI
prompt =========================
prompt
create table HRM.P_PROJEKTI
(
  id          NUMBER default on null hrm.p_ooj_projekti_seq.nextval not null,
  ooj_id      NUMBER,
  pozadina_id NUMBER,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  status_id   NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  klijent_id  NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_OOJ_PROJEKTI_I1 on HRM.P_PROJEKTI (OOJ_ID);
create index HRM.P_OOJ_PROJEKTI_I2 on HRM.P_PROJEKTI (POZADINA_ID);
alter table HRM.P_PROJEKTI
  add constraint P_OOJ_PROJEKTI_ID_PK primary key (ID);
alter table HRM.P_PROJEKTI
  add constraint P_PROJEKTI_KLIJENT_ID foreign key (KLIJENT_ID)
  references ACCOUNTING.SEC_KLIJENTI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKTI
  add constraint P_PROJEKTI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKTI
  add constraint P_PROJEKTI_POZADINA_ID foreign key (POZADINA_ID)
  references SIF.P_SIF_POZADINE (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKTI
  add constraint P_PROJEKTI_STATUS_ID foreign key (STATUS_ID)
  references SIF.P_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKTI
  add constraint P_OOJ_PROJEKTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_PROJEKAT_LISTE
prompt ===============================
prompt
create table HRM.P_PROJEKAT_LISTE
(
  id          NUMBER default on null hrm.p_projekat_liste_seq.nextval not null,
  projekat_id NUMBER,
  naziv       VARCHAR2(255 CHAR) not null,
  sequence    NUMBER not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_LISTE_I1 on HRM.P_PROJEKAT_LISTE (PROJEKAT_ID);
alter table HRM.P_PROJEKAT_LISTE
  add constraint P_PROJEKAT_LISTE_ID_PK primary key (ID);
alter table HRM.P_PROJEKAT_LISTE
  add constraint P_PROJEKAT_LISTE_PROJEKAT_ID_FK foreign key (PROJEKAT_ID)
  references HRM.P_PROJEKTI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_LISTE
  add constraint P_PROJEKAT_LISTE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_KARTICE
prompt ========================
prompt
create table HRM.P_KARTICE
(
  id          NUMBER default on null hrm.p_projekat_kartice_seq.nextval not null,
  lista_id    NUMBER,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  datum_od    DATE,
  datum_do    DATE,
  status_id   NUMBER,
  cijena_sata NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KARTICE_I1 on HRM.P_KARTICE (LISTA_ID);
alter table HRM.P_KARTICE
  add constraint P_PROJEKAT_KARTICE_ID_PK primary key (ID);
alter table HRM.P_KARTICE
  add constraint P_KARTICE_STATUS_ID foreign key (STATUS_ID)
  references SIF.P_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.P_KARTICE
  add constraint P_PROJEKAT_KARTICE_LISTA_ID_FK foreign key (LISTA_ID)
  references HRM.P_PROJEKAT_LISTE (ID)
  disable
  novalidate;
alter table HRM.P_KARTICE
  add constraint P_PROJEKAT_KARTICE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_CHECKLIST
prompt ==========================
prompt
create table HRM.P_CHECKLIST
(
  id          NUMBER default on null hrm.p_projekat_kartica_checklist_seq.nextval not null,
  kartica_id  NUMBER,
  naziv       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KARTICA_CHECKLIST_I1 on HRM.P_CHECKLIST (KARTICA_ID);
alter table HRM.P_CHECKLIST
  add constraint P_PROJEKAT_KARTICA_CHECKLIST_ID_PK primary key (ID);
alter table HRM.P_CHECKLIST
  add constraint P_PROJEKAT_KARTICA_CHECKLIST_KARTICA_ID_FK foreign key (KARTICA_ID)
  references HRM.P_KARTICE (ID)
  disable
  novalidate;
alter table HRM.P_CHECKLIST
  add constraint P_PROJEKAT_KARTICA_CHECKLIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_CHECKLIST_STAVKE
prompt =================================
prompt
create table HRM.P_CHECKLIST_STAVKE
(
  id           NUMBER default on null hrm.p_projekat_checklist_stavke_seq.nextval not null,
  checklist_id NUMBER,
  naziv        VARCHAR2(255 CHAR) not null,
  datum_do     DATE,
  vrijeme_rada NUMBER,
  datum_od     DATE,
  valid        VARCHAR2(1 CHAR) default 'Y',
  status_id    NUMBER,
  start_time   DATE,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_CHECKLIST_STAVKE_I1 on HRM.P_CHECKLIST_STAVKE (CHECKLIST_ID);
alter table HRM.P_CHECKLIST_STAVKE
  add constraint P_PROJEKAT_CHECKLIST_STAVKE_ID_PK primary key (ID);
alter table HRM.P_CHECKLIST_STAVKE
  add constraint P_CHECKLIST_STAVKE_STATUS_ID foreign key (STATUS_ID)
  references SIF.P_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.P_CHECKLIST_STAVKE
  add constraint P_PROJEKAT_CHECKLIST_STAVKE_CHECKLIST_ID_FK foreign key (CHECKLIST_ID)
  references HRM.P_CHECKLIST (ID)
  disable
  novalidate;
alter table HRM.P_CHECKLIST_STAVKE
  add constraint P_PROJEKAT_CHECKLIST_STAVKE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_CHECKLIST_KORISNICI
prompt ====================================
prompt
create table HRM.P_CHECKLIST_KORISNICI
(
  id          NUMBER default on null hrm.p_checklist_radnici_seq.nextval not null,
  stavka_id   NUMBER,
  korisnik_id NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_CHECKLIST_RADNICI_I1 on HRM.P_CHECKLIST_KORISNICI (STAVKA_ID);
create index HRM.P_CHECKLIST_RADNICI_I2 on HRM.P_CHECKLIST_KORISNICI (KORISNIK_ID);
alter table HRM.P_CHECKLIST_KORISNICI
  add constraint P_CHECKLIST_RADNICI_ID_PK primary key (ID);
alter table HRM.P_CHECKLIST_KORISNICI
  add constraint P_CHECKLIST_KORISNICI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.P_CHECKLIST_KORISNICI
  add constraint P_CHECKLIST_RADNICI_STAVKA_ID_FK foreign key (STAVKA_ID)
  references HRM.P_CHECKLIST_STAVKE (ID)
  disable
  novalidate;
alter table HRM.P_CHECKLIST_KORISNICI
  add constraint P_CHECKLIST_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_KARTICA_DOKUMENTI
prompt ==================================
prompt
create table HRM.P_KARTICA_DOKUMENTI
(
  id                NUMBER default on null hrm.p_projekat_kartica_dokumenti_seq.nextval not null,
  kartica_id        NUMBER,
  naziv             VARCHAR2(255 CHAR) not null,
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default 'Y',
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KARTICA_DOKUMENTI_I1 on HRM.P_KARTICA_DOKUMENTI (KARTICA_ID);
alter table HRM.P_KARTICA_DOKUMENTI
  add constraint P_PROJEKAT_KARTICA_DOKUMENTI_ID_PK primary key (ID);
alter table HRM.P_KARTICA_DOKUMENTI
  add constraint P_PROJEKAT_KARTICA_DOKUMENTI_KARTICA_ID_FK foreign key (KARTICA_ID)
  references HRM.P_KARTICE (ID)
  disable
  novalidate;
alter table HRM.P_KARTICA_DOKUMENTI
  add constraint P_PROJEKAT_KARTICA_DOKUMENTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_KARTICA_KORISNICI
prompt ==================================
prompt
create table HRM.P_KARTICA_KORISNICI
(
  id          NUMBER default on null hrm.p_projekat_kartica_radnici_seq.nextval not null,
  kartica_id  NUMBER,
  korisnik_id NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KARTICA_RADNICI_I1 on HRM.P_KARTICA_KORISNICI (KARTICA_ID);
create index HRM.P_PROJEKAT_KARTICA_RADNICI_I2 on HRM.P_KARTICA_KORISNICI (KORISNIK_ID);
alter table HRM.P_KARTICA_KORISNICI
  add constraint P_PROJEKAT_KARTICA_RADNICI_ID_PK primary key (ID);
alter table HRM.P_KARTICA_KORISNICI
  add constraint P_KARTICA_RADNICI_UK unique (KARTICA_ID, KORISNIK_ID);
alter table HRM.P_KARTICA_KORISNICI
  add constraint P_KARTICA_KORISNICI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.P_KARTICA_KORISNICI
  add constraint P_PROJEKAT_KARTICA_RADNICI_KARTICA_ID_FK foreign key (KARTICA_ID)
  references HRM.P_KARTICE (ID)
  disable
  novalidate;
alter table HRM.P_KARTICA_KORISNICI
  add constraint P_PROJEKAT_KARTICA_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_OOJ_LABELI
prompt ===========================
prompt
create table HRM.P_OOJ_LABELI
(
  id          NUMBER default on null hrm.p_ooj_labeli_seq.nextval not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR) not null,
  color_code  VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_OOJ_LABELI_I1 on HRM.P_OOJ_LABELI (OOJ_ID);
alter table HRM.P_OOJ_LABELI
  add constraint P_OOJ_LABELI_ID_PK primary key (ID);
alter table HRM.P_OOJ_LABELI
  add constraint P_OOJ_LABELI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.P_OOJ_LABELI
  add constraint P_OOJ_LABELI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_KARTICA_LABELI
prompt ===============================
prompt
create table HRM.P_KARTICA_LABELI
(
  id          NUMBER default on null hrm.p_projekat_kartica_labeli_seq.nextval not null,
  kartica_id  NUMBER,
  label_id    NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KARTICA_LABELI_I1 on HRM.P_KARTICA_LABELI (KARTICA_ID);
create index HRM.P_PROJEKAT_KARTICA_LABELI_I2 on HRM.P_KARTICA_LABELI (LABEL_ID);
alter table HRM.P_KARTICA_LABELI
  add constraint P_PROJEKAT_KARTICA_LABELI_ID_PK primary key (ID);
alter table HRM.P_KARTICA_LABELI
  add constraint P_PROJEKAT_KARTICA_LABELI_KARTICA_ID_FK foreign key (KARTICA_ID)
  references HRM.P_KARTICE (ID)
  disable
  novalidate;
alter table HRM.P_KARTICA_LABELI
  add constraint P_PROJEKAT_KARTICA_LABELI_LABEL_ID_FK foreign key (LABEL_ID)
  references HRM.P_OOJ_LABELI (ID)
  disable
  novalidate;
alter table HRM.P_KARTICA_LABELI
  add constraint P_PROJEKAT_KARTICA_LABELI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_PROJEKAT_DOKUMENTI
prompt ===================================
prompt
create table HRM.P_PROJEKAT_DOKUMENTI
(
  id                NUMBER default on null hrm.p_projekat_dokumenti_seq.nextval not null,
  projekat_id       NUMBER,
  naziv             VARCHAR2(255 CHAR) not null,
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default 'Y',
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_DOKUMENTI_I1 on HRM.P_PROJEKAT_DOKUMENTI (PROJEKAT_ID);
alter table HRM.P_PROJEKAT_DOKUMENTI
  add constraint P_PROJEKAT_DOKUMENTI_ID_PK primary key (ID);
alter table HRM.P_PROJEKAT_DOKUMENTI
  add constraint P_PROJEKAT_DOKUMENTI_PROJEKAT_ID_FK foreign key (PROJEKAT_ID)
  references HRM.P_PROJEKTI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_DOKUMENTI
  add constraint P_PROJEKAT_DOKUMENTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_PROJEKAT_KOMENTARI
prompt ===================================
prompt
create table HRM.P_PROJEKAT_KOMENTARI
(
  id               NUMBER default on null hrm.p_projekat_komentari_seq.nextval not null,
  tip_komentara_id NUMBER,
  projekat_id      NUMBER,
  kartica_id       NUMBER,
  korisnik_id      NUMBER,
  komentar         VARCHAR2(1000 CHAR) not null,
  vrijeme          DATE not null,
  system           VARCHAR2(1 CHAR),
  valid            VARCHAR2(1 CHAR) default 'Y',
  row_version      INTEGER not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_KOMENTARI_I1 on HRM.P_PROJEKAT_KOMENTARI (TIP_KOMENTARA_ID);
create index HRM.P_PROJEKAT_KOMENTARI_I2 on HRM.P_PROJEKAT_KOMENTARI (KARTICA_ID);
create index HRM.P_PROJEKAT_KOMENTARI_I3 on HRM.P_PROJEKAT_KOMENTARI (KORISNIK_ID);
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_ID_PK primary key (ID);
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_KARTICA_ID_FK foreign key (KARTICA_ID)
  references HRM.P_KARTICE (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_PROJEKAT_ID_FK foreign key (PROJEKAT_ID)
  references HRM.P_PROJEKTI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_TIP_KOMENTARA_ID foreign key (TIP_KOMENTARA_ID)
  references SIF.P_SIF_TIPOVI_KOMENTARA (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KOMENTARI
  add constraint P_PROJEKAT_KOMENTARI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_PROJEKAT_KORISNICI
prompt ===================================
prompt
create table HRM.P_PROJEKAT_KORISNICI
(
  id          NUMBER default on null hrm.p_projekat_radnici_seq.nextval not null,
  projekat_id NUMBER,
  korisnik_id NUMBER,
  pristup_id  NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.P_PROJEKAT_RADNICI_I1 on HRM.P_PROJEKAT_KORISNICI (PROJEKAT_ID);
create index HRM.P_PROJEKAT_RADNICI_I2 on HRM.P_PROJEKAT_KORISNICI (KORISNIK_ID);
create index HRM.P_PROJEKAT_RADNICI_I3 on HRM.P_PROJEKAT_KORISNICI (PRISTUP_ID);
alter table HRM.P_PROJEKAT_KORISNICI
  add constraint P_PROJEKAT_RADNICI_ID_PK primary key (ID);
alter table HRM.P_PROJEKAT_KORISNICI
  add constraint P_PROJEKAT_KORISNICI_KORISNIK_ID_FK foreign key (KORISNIK_ID)
  references CORE.KORISNICI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KORISNICI
  add constraint P_PROJEKAT_KORISNICI_PRISTUP_ID foreign key (PRISTUP_ID)
  references SIF.P_SIF_NIVOI_PRISTUPA (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KORISNICI
  add constraint P_PROJEKAT_RADNICI_PROJEKAT_ID_FK foreign key (PROJEKAT_ID)
  references HRM.P_PROJEKTI (ID)
  disable
  novalidate;
alter table HRM.P_PROJEKAT_KORISNICI
  add constraint P_PROJEKAT_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SMJENA_SABLONI
prompt =============================
prompt
create table HRM.SMJENA_SABLONI
(
  id          NUMBER default on null hrm.smjena_sabloni_seq.nextval not null,
  ooj_id      NUMBER,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.SMJENA_SABLONI_I1 on HRM.SMJENA_SABLONI (OOJ_ID);
alter table HRM.SMJENA_SABLONI
  add constraint SMJENA_SABLONI_ID_PK primary key (ID);
alter table HRM.SMJENA_SABLONI
  add constraint SMJENA_SABLONI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.SMJENA_SABLONI
  add constraint SMJENA_SABLONI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SMJENA_SABLON_DANI
prompt =================================
prompt
create table HRM.SMJENA_SABLON_DANI
(
  id          NUMBER default on null hrm.smjena_sablon_dani_seq.nextval not null,
  sablon_id   NUMBER,
  radnik_id   NUMBER,
  smjena_id   NUMBER,
  dan         VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.SMJENA_SABLON_DANI_I1 on HRM.SMJENA_SABLON_DANI (SABLON_ID);
create index HRM.SMJENA_SABLON_DANI_I2 on HRM.SMJENA_SABLON_DANI (RADNIK_ID);
create index HRM.SMJENA_SABLON_DANI_I3 on HRM.SMJENA_SABLON_DANI (SMJENA_ID);
alter table HRM.SMJENA_SABLON_DANI
  add constraint SMJENA_SABLON_DANI_ID_PK primary key (ID);
alter table HRM.SMJENA_SABLON_DANI
  add constraint SMJENA_SABLON_DANI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.SMJENA_SABLON_DANI
  add constraint SMJENA_SABLON_DANI_SABLON_ID_FK foreign key (SABLON_ID)
  references HRM.SMJENA_SABLONI (ID)
  disable
  novalidate;
alter table HRM.SMJENA_SABLON_DANI
  add constraint SMJENA_SABLON_DANI_SMJENA_ID_FK foreign key (SMJENA_ID)
  references HRM.SMJENE (ID)
  disable
  novalidate;
alter table HRM.SMJENA_SABLON_DANI
  add constraint SMJENA_SABLON_DANI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SMJENA_SIHT_LISTA
prompt ================================
prompt
create table HRM.SMJENA_SIHT_LISTA
(
  id          NUMBER default on null hrm.smjena_siht_lista_seq.nextval not null,
  ooj_id      NUMBER,
  sablon_id   NUMBER,
  datum       DATE,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.SMJENA_SIHT_LISTA_I1 on HRM.SMJENA_SIHT_LISTA (OOJ_ID);
create index HRM.SMJENA_SIHT_LISTA_I2 on HRM.SMJENA_SIHT_LISTA (SABLON_ID);
alter table HRM.SMJENA_SIHT_LISTA
  add constraint SMJENA_SIHT_LISTA_ID_PK primary key (ID);
alter table HRM.SMJENA_SIHT_LISTA
  add constraint SMJENA_SIHT_LISTA_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.SMJENA_SIHT_LISTA
  add constraint SMJENA_SIHT_LISTA_SABLON_ID_FK foreign key (SABLON_ID)
  references HRM.SMJENA_SABLONI (ID)
  disable
  novalidate;

prompt
prompt Creating table SP_IZVJESTAJ
prompt ===========================
prompt
create table HRM.SP_IZVJESTAJ
(
  id               NUMBER default on null hrm.seq_izvjestaj.nextval not null,
  opis             VARCHAR2(1000 CHAR),
  vrijeme_polaska  DATE,
  vrijeme_povratka DATE,
  broj_sati        NUMBER,
  broj_dana        NUMBER,
  broj_min         NUMBER,
  vozilo_id        NUMBER,
  komentar         VARCHAR2(2000 CHAR),
  akontacija       NUMBER,
  drzava_id        NUMBER,
  kurs             NUMBER,
  vazi             VARCHAR2(1 CHAR) default 'Y',
  created_by       VARCHAR2(255 CHAR),
  valuta_id        NUMBER,
  row_version      NUMBER,
  created          DATE,
  updated          DATE,
  updated_by       VARCHAR2(255 CHAR),
  zahtjev_id       NUMBER
)
;
alter table HRM.SP_IZVJESTAJ
  add constraint PK_SP_IZVJESTAJ primary key (ID);
alter table HRM.SP_IZVJESTAJ
  add constraint FK_IZV_ID_ZAH foreign key (ZAHTJEV_ID)
  references HRM.SP_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.SP_IZVJESTAJ
  add constraint SP_IZVJESTAJ_DRZAVA_ID foreign key (DRZAVA_ID)
  references SIF.SIF_DRZAVE (ID)
  disable
  novalidate;
alter table HRM.SP_IZVJESTAJ
  add constraint SP_IZVJESTAJ_VALUTA_ID foreign key (VALUTA_ID)
  references SIF.ACC_VALUTE (ID)
  disable
  novalidate;
alter table HRM.SP_IZVJESTAJ
  add constraint SP_IZVJESTAJ_VOZILO_ID foreign key (VOZILO_ID)
  references HRM.FV_VOZILA (ID)
  disable
  novalidate;

prompt
prompt Creating table SP_PUTNICI
prompt =========================
prompt
create table HRM.SP_PUTNICI
(
  id          NUMBER default on null hrm.sp_putnici_seq.nextval not null,
  zahtjev_id  NUMBER,
  radnik_id   NUMBER,
  redni_broj  NUMBER,
  row_version INTEGER not null,
  valid       VARCHAR2(1) default 'Y',
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
create index HRM.SP_PUTNICI_I1 on HRM.SP_PUTNICI (RADNIK_ID);
create index HRM.SP_PUTNICI_I2 on HRM.SP_PUTNICI (ZAHTJEV_ID);
alter table HRM.SP_PUTNICI
  add constraint SP_PUTNICI_ID_PK primary key (ID);
alter table HRM.SP_PUTNICI
  add constraint SP_PUTNICI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID) on delete cascade
  disable
  novalidate;
alter table HRM.SP_PUTNICI
  add constraint SP_PUTNICI_ZAHTJEV_ID_FK foreign key (ZAHTJEV_ID)
  references HRM.SP_ZAHTJEVI (ID) on delete cascade
  disable
  novalidate;

prompt
prompt Creating table SP_STATUSI_HIST
prompt ==============================
prompt
create table HRM.SP_STATUSI_HIST
(
  id          NUMBER default on null hrm.seq_sp_statusi_hist.nextval not null,
  datum       DATE not null,
  status_id   NUMBER,
  komentar    VARCHAR2(200),
  row_version NUMBER,
  created     DATE,
  created_by  VARCHAR2(255),
  updated     DATE,
  updated_by  VARCHAR2(255),
  zahtjev_id  NUMBER
)
;
alter table HRM.SP_STATUSI_HIST
  add constraint SP_STATUSI_HIST_PK primary key (ID);
alter table HRM.SP_STATUSI_HIST
  add constraint FK_ID_ZAHTJEVA foreign key (ZAHTJEV_ID)
  references HRM.SP_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.SP_STATUSI_HIST
  add constraint SP_STATUSI_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.GO_STATUSI (ID)
  disable
  novalidate;

prompt
prompt Creating table SP_TROSKOVI
prompt ==========================
prompt
create table HRM.SP_TROSKOVI
(
  id             NUMBER default on null hrm.seq_troskovi.nextval not null,
  opis           VARCHAR2(255),
  racun          BLOB,
  racun_filename VARCHAR2(255),
  racun_mimetype VARCHAR2(255),
  tip_id         NUMBER not null,
  created_by     VARCHAR2(255),
  row_version    NUMBER,
  created        DATE,
  updated        DATE,
  updated_by     VARCHAR2(255),
  zahtjev_id     NUMBER,
  iznos          NUMBER,
  valid          VARCHAR2(1) default 'Y'
)
;
comment on column HRM.SP_TROSKOVI.tip_id
  is 'sP_troskovi_tipovi';
alter table HRM.SP_TROSKOVI
  add constraint PK_SP_TROSKOVI primary key (ID);
alter table HRM.SP_TROSKOVI
  add constraint FK_TROSKOVI_ID_ZAH foreign key (ZAHTJEV_ID)
  references HRM.SP_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.SP_TROSKOVI
  add constraint SP_TROSKOVI_TIP_ID foreign key (TIP_ID)
  references SIF.SP_TROSKOVI_TIPOVI (ID)
  disable
  novalidate;

prompt
prompt Creating table S_OOJ_PROSTORIJE
prompt ===============================
prompt
create table HRM.S_OOJ_PROSTORIJE
(
  id          NUMBER default on null hrm.s_ooj_prostorije_seq.nextval not null,
  ooj_id      NUMBER not null,
  naziv       VARCHAR2(255 CHAR) not null,
  kapacitet   NUMBER not null,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.S_OOJ_PROSTORIJE_I1 on HRM.S_OOJ_PROSTORIJE (OOJ_ID);
alter table HRM.S_OOJ_PROSTORIJE
  add constraint S_OOJ_PROSTORIJE_S_OOJ_PROSTORIJE_ID_PK primary key (ID);
alter table HRM.S_OOJ_PROSTORIJE
  add constraint S_OOJ_PROSTORIJE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.S_OOJ_PROSTORIJE
  add constraint S_OOJ_PROSTORIJE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table S_SASTANCI
prompt =========================
prompt
create table HRM.S_SASTANCI
(
  id            NUMBER default on null hrm.s_sastanaci_seq.nextval not null,
  ooj_id        NUMBER not null,
  status_id     NUMBER,
  prostorija_id NUMBER,
  tip_id        NUMBER not null,
  naziv         VARCHAR2(255 CHAR) not null,
  opis          VARCHAR2(1000 CHAR),
  napomena      VARCHAR2(1000 CHAR),
  datum_od      DATE not null,
  datum_do      DATE not null,
  valid         VARCHAR2(1 CHAR) default 'Y',
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
create index HRM.S_SASTANACI_I1 on HRM.S_SASTANCI (OOJ_ID);
create index HRM.S_SASTANACI_I2 on HRM.S_SASTANCI (STATUS_ID);
create index HRM.S_SASTANACI_I3 on HRM.S_SASTANCI (PROSTORIJA_ID);
create index HRM.S_SASTANACI_I4 on HRM.S_SASTANCI (TIP_ID);
alter table HRM.S_SASTANCI
  add constraint S_SASTANACI_S_SASTANACI_ID_PK primary key (ID);
alter table HRM.S_SASTANCI
  add constraint S_SASTANACI_PROSTORIJA_ID_FK foreign key (PROSTORIJA_ID)
  references HRM.S_OOJ_PROSTORIJE (ID)
  disable
  novalidate;
alter table HRM.S_SASTANCI
  add constraint S_SASTANCI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.S_SASTANCI
  add constraint S_SASTANCI_STATUS_ID foreign key (STATUS_ID)
  references SIF.S_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.S_SASTANCI
  add constraint S_SASTANCI_TIP_ID foreign key (TIP_ID)
  references SIF.S_SIF_TIPOVI_SASTANAKA (ID)
  disable
  novalidate;
alter table HRM.S_SASTANCI
  add constraint S_SASTANACI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table S_SASTANAK_HIST
prompt ==============================
prompt
create table HRM.S_SASTANAK_HIST
(
  id          NUMBER default on null hrm.s_sastanak_hist_seq.nextval not null,
  sastanak_id NUMBER not null,
  status_id   NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.S_SASTANAK_HIST_I1 on HRM.S_SASTANAK_HIST (SASTANAK_ID);
create index HRM.S_SASTANAK_HIST_I2 on HRM.S_SASTANAK_HIST (STATUS_ID);
alter table HRM.S_SASTANAK_HIST
  add constraint S_SASTANAK_HIST_S_SASTANAK_HIST_ID_PK primary key (ID);
alter table HRM.S_SASTANAK_HIST
  add constraint S_SASTANAK_HIST_SASTANAK_ID_FK foreign key (SASTANAK_ID)
  references HRM.S_SASTANCI (ID)
  disable
  novalidate;
alter table HRM.S_SASTANAK_HIST
  add constraint S_SASTANAK_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.S_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.S_SASTANAK_HIST
  add constraint S_SASTANAK_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table S_SASTANAK_RADNICI
prompt =================================
prompt
create table HRM.S_SASTANAK_RADNICI
(
  id          NUMBER default on null hrm.s_sastanak_radnici_seq.nextval not null,
  sastanak_id NUMBER not null,
  radnik_id   NUMBER not null,
  prisutan    VARCHAR2(1) default 'Y',
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.S_SASTANAK_RADNICI_I1 on HRM.S_SASTANAK_RADNICI (SASTANAK_ID);
create index HRM.S_SASTANAK_RADNICI_I2 on HRM.S_SASTANAK_RADNICI (RADNIK_ID);
alter table HRM.S_SASTANAK_RADNICI
  add constraint S_SASTANAK_RADNICI_S_SASTANAK_RADNICI_ID_PK primary key (ID);
alter table HRM.S_SASTANAK_RADNICI
  add constraint S_SASTANAK_RADNICI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.S_SASTANAK_RADNICI
  add constraint S_SASTANAK_RADNICI_SASTANAK_ID_FK foreign key (SASTANAK_ID)
  references HRM.S_SASTANCI (ID)
  disable
  novalidate;
alter table HRM.S_SASTANAK_RADNICI
  add constraint S_SASTANAK_RADNICI_PRISUTAN_CK
  check ( prisutan in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table HRM.S_SASTANAK_RADNICI
  add constraint S_SASTANAK_RADNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table VP_ZAHTJEVI
prompt ==========================
prompt
create table HRM.VP_ZAHTJEVI
(
  id            NUMBER default on null hrm.vp_zahtjevi_seq.nextval not null,
  radnik_id     NUMBER,
  status_id     NUMBER,
  broj_zahtjeva NUMBER not null,
  godina        NUMBER not null,
  datum_od      DATE not null,
  datum_do      DATE not null,
  napomena      VARCHAR2(1000 CHAR),
  broj_dana     NUMBER,
  nadredjeni_id NUMBER,
  komentar      VARCHAR2(1000 CHAR),
  ooj_id        NUMBER not null,
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
create index HRM.VP_ZAHTJEVI_I1 on HRM.VP_ZAHTJEVI (RADNIK_ID);
create index HRM.VP_ZAHTJEVI_I2 on HRM.VP_ZAHTJEVI (STATUS_ID);
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_ID_PK primary key (ID);
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_NADREDJENI_FK foreign key (NADREDJENI_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_RADNIK_ID_FK foreign key (RADNIK_ID)
  references HRM.HR_RADNICI (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_STATUS_ID foreign key (STATUS_ID)
  references SIF.VP_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEVI
  add constraint VP_ZAHTJEVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table VP_ZAHTJEV_HIST
prompt ==============================
prompt
create table HRM.VP_ZAHTJEV_HIST
(
  id          NUMBER default on null hrm.vp_zahtjev_hist_seq.nextval not null,
  zahtjev_id  NUMBER,
  status_id   NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index HRM.VP_ZAHTJEV_HIST_I1 on HRM.VP_ZAHTJEV_HIST (ZAHTJEV_ID);
create index HRM.VP_ZAHTJEV_HIST_I2 on HRM.VP_ZAHTJEV_HIST (STATUS_ID);
alter table HRM.VP_ZAHTJEV_HIST
  add constraint VP_ZAHTJEV_HIST_ID_PK primary key (ID);
alter table HRM.VP_ZAHTJEV_HIST
  add constraint VP_ZAHTJEV_HIST_STATUS_ID foreign key (STATUS_ID)
  references SIF.VP_SIF_STATUSI (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEV_HIST
  add constraint VP_ZAHTJEV_HIST_ZAHTJEV_ID_FK foreign key (ZAHTJEV_ID)
  references HRM.VP_ZAHTJEVI (ID)
  disable
  novalidate;
alter table HRM.VP_ZAHTJEV_HIST
  add constraint VP_ZAHTJEV_HIST_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating view VW_A_ANKETE
prompt =========================
prompt
create or replace force view hrm.vw_a_ankete as
select
        a.id,
        a.ooj_id,
        ooj.naziv        as ooj_naziv,
        a.korisnik_id,
        k.ime
        || ' '
        || k.prezime     as korisnik_ime,
        k.korisnicko_ime as korisnik_naziv,
        a.naziv,
        a.anonimno,
        a.status_id,
        s.naziv          as status_naziv,
        s.sifra          as status_sifra,
        s.color_code     as status_color_code,
        a.valid,
        a.row_version,
        a.created,
        a.created_by,
        a.updated,
        a.updated_by
    from
        a_ankete          a
        left join core.ooj on a.ooj_id = ooj.id
        left join core.korisnici    k on a.korisnik_id = k.id
        left join sif.a_sif_statusi s on a.status_id = s.id;

prompt
prompt Creating view VW_A_OBAVJESTENJA
prompt ===============================
prompt
create or replace force view hrm.vw_a_obavjestenja as
select
        o.id,
        o.ooj_id,
        ooj.naziv        as ooj_naziv,
        o.tip_obavjestenja_id,
        sto.naziv        as tip_naziv,
        sto.color_code   as tip_color_code,
        o.korisnik_id,
        k.ime
        || ' '
        || k.prezime     as korisnik_ime,
        k.korisnicko_ime as korisnik_naziv,
        o.poruka,
        o.datum_od,
        o.datum_do,
        o.valid,
        o.row_version,
        o.created,
        o.created_by,
        o.updated,
        o.updated_by
    from
        a_obavjestenja                o
        left join core.ooj on o.ooj_id = ooj.id
        left join sif.a_sif_tipovi_obavjestenja sto on o.tip_obavjestenja_id = sto.id
        left join core.korisnici                k on o.korisnik_id = k.id;

prompt
prompt Creating view VW_A_PORUKE
prompt =========================
prompt
create or replace force view hrm.vw_a_poruke as
select
        p.id,
        p.ooj_id,
        ooj.naziv        as ooj_naziv,
        p.korisnik_id,
        k.ime
        || ' '
        || k.prezime     as korisnik_ime,
        k.korisnicko_ime as korisnik_naziv,
        p.subject,
        p.poruka,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        a_poruke       p
        left join core.ooj on p.ooj_id = ooj.id
        left join core.korisnici k on p.korisnik_id = k.id;

prompt
prompt Creating view VW_B_ZAHTJEVI
prompt ===========================
prompt
create or replace force view hrm.vw_b_zahtjevi as
select
        z.id,
        z.radnik_id,
        r.ime
        || ' '
        || r.prezime  as radnik_naziv,
        r.nadredjeni_id,
        z.status_id,
        ss.naziv      as status_naziv,
        ss.sifra      as status_sifra,
        ss.color_code as status_color_code,
        z.tip_id,
        st.naziv      as tip_naziv,
        st.sifra      as tip_sifra,
        ooj.id        as ooj_id,
        ooj.naziv     as ooj_naziv,
        f.id          as firma_id,
        f.naziv       as firma_naziv,
        z.datum_od,
        z.datum_do,
        z.napomena,
        z.procenat,
        z.broj_zahtjeva,
        z.godina,
        z.broj_dana,
        z.komentar,
        z.broj_zahtjeva
        || ' / '
        || z.godina   as broj_zahtjeva_naziv,
        z.prisutnost_id,
        p.naziv       as prisutnost_naziv,
        p.code        as prisutnost_code,
        p.evidencija_prisutnosti_id,
        z.valid,
        z.row_version,
        z.created,
        z.created_by,
        z.updated,
        z.updated_by
    from
        b_zahtjevi            z
        left join hr_radnici            r on z.radnik_id = r.id
        left join sif.b_sif_statusi     ss on z.status_id = ss.id
        left join sif.b_sif_tipovi      st on z.tip_id = st.id
        left join core.ooj on r.ooj_id = ooj.id
        left join core.firme            f on ooj.firma_id = f.id
        left join sif.b_sif_prisutnosti p on z.prisutnost_id = p.id;

prompt
prompt Creating view VW_FV_REZERVACIJE
prompt ===============================
prompt
create or replace force view hrm.vw_fv_rezervacije as
select
        rv.id,
        f.id                                                 as firma_id,
        f.naziv                                              as firma_naziv,
        v.ooj_id                                             as ooj_id,
        v.id                                                 as vozilo_id,
        v.reg_oznaka,
        v.marka_vozila
        || ' '
        || v.model_vozila                                    as naziv_vozila,
        vv.id                                                as vrsta_vozila_id,
        vv.naziv                                             as vrsta_vozila_naziv,
        r.id                                                 as radnik_id,
        r.ime
        || ' '
        || r.prezime                                         as radnik_ime,
        tr.id                                                as tip_rezervacije_id,
        tr.naziv                                             as tip_rezervacije_naziv,
        z.id                                                 as zahtjev_id,
        z.relacija                                           as zahtjev_relacija,
        z.svrha_putovanja                                    as zahtjev_svrha_putovanja,
        z.status_id                                          as zahtjev_status_id,
        to_char(i.vrijeme_polaska, 'DD.MM.YYYY HH24:MI:SS')  as vrijeme_polaska,
        to_char(i.vrijeme_povratka, 'DD.MM.YYYY HH24:MI:SS') as vrijeme_povratka,
        rv.kilometraza_pocetak,
        rv.kilometraza_kraj,
        rv.datum_od,
        rv.datum_do,
        rv.valid
    from
        fv_rezervacije_vozila     rv
        left join fv_vozila                 v on v.id = rv.vozilo_id
        left join sif.fv_tipovi_rezervacija tr on tr.id = rv.tip_rezervacije_id
        left join hr_radnici                r on r.id = rv.radnik_id
        left join sp_zahtjevi               z on z.id = rv.zahtjev_id
        left join core.firme                f on f.id = v.firma_id
        left join sif.fv_vrste_vozila       vv on vv.id = v.vrsta_vozila_id
        left join sp_izvjestaj              i on i.zahtjev_id = z.id;

prompt
prompt Creating view VW_FV_VOZILA
prompt ==========================
prompt
create or replace force view hrm.vw_fv_vozila as
select
        v.id,
        vv.id             as vrsta_vozila_id,
        vv.naziv          as vrsta_vozila_naziv,
        f.id              as firma_id,
        f.naziv           as firma_naziv,
        r.id              as radnik_id,
        r.ime
        || ' '
        || r.prezime      as radnik_ime,
        ooj.id            as ooj_id,
        ooj.naziv         as ooj_naziv,
        oj.id             as oj_id,
        oj.naziv          as oj_naziv,
        v.status,
        case
            when v.status = 10 then
                'Funkcionalan'
            when v.status = 20 then
                'Pokvaren'
            else
                'Nepoznato'
        end               as status_naziv,
        case
            when status = 10 then
                'u-color-5'
            when status = 20 then
                'u-color-9'
            else
                'u-color-15'
        end               as status_color_code,
        v.reg_oznaka,
        v.reg_datum,
        v.tip_vozila,
        v.marka_vozila,
        v.model_vozila,
        v.marka_vozila
        || ' '
        || v.model_vozila as naziv_vozila,
        v.gorivo_max,
        v.zapremina_motora,
        v.snaga_motora,
        v.vrsta_goriva,
        v.boja,
        v.broj_sasije,
        v.masa_vozila,
        v.broj_mjesta,
        v.valid
    from
        fv_vozila           v
        left join sif.fv_vrste_vozila vv on vv.id = v.vrsta_vozila_id
        left join core.firme          f on f.id = v.firma_id
        left join hr_radnici          r on r.id = v.radnik_id
        left join core.ooj on ooj.id = v.ooj_id
        left join core.oj on oj.id = v.oj_id;

prompt
prompt Creating view VW_GO_STATUSI_HIST
prompt ================================
prompt
create or replace force view hrm.vw_go_statusi_hist as
select
        h.id,
        h.zahtjev_id,
        z.broj_zahtjeva,
        h.datum,
        h.status_id,
        s.naziv      as status_naziv,
        h.komentar,
        k.ime
        || ' '
        || k.prezime as korisnik_naziv,
        h.row_version,
        h.created,
        h.created_by,
        h.updated,
        h.updated_by
    from
        go_statusi_hist h
        left join go_zahtjevi     z on h.zahtjev_id = z.id
        left join sif.go_statusi  s on h.status_id = s.id
        left join core.korisnici  k on h.created_by = k.korisnicko_ime;

prompt
prompt Creating view VW_GO_ZAHTJEVI
prompt ============================
prompt
create or replace force view hrm.vw_go_zahtjevi as
select
        z.id,
        z.radnik_id,
        r.ime
        || ' '
        || r.prezime  as ime_prezime_radnika,
        r.nadredjeni_id,
        z.broj_zahtjeva,
        z.broj_zahtjeva
        || ' / '
        || z.godina   as broj_zahtjeva_naziv,
        z.datum_od,
        z.datum_do,
        z.komentar,
        z.broj_dana,
        z.status_id,
        s.naziv       as status_naziv,
        z.komentar_statusa,
        z.valid,
        z.radnik_odobrio_id,
        ro.ime
        || ' '
        || ro.prezime as radnik_odobrio_naziv,
        z.ukupno_dana,
        z.preostalo_dana,
        z.godina,
        z.tip_zahtjeva_id,
        tz.naziv      as tip_zahtjeva_naziv,
        case
            when status_id = 10 then
                'u-color-1'
            when status_id = 20 then
                'u-color-5'
            when status_id = 30 then
                'u-color-9'
            when status_id = 40 then
                'u-color-14'
            when status_id = 50 then
                'u-color-6'
            when status_id = 60 then
                'u-color-8'
            when status_id = 70 then
                'u-color-12'
            when status_id = 80 then
                'u-color-13'
        end           as color_class,
        z.created_by,
        z.created,
        z.updated_by,
        z.updated
    from
        go_zahtjevi            z
        left join sif.go_statusi         s on s.id = z.status_id
        left join sif.go_tipovi_zahtjeva tz on tz.id = z.tip_zahtjeva_id
        left join hr_radnici             r on r.id = z.radnik_id
        left join hr_radnici             ro on ro.id = z.radnik_odobrio_id;

prompt
prompt Creating view VW_HR_OOJ_PVS
prompt ===========================
prompt
create or replace force view hrm.vw_hr_ooj_pvs as
select
        op.id,
        f.id      as firma_id,
        f.naziv   as firma_naziv,
        op.ooj_id,
        ooj.naziv as ooj_naziv,
        op.pvs_id,
        pvs.naziv as pvs_naziv,
        op.procenat,
        op.valid,
        op.row_version,
        op.created,
        op.created_by,
        op.updated,
        op.updated_by
    from
        hr_ooj_pvs        op
        left join core.ooj on op.ooj_id = ooj.id
        left join core.firme        f on ooj.firma_id = f.id
        left join sif.hr_pvs_tipovi pvs on op.pvs_id = pvs.id;

prompt
prompt Creating view VW_HR_POTVRDE
prompt ===========================
prompt
create or replace force view hrm.vw_hr_potvrde as
select
        p.id,
        p.ooj_id,
        ooj.naziv        as ooj_naziv,
        ooj.pib          as ooj_pib,
        ooj.jib          as ooj_jib,
        ooj.mbs          as ooj_mbs,
        ooj.mb           as ooj_mb,
        ooj.email        as ooj_email,
        ooj.adresa       as ooj_adresa,
        ooj.tel          as ooj_tel,
        ooj.grad_id      as grad_id,
        g.naziv          as grad_naziv,
        f.naziv          as firma_naziv,
        f.www            as firma_www,
        f.odgovorno_lice as firma_odgovorno_lice,
        f.logo           as firma_logo,
        p.radnik_id,
        r.ime
        || ' '
        || r.prezime     as radnik_naziv,
        r.jmbg           as radnik_jmbg,
        p.tip_potvrde_id,
        tp.naziv         as tip_potvrde_naziv,
        tp.opis          as tip_potvrde_opis,
        p.godina,
        p.naziv,
        p.broj,
        p.datum_potvrde,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        hr_potvrde            p
        left join core.ooj on p.ooj_id = ooj.id
        left join hr_radnici            r on p.radnik_id = r.id
        left join sif.hr_tipovi_potvrda tp on p.tip_potvrde_id = tp.id
        left join core.firme            f on ooj.firma_id = f.id
        left join sif.sif_gradovi       g on ooj.grad_id = g.id;

prompt
prompt Creating view VW_I_KANDIDATI
prompt ============================
prompt
create or replace force view hrm.vw_i_kandidati as
select
        k.id,
        k.ooj_id,
        ooj.naziv    as ooj_naziv,
        k.status_id,
        s.naziv      as status_naziv,
        s.sifra      as status_sifra,
        s.color_code as status_color_code,
        k.ime,
        k.prezime,
        k.adresa,
        k.grad_id,
        g.naziv      as grad_naziv,
        k.entitet_id,
        e.naziv      as entitet_naziv,
        k.kanton_id,
        sk.naziv      as kanton_naziv,
        k.telefon,
        k.mobitel,
        k.email,
        k.valid,
        k.row_version,
        k.created,
        k.created_by,
        k.updated,
        k.updated_by
    from
        i_kandidati       k
        left join core.ooj on k.ooj_id = ooj.id
        left join sif.i_sif_statusi s on k.status_id = s.id
        left join sif.sif_gradovi   g on k.grad_id = g.id
        left join sif.sif_entiteti  e on k.entitet_id = e.id
        left join sif.sif_kantoni   sk on k.kanton_id = sk.id;

prompt
prompt Creating view VW_OBRAZOVANJE_CJENOVNIK
prompt ======================================
prompt
create or replace force view hrm.vw_obrazovanje_cjenovnik as
select
        oc.id,
        oc.ooj_id,
        ooj.naziv as ooj_naziv,
        oc.oj_id,
        oj.naziv  as oj_naziv,
        oc.obrazovanje_id,
        o.naziv   as obrazovanje_naziv,
        oc.cijena_sata,
        oc.row_version,
        oc.created,
        oc.created_by,
        oc.updated,
        oc.updated_by
    from
        hr_obrazovanje_cjenovnik oc
        left join core.ooj on oc.ooj_id = ooj.id
        left join core.oj on oc.oj_id = oj.id
        left join sif.hr_sif_obrazovanja   o on oc.obrazovanje_id = o.id;

prompt
prompt Creating view VW_PLATE_DETALJI
prompt ==============================
prompt
create or replace force view hrm.vw_plate_detalji as
select
        pd.pl_id,
        pd.mjesec,
        pd.godina,
        pd.radnik_id,
        pd.evidencija_prisutnosti_id,
        p.naziv as prisutnost_naziv,
        pd.sati,
        pd.neto_plata,
        pd.cijena_sata,
        pd.iznos_evident,
        pd.neto_iznos,
        pd.neto_cijena_sata
    from
             plate_detalji pd
        join sif.hr_sif_ev_prisutnosti p on p.id = pd.evidencija_prisutnosti_id;

prompt
prompt Creating package EVIDENCIJA_PKG
prompt ===============================
prompt
create or replace package hrm.evidencija_pkg as

    -- Helper
    procedure radni_staz_radnika (
        p_radnik_id in number,
        p_datum     in date,
        p_godina    out number,
        p_mjeseci   out number,
        p_dana      out number
    );

    function radni_staz_radnika (
        p_radnik_id in number,
        p_datum     in date
    ) return varchar2;

    -- Radnik
    -- Za vizitku
    procedure get_radnik (
        p_id                  in number,
        p_firma_id            out number,
        p_ooj_id              out number,
        p_korisnik_id         out number,
        p_radnik_naziv        out varchar2,
        p_radnik_radno_mjesto out varchar2,
        p_radnik_telefon      out varchar2,
        p_radnik_email        out varchar2,
        p_firma_website       out varchar2,
        p_ooj_adresa          out varchar2
    );

    procedure get_radnik (
        p_id                    in number,
        p_nadredjeni_id         out number,
        p_ime                   out varchar2,
        p_prezime               out varchar2,
        p_jmbg                  out varchar2,
        p_zaposlen_od           out date,
        p_zaposlen_do           out date,
        p_samohrani_roditelj    out varchar2,
        p_invaliditet           out varchar2,
        p_hronicno_oboljenje    out varchar2,
        p_radno_mjesto_id       out number,
        p_staz_godina           out number,
        p_staz_mjesec           out number,
        p_staz_dan              out number,
        p_tip_ugovora_id        out number,
        p_pol                   out varchar2,
        p_obrazovanje_id        out number,
        p_tip_radnog_vremena_id out number,
        p_tip_radnog_odnosa_id  out number
    );

    procedure get_radnik (
        p_id          in number,
        p_korisnik    out varchar2,
        p_korisnik_id out number,
        p_adresa      out varchar2,
        p_grad_id     out number,
        p_entitet_id  out number,
        p_telefon     out varchar2,
        p_mobitel     out varchar2,
        p_email       out varchar2,
        p_kanton_id   out number
    );

    procedure get_radnik (
        p_id          in number,
        p_ime_prezime out varchar2,
        p_jmbg        out varchar2
    );

    -- Za knjizenje SP
    procedure get_radnik (
        p_radnik_id  in number,
        p_oj_id      out number,
        p_entitet_id out number
    );

    -- Za obrazac
    procedure get_radnik (
        p_radnik_id          in number,
        p_ime                out varchar2,
        p_prezime            out varchar2,
        p_jmbg               out varchar2,
        p_adresa             out varchar2,
        p_grad_naziv         out varchar2,
        p_zaposlen_od        out varchar2,
        p_radno_mjesto_naziv out varchar2
    );

    -- Za budzet
    procedure get_radnik (
        p_radnik_id in number,
        p_oj_id     out number
    );

    function get_radnik_from_jmbg (
        p_ooj_id in number,
        p_jmbg   in varchar2
    ) return number;

    procedure insert_radnik (
        p_korisnik_id           in number,
        p_korisnik              in varchar2,
        p_ime                   in varchar2,
        p_prezime               in varchar2,
        p_email                 in varchar2,
        p_telefon               in varchar2,
        p_mobitel               in varchar2,
        p_jmbg                  in varchar2,
        p_nadredjeni_id         in varchar2,
        p_zaposlen_od           in date,
        p_zaposlen_do           in date,
        p_radno_mjesto_id       in number,
        p_staz_god              in number,
        p_staz_mj               in number,
        p_staz_dan              in number,
        p_entitet_id            in number,
        p_kanton_id             in number,
        p_grad_id               in number,
        p_adresa                in varchar2,
        p_samohrani_rod         in varchar2,
        p_invaliditet           in varchar2,
        p_hronicno_ob           in varchar2,
        p_tip_ugovora_id        in number,
        p_pol                   in varchar2,
        p_obrazovanje_id        in number,
        p_tip_radnog_vremena_id in number,
        p_tip_radnog_odnosa_id  in number
    );

    -- Insert radnika za automatski unos kroz parametre plata
    function insert_radnik (
        p_ooj_id          in number,
        p_ime             in varchar2,
        p_prezime         in varchar2,
        p_nadredjeni_id   in varchar2,
        p_jmbg            in varchar2,
        p_zaposlen_od     in date,
        p_radno_mjesto_id in number,
        p_entitet_id      in number,
        p_grad_id         in number,
        p_tip_ugovora_id  in number
    ) return number;

    procedure update_radnik (
        p_id                    in number,
        p_jmbg                  in varchar2,
        p_ime                   in varchar2,
        p_prezime               in varchar2,
        p_nadredjeni_id         in varchar2,
        p_radno_mjesto_id       in number,
        p_zaposlen_od           in date,
        p_zaposlen_do           in date,
        p_staz_god              in number,
        p_staz_mj               in number,
        p_staz_dan              in number,
        p_samohrani_rod         in varchar2,
        p_invaliditet           in varchar2,
        p_hronicno_ob           in varchar2,
        p_tip_ugovora_id        in number,
        p_pol                   in varchar2,
        p_obrazovanje_id        in number,
        p_tip_radnog_vremena_id in number,
        p_tip_radnog_odnosa_id  in number
    );

    procedure update_radnik_kontakt (
        p_id          in number,
        p_korisnik    in varchar2,
        p_korisnik_id in number,
        p_grad_id     in number,
        p_adresa      in varchar2,
        p_telefon     in varchar,
        p_mobitel     in varchar2,
        p_entitet_id  in number,
        p_kanton_id   in number,
        p_email       in varchar2
    );

    -- Vizitka
    function generate_radnik_kontakt (
        p_radnik_id in number
    ) return clob;

    -- Djeca
    procedure get_radnik_dijete (
        p_id        in number,
        p_jmbg      out varchar2,
        p_ime       out varchar2,
        p_prezime   out varchar2,
        p_rodjendan out date,
        p_valid     out varchar2
    );

    procedure insert_radnik_dijete (
        p_radnik_id in number,
        p_jmbg      in varchar2,
        p_ime       in varchar2,
        p_prezime   in varchar2,
        p_rodjendan in date
    );

    procedure update_radnik_dijete (
        p_id        in number,
        p_jmbg      in varchar2,
        p_ime       in varchar2,
        p_prezime   in varchar2,
        p_rodjendan in date,
        p_valid     in varchar2
    );

    procedure delete_radnik_dijete (
        p_id in number
    );

    procedure obnovi_radnika (
        p_id in number
    );

    -- Dokumentacija
    procedure insert_radnik_docs (
        p_radnik_id        in number,
        p_documents        in varchar2,
        p_tip_dokumenta_id in number,
        p_datum            in date
    );

    procedure delete_radnik_dokument (
        p_id in number
    );

    -- Cjenovnik obrazovanja
    procedure get_obrazovanje_cijena (
        p_id             in number,
        p_ooj_id         out number,
        p_oj_id          out number,
        p_obrazovanje_id out number,
        p_cijena_sata    out number
    );

    procedure insert_obrazovanje_cijena (
        p_ooj_id         in number,
        p_oj_id          in number,
        p_obrazovanje_id in number,
        p_cijena_sata    in number
    );

    procedure update_obrazovanje_cijena (
        p_id             in number,
        p_ooj_id         in number,
        p_oj_id          in number,
        p_obrazovanje_id in number,
        p_cijena_sata    in number
    );

    procedure delete_obrazovanje_cijena (
        p_id in number
    );

    -- Cjenovnik radnika
    procedure get_radnik_cijena (
        p_radnik_id   in number,
        p_cijena_sata out number
    );

    procedure update_radnik_cijena (
        p_radnik_id   in number,
        p_cijena_sata in number
    );

end evidencija_pkg;
/

prompt
prompt Creating function GET_DATE_FROM_JMBG
prompt ====================================
prompt
create or replace function hrm.get_date_from_jmbg (
    p_jmbg in varchar2
) return date as

    l_day   varchar2(2);
    l_month varchar2(2);
    l_year  varchar2(4);
    l_yyy   varchar2(3);
begin
    l_day := substr(p_jmbg, 1, 2);
    l_month := substr(p_jmbg, 3, 2);
    l_yyy := substr(p_jmbg, 5, 3);
    if to_number ( l_yyy ) < 100 then
        l_year := '20'
                  || lpad(l_yyy, 2, '0');
    else
        l_year := '1' || l_yyy;
    end if;

    return to_date ( l_day
                     || l_month
                     || l_year, 'DDMMYYYY' );

-- Maybe not best solution to return nully
exception
    when others then
        return null;
end get_date_from_jmbg;
/

prompt
prompt Creating view VW_RADNICI
prompt ========================
prompt
create or replace force view hrm.vw_radnici as
select
        r.id,
        r.nadredjeni_id,
        case
            when r.nadredjeni_id = r.id then
                null
            else
                r.nadredjeni_id
        end                                              as nadredjeni_connect,
        (
            select
                rr.ime
                || ' '
                || rr.prezime
            from
                hr_radnici rr
            where
                rr.id = r.nadredjeni_id
        )                                                as nadredjeni_naziv,
        r.ime,
        r.prezime,
        r.jmbg,
        get_date_from_jmbg(r.jmbg)                       as rodjendan_datum,
        r.zaposlen_od,
        r.zaposlen_do,
        r.adresa,
        r.grad_id,
        g.naziv                                          as grad_naziv,
        lpad(g.sifra, 3, '0')                            as grad_sifra,
        r.entitet_id,
        e.naziv                                          as entitet_naziv,
        r.telefon,
        r.mobitel,
        r.samohrani_roditelj,
        r.invaliditet,
        r.hronicno_oboljenje,
        r.ooj_id,
        ooj.naziv                                        as ooj_naziv,
        ooj.adresa AS ooj_adresa,
        ooj.grad_naziv AS ooj_grad_naziv,
        ooj.zip AS ooj_zip,
        ooj.entitet_naziv AS ooj_entitet_naziv,
        r.oj_id,
        oj.naziv                                         as oj_naziv,
        r.staz_godina,
        r.staz_mjesec,
        r.staz_dan,
        r.email,
        r.radno_mjesto_id,
        rm.naziv                                         as radno_mjesto_naziv,
        r.kanton_id,
        kk.naziv                                         as kanton_naziv,
        f.id                                             as firma_id,
        f.naziv                                          as firma_naziv,
        r.korisnik_id,
        k.korisnicko_ime,
        k.foto,
        k.foto_filename,
        k.foto_mimetype,
        k.foto_lastupd,
        k.foto_charset,
        evidencija_pkg.radni_staz_radnika(r.id, sysdate) as trenutni_ukupni_staz,
        r.tip_ugovora_id                                 as tip_ugovora_id,
        u.naziv                                          as tip_ugovora_naziv,
        u.color_code                                     as tip_ugovora_color_code,
        r.prijava_kod,
        r.pol,
        r.obrazovanje_id,
        o.naziv                                          as obrazovanje_naziv,
        o.sifra                                          as obrazovanje_sifra,
        r.tip_radnog_vremena_id,
        rv.naziv                                         as tip_radnog_vremena_naziv,
        rv.sifra                                         as tip_radnog_vremena_sifra,
        r.tip_radnog_odnosa_id,
        ro.naziv                                         as tip_radnog_odnosa_naziv,
        ro.sifra                                         as tip_radnog_odnosa_sifra,
        r.korisnik,
        r.cijena_sata,
        r.created_by,
        r.created,
        r.updated_by,
        r.updated
    from
        hr_radnici                       r
        left join sif.hr_sif_tipovi_ugovora        u on u.id = r.tip_ugovora_id
        left join sif.sif_entiteti                 e on e.id = r.entitet_id
        left join sif.sif_kantoni                  kk on kk.id = r.kanton_id
        left join sif.sif_gradovi                  g on g.id = r.grad_id
        left join core.firma_radna_mjesta          rm on rm.id = r.radno_mjesto_id
        left join core.oj on oj.id = r.oj_id
        left join core.vw_ooj ooj on ooj.id = r.ooj_id
        left join core.firme                       f on f.id = ooj.firma_id
        left join core.vw_korisnici                k on k.id = r.korisnik_id
        left join sif.hr_sif_obrazovanja           o on o.id = r.obrazovanje_id
        left join sif.hr_sif_tipovi_radnog_vremena rv on rv.id = r.tip_radnog_vremena_id
        left join sif.hr_sif_tipovi_radnog_odnosa  ro on ro.id = r.tip_radnog_odnosa_id;

prompt
prompt Creating package PLATE_PKG
prompt ==========================
prompt
create or replace package hrm.plate_pkg as
   
   /*** sifre koeficijenta  ***/

    c_pio_posl constant varchar2(16) := 'PIO_POSL';
    c_zdr_posl constant varchar2(16) := 'ZDR_POSL';
    c_nez_posl constant varchar2(16) := 'NEZ_POSL';
    c_dj_zas constant varchar2(16) := 'DJ_POSL';
    c_pio_rad constant varchar2(16) := 'PIO_RAD';
    c_zdr_rad constant varchar2(16) := 'ZDR_RAD';
    c_nez_rad constant varchar2(16) := 'NEZ_RAD';
    c_doh_fbih constant varchar2(16) := 'DOH_FBIH';
    c_odb_fbih constant varchar2(16) := 'ODB_FBIH';
    c_nep_fbih constant varchar2(16) := 'NEP_FBIH';
    c_vod_fbih constant varchar2(16) := 'VOD_FBIH';
    c_reh_fbih constant varchar2(16) := 'REH_FBIH';
    c_min_fbih constant varchar2(16) := 'MIN_FBIH';
    c_sol_fbih constant varchar2(16) := 'SOL_FBIH';
    c_zk_fbih constant varchar2(16) := 'ZK_FBIH';
    c_nez_fbih constant varchar2(16) := 'NEZ_FBIH';
    c_nez_kan constant varchar2(16) := 'NEZ_KAN';
    c_odb_rs constant varchar2(16) := 'ODB_RS';
    c_doh_rs constant varchar2(16) := 'DOH_RS';
    c_min_rs constant varchar2(16) := 'MIN_RS';
    c_fsd_rs constant varchar2(16) := 'FSD_POSL';
    c_dop_inv_rs constant varchar2(16) := 'DOP_INV_RS';
    c_dop_pio_rs constant varchar2(16) := 'DOP_PIO_POSL_RS';
    c_dop_doh_rs constant varchar2(16) := 'DOP_DOH_RS';
    c_pov_dop_rs constant varchar2(16) := 'POV_DOP_RS';
    c_pov_doh_rs constant varchar2(16) := 'POV_DOH_RS';
    c_men_pio_posl_rs constant varchar2(16) := 'MEN_PIO_POSL_RS';
    c_men_zdr_posl_rs constant varchar2(16) := 'MEN_ZDR_POSL_RS';
    c_men_nez_posl_rs constant varchar2(16) := 'MEN_NEZ_POSL_RS';
    c_men_dj_zas_rs constant varchar2(16) := 'MEN_DJ_POSL_RS';
    c_men_doh_rs constant varchar2(16) := 'MEN_DOH_RS';
    c_min_bruto_rs constant number := 1344.26;

    -- Helper
    function pl_radnik4ent (
        p_plradnik_id in number
    ) return number;

    function fn_koeficijent (
        p_sifra      in sif.pl_koeficijenti.sifra%type,
        p_entitet_id in sif.pl_koeficijenti.entitet_id%type
    ) return number;

    function neto2bruto (
        p_neto           in number,
        p_tip_ugovora_id in number
    ) return number;

    function bruto2neto (
        p_bruto          in number,
        p_tip_ugovora_id in number
    ) return number;

    procedure get_neobracunato_nearhivirano (
        p_ooj_id        in number,
        p_mjesec_godina in varchar2,
        p_neobracunato  out number,
        p_nearhivirano  out number
    );

    -- Parametri plate
    procedure get_plata_radnika (
        p_id             in number,
        p_radnik_id      out number,
        p_koeficijent_lo out number,
        p_plata_bruto    out number,
        p_prevoz_iznos   out number,
        p_prevoz_tip     out varchar2,
        p_tp_obrok_iznos out number,
        p_tekuci_racun   out varchar2,
        p_banka_id       out number,
        p_tip_ugovora_id out number,
        p_korekcija      out number,
        p_vazi           out varchar2
    );

    procedure get_plata_radnika (
        p_id                    in number,
        p_ugovorena_bruto_plata out number
    );

    procedure get_plata_radnika (
        p_id             in number,
        p_tip_ugovora_id out number,
        p_korekcija      out varchar2
    );

    procedure get_plata_radnika (
        p_radnik_id    in number,
        p_tekuci_racun out varchar2,
        p_banka_id     out number
    );

    function insert_plata_radnika (
        p_radnik_id      in number,
        p_koeficijent_lo in varchar2,
        p_plata_bruto    in number,
        p_prevoz_iznos   in number,
        p_prevoz_tip     in varchar2,
        p_tp_obrok_iznos in number,
        p_tekuci_racun   in varchar2,
        p_banka_id       in number,
        p_tip_ugovora_id in number,
        p_korekcija      in number
    ) return number;

    function update_plata_radnika (
        p_id             in number,
        p_radnik_id      in number,
        p_koeficijent_lo in varchar2,
        p_plata_bruto    in number,
        p_prevoz_iznos   in number,
        p_prevoz_tip     in varchar2,
        p_tp_obrok_iznos in number,
        p_tekuci_racun   in varchar2,
        p_banka_id       in number,
        p_tip_ugovora_id in number,
        p_korekcija      in number,
        p_vazi           in varchar2
    ) return number;

    procedure update_plata_radnika_detalji (
        p_radnik_id       in number,
        p_plata_radnik_id in number
    );

    -- Poreski odbici
    procedure get_plata_odbitak (
        p_id              in number,
        p_radnik_id       out number,
        p_plata_radnik_id out number,
        p_vrsta           out varchar2,
        p_iznos           out number,
        p_vazi            out varchar2
    );

    procedure insert_plata_odbitak (
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_vrsta           in varchar2,
        p_iznos           in number
    );

    procedure update_plata_odbitak (
        p_id    in number,
        p_vrsta in varchar2,
        p_iznos in number,
        p_vazi  in varchar2
    );

    procedure delete_plata_odbitak (
        p_id in number
    );

    -- Obustave
    procedure get_plata_obustava (
        p_id               in number,
        p_radnik_id        out number,
        p_iznos_ukupno     out number,
        p_iznos_trenutno   out number,
        p_mjesecni_anuitet out number,
        p_naziv            out varchar2,
        p_vazi             out varchar2
    );

    procedure insert_plata_obustava (
        p_radnik_id        in number,
        p_iznos_ukupno     in number,
        p_iznos_trenutno   in number,
        p_mjesecni_anuitet in number,
        p_naziv            in varchar2
    );

    procedure update_plata_obustava (
        p_id               in number,
        p_radnik_id        in number,
        p_iznos_ukupno     in number,
        p_iznos_trenutno   in number,
        p_mjesecni_anuitet in number,
        p_naziv            in varchar2,
        p_vazi             in varchar2
    );

    procedure delete_plata_obustava (
        p_id in number
    );

    -- Detalji obracuna / parametara plate
    procedure generate_pl_detalji (
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_mjesec          in date
    );

    procedure insert_pl_detalji (
        p_radnik_id                 in number,
        p_evidencija_prisutnosti_id in number,
        p_datum_od                  in date,
        p_datum_do                  in date,
        p_iznos                     in number,
        p_sati                      in number,
        p_koeficijent               in number,
        p_cijena_sata               in number
    );

    procedure update_pl_detalji (
        p_id                        in number,
        p_radnik_id                 in number,
        p_evidencija_prisutnosti_id in number,
        p_datum_od                  in date,
        p_datum_do                  in date,
        p_iznos                     in number,
        p_sati                      in number,
        p_koeficijent               in number,
        p_cijena_sata               in number
    );

    procedure delete_pl_detalji (
        p_id in number
    );

    -- Obracunavanje plata    
    procedure obracunaj_platu (
        p_radnik_id      in number,
        p_godina         in number,
        p_mjesec         in number,
        p_tip_ugovora_id in number,
        o_plata_id       out number
    );

    procedure obracun_puno_radno_vrijeme (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    );

    procedure obracun_bolovanja (
        p_radnik_id in pl_plate.radnik_id%type,
        p_godina    in pl_plate.godina%type,
        p_mjesec    in pl_plate.mjesec%type,
        p_plata     in out pl_plate%rowtype
    );

    procedure obracun_prekovremenih_sati (
        p_radnik_id in number,
        p_godina    in number,
        p_mjesec    in number,
        p_plata     in out pl_plate%rowtype
    );

    procedure obracun_plate_rs (
        p_plata          in out pl_plate%rowtype,
        p_iznos_obustave in number
    );

    function obracun_plate_minuli_rad (
        p_radnik_id in number,
        p_bruto     in number
    ) return number;

    procedure insert_troskovi_rs (
        p_plata_id  in number,
        p_radnik_id in number,
        p_plata     in pl_plate%rowtype
    );

    procedure insert_uplatnice_rs (
        p_plata_id  in number,
        p_radnik_id in number,
        p_plata     in pl_plate%rowtype
    );

    procedure insert_detalji (
        p_plata_id        in number,
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_plata           in pl_plate%rowtype
    );

    procedure obracun_stipendija (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    );

    procedure obracun_djelo_dopunski_rad (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    );

    procedure obracun_menadzerski_ugovor (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    );

    procedure obracun_privremeni_povremeni_poslovi (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    );

    procedure obrisi_platu (
        p_plata_id in number
    );

    procedure arhiviraj_obracun (
        p_id in number
    );

    --- rekapitulacija plata
    function get_broj_dana (
        p_mjesec in number,
        p_godina in number
    ) return number;

    function day_name (
        p_datum in date
    ) return varchar2;

    function first_day_nmonth (
        p_datum in date
    ) return date;

    function last_day_nmonth (
        p_datum in date
    ) return date;

    function month_name (
        p_datum in date
    ) return varchar2;

    function radni_sati_ukupno (
        p_datum_od in date,
        p_datum_do in date,
        p_ooj_id   in number
    ) return number;

    function ukupno_pio (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function ukupno_zdravstvo (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function ukupno_nezaposlenost (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function ukupno_dj_zastita (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function ukupno_doprinosi (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function ukupno_dohodak_po (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number;

    function generate_nalog_halcom (
        p_ooj_id         in number,
        p_mjesec         in date,
        p_tip_ugovora_id in number
    ) return clob;

    function generate_nalog_eklik (
        p_ooj_id         in number,
        p_mjesec         in date,
        p_tip_ugovora_id in number
    ) return clob;

end plate_pkg;
/

prompt
prompt Creating view VW_PL_RADNICI
prompt ===========================
prompt
create or replace force view hrm.vw_pl_radnici as
select
        p.id,
        p.radnik_id,
        p.ugovorena_bruto_plata,
        p.plata_bruto,
        p.plata_neto,
        p.prevoz_iznos,
        p.prevoz_tip,
        p.tp_obrok_iznos,
        p.tekuci_racun,
        p.vazi,
        p.history,
        p.koeficijent_lo,
        r.ime,
        r.prezime,
        r.ime
        || ' '
        || r.prezime  as radnik_naziv,
        r.zaposlen_do as radnik_zaposlen_do,
        r.jmbg,
        r.ooj_id,
        r.ooj_naziv,
        r.oj_id,
        r.oj_naziv,
        r.radno_mjesto_id,
        r.radno_mjesto_naziv,
        r.entitet_id,
        case
            when r.entitet_id = 1 then
                p.koeficijent_lo * plate_pkg.fn_koeficijent('ODB_RS', 1)
            when r.entitet_id = 2 then
                p.koeficijent_lo * plate_pkg.fn_koeficijent('ODB_FBIH', 2)
            else
                null
        end           as osnovni_licni_odb,
        (
            select
                po.iznos
            from
                pl_poreski_odbici po
            where
                    plata_radnik_id = p.id
                and vrsta = 'P'
                and vazi = 'Y'
        )             as odb_porodica,
        (
            select
                po.iznos
            from
                pl_poreski_odbici po
            where
                    plata_radnik_id = p.id
                and vrsta = 'K'
                and vazi = 'Y'
        )             as odb_kredit,
        (
            select
                po.iznos
            from
                pl_poreski_odbici po
            where
                    plata_radnik_id = p.id
                and vrsta = 'O'
                and vazi = 'Y'
        )             as odb_osiguranje,
        p.tip_ugovora_id,
        tu.naziv      as tip_ugovora_naziv,
        tu.color_code as tip_ugovora_color_code,
        p.banka_id,
        b.naziv       as banka_naziv,
        p.korekcija,
        p.created_by,
        p.created,
        p.updated_by,
        p.updated
    from
        pl_radnici                p
        left join vw_radnici                r on p.radnik_id = r.id
        left join sif.hr_sif_tipovi_ugovora tu on p.tip_ugovora_id = tu.id
        left join sif.sif_banke             b on p.banka_id = b.id;

prompt
prompt Creating view VW_PL_PLATE
prompt =========================
prompt
create or replace force view hrm.vw_pl_plate as
select
        p.id,
        p.radnik_id,
        r.ime
        || ' '
        || r.prezime                                                                          as radnik_naziv,
        r.jmbg,
        r.adresa                                                                              as radnik_adresa,
        r.grad_id                                                                             as radnik_grad_id,
        r.grad_naziv                                                                          as radnik_grad_naziv,
        r.grad_sifra                                                                          as radnik_grad_sifra,
        r.email                                                                               as radnik_email,
        r.entitet_naziv,
        r.entitet_id,
        r.pol                                                                                 as radnik_pol,
        floor(months_between(p.datum_obracuna_do, r.rodjendan_datum) / 12)                    as radnik_broj_godina,
        r.ooj_id,
        r.ooj_naziv,
        ooj.grad_id                                                                           as ooj_grad_id,
        g.naziv                                                                               as ooj_grad_naziv,
        ooj.adresa                                                                            as ooj_adresa,
        ooj.zip                                                                               as ooj_zip,
        ooj.tel                                                                               as ooj_tel,
        ooj.fax                                                                               as ooj_fax,
        ooj.email                                                                             as ooj_email,
        ooj.jib                                                                               as ooj_jib,
        ooj.pib                                                                               as ooj_pib,
        core.ooj_pkg.get_za_plate_banka_id(ooj.id)                                            as banka_id,
        core.ooj_pkg.get_ziro_racun_za_plate(core.ooj_pkg.get_za_plate_banka_id(ooj.id))      as ooj_ziro_racun,
        core.ooj_pkg.get_banka_za_plate(core.ooj_pkg.get_za_plate_banka_id(ooj.id))           as ooj_banka,
        r.oj_id,
        r.oj_naziv,
        plr.koeficijent_lo,
        plr.tekuci_racun                                                                      as radnik_racun,
        p.banka_id                                                                            as radnik_banka_id,
        b.naziv                                                                               as radnik_banka_naziv,
        r.firma_id,
        r.firma_naziv,
        r.radno_mjesto_naziv,
        to_char(plr.koeficijent_lo, 'FM999G999G999G999G990D00')                               as koeficijent_lo_char,
        (
            select
                floor((months_between(sysdate + 1, hrr.zaposlen_od) + coalesce(hrr.staz_godina, 0) * 12 + coalesce(hrr.staz_mjesec, 0
                ) + ceil(coalesce(hrr.staz_dan, 0) / 30)) / 12)
            from
                hr_radnici hrr
            where
                hrr.id = r.id
        )                                                                                     as staz_za_obracun,
        p.godina,
        p.mjesec,
        p.datum_obracuna_od,
        p.datum_obracuna_do,
        p.minuli_rad,
        ( p.ukupno_troskova - p.topli_obrok - p.minuli_rad )                                  as minuli_rad_osnovica,
        to_char(p.ukupno_troskova - p.topli_obrok - p.minuli_rad, 'FM999G999G999G999G990D00') as minuli_rad_osnovica_char,
        (
            select
                to_char(vrijednost * 100 *(
                    select
                        floor((months_between(sysdate + 1, hrr.zaposlen_od) + coalesce(hrr.staz_godina, 0) * 12 + coalesce(hrr.staz_mjesec
                        , 0) + ceil(coalesce(hrr.staz_dan, 0) / 30)) / 12)
                    from
                        hr_radnici hrr
                    where
                        hrr.id = r.id
                ),
                        '0.90')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'MIN_RS'
                and entitet_id = r.entitet_id
        )                                                                                     as minuli_koeficijent,
        p.tip_ugovora_id,
        tu.naziv                                                                              as tip_ugovora_naziv,
        tu.color_code                                                                         as tip_ugovora_color_code,

    -- Bruto i doprinosi
        p.iznos_bruto,
        to_char(p.iznos_bruto, 'FM999G999G999G999G990D00')                                    as iznos_bruto_char,
        p.licni_odbitak,
        to_char(p.licni_odbitak, 'FM999G999G999G999G990D00')                                  as licni_odbitak_char,
        p.pio_poslodavac,
        to_char(p.pio_poslodavac, 'FM999G999G999G999G990D00')                                 as pio_poslodavac_char,
        p.zdravstvo_poslodavac,
        to_char(p.zdravstvo_poslodavac, 'FM999G999G999G999G990D00')                           as zdravstvo_poslodavac_char,
        p.nezaposlesnost_poslodavac,
        to_char(p.nezaposlesnost_poslodavac, 'FM999G999G999G999G990D00')                      as nezaposlesnost_poslodavac_char,
        p.pio_uposlenik,
        to_char(p.pio_uposlenik, 'FM999G999G999G999G990D00')                                  as pio_uposlenik_char,
        p.zdravstvo_uposlenik,
        to_char(p.zdravstvo_uposlenik, 'FM999G999G999G999G990D00')                            as zdravstvo_uposlenik_char,
        p.nezaposlenost_uposlenik,
        to_char(p.nezaposlenost_uposlenik, 'FM999G999G999G999G990D00')                        as nezaposlenost_uposlenik_char,
        p.osnovica_porez,
        to_char(p.osnovica_porez, 'FM999G999G999G999G990D00')                                 as osnovica_porez_char,
        p.porez_dohodak,
        to_char(p.porez_dohodak, 'FM999G999G999G999G990D00')                                  as porez_dohodak_char,
        p.porez_zastita_nepogode,
        to_char(p.porez_zastita_nepogode, 'FM999G999G999G999G990D00')                         as porez_zastita_nepogode_char,
        p.vodna_naknada,
        to_char(p.vodna_naknada, 'FM999G999G999G999G990D00')                                  as vodna_naknada_char,
        p.rehabilitacija,
        to_char(p.rehabilitacija, 'FM999G999G999G999G990D00')                                 as rehabilitacija_char,
        p.poreska_umanjenje,
        to_char(p.poreska_umanjenje, 'FM999G999G999G999G990D00')                              as poreska_umanjenje_char,
        p.doprinos_solidarnost,
        to_char(p.doprinos_solidarnost, 'FM999G999G999G999G990D00')                           as doprinos_solidarnost_char,

    -- Topli obrok i prevoz
        p.topli_obrok,
        to_char(p.topli_obrok, 'FM999G999G999G999G990D00')                                    as topli_obrok_char,
        p.topli_obrok_isplata,
        to_char(p.topli_obrok_isplata, 'FM999G999G999G999G990D00')                            as topli_obrok_isplata_char,
        to_char(plr.tp_obrok_iznos, 'FM999G999G999G999G990D00')                               as topli_obrok_osnovica,
        to_char(p.minuli_rad, 'FM999G999G999G999G990D00')                                     as minuli_rad_char,
        p.prevoz,
        to_char(p.prevoz, 'FM999G999G999G999G990D00')                                         as prevoz_char,

    -- Odbici
        p.osnovni_licni_odb                                                                   as osnovni_licni_odb,
        to_char(p.osnovni_licni_odb, 'FM999G999G999G999G990D00')                              as osnovni_licni_odb_char,
        to_char(p.odb_porodica, 'FM999G999G999G999G990D00')                                   as odb_porodica,
        to_char(p.odb_kredit, 'FM999G999G999G999G990D00')                                     as odb_kredit,
        to_char(p.odb_osiguranje, 'FM999G999G999G999G990D00')                                 as odb_osiguranje,

    -- Ukupno doprinosi i porez
        p.ukupno_dadzbina,
        to_char(p.ukupno_dadzbina, 'FM999G999G999G999G990D00')                                as ukupno_dadzbina_char,
        p.ukupno_troskova,
        to_char(p.ukupno_troskova, 'FM999G999G999G999G990D00')                                as ukupno_troskova_char,
        pt.plata_porez,
        to_char(pt.plata_porez, 'FM999G999G999G999G990D00')                                   as plata_porez_char,
        pt.ukupno_pio,
        to_char(pt.ukupno_pio, 'FM999G999G999G999G990D00')                                    as ukupno_pio_char,
        pt.ukupno_zdravstvo,
        to_char(pt.ukupno_zdravstvo, 'FM999G999G999G999G990D00')                              as ukupno_zdravstvoo_char,
        pt.nezaposlenost,
        to_char(pt.nezaposlenost, 'FM999G999G999G999G990D00')                                 as nezaposlenost_char,
        pt.ostale_naknade,
        to_char(pt.ostale_naknade, 'FM999G999G999G999G990D00')                                as ostale_naknade_char,
        pt.ukupno_dazbina,
        to_char(pt.ukupno_dazbina, 'FM999G999G999G999G990D00')                                as ukupno_dazbina_char,

    -- Neto i obustave
        p.neto_poslije_poreza,
        to_char(p.neto_poslije_poreza, 'FM999G999G999G999G990D00')                            as neto_poslije_poreza_char,
        p.ukupno_primanja,
        to_char(p.ukupno_primanja, 'FM999G999G999G999G990D00')                                as ukupno_primanja_char,
        p.neto_prije_poreza,
        to_char(p.neto_prije_poreza, 'FM999G999G999G999G990D00')                              as neto_prije_poreza_char,
        p.izos_obustave,
        to_char(p.izos_obustave, 'FM999G999G999G999G990D00')                                  as iznos_obustave_char,
        p.ukupno_sa_obustavom,
        to_char(p.ukupno_sa_obustavom, 'FM999G999G999G999G990D00')                            as ukupno_sa_obustavom_char,

    -- Detalji
        (
            select
                coalesce(
                    sum(sati),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 1, 4 )
        )                                                                                     as redovan_rad_sati,
        (
            select
                coalesce(
                    sum(iznos_evident),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 1, 4 )
        )                                                                                     as redovan_rad_iznos,
        (
            select
                coalesce(
                    sum(neto_iznos),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 1, 4 )
        )                                                                                     as redovan_rad_neto_iznos,
        (
            select
                to_char(
                    coalesce(
                        sum(iznos_evident),
                        0
                    ),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 1, 4 )
        )                                                                                     as redovan_rad_iznos_char,
        (
            select
                coalesce(sati, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 5
        )                                                                                     as go_sati,
        (
            select
                coalesce(iznos_evident, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 5
        )                                                                                     as go_iznos,
        (
            select
                to_char(
                    coalesce(iznos_evident, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 5
        )                                                                                     as go_iznos_char,
        (
            select
                coalesce(
                    sum(sati),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 8, 9 )
        )                                                                                     as bolovanje_sati,
        (
            select
                coalesce(
                    sum(iznos_evident),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 8, 9 )
        )                                                                                     as bolovanje_iznos,
        (
            select
                to_char(
                    coalesce(
                        sum(iznos_evident),
                        0
                    ),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 8, 9 )
        )                                                                                     as bolovanje_iznos_char,
        (
            select
                coalesce(bruto_iznos_full - bruto_iznos, 0)
            from
                pl_bolovanja b
            where
                b.plata_id = p.id
        )                                                                                     as bruto_umanjenje,
        (
            select
                to_char(
                    coalesce(bruto_iznos_full - bruto_iznos, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                pl_bolovanja b
            where
                b.plata_id = p.id
        )                                                                                     as bruto_umanjenje_char,
        (
            select
                coalesce(
                    sum(sati),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 7, 12 )
        )                                                                                     as praznici_sati,
        (
            select
                coalesce(
                    sum(iznos_evident),
                    0
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 7, 12 )
        )                                                                                     as praznici_iznos,
        (
            select
                to_char(
                    coalesce(
                        sum(iznos_evident),
                        0
                    ),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id in ( 7, 12 )
        )                                                                                     as praznici_iznos_char,
        (
            select
                coalesce(sati, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 6
        )                                                                                     as plo_sati,
        (
            select
                coalesce(iznos_evident, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 6
        )                                                                                     as plo_iznos,
        (
            select
                to_char(
                    coalesce(iznos_evident, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 6
        )                                                                                     as plo_iznos_char,
        (
            select
                coalesce(sati, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 15
        )                                                                                     as porodiljsko_sati,
        (
            select
                coalesce(iznos_evident, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 15
        )                                                                                     as porodiljsko_iznos,
        (
            select
                to_char(
                    coalesce(iznos_evident, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 15
        )                                                                                     as porodiljsko_iznos_char,
        (
            select
                coalesce(sati, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 17
        )                                                                                     as suspenzija_sati,
        (
            select
                coalesce(iznos_evident, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 17
        )                                                                                     as suspenzija_iznos,
        (
            select
                to_char(
                    coalesce(iznos_evident, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 17
        )                                                                                     as suspenzija_iznos_char,
        (
            select
                coalesce(sati, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 18
        )                                                                                     as ods_bez_krivice_sati,
        (
            select
                coalesce(iznos_evident, 0)
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 18
        )                                                                                     as ods_bez_krivice_iznos,
        (
            select
                to_char(
                    coalesce(iznos_evident, 0),
                    'FM999G999G999G999G990D00'
                )
            from
                plate_detalji
            where
                    pl_id = p.id
                and evidencija_prisutnosti_id = 18
        )                                                                                     as ods_bez_krivice_iznos_char,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'PIO_POSL'
                and entitet_id = r.entitet_id
        )                                                                                     pio_koeficijent,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'ZDR_POSL'
                and entitet_id = r.entitet_id
        )                                                                                     zdravstvo_koeficijent,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'DJ_POSL'
                and entitet_id = r.entitet_id
        )                                                                                     djecija_zastita_koeficijent,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'NEZ_POSL'
                and entitet_id = r.entitet_id
        )                                                                                     zaposljavanje_koeficijent,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'DOH_RS'
                and entitet_id = r.entitet_id
        )                                                                                     porez_dohodak_koeficijent,
        (
            select
                to_char(vrijednost * 100, 'FM999G999G999G999G990D00')
            from
                sif.pl_koeficijenti
            where
                    sifra = 'FSD_POSL'
                and entitet_id = r.entitet_id
        )                                                                                     solidarnost_koeficijent,
        (
            select
                sum(broj_sati)
            from
                pl_prekovremeni pkv
            where
                pkv.plata_id = p.id
        )                                                                                     as prekovremeni_sati,
        p.broj_sati                                                                           as ukupno_sati,
        p.broj_sati / 8                                                                       as ukupno_dana_za_obracun,
        p.datum_obracuna_do + 10                                                              as rok_za_isplatu,
        r.obrazovanje_id,
        o.naziv                                                                               as obrazovanje_naziv,
        o.sifra                                                                               as obrazovanje_sifra,
        r.tip_radnog_vremena_id,
        rv.naziv                                                                              as tip_radnog_vremena_naziv,
        rv.sifra                                                                              as tip_radnog_vremena_sifra,
        r.tip_radnog_odnosa_id,
        ro.naziv                                                                              as tip_radnog_odnosa_naziv,
        ro.sifra                                                                              as tip_radnog_odnosa_sifra,
        p.vazi,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
             pl_plate p
        join vw_radnici                       r on r.id = p.radnik_id
        left join pl_plate_troskovi                pt on pt.plata_id = p.id
        left join vw_pl_radnici                    plr on p.radnik_id = plr.radnik_id
                                       and p.tip_ugovora_id = plr.tip_ugovora_id
        left join core.ooj on plr.ooj_id = ooj.id
        left join sif.sif_gradovi                  g on ooj.grad_id = g.id
        left join sif.hr_sif_obrazovanja           o on p.obrazovanje_id = o.id
        left join sif.hr_sif_tipovi_radnog_vremena rv on p.tip_radnog_vremena_id = rv.id
        left join sif.hr_sif_tipovi_radnog_odnosa  ro on p.tip_radnog_odnosa_id = ro.id
        left join sif.hr_sif_tipovi_ugovora        tu on p.tip_ugovora_id = tu.id
        left join sif.sif_banke                    b on p.banka_id = b.id
    where
        plr.history = 'N'
;

prompt
prompt Creating view VW_PL_PREKOVREMENI
prompt ================================
prompt
create or replace force view hrm.vw_pl_prekovremeni as
select
        p.id,
        p.plata_id,
        pl.godina                                                             as plata_godina,
        pl.mjesec                                                             as plata_mjesec,
        p.radnik_id,
        r.ime
        || ' '
        || r.prezime                                                          as radnik_naziv,
        r.email                                                               as radnik_email,
        p.pvs_id,
        pvs.naziv                                                             as pvs_naziv,
        to_char(p.cijena_sata, '999999990D99')                                as cijena_sata,
        p.broj_sati,
        p.procenat,
        to_char(p.bruto_iznos_before, '999999990D99')                         as bruto_iznos_before,
        to_char(p.neto_iznos_before, '999999990D99')                          as neto_iznos_before,
        to_char(p.bruto_iznos_after, '999999990D99')                          as bruto_iznos_after,
        to_char(p.neto_iznos_after, '999999990D99')                           as neto_iznos_after,
        to_char((p.bruto_iznos_after - p.bruto_iznos_before), '999999990D99') as bruto_razlika,
        to_char((p.neto_iznos_after - p.neto_iznos_before), '999999990D99')   as neto_razlika,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        pl_prekovremeni   p
        left join pl_plate          pl on p.plata_id = pl.id
        left join hr_radnici        r on p.radnik_id = r.id
        left join sif.hr_pvs_tipovi pvs on p.pvs_id = pvs.id;

prompt
prompt Creating view VW_P_CHECKLIST_STAVKE
prompt ===================================
prompt
create or replace force view hrm.vw_p_checklist_stavke as
select
        s.id,
        s.checklist_id,
        c.naziv       as checklist_naziv,
        s.naziv,
        s.datum_od,
        s.datum_do,
        s.status_id,
        ss.naziv      as status_naziv,
        ss.sifra      as status_sifra,
        ss.color_code as status_color_code,
        s.vrijeme_rada,
        to_char(
            trunc(s.vrijeme_rada * 24),
            'FM00'
        )
        || ':'
        || to_char(
            trunc(mod(s.vrijeme_rada * 24 * 60, 60)),
            'FM00'
        )             as vrijeme_rada_format,
        s.valid,
        k.id          as kartica_id,
        k.naziv       as kartica_naziv,
        k.datum_od    as kartica_datum_od,
        k.datum_do    as kartica_datum_do,
        k.valid       as kartica_valid,
        l.id          as lista_id,
        l.naziv       as lista_naziv,
        l.valid       as lista_valid,
        p.id          as projekat_id,
        p.naziv       as projekat_naziv,
        s.row_version,
        s.created,
        s.created_by,
        s.updated,
        s.updated_by
    from
        p_checklist_stavke s
        left join p_checklist        c on s.checklist_id = c.id
        left join p_kartice          k on c.kartica_id = k.id
        left join p_projekat_liste   l on k.lista_id = l.id
        left join p_projekti         p on l.projekat_id = p.id
        left join sif.p_sif_statusi  ss on s.status_id = ss.id;

prompt
prompt Creating view VW_P_CHECKLIST
prompt ============================
prompt
create or replace force view hrm.vw_p_checklist as
select
        c.id,
        c.kartica_id,
        k.naziv as kartica_naziv,
        k.valid as kartica_valid,
        c.naziv,
        c.valid,
        (
            select
                count(*)
            from
                vw_p_checklist_stavke s
            where
                s.checklist_id = c.id
        )       as total_count,
        (
            select
                count(*)
            from
                vw_p_checklist_stavke s
            where
                    s.checklist_id = c.id
                and status_sifra = 'f'
        )       as checked_count,
        l.id    as lista_id,
        l.naziv as lista_naziv,
        l.valid as lista_valid,
        p.id    as projekat_id,
        p.naziv as projekat_naziv,
        c.row_version,
        c.created,
        c.created_by,
        c.updated,
        c.updated_by
    from
        p_checklist      c
        left join p_kartice        k on c.kartica_id = k.id
        left join p_projekat_liste l on k.lista_id = l.id
        left join p_projekti       p on l.projekat_id = p.id;

prompt
prompt Creating view VW_P_KARTICA_KORISNICI
prompt ====================================
prompt
create or replace force view hrm.vw_p_kartica_korisnici as
select
        kk.id,
        kk.kartica_id,
        k.naziv                as kartica_naziv,
        kk.korisnik_id,
        initcap(sk.ime)
        || ' '
        || initcap(sk.prezime) as korisnik_naziv,
        sk.foto                as korisnik_foto,
        sk.foto_filename       as korisnik_foto_filename,
        sk.foto_mimetype       as korisnik_foto_mimetype,
        sk.foto_lastupd        as korisnik_foto_lastupd,
        kk.valid,
        kk.row_version,
        kk.created,
        kk.created_by,
        kk.updated,
        kk.updated_by
    from
        p_kartica_korisnici kk
        left join p_kartice           k on kk.kartica_id = k.id
        left join core.vw_korisnici   sk on kk.korisnik_id = sk.id;

prompt
prompt Creating view VW_P_KARTICA_LABELI
prompt =================================
prompt
create or replace force view hrm.vw_p_kartica_labeli as
select
        kl.id,
        kl.kartica_id,
        k.naziv       as kartica_naziv,
        kl.label_id,
        ol.naziv      as label_naziv,
        ol.color_code as label_color_code,
        kl.valid,
        kl.row_version,
        kl.created,
        kl.created_by,
        kl.updated,
        kl.updated_by
    from
        p_kartica_labeli kl
        left join p_kartice        k on kl.kartica_id = k.id
        left join p_ooj_labeli     ol on kl.label_id = ol.id;

prompt
prompt Creating view VW_P_KARTICE
prompt ==========================
prompt
create or replace force view hrm.vw_p_kartice as
select
        k.id,
        p.id         as projekat_id,
        p.naziv      as projekat_naziv,
        k.lista_id,
        l.naziv      as lista_naziv,
        l.valid      as lista_valid,
        k.naziv,
        k.opis,
        k.datum_od,
        k.datum_do,
        k.cijena_sata,
        k.status_id,
        s.naziv      as status_naziv,
        s.sifra      as status_sifra,
        s.color_code as status_color_code,
        k.valid,
        k.row_version,
        k.created,
        k.created_by,
        k.updated,
        k.updated_by
    from
        p_kartice         k
        left join p_projekat_liste  l on k.lista_id = l.id
        left join p_projekti        p on l.projekat_id = p.id
        left join sif.p_sif_statusi s on k.status_id = s.id;

prompt
prompt Creating view VW_P_PROJEKAT_KOMENTARI
prompt =====================================
prompt
create or replace force view hrm.vw_p_projekat_komentari as
select
        kk.id,
        kk.tip_komentara_id,
        t.sifra                                   as tip_komentara_sifra,
        t.naziv                                   as tip_komentara_naziv,
        p.id                                      as projekat_id,
        p.naziv                                   as projekat_naziv,
        l.id                                      as lista_id,
        l.naziv                                   as lista_naziv,
        kk.kartica_id,
        k.naziv                                   as kartica_naziv,
        kk.korisnik_id,
        initcap(sk.ime)
        || ' '
        || initcap(sk.prezime)                    as korisnik_naziv,
        kk.komentar,
        to_char(kk.vrijeme, 'DD.MM.YYYY HH24:MI') as vrijeme,
        kk.system,
        kk.valid,
        kk.row_version,
        kk.created,
        kk.created_by,
        kk.updated,
        kk.updated_by
    from
        p_projekat_komentari       kk
        left join sif.p_sif_tipovi_komentara t on kk.tip_komentara_id = t.id
        left join p_kartice                  k on kk.kartica_id = k.id
        left join p_projekat_liste           l on k.lista_id = l.id
        left join p_projekti                 p on kk.projekat_id = p.id
        left join core.korisnici             sk on kk.korisnik_id = sk.id;

prompt
prompt Creating view VW_P_PROJEKAT_KORISNICI
prompt =====================================
prompt
create or replace force view hrm.vw_p_projekat_korisnici as
select
        pr.id,
        pr.projekat_id,
        p.naziv               as projekat_naziv,
        pr.korisnik_id,
        initcap(k.ime)
        || ' '
        || initcap(k.prezime) as korisnik_naziv,
        k.foto                as korisnik_foto,
        k.foto_filename       as korisnik_foto_filename,
        k.foto_mimetype       as korisnik_foto_mimetype,
        k.foto_lastupd        as korisnik_foto_lastupd,
        pr.pristup_id,
        np.naziv              as pristup_naziv,
        np.sifra              as pristup_sifra,
        pr.valid,
        pr.row_version,
        pr.created,
        pr.created_by,
        pr.updated,
        pr.updated_by
    from
        p_projekat_korisnici     pr
        left join p_projekti               p on pr.projekat_id = p.id
        left join core.vw_korisnici        k on pr.korisnik_id = k.id
        left join sif.p_sif_nivoi_pristupa np on pr.pristup_id = np.id;

prompt
prompt Creating view VW_P_PROJEKAT_LISTE
prompt =================================
prompt
create or replace force view hrm.vw_p_projekat_liste as
select
        l.id,
        l.projekat_id,
        p.naziv as projekat_naziv,
        l.naziv,
        l.sequence,
        l.valid,
        l.row_version,
        l.created,
        l.created_by,
        l.updated,
        l.updated_by
    from
        p_projekat_liste l
        left join p_projekti       p on l.projekat_id = p.id;

prompt
prompt Creating view VW_P_PROJEKTI
prompt ===========================
prompt
create or replace force view hrm.vw_p_projekti as
select
        p.id,
        p.ooj_id,
        ooj.naziv    as ooj_naziv,
        p.pozadina_id,
        sp.naziv     as pozadina_naziv,
        sp.file_name pozadina_file_name,
--	'#APP_FILES#' || sp.file_name as pozadina_path,
        p.naziv,
        p.opis,
        p.status_id,
        p.klijent_id,
        s.naziv      as status_naziv,
        s.sifra      as status_sifra,
        s.color_code as status_color_code,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        p_projekti              p
        left join core.ooj on p.ooj_id = ooj.id
        left join sif.p_sif_pozadine      sp on p.pozadina_id = sp.id
        left join sif.p_sif_statusi       s on p.status_id = s.id
        left join accounting.sec_klijenti sk on p.klijent_id = sk.id
;

prompt
prompt Creating view VW_RADNIK_DOKUMENTI
prompt =================================
prompt
create or replace force view hrm.vw_radnik_dokumenti as
select
        d.id,
        d.radnik_id,
        r.ime
        || ' '
        || r.prezime as radnik_naziv,
        d.dokument,
        d.dokument_mimetype,
        d.dokument_filename,
        d.tip_dokumenta_id,
        td.naziv     as tip_dokumenta_naziv,
        d.datum,
        d.obrazac_id,
        o.naziv      as obrazac_naziv,
        d.valid,
        d.row_version,
        d.created,
        d.created_by,
        d.updated,
        d.updated_by
    from
        hr_radnik_dokumenti          d
        left join hr_radnici                   r on d.radnik_id = r.id
        left join sif.hr_sif_tipovi_dokumenata td on d.tip_dokumenta_id = td.id
        left join obrasci                      o on d.obrazac_id = o.id;

prompt
prompt Creating view VW_SIHT_LISTA
prompt ===========================
prompt
create or replace force view hrm.vw_siht_lista as
select
        s.id,
        s.radnik_id,
        r.ime
        || ' '
        || r.prezime   as ime_prezime,
        r.nadredjeni_id,
        r.ooj_id,
        r.oj_id,
        s.evidencija_prisutnosti_id,
        e.naziv        as evprisutnosti_naziv,
        e.color_code   as ev_color_code,
        e.icon         as ev_icon,
        e.oznaka       as oznaka,
        s.status_id,
        ss.naziv       as status_naziv,
        s.pvs_tip_id,
        pvst.naziv     as pvs_naziv,
        s.datum,
        s.radni_dan,
        s.dan,
        case
            when s.pvs_kolicina is null then
                'Ažuriraj'
            else
                s.pvs_kolicina
                || ' ('
                || pvst.naziv
                || ')'
        end            as prekovremeni_sati,
        case
            when s.pvs_kolicina is null then
                ''
            else
                '<br>('
                || s.pvs_kolicina
                || '-'
                || pvst.oznaka
                || ')'
        end            as prekovremeni_sati2,
        case
            when s.pvs_kolicina is null then
                0
            else
                s.pvs_kolicina
        end            pvs_kol,
        broj_sati      as broj_sati,
        s.smjena_id,
        smjene.naziv   as smjena_naziv,
        smjene.pocetak as smjena_pocetak,
        smjene.kraj    as smjena_kraj
    from
        hr_siht_lista             s
        left join sif.hr_sif_ev_prisutnosti e on e.id = s.evidencija_prisutnosti_id
        left join hr_radnici                r on r.id = s.radnik_id
        left join sif.hr_sif_sihtl_statusi  ss on ss.id = s.status_id
        left join sif.hr_pvs_tipovi         pvst on pvst.id = s.pvs_tip_id
        left join smjene on s.smjena_id = smjene.id
    order by
        s.datum asc;

prompt
prompt Creating view VW_SIHT_LISTA_REPORT
prompt ==================================
prompt
create or replace force view hrm.vw_siht_lista_report as
select
        r.id                     as radnik_id,
        initcap(r.ime)
        || ' '
        || initcap(r.prezime)    radnik_ime,
        s.datum,
        s.dan,
        e.id,
        e.naziv,
        s.pvs_kolicina           as pvs_kolicina,
        case
            when e.id in ( 1, 2, 3 ) then
                8
            else
                0
        end                      as sati,
        case
            when e.id in ( 1, 2, 3 ) then
                    8
            else
                0
        end
        + nvl(s.pvs_kolicina, 0) as dan_ukupno_sati,
        case
            when s.pvs_tip_id is null then
                e.oznaka
            else
                e.oznaka
                || ' - '
                || pvs.oznaka
                || ' - '
                || nvl(s.pvs_kolicina, 0)
        end                      dan_sati_output,
        ooj.id                   as ooj_id,
        f.id                     as firma_id
    from
        hr_siht_lista             s
        left join hr_radnici                r on r.id = s.radnik_id
        left join sif.hr_sif_ev_prisutnosti e on e.id = s.evidencija_prisutnosti_id
        left join sif.hr_sif_sihtl_statusi  ss on ss.id = s.status_id
        left join sif.hr_pvs_tipovi         pvs on pvs.id = s.pvs_tip_id
        left join core.ooj on ooj.id = r.ooj_id
        left join core.firme                f on f.id = ooj.firma_id;

prompt
prompt Creating view VW_SIHT_LISTA_VRIJEME
prompt ===================================
prompt
create or replace force view hrm.vw_siht_lista_vrijeme as
select
        v.id,
        v.siht_lista_id,
        sh.datum,
        sh.evidencija_prisutnosti_id,
        ev.naziv              as prisutnost_naziv,
        sh.radnik_id,
        initcap(r.ime)
        || ' '
        || initcap(r.prezime) as radnik_naziv,
        r.ooj_id,
        r.oj_id,
        v.tip_rada_id,
        tr.naziv              as tip_rada_naziv,
        tr.color_code         as tip_rada_color_code,
        v.start_time,
        v.start_lat,
        v.start_lng,
        v.end_time,
        v.end_lat,
        v.end_lng,
        v.tip_prijave_id,
        tp.naziv              as tip_prijave_naziv,
        v.trajanje,
        v.valid,
        v.row_version,
        v.created,
        v.created_by,
        v.updated,
        v.updated_by
    from
        hr_siht_lista_vrijeme     v
        left join hr_siht_lista             sh on v.siht_lista_id = sh.id
        left join sif.hr_sif_ev_prisutnosti ev on sh.evidencija_prisutnosti_id = ev.id
        left join hr_radnici                r on sh.radnik_id = r.id
        left join sif.hr_sif_tipovi_rada    tr on v.tip_rada_id = tr.id
        left join sif.hr_sif_tipovi_prijava tp on v.tip_prijave_id = tp.id;

prompt
prompt Creating view VW_SMJENA_SABLON_DANI
prompt ===================================
prompt
create or replace force view hrm.vw_smjena_sablon_dani as
select
        ssd.id,
        ssd.sablon_id,
        ssd.radnik_id,
        r.ime
        || ' '
        || r.prezime as radnik_naziv,
        ssd.smjena_id,
        s.sifra      as smjena_sifra,
        s.naziv      as smjena_naziv,
        s.pocetak    as smjena_pocetak,
        s.kraj       as smjena_kraj,
        s.color_code as smjena_color_code,
        ssd.dan,
        ssd.valid,
        ssd.row_version,
        ssd.created,
        ssd.created_by,
        ssd.updated
    from
        smjena_sablon_dani ssd
        left join smjena_sabloni     ss on ssd.sablon_id = ss.id
        left join hr_radnici         r on ssd.radnik_id = r.id
        left join smjene             s on ssd.smjena_id = s.id;

prompt
prompt Creating view VW_SMJENA_SIHT_LISTA
prompt ==================================
prompt
create or replace force view hrm.vw_smjena_siht_lista as
select
        sss.id,
        sss.ooj_id,
        ooj.naziv as ooj_naziv,
        sss.sablon_id,
        s.naziv   as sablon_naziv,
        sss.datum,
        sss.row_version,
        sss.created,
        sss.created_by,
        sss.updated,
        sss.updated_by
    from
        smjena_siht_lista sss
        left join core.ooj on sss.ooj_id = ooj.id
        left join smjena_sabloni    s on sss.sablon_id = s.id;

prompt
prompt Creating view VW_SP_IZVJESTAJ
prompt =============================
prompt
create or replace force view hrm.vw_sp_izvjestaj as
select
        i.id,
        i.opis,
        i.zahtjev_id,
        i.vrijeme_polaska,
        i.vrijeme_povratka,
        i.broj_sati,
        i.broj_dana,
        i.broj_min,
        i.vozilo_id,
        case
            when v.id is not null then
                v.marka_vozila
                || ' '
                || v.model_vozila
                || ' - '
                || v.reg_oznaka
            else
                null
        end            as vozilo_naziv,
        i.komentar,
        i.akontacija,
        i.drzava_id,
        d.name         as drzava_naziv,
        d.dnevnica     as drzava_dnevnica,
        case
            when i.drzava_id = 28 then
                'N'
            else
                'Y'
        end            as ino_drzava,
        i.kurs,
        i.valuta_id,
        аv.naziv        as valuta_naziv,
        i.broj_dana
        || ' dan(a), '
        || i.broj_sati
        || ' sat(i), '
        || i.broj_min
        || ' minut(a)' as trajanje_sp,
        (
            select
                count(*)
            from
                sp_troskovi t
            where
                    t.zahtjev_id = i.zahtjev_id
                and racun is not null
        )              as prilog_count,
        i.vazi,
        i.created_by,
        i.created,
        i.updated_by,
        i.updated
    from
        sp_izvjestaj   i
        left join fv_vozila      v on i.vozilo_id = v.id
        left join sif.sif_drzave d on i.drzava_id = d.id
        left join sif.acc_valute аv on i.valuta_id = аv.id;

prompt
prompt Creating view VW_SP_PUTNICI
prompt ===========================
prompt
create or replace force view hrm.vw_sp_putnici as
select
        p.id,
        p.zahtjev_id,
        p.radnik_id,
        p.redni_broj,
        r.ime
        || ' '
        || r.prezime as radnik_naziv,
        p.valid,
        p.created_by,
        p.created,
        p.updated_by,
        p.updated,
        p.row_version
    from
        sp_putnici p
        left join hr_radnici r on p.radnik_id = r.id;

prompt
prompt Creating view VW_SP_STATUSI_HIST
prompt ================================
prompt
create or replace force view hrm.vw_sp_statusi_hist as
select
        h.id,
        h.zahtjev_id,
        h.datum,
        h.status_id,
        s.naziv      as status_naziv,
        case
            when status_id = 10 then
                'u-color-1'
            when status_id = 20 then
                'u-color-4'
            when status_id = 30 then
                'u-color-9'
            when status_id = 40 then
                'u-color-14'
            when status_id = 50 then
                'u-color-7'
            when status_id = 60 then
                'u-color-8'
            when status_id = 70 then
                'u-color-12'
            when status_id = 80 then
                'u-color-13'
        end          as status_color_code,
        h.komentar,
        k.ime
        || ' '
        || k.prezime as korisnik,
        h.created_by,
        h.created,
        h.updated_by,
        h.updated
    from
        sp_statusi_hist h
        left join core.korisnici  k on h.created_by = k.korisnicko_ime
        left join sif.go_statusi  s on h.status_id = s.id;

prompt
prompt Creating view VW_SP_TROSKOVI
prompt ============================
prompt
create or replace force view hrm.vw_sp_troskovi as
select
        t.id,
        t.zahtjev_id,
        z.broj_zahtjeva as zahtjev_broj,
        z.godina        as zahtjev_godina,
        t.opis,
        t.iznos,
        t.racun,
        t.racun_filename,
        t.racun_mimetype,
        t.tip_id,
        tt.naziv        as tip_naziv,
        tt.opis         as tip_opis,
        t.valid,
        t.created_by,
        t.row_version,
        t.created,
        t.updated,
        t.updated_by
    from
        sp_troskovi            t
        left join sp_zahtjevi            z on t.zahtjev_id = z.id
        left join sif.sp_troskovi_tipovi tt on t.tip_id = tt.id;

prompt
prompt Creating view VW_SP_ZAHTJEVI
prompt ============================
prompt
create or replace force view hrm.vw_sp_zahtjevi as
select
        z.id,
        z.broj_zahtjeva,
        z.godina,
        z.broj_zahtjeva
        || ' / '
        || z.godina        as broj_zahtjeva_naziv,
        z.radnik_id,
        ra.ime
        || ' '
        || ra.prezime      as radnik_naziv,
        ra.nadredjeni_id,
        z.datum_od,
        z.datum_do,
        z.relacija,
        z.mjesto_putovanja,
        z.reg_oznaka,
        z.svrha_putovanja,
        z.komentar,
        z.komentar_statusa,
        z.radnik_odobrio_id,
        case
            when z.radnik_odobrio_id is not null then
                nad.ime
                || ' '
                || nad.prezime
            else
                null
        end                as radnik_odobrio_naziv,
        z.status_id,
        s.naziv            as status_naziv,
        case
            when status_id = 10  then
                'u-color-1'
            when status_id = 20  then
                'u-color-4'
            when status_id = 30  then
                'u-color-9'
            when status_id = 40  then
                'u-color-14'
            when status_id = 50  then
                'u-color-7'
            when status_id = 60  then
                'u-color-8'
            when status_id = 70  then
                'u-color-12'
            when status_id = 80  then
                'u-color-13'
            when status_id = 90  then
                'u-color-14'
            when status_id = 100 then
                'u-color-15'
        end                as status_color_code,
        z.teret_troskova,
        z.vrsta_vozila_id,
        vv.naziv           as vrsta_vozila_naziv,
        ra.radno_mjesto_id as radno_mjesto_id,
        rm.naziv           as radno_mjesto_naziv,
        ooj.id             as ooj_id,
        ooj.naziv          as ooj_naziv,
        f.id               as firma_id,
        f.naziv            as firma_naziv,
        ooj.grad_id,
        ooj.adresa         as firma_adresa,
        (
            select
                sum(iznos)
            from
                sp_troskovi
            where
                zahtjev_id = z.id
        )                  as ukupno_troskova,
        (
            select
                (
                    select
                        k.ime
                        || ' '
                        || k.prezime
                    from
                        core.korisnici k
                    where
                        k.korisnicko_ime = sh.created_by
                )
            from
                sp_statusi_hist sh
            where
                    sh.zahtjev_id = z.id
                and sh.status_id = 70
                and rownum = 1
        )                  as odobrio_isplatu,
        z.glavna_knjiga_id,
        z.valid,
        z.created_by,
        z.created,
        z.updated_by,
        z.updated
    from
        sp_zahtjevi             z
        left join hr_radnici              ra on z.radnik_id = ra.id
        left join hr_radnici              nad on z.radnik_odobrio_id = nad.id
        left join sif.go_statusi          s on z.status_id = s.id
        left join sif.fv_vrste_vozila     vv on z.vrsta_vozila_id = vv.id
        left join core.ooj on ra.ooj_id = ooj.id
        left join core.firme              f on ooj.firma_id = f.id
        left join core.firma_radna_mjesta rm on ra.radno_mjesto_id = rm.id;

prompt
prompt Creating view VW_S_SASTANCI
prompt ===========================
prompt
create or replace force view hrm.vw_s_sastanci as
select
        s.id,
        s.ooj_id,
        ooj.naziv                     as ooj_naziv,
        s.status_id,
        ss.naziv                      as status_naziv,
        ss.sifra                      as status_sifra,
        ss.color_code                 as status_color_code,
        s.prostorija_id,
        p.naziv                       as prostorija_naziv,
        p.kapacitet                   as prostorija_kapacitet,
        s.tip_id,
        st.naziv                      as tip_naziv,
        s.naziv,
        s.opis,
        s.napomena,
        to_date(to_char(s.datum_od, 'DD.MM.YYYY HH24:MI'),
                'DD.MM.YYYY HH24:MI') as datum_od,
        to_date(to_char(s.datum_do, 'DD.MM.YYYY HH24:MI'),
                'DD.MM.YYYY HH24:MI') as datum_do,
        s.valid,
        s.row_version,
        s.created,
        s.created_by,
        s.updated,
        s.updated_by
    from
        s_sastanci                 s
        left join core.ooj on s.ooj_id = ooj.id
        left join sif.s_sif_statusi          ss on s.status_id = ss.id
        left join sif.s_sif_tipovi_sastanaka st on s.tip_id = st.id
        left join s_ooj_prostorije           p on s.prostorija_id = p.id;

prompt
prompt Creating view VW_VP_ZAHTJEVI
prompt ============================
prompt
create or replace force view hrm.vw_vp_zahtjevi as
select
        z.id,
        z.radnik_id,
        r.ime
        || ' '
        || r.prezime as radnik_naziv,
        r.email      as radnik_email,
        z.status_id,
        s.sifra      as status_sifra,
        s.naziv      as status_naziv,
        s.color_code as status_color_code,
        z.broj_zahtjeva,
        z.godina,
        z.broj_zahtjeva
        || ' / '
        || z.godina  as broj_zahtjeva_naziv,
        z.datum_od,
        z.datum_do,
        z.napomena,
        z.broj_dana,
        z.nadredjeni_id,
        n.ime
        || ' '
        || n.prezime as nadredjeni_naziv,
        n.email      as nadredjeni_email,
        z.komentar,
        z.ooj_id,
        ooj.naziv    as ooj_naziv,
        z.valid,
        z.row_version,
        z.created,
        z.created_by,
        z.updated,
        z.updated_by
    from
        vp_zahtjevi        z
        left join hr_radnici         r on z.radnik_id = r.id
        left join hr_radnici         n on z.nadredjeni_id = n.id
        left join sif.vp_sif_statusi s on z.status_id = s.id
        left join core.ooj on z.ooj_id = ooj.id;

prompt
prompt Creating package ANKETE_PKG
prompt ===========================
prompt
create or replace package hrm.ankete_pkg is

    -- Obavjestenja
    procedure get_obavjestenje (
        p_id                  in number,
        p_ooj_id              out number,
        p_tip_obavjestenja_id out number,
        p_poruka              out varchar2,
        p_korisnik_id         out number,
        p_datum_od            out date,
        p_datum_do            out date,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    );

    procedure insert_obavjestenje (
        p_ooj_id              in number default null,
        p_tip_obavjestenja_id in number default null,
        p_poruka              in varchar2 default null,
        p_korisnik_id         in number default null,
        p_datum_od            in date default null,
        p_datum_do            in date default null
    );

    procedure delete_obavjestenje (
        p_id in number
    );

    function get_obavjestenje_id (
        p_ooj_id in number
    ) return number;

    procedure get_obavjestenje_data (
        p_id         in number,
        p_poruka     out varchar2,
        p_color_code out varchar2
    );

    function get_obavjestenje_html (
        p_ooj_id in number
    ) return clob;

    -- Poruke
    procedure get_poruka (
        p_id          in number,
        p_ooj_id      out number,
        p_subject     out varchar2,
        p_poruka      out varchar2,
        p_korisnik_id out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_poruka (
        p_ooj_id      in number default null,
        p_subject     in varchar2 default null,
        p_poruka      in varchar2 default null,
        p_korisnik_id in number default null
    );

    -- Ankete
    procedure get_anketa (
        p_id          in number,
        p_korisnik_id out number,
        p_status_id   out number,
        p_anonimno    out varchar2
    );

    function insert_anketa (
        p_ooj_id      in number default null,
        p_naziv       in varchar2 default null,
        p_korisnik_id in number default null
    ) return number;

    procedure delete_anketa (
        p_id in number
    );

    procedure zavrsi_anketu (
        p_id in number
    );

    -- Pitanja
    procedure get_pitanje (
        p_id          in number,
        p_anketa_id   out number,
        p_pitanje     out varchar2,
        p_obavezno    out varchar2,
        p_sequence    out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    function insert_pitanje (
        p_anketa_id in number,
        p_pitanje   in varchar2,
        p_obavezno  in varchar2,
        p_sequence  in number
    ) return number;

    -- Odgovori na pitanja
    procedure get_odgovor (
        p_id          in number,
        p_pitanje_id  out number,
        p_odgovor     out varchar2,
        p_sequence    out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_odgovor (
        p_pitanje_id in number,
        p_odgovor    in varchar2,
        p_sequence   in number
    );

    -- Korisnici
    procedure get_korisnik_odgovor (
        p_id          in number,
        p_anketa_id   out number,
        p_korisnik_id out number,
        p_pitanje_id  out number,
        p_odgovor_id  out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_korisnik_odgovor (
        p_anketa_id   in number default null,
        p_korisnik_id in number default null,
        p_pitanje_id  in number default null,
        p_odgovor_id  in number default null
    );

end ankete_pkg;
/

prompt
prompt Creating package BOLOVANJE_PKG
prompt ==============================
prompt
create or replace package hrm.bolovanje_pkg is

    -- Pomocne funkcije
    function trazeni_broj_dana (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number;

    function trazeni_broj_dana_mjesec (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number,
        p_mjesec    in number,
        p_godina    in number
    ) return number;

    function get_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number;

    -- Zahtjev
    procedure get_zahtjev (
        p_id        in number,
        p_radnik_id out number,
        p_datum_od  out date,
        p_datum_do  out date,
        p_status_id out number,
        p_tip_id    out number
    );

    procedure insert_zahtjev (
        p_radnik_id in number,
        p_datum_od  in date,
        p_napomena  in varchar2
    );

    procedure update_zahtjev (
        p_id            in number,
        p_procenat      in number,
        p_status_id     in number,
        p_komentar      in varchar2 default null,
        p_prisutnost_id in number default null
    );

    procedure zatvori_bolovanje (
        p_id       in number,
        p_datum_do in date
    );

    procedure update_bolovanje_siht_lista (
        p_id       in number,
        p_datum_do in date
    );

    -- Zahtjev hist
    procedure insert_zahtjev_hist (
        p_zahtjev_id in number,
        p_status_id  in number
    );

    -- Dokumenti
    procedure get_dokument (
        p_id          in number,
        p_zahtjev_id  out number,
        p_dokument    out blob,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_docs (
        p_zahtjev_id in number,
        p_documents  in varchar2
    );

    procedure insert_dokument (
        p_zahtjev_id in number,
        p_dokument   in varchar2
    );

    procedure delete_dokument (
        p_id in number default null
    );

end bolovanje_pkg;
/

prompt
prompt Creating package FV_PKG
prompt =======================
prompt
create or replace package hrm.fv_pkg is

    -- vozila
    procedure get_vozilo (
        p_id               in number,
        p_vrsta_vozila_id  out number,
        p_firma_id         out number,
        p_radnik_id        out number,
        p_ooj_id           out number,
        p_oj_id            out number,
        p_status           out number,
        p_reg_oznaka       out varchar2,
        p_reg_datum        out date,
        p_tip_vozila       out varchar2,
        p_marka_vozila     out varchar2,
        p_model_vozila     out varchar2,
        p_gorivo_max       out number,
        p_zapremina_motora out varchar2,
        p_snaga_motora     out varchar2,
        p_vrsta_goriva     out varchar2,
        p_boja             out varchar2,
        p_broj_sasije      out varchar2,
        p_masa_vozila      out varchar2,
        p_broj_mjesta      out number,
        p_valid            out varchar2
    );

    procedure ce_vozilo (
        p_id               in number default null,
        p_vrsta_vozila_id  in number,
        p_firma_id         in number,
        p_radnik_id        in number,
        p_ooj_id           in number,
        p_oj_id            in number,
        p_status           in number,
        p_reg_oznaka       in varchar2,
        p_reg_datum        in date,
        p_tip_vozila       in varchar2,
        p_marka_vozila     in varchar2,
        p_model_vozila     in varchar2,
        p_gorivo_max       in number,
        p_zapremina_motora in varchar2,
        p_snaga_motora     in varchar2,
        p_vrsta_goriva     in varchar2,
        p_boja             in varchar2,
        p_broj_sasije      in varchar2,
        p_masa_vozila      in varchar2,
        p_broj_mjesta      in number,
        p_valid            in varchar2 default null
    );

    procedure obrisi_vozilo (
        p_id in number
    );

    -- servis vozila
    procedure get_servis_vozila (
        p_id          in number,
        p_vozilo_id   out number,
        p_vrsta_id    out varchar2,
        p_datum       out date,
        p_kilometraza out number,
        p_cijena      out number,
        p_valid       out varchar2
    );

    procedure ce_servis_vozila (
        p_id          in number default null,
        p_vozilo_id   in number,
        p_vrsta_id    in varchar2,
        p_datum       in date,
        p_kilometraza in number,
        p_cijena      in number,
        p_valid       in varchar2 default null
    );

    procedure obrisi_servis_vozila (
        p_id in number
    );

    -- tocenje vozila
    procedure get_tocenje_vozila (
        p_id        in number,
        p_vozilo_id out number,
        p_kolicina  out number,
        p_cijena    out number,
        p_datum     out date,
        p_valid     out varchar2
    );

    procedure ce_tocenje_vozila (
        p_id        in number default null,
        p_vozilo_id in number,
        p_kolicina  in number,
        p_cijena    in number,
        p_datum     in date,
        p_valid     in varchar2 default null
    );

    procedure obrisi_tocenje_vozila (
        p_id in number
    );

    -- rezervacija vozila
    procedure get_rezervacija (
        p_id                  in number,
        p_vozilo_id           out number,
        p_radnik_id           out number,
        p_tip_rezervacije_id  out number,
        p_zahtjev_id          out number,
        p_kilometraza_pocetak out number,
        p_kilometraza_kraj    out number,
        p_datum_od            out date,
        p_datum_do            out date,
        p_valid               out varchar2
    );

    procedure ce_rezervacija (
        p_id                  in number default null,
        p_vozilo_id           in number,
        p_radnik_id           in number,
        p_tip_rezervacije_id  in number,
        p_zahtjev_id          in number,
        p_kilometraza_pocetak in number default null,
        p_kilometraza_kraj    in number default null,
        p_datum_od            in date,
        p_datum_do            in date,
        p_valid               in varchar2 default null
    );

    procedure obrisi_rezervacija (
        p_id in number
    );

end fv_pkg;
/

prompt
prompt Creating package GO_PKG
prompt =======================
prompt
create or replace package hrm.go_pkg as
    g_go_podnesen constant number := 10;
    g_go_odobren constant number := 20;
    g_go_odbijen constant number := 30;
    g_go_ponisten constant number := 40;
    g_go_na_izmjeni constant number := 50;
    g_trideseti_jun constant varchar2(16) := '0630';
    g_min_dana_prvi_dio_go constant number := 12;

	-- Helper
    function broj_dana_perioda (
        p_datum_od in date,
        p_datum_do in date
    ) return number;

    function broj_dana_praznik (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number;

    function trazeni_broj_dana (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number;

    function vrati_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number;

    function iskoristeno_dana (
        p_radnik_id in number,
        p_godina    in number
    ) return number;

	-- Plan dana
    function ukupno_dana_go (
        p_radnik_id in number
    ) return number;

    procedure ukupno_plan_dana (
        p_radnik_id in number,
        p_ukupno    out number,
        p_staz      out number,
        p_hr_ob     out number,
        p_inval     out number,
        p_sam_rod   out number,
        p_djeca     out number
    );

    function insert_plan_dana (
        p_radnik_id in number,
        p_broj_dana in number,
        p_godina    in number,
        p_komentar  in varchar2
    ) return number;

    procedure update_plan_dana (
        p_id        in number,
        p_radnik_id in number,
        p_broj_dana in number,
        p_godina    in number,
        p_komentar  in varchar2
    );

    procedure delete_plan_dana (
        p_id in number
    );

    procedure insert_go_plan_detalji (
        p_plan_dana_id in number,
        p_tip_id       in number,
        p_broj_dana    in number
    );

	-- Zahtjev
    procedure get_zahtjev (
        p_id                  in number,
        p_radnik_id           out number,
        p_datum_od            out date,
        p_datum_do            out date,
        p_broj_zahtjeva_naziv out varchar2,
        p_filename            out varchar2
    );

    procedure insert_zahtjev (
        p_radnik_id       in number,
        p_datum_od        in varchar2,
        p_datum_do        in varchar2,
        p_komentar        in varchar2,
        p_broj_dana       in number,
        p_tip_zahtjeva_id in number,
        p_godina          in number,
        p_firma_id        in number
    );

    procedure update_zahtjev (
        p_id        in number,
        p_datum_od  in varchar2,
        p_datum_do  in varchar2,
        p_broj_dana in number,
        p_komentar  in varchar2
    );

    procedure update_zahtjev_odobri (
        p_zahtjev_id        in number,
        p_komentar_statusa  in varchar2,
        p_radnik_odobrio_id in number
    );

    procedure update_zahtjev_odbij (
        p_zahtjev_id       in number,
        p_komentar_statusa in varchar2
    );

    procedure update_zahtjev_ponisti (
        p_zahtjev_id       in number,
        p_komentar_statusa in varchar2
    );

    procedure insert_zahtjev_status (
        p_zahtjev_id in number,
        p_status_id  in varchar2
    );

end go_pkg;
/

prompt
prompt Creating package KALKULATOR_PKG
prompt ===============================
prompt
create or replace package hrm.kalkulator_pkg as
    procedure obracun_puno_radno_vrijeme (
        p_bruto           in number,
        p_staz            in number,
        p_topli_obrok     in number,
        p_broj_dana       in number,
        p_koeficijent_lo  in number,
        p_poreska_kartica in number,
        p_prevoz          in number,
        p_prevoz_tip      in varchar2
    );

    procedure obracun_nepuno_radno_vrijeme (
        p_bruto           in number,
        p_staz            in number,
        p_topli_obrok     in number,
        p_broj_dana       in number,
        p_koeficijent_lo  in number,
        p_poreska_kartica in number,
        p_prevoz          in number,
        p_prevoz_tip      in varchar2
    );

    procedure obracun_djelo_dopunski_rad (
        p_bruto in number
    );

    procedure obracun_menadzerski_ugovor (
        p_bruto in number
    );

    procedure obracun_privremeni_povremeni_poslovi (
        p_bruto in number
    );

end kalkulator_pkg;
/

prompt
prompt Creating package LPR_PKG
prompt ========================
prompt
create or replace package hrm.lpr_pkg as
    
    -- oblasti
    procedure get_oblast (
        p_id          in lpr_oblasti.id%type,
        p_naziv       out lpr_oblasti.naziv%type,
        p_opis        out lpr_oblasti.opis%type,
        p_ooj_id      out lpr_oblasti.ooj_id%type,
        p_valid       out lpr_oblasti.valid%type,
        p_created     out lpr_oblasti.created%type,
        p_created_by  out lpr_oblasti.created_by%type,
        p_updated     out lpr_oblasti.updated%type,
        p_updated_by  out lpr_oblasti.updated_by%type,
        p_row_version out lpr_oblasti.row_version%type
    );

    procedure insert_oblast (
        p_naziv  in lpr_oblasti.naziv%type,
        p_opis   in lpr_oblasti.opis%type,
        p_ooj_id in lpr_oblasti.ooj_id%type
    );

    procedure update_oblast (
        p_id     in lpr_oblasti.id%type,
        p_naziv  in lpr_oblasti.naziv%type,
        p_opis   in lpr_oblasti.opis%type,
        p_ooj_id in lpr_oblasti.ooj_id%type,
        p_valid  in lpr_oblasti.valid%type
    );

    -- radnici
    procedure insert_radnik (
        p_prioritet_id  in lpr_radnici.prioritet_id%type,
        p_radnik_id     in lpr_radnici.radnik_id%type,
        p_nadredjeni_id in lpr_radnici.nadredjeni_id%type,
        p_oblast_id     in lpr_radnici.oblast_id%type,
        p_opis          in lpr_radnici.opis%type
    );
    -- radnik hist
    -- u ovoj proceduri se automatski za tog radnika updatuje status_id 
    procedure insert_radnik_status_hist (
        p_lpr_radnik_id in lpr_radnici_hist.lpr_radnik_id%type,
        p_status_id     in lpr_radnici_hist.status_id%type
    );

    procedure update_radnik_status (
        p_id        in lpr_radnici.id%type,
        p_status_id in lpr_radnici.status_id%type,
        p_komentar  in lpr_radnici.komentar%type
    );

    -- izvjestaji
    procedure zapocni_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_datum_od      in lpr_radnici_izvjestaji.datum_od%type
    );

    procedure zavrsi_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_datum_do      in lpr_radnici_izvjestaji.datum_do%type
    );

    procedure unesi_izvjestaj_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_napomena      in lpr_radnici_izvjestaji.napomena%type
    );

end lpr_pkg;
/

prompt
prompt Creating package MAIL_PKG
prompt =========================
prompt
create or replace package hrm.mail_pkg as

    $IF $$env_dev $THEN

    login_url constant varchar2(255) := 'https://g4067033f25ae2b-esscomdb.adb.eu-frankfurt-1.oraclecloudapps.com/ords/r/erp/corp/login'
    ;
    $ELSIF $$env_test $THEN
    login_url CONSTANT VARCHAR2(255) := 'https://g4067033f25ae2b-esscomtest.adb.eu-frankfurt-1.oraclecloudapps.com/ords/r/erp/corp/login';
    $ELSIF $$env_prod $THEN
    login_url CONSTANT VARCHAR2(255) := 'https://corp.esscom.ba/ords/r/erp/corp/login';
    $END
    footer varchar2(1000) := '
        <p>Ako imate bilo kakvih pitanja, ili Vam je potrebna pomoć, kontaktirajte našu podršku <b style="color: #112340;">support@esscom.ba</b></p>
        <p><b style="color: #112340;">Powered by ESSCOM d.o.o.<br>Adresa:</b> Kralja Alfonsa XIII 47, Banja Luka<br><b style="color: #112340;">Email:</b> info@esscom.ba</p>
        <p><i>Ovaj email je automatski generisan i kao takav na njega se ne odgovara.</i></p>';
        
    mail_from constant varchar2(64) := 'no_reply@esscom.ba';
    
    function get_template_html (
        p_email_template_id in varchar2
    ) return clob;

    function check_username (
        p_username in varchar2
    ) return boolean;

    procedure posalji_go_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_go_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_go_plan_dana (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_godina   in varchar2
    );

    procedure posalji_sp_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_sp_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_siht_lista_napomena (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_name     in varchar2,
        p_month    in varchar2
    );

    procedure posalji_obracun_plate (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_radnik_id in number,
        p_firma     in number,
        p_mjesec    in varchar2
    );

    procedure posalji_praznici_napomena (
        p_application_id in number,
        p_mail_to        in varchar2,
        p_name           in varchar2,
        p_godina         in varchar2
    );

    procedure posalji_sp_izvjestaj (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_ime_prezime in varchar2,
        p_sp_id       in varchar2,
        p_radnik      in varchar2
    );

    procedure posalji_sp_obracun (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_ime_prezime in varchar2,
        p_sp_id       in varchar2,
        p_knjigovodja in varchar2
    );

    procedure posalji_lpr_zahtjev (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_nadredjeni     in varchar2,
        p_radnik         in varchar2
    );

    procedure posalji_lpr_odobrenje (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_mail_cc    in varchar2,
        p_nadredjeni in varchar2,
        p_radnik     in varchar2,
        p_valid      in varchar2
    );

    procedure posalji_lpr_zavrseno (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_nadredjeni in varchar2,
        p_radnik     in varchar2
    );

    procedure posalji_pru_kreiran (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_vremenski_rok_id in number
    );

    procedure posalji_pru_ocijenjen (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_nadredjeni       in varchar2,
        p_vremenski_rok_id in number
    );

    procedure posalji_pru_zavrsen (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_vremenski_rok_id in number
    );

    procedure posalji_bolovanje_zahtjev (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_radnik         in varchar2,
        p_date_from      in varchar2
    );

    procedure posalji_bolovanje_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_radnik    in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2
    );

    procedure posalji_poruku (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_subject     in varchar2,
        p_korisnik_id in number,
        p_ooj_id      in number,
        p_poruka      in varchar2
    );

    procedure posalji_sastanak (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_datum_od in date,
        p_datum_do in date
    );

    procedure posalji_sastanak_otkazan (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_naziv    in varchar2
    );

    procedure posalji_vp_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_vp_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    );

    procedure posalji_dokument_radnik (
        p_app_id        in varchar2,
        p_username      in varchar2,
        p_mail_to       in varchar2,
        p_name          in varchar2,
        p_radnik_name   in varchar2,
        p_document_name in varchar2
    );

    procedure posalji_prijava_kod (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_name        in varchar2,
        p_prijava_kod in varchar2
    );

    -- Projekti mailovi
    procedure posalji_dodavanje_projekat (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_pristup_id  in number
    );

    procedure posalji_dodavanje_kartica (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_kartica_id  in number
    );

    procedure posalji_uklanjanje_projekat (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number
    );

    procedure posalji_uklanjanje_kartica (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_kartica_id  in number
    );

    procedure posalji_rodjendan_notifikacija (
        p_app_id          in number,
        p_username        in varchar2,
        p_mail_to         in varchar2,
        p_radnik_naziv    in varchar2,
        p_rodjendan_naziv in varchar2
    );

end mail_pkg;
/

prompt
prompt Creating package MIDDLEWARE_PKG
prompt ===============================
prompt
create or replace package hrm.middleware_pkg as

    -- Log

    procedure insert_log (
        p_request   in varchar2 default null,
        p_username  in varchar2 default null,
        p_longitude in number default null,
        p_latitude  in number default null,
        p_vrijeme   in varchar2 default null,
        p_status    in number default null,
        p_message   in varchar2 default null
    );

    -- Auth

    function authenticate (
        p_username in varchar2,
        p_password in varchar2
    ) return boolean;

    function get_user_id (
        p_username in varchar2,
        p_password in varchar2
    ) return number;

    function get_radnik_id (
        p_korisnik_id in number
    ) return number;

    function get_ooj_id (
        p_korisnik_id in number
    ) return number;

    -- Login

    procedure login (
        p_username  in varchar2,
        p_password  in varchar2,
        p_status    out number,
        p_longitude out number,
        p_latitude  out number,
        p_message   out varchar2
    );

    -- Inwork

    procedure inwork (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2
    );

    -- Outwork

    procedure outwork (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2,
        p_end_time  out varchar2
    );

    procedure outwork_priority (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2
    );

end middleware_pkg;
/

prompt
prompt Creating package OBRASCI_PKG
prompt ============================
prompt
create or replace package hrm.obrasci_pkg is

    -- Obrasci
    procedure get_obrazac (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_valid  out varchar2
    );

    procedure get_obrazac (
        p_id                in number,
        p_dokument_filename out varchar2
    );

    function insert_obrazac (
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_dokument in varchar2
    ) return number;

    procedure update_obrazac (
        p_id       in number,
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_valid    in varchar2
    );

    procedure delete_obrazac (
        p_id in number
    );

    -- Polja
    procedure clear_polja (
        p_obrazac_id in number
    );

    procedure insert_polje (
        p_obrazac_id in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2
    );

    procedure update_polje (
        p_id         in number,
        p_obrazac_id in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2
    );

    procedure get_polja_into_collection (
        p_obrazac_id in number
    );

    procedure get_polja_into_collection (
        p_dokument in varchar2
    );

    -- Dynamic
    procedure generate_obrazac_fields_collection (
        p_obrazac_id in number,
        p_page_id    in number
    );

    function get_field_value (
        p_sifra in varchar2
    ) return varchar2;

    procedure generate_radnik_dokument (
        p_ooj_id           in number,
        p_radnik_id        in number,
        p_obrazac_id       in number,
        p_filename         in varchar2,
        p_tip_dokumenta_id in number,
        p_datum            in date
    );

end obrasci_pkg;
/

prompt
prompt Creating package POTVRDE_PKG
prompt ============================
prompt
create or replace package hrm.potvrde_pkg is
    procedure get_potvrda (
        p_id             in number,
        p_ooj_id         out number,
        p_radnik_id      out number,
        p_tip_potvrde_id out number,
        p_godina         out number,
        p_naziv          out varchar2,
        p_broj           out number,
        p_datum_potvrde  out date,
        p_valid          out varchar2
    );

    procedure insert_potvrda (
        p_ooj_id         in number,
        p_radnik_id      in number,
        p_tip_potvrde_id in number,
        p_godina         in number,
        p_naziv          in varchar2,
        p_broj           in number,
        p_datum_potvrde  in date
    );

    procedure update_potvrda (
        p_id             in number,
        p_ooj_id         in number,
        p_radnik_id      in number,
        p_tip_potvrde_id in number,
        p_godina         in number,
        p_naziv          in varchar2,
        p_broj           in number,
        p_datum_potvrde  in date,
        p_valid          in varchar2
    );

    procedure delete_potvrda (
        p_id in number
    );

end potvrde_pkg;
/

prompt
prompt Creating package PROJEKTI_PKG
prompt =============================
prompt
create or replace package hrm.projekti_pkg is
    function get_korisnik_naziv (
        p_korisnik_id in number
    ) return varchar2;

    function check_korisnik_pristup (
        p_projekat_id   in number,
        p_korisnik_id   in number,
        p_pristup_sifra in varchar2
    ) return number;

    function check_korisnik_kartica_pristup (
        p_projekat_id in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    ) return number;

    -- OOJ labeli
    procedure get_ooj_label (
        p_id         in number,
        p_ooj_id     out number,
        p_naziv      out varchar2,
        p_color_code out varchar2,
        p_valid      out varchar2
    );

    procedure get_ooj_label (
        p_id         in number,
        p_naziv      out varchar2,
        p_color_code out varchar2
    );

    procedure get_ooj_label (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure insert_ooj_label (
        p_ooj_id     in number,
        p_naziv      in varchar2,
        p_color_code in varchar2
    );

    procedure update_ooj_label (
        p_id         in number,
        p_ooj_id     in number,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_ooj_label (
        p_id in number
    );

    -- OOJ projekti
    procedure get_projekat (
        p_id         in number,
        p_ooj_id     out number,
        p_naziv      out varchar2,
        p_opis       out varchar2,
        p_status_id  out number,
        p_klijent_id out number,
        p_valid      out varchar2
    );

    procedure get_projekat (
        p_id            in number,
        p_naziv         out varchar2,
        p_pozadina_path out varchar2
    );

    procedure insert_projekat (
        p_korisnik_id in number,
        p_ooj_id      in number,
        p_klijent_id  in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    );

    procedure update_projekat (
        p_id          in number,
        p_korisnik_id in number,
        p_naziv       in varchar2,
        p_opis        in varchar2,
        p_status_id   in number,
        p_klijent_id  in number
    );

    procedure archive_projekat (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure unarchive_projekat (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure update_projekat_pozadina (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_pozadina_id in number
    );

    procedure delete_projekat (
        p_korisnik_id in number,
        p_id          in number
    );

    -- Projekat korisnik
    procedure get_projekat_korisnik (
        p_id          in number,
        p_projekat_id out number,
        p_korisnik_id out number,
        p_pristup_id  out number
    );

    procedure insert_projekat_korisnik (
        p_admin_id    in number,
        p_projekat_id in number,
        p_korisnik_id in number,
        p_pristup_id  in number
    );

    procedure update_projekat_korisnik (
        p_korisnik_id in number,
        p_id          in number,
        p_pristup_id  in number
    );

    procedure delete_projekat_korisnik (
        p_korisnik_id in number,
        p_id          in number
    );

    -- Projekat dokumenti
    procedure get_projekat_dokument (
        p_id          in number,
        p_projekat_id out number,
        p_naziv       out varchar2
    );

    procedure insert_projekat_docs (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2,
        p_docs        in varchar2
    );

    procedure insert_projekat_dokument (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2,
        p_dokument    in varchar2
    );

    procedure update_projekat_dokument (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    );

    procedure delete_projekat_dokument (
        p_korisnik_id in number,
        p_id          in number
    );

    -- Projekat liste
    procedure get_projekat_lista (
        p_id          in number,
        p_projekat_id out number,
        p_naziv       out varchar2,
        p_valid       out varchar2
    );

    function get_projekat_lista_sequence (
        p_id in number
    ) return number;

    procedure get_projekat_lista (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure insert_projekat_lista (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2
    );

    procedure update_projekat_lista (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    );

    procedure update_projekat_lista (
        p_id       in number,
        p_sequence in number
    );

    procedure archive_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure unarchive_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure delete_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    );

    -- Projekat komentari
    procedure insert_komentar_system (
        p_tip_komentara_sifra in varchar2,
        p_kartica_id          in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    );

    procedure insert_komentar_system (
        p_tip_komentara_sifra in varchar2,
        p_projekat_id         in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    );

    procedure insert_komentar_normal (
        p_tip_komentara_sifra in varchar2,
        p_kartica_id          in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    );

    procedure insert_projekat_komentar (
        p_tip_komentara_id in number,
        p_kartica_id       in number,
        p_korisnik_id      in number,
        p_komentar         in varchar2,
        p_system           in varchar2
    );

    procedure insert_projekat_komentar (
        p_tip_komentara_id in number,
        p_projekat_id      in number,
        p_korisnik_id      in number,
        p_komentar         in varchar2,
        p_system           in varchar2
    );

    procedure delete_projekat_komentar (
        p_id in number
    );

    -- Projekat kartice
    procedure get_kartica (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_datum_od    out varchar2,
        p_datum_do    out varchar2,
        p_status_id   out number,
        p_cijena_sata out number,
        p_valid       out varchar2
    );

    procedure get_kartica (
        p_id       in number,
        p_datum_od out varchar2,
        p_datum_do out varchar2
    );

    procedure get_kartica (
        p_id          in number,
        p_naziv       out varchar2,
        p_projekat_id out number
    );

    procedure get_kartica (
        p_id        in number,
        p_status_id out varchar
    );

    --Cijena sata
    procedure get_kartica (
        p_id          in number,
        p_cijena_sata out number
    );

    procedure get_kartica_count (
        p_id        in number,
        p_korisnici out number,
        p_labeli    out number,
        p_checklist out number,
        p_dokumenti out number
    );

    procedure insert_kartica (
        p_korisnik_id in number,
        p_lista_id    in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    );

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    );

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_datum_od    in date,
        p_datum_do    in date
    );

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_status_id   in number
    );

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_cijena_sata in number
    );

    procedure archive_kartica (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure unarchive_kartica (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure delete_kartica (
        p_korisnik_id in number,
        p_id          in number
    );

    -- Projekat kartica korisnik
    procedure get_kartica_korisnik (
        p_id          in number,
        p_kartica_id  out number,
        p_korisnik_id out number
    );

    procedure insert_kartica_korisnik (
        p_admin_id    in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    );

    procedure delete_kartica_korisnik (
        p_admin_id    in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    );

    -- Projekat kartica labeli
    procedure get_kartica_label (
        p_id         in number,
        p_kartica_id out number,
        p_label_id   out number
    );

    procedure insert_kartica_label (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_label_id    in number
    );

    procedure delete_kartica_label (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_label_id    in number
    );

    -- Projekat checklist
    procedure get_checklist (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure get_checklist (
        p_id       in number,
        p_naziv    out varchar2,
        p_stavke   out number,
        p_checked  out number,
        p_procenat out number
    );

    function insert_checklist (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2
    ) return number;

    procedure update_checklist (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    );

    procedure delete_checklist (
        p_korisnik_id in number,
        p_id          in number
    );

    procedure delete_checklist_stavke_all (
        p_checklist_id in number
    );

    -- Projekat checklist stavke
    function insert_checklist_stavka (
        p_checklist_id in number,
        p_naziv        in varchar2,
        p_datum_od     in date,
        p_datum_do     in date,
        p_status_id    in number
    ) return number;

    procedure delete_checklist_stavka (
        p_id in number
    );

    procedure insert_checklist_korisnik (
        p_stavka_id   in number,
        p_korisnik_id in number
    );

    --Stefo procedure provjeriti 
    procedure checklist_stavka_start (
        p_id          in number,
        p_korisnik_id in number
    );

    procedure checklist_stavka_pause (
        p_id          in number,
        p_korisnik_id in number
    );

    procedure checklist_stavka_finish (
        p_id          in number,
        p_korisnik_id in number
    );

    procedure checklist_stavka_return_to_work (
        p_id          in number,
        p_korisnik_id in number
    );

    procedure update_vrijeme_rada (
        p_id           in number,
        p_vrijeme_rada in number
    );

    function get_stavka_status (
        p_id in number
    ) return varchar2;

    procedure update_stavka_status (
        p_id           in number,
        p_status_sifra in varchar2
    );

    -- Projekat kartica dokumenti
    procedure get_kartica_dokument (
        p_id    in number,
        p_naziv out varchar2
    );

    procedure insert_kartica_docs (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2,
        p_docs        in varchar2
    );

    procedure insert_kartica_dokument (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2,
        p_dokument    in varchar2
    );

    procedure update_kartica_dokument (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    );

    procedure delete_kartica_dokument (
        p_korisnik_id in number,
        p_id          in number
    );

end projekti_pkg;
/

prompt
prompt Creating package PRU_PKG
prompt ========================
prompt
create or replace package hrm.pru_pkg as
    
    -- ooj intervali
    procedure get_ooj_interval (
        p_id          in pru_ooj_intervali.id%type,
        p_ooj_id      out pru_ooj_intervali.ooj_id%type,
        p_interval_id out pru_ooj_intervali.interval_id%type,
        p_next_datum  out pru_ooj_intervali.next_datum%type,
        p_valid       out pru_ooj_intervali.valid%type,
        p_created     out pru_ooj_intervali.created%type,
        p_created_by  out pru_ooj_intervali.created_by%type,
        p_updated     out pru_ooj_intervali.updated%type,
        p_updated_by  out pru_ooj_intervali.updated_by%type,
        p_row_version out pru_ooj_intervali.row_version%type
    );

    procedure update_ooj_interval (
        p_id          in pru_ooj_intervali.id%type,
        p_ooj_id      in pru_ooj_intervali.ooj_id%type,
        p_interval_id in pru_ooj_intervali.interval_id%type,
        p_next_datum  in pru_ooj_intervali.next_datum%type,
        p_valid       in pru_ooj_intervali.valid%type
    );

    procedure insert_ooj_interval (
        p_ooj_id      in pru_ooj_intervali.ooj_id%type,
        p_interval_id in pru_ooj_intervali.interval_id%type,
        p_next_datum  in pru_ooj_intervali.next_datum%type
    );

    -- Procedura da se na next_datum poveca za broj mjeseci koji je trenutno aktivan u ooj
    procedure add_ooj_interval (
        p_ooj_id in pru_ooj_intervali.ooj_id%type
    );

    -- vremenski rokovi
    procedure insert_vremenski_rok (
        p_app_id   in number,
        p_ooj_id   in pru_vremenski_rokovi.ooj_id%type,
        p_naziv    in pru_vremenski_rokovi.naziv%type,
        p_datum_od in pru_vremenski_rokovi.datum_od%type,
        p_datum_do in pru_vremenski_rokovi.datum_do%type
    );

    procedure zavrsi_ocjenivanje (
        p_app_id in number,
        p_id     in pru_vremenski_rokovi.id%type
    );

    procedure zavrsi_reviziju (
        p_app_id in number,
        p_id     in pru_vremenski_rokovi.id%type
    );

    -- vremenski rokovi hist
    -- u ovoj proceduri se automatski za taj vremenski rok updatuje status_id 
    procedure insert_vremenski_rok_status (
        p_vremenski_rok_id in pru_vremenski_rokovi_hist.vremenski_rok_id%type,
        p_status_id        in pru_vremenski_rokovi_hist.status_id%type
    );

    -- radnici
    procedure insert_radnik (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_radno_mjesto_id  in pru_radnici.radno_mjesto_id%type,
        p_nadredjeni_id    in pru_radnici.nadredjeni_id%type,
        p_supervizor_id    in pru_radnici.supervizor_id%type,
        p_tip_radnika      in pru_radnici.tip_radnika%type
    );

    procedure ocijeni_radnika (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    );

    procedure radnik_neocijenjen (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_neocijenjen_id   in pru_radnici.neocijenjen_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    );

    procedure zakljucite_ocjene (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    );

    procedure posaljite_supervizoru (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    );

    procedure supervizor_zakljucio (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    );

    -- radnik hist
    -- u ovoj proceduri se automatski za tog radnika updatuje status_id 
    procedure insert_radnik_status (
        p_pru_radnik_id in pru_radnici_hist.pru_radnik_id%type,
        p_status_id     in pru_radnici_hist.status_id%type,
        p_komentar      in pru_radnici_hist.komentar%type default null
    );

    procedure insert_radnik_ocjene (
        p_vremenski_rok_id in pru_radnici_ocjene.vremenski_rok_id%type,
        p_kompetencija_id  in pru_radnici_ocjene.kompetencija_id%type,
        p_radnik_id        in pru_radnici_ocjene.radnik_id%type
    );

    -- Pomocne funkcije
    function get_nadredjeni_id (
        p_radnik_id in number
    ) return number;

    function get_supervizor_id (
        p_radnik_id in number
    ) return number;

    function get_tip_radnika (
        p_radnik_id in number
    ) return varchar2;

end pru_pkg;
/

prompt
prompt Creating package SASTANCI_PKG
prompt =============================
prompt
create or replace package hrm.sastanci_pkg is

    -- OOJ prostorije
    procedure get_ooj_prostorija (
        p_id          in number,
        p_ooj_id      out number,
        p_naziv       out varchar2,
        p_kapacitet   out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_ooj_prostorija (
        p_ooj_id    in number,
        p_naziv     in varchar2,
        p_kapacitet in number
    );

    procedure update_ooj_prostorija (
        p_id        in number,
        p_naziv     in varchar2,
        p_kapacitet in number,
        p_valid     in varchar2
    );

    -- Sastanci
    procedure get_sastanak (
        p_id            in number,
        p_status_id     out number,
        p_prostorija_id out number,
        p_tip_id        out number,
        p_naziv         out varchar2,
        p_opis          out varchar2,
        p_datum_od      out varchar2,
        p_datum_do      out varchar2,
        p_valid         out varchar2,
        p_row_version   out number,
        p_created       out date,
        p_created_by    out varchar2,
        p_updated       out date,
        p_updated_by    out varchar2
    );

    procedure insert_sastanak (
        p_ooj_id        in number,
        p_prostorija_id in number,
        p_tip_id        in number,
        p_datum_od      in date,
        p_datum_do      in date,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_radnik_id     in number,
        p_radnici       in varchar2
    );

    procedure update_sastanak (
        p_id            in number,
        p_prostorija_id in number,
        p_tip_id        in number,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_valid         in varchar2,
        p_radnik_id     in number,
        p_radnici       in varchar2
    );

    procedure zavrsi_sastanak (
        p_id       in number,
        p_napomena in varchar2
    );

    procedure otkazi_sastanak (
        p_id in number
    );

    -- Sastanak history
    procedure insert_sastanak_hist (
        p_sastanak_id in number,
        p_status_id   in number
    );

    -- Sastanak radnici
    procedure insert_sastanak_radnik (
        p_sastanak_id in number,
        p_radnik_id   in number
    );

    procedure delete_sastanak_radnik (
        p_id in number
    );

end sastanci_pkg;
/

prompt
prompt Creating package SIHT_LISTA_HTML
prompt ================================
prompt
create or replace package hrm.siht_lista_html as
    function get_header_radnik (
        p_mjesec in varchar2
    ) return number;

    function generate_siht_lista_header (
        p_mjesec in varchar2
    ) return clob;

    function generate_siht_lista_radnik (
        p_mjesec    in varchar2,
        p_radnik_id in number
    ) return clob;

    function generate_siht_lista_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    ) return clob;

    function generate_siht_lista_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    ) return clob;

    procedure generate_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    );

    procedure generate_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    );

    function show_legend_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    ) return clob;

    function show_legend_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    ) return clob;

    function show_legend_prekovremeni_tipovi return clob;

end siht_lista_html;
/

prompt
prompt Creating package SIHT_LISTA_PKG
prompt ===============================
prompt
create or replace package hrm.siht_lista_pkg is

    -- Helper
    function siht_get_prekovremeni_sum (
        p_radnik_id in number,
        p_first_day in date,
        p_tip_id    in number
    ) return varchar2;

    function siht_get_sati_output (
        p_radnik_id in number,
        p_date      in date
    ) return varchar2;

    function get_siht_lista_count (
        p_radnik_id in number,
        p_datum     in date
    ) return number;

    -- Siht lista    
    procedure get_siht_lista (
        p_id                        in number,
        p_datum                     out date,
        p_radnik_id                 out number,
        p_evidencija_prisutnosti_id out number
    );

    procedure update_siht_lista (
        p_id        in number,
        p_status_id in number,
        p_broj_sati in number,
        p_napomena  in varchar2
    );

    procedure update_siht_lista_dan (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number
    );

    procedure update_siht_lista_status (
        p_radnik_id in number,
        p_datum     in date,
        p_status_id in number
    );

    procedure potvrda_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    );

    procedure potvrda_siht_liste_zbirno (
        p_nadredjeni_id in number,
        p_mjesec        in varchar2
    );

    procedure zakljucavanje_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    );

    procedure zakljucavanje_siht_liste_zbirno (
        p_ooj_id in number,
        p_mjesec in varchar2
    );

    procedure otkljucavanje_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    );

    procedure naknadni_insert_siht_lista (
        p_radnik_id   in number,
        p_zaposlen_od in date,
        p_mjesec_list in varchar2
    );

    procedure naknadni_insert_siht_lista (
        p_radnik_id   in number,
        p_zaposlen_od in date,
        p_mjesec      in date default null
    );

    procedure generate_siht_lista;

    -- Prekovremeni na siht listi
    procedure get_pvs (
        p_id           in number,
        p_pvs_tip_id   out number,
        p_pvs_kolicina out number,
        p_pvs_napomena out varchar2,
        p_pvs_pocetak  out varchar2,
        p_pvs_kraj     out varchar2
    );

    procedure update_pvs (
        p_id           in number,
        p_pvs_tip_id   in number,
        p_pvs_kolicina in number,
        p_pvs_napomena in varchar2,
        p_pvs_pocetak  in varchar2,
        p_pvs_kraj     in varchar2
    );

    -- OOJ PVS (iznosi procenata prekovremenih sati)
    procedure get_ooj_pvs (
        p_id          in number,
        p_ooj_id      out number,
        p_pvs_id      out number,
        p_procenat    out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure get_ooj_pvs_procenat (
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat out number
    );

    procedure insert_ooj_pvs (
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat in number
    );

    procedure update_ooj_pvs (
        p_id       in number,
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat in number,
        p_valid    in varchar2
    );

    -- OOJ prijave
    procedure get_ooj_prijava (
        p_id             in number,
        p_ooj_id         out number,
        p_tip_prijave_id out number,
        p_valid          out varchar2,
        p_row_version    out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2
    );

    procedure insert_ooj_prijava (
        p_ooj_id         in number default null,
        p_tip_prijave_id in number default null
    );

    procedure update_ooj_prijava (
        p_id             in number default null,
        p_ooj_id         in number default null,
        p_tip_prijave_id in number default null,
        p_valid          in varchar2 default null
    );

    -- Siht lista vrijeme    
    procedure get_vrijeme (
        p_id            in number,
        p_siht_lista_id out number,
        p_valid         out varchar2
    );

    procedure start_vrijeme (
        p_siht_lista_id  in number default null,
        p_tip_rada_id    in number default null,
        p_tip_prijave_id in number default null,
        p_start_time     in date default null,
        p_start_lat      in number default null,
        p_start_lng      in number default null,
        p_trajanje       in number default null
    );

    procedure end_vrijeme (
        p_id       in number default null,
        p_end_time in date default null,
        p_end_lat  in number default null,
        p_end_lng  in number default null
    );

    -- Kodovi za prijavu
    procedure prijava (
        p_prijava_kod in varchar2,
        p_radnik_id   out number
    );

    function get_siht_lista (
        p_radnik_id in number
    ) return number;

    procedure get_radnik (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_prijava_kod out varchar2
    );

    function generate_unique_code return varchar2;

    procedure generate_ooj_unique_codes (
        p_ooj_id in number
    );

    procedure update_radnik_prijava_kod (
        p_app_id      in number,
        p_id          in number,
        p_prijava_kod in varchar2
    );

    procedure update_ooj_prijava_kod (
        p_app_id in number
    );

    function get_ukupno_vrijeme (
        p_siht_lista_id in number
    ) return varchar2;

    function get_vrijeme (
        p_siht_lista_id in number,
        p_tip_rada_id   in number
    ) return varchar2;

    function get_prvi_ulaz (
        p_siht_lista_id in number
    ) return varchar2;

    function get_zadnji_izlaz (
        p_siht_lista_id in number
    ) return varchar2;

end siht_lista_pkg;
/

prompt
prompt Creating package SMJENE_PKG
prompt ===========================
prompt
create or replace package hrm.smjene_pkg is

    -- Smjene
    procedure get_smjena (
        p_id         in number,
        p_ooj_id     out number,
        p_sifra      out varchar2,
        p_naziv      out varchar2,
        p_pocetak    out varchar2,
        p_kraj       out varchar2,
        p_color_code out varchar2,
        p_valid      out varchar2
    );

    procedure insert_smjena (
        p_ooj_id     in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_pocetak    in varchar2,
        p_kraj       in varchar2,
        p_color_code in varchar2
    );

    procedure update_smjena (
        p_id         in number,
        p_ooj_id     in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_pocetak    in varchar2,
        p_kraj       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_smjena (
        p_id in number
    );

    -- Smjena sabloni
    procedure get_sablon (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_valid  out varchar2
    );

    function insert_sablon (
        p_ooj_id in number,
        p_naziv  in varchar2
    ) return number;

    procedure update_sablon (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_valid  in varchar2
    );

    procedure delete_sablon (
        p_id in number
    );

    -- Smjena sabalon dani
    function get_smjena_from_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_dan       in varchar2
    ) return number;

    procedure get_sablon_dan (
        p_id        in number,
        p_sablon_id out number,
        p_radnik_id out number,
        p_smjena_id out number,
        p_dan       out varchar2,
        p_valid     out varchar2
    );

    procedure insert_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_smjena_id in number,
        p_dan       in varchar2
    );

    procedure update_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_smjena_id in number,
        p_dan       in varchar2
    );

    procedure delete_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number
    );

    -- Smjena siht lista
    procedure get_smjena_siht_lista (
        p_id        in number,
        p_sablon_id out number,
        p_datum     out date
    );

    procedure insert_smjena_siht_lista (
        p_ooj_id    in number,
        p_sablon_id in number,
        p_datum     in date
    );

    procedure delete_smjena_siht_lista (
        p_id in number
    );

    procedure primjeni_smjenu (
        p_id in number
    );

end smjene_pkg;
/

prompt
prompt Creating package SP_PKG
prompt =======================
prompt
create or replace package hrm.sp_pkg as
    g_sp_podnesen constant number := 10;
    g_sp_odobren constant number := 20;
    g_sp_odbijen constant number := 30;
    g_sp_ponisten constant number := 40;
    g_sp_obracunat constant number := 60;
    g_sp_odobrena_isplata constant number := 70;
    g_sp_izvjestaj_unesen constant number := 80;
    g_sp_troskovi_uneseni constant number := 90;
    g_sp_zakljuceno constant number := 100;
    function get_relacija (
        p_ooj_id           in number,
        p_mjesto_putovanja in varchar2
    ) return varchar2;

    function f_broj_dana_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number;

    function f_broj_sati_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number;

    function f_broj_minuta_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number;

    function f_ukupno_trajanje_sp (
        p_datum_od in date,
        p_datum_do in date
    ) return varchar2;

    function sp_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number;

    -- Zahtjevi
    function get_zahtjev_status (
        p_id in number
    ) return number;

    function get_zahtjev_izvjestaj_id (
        p_id in number
    ) return number;

    procedure get_zahtjev (
        p_id              in number,
        p_vrsta_vozila_id out number,
        p_rezervacija_id  out number
    );

    procedure get_zahtjev (
        p_id            in number,
        p_status_id     out number,
        p_broj_zahtjeva out number,
        p_radnik_id     out number,
        p_datum_od      out date,
        p_datum_do      out date
    );

    function insert_zahtjev (
        p_radnik_id        in number,
        p_vrsta_vozila_id  in number,
        p_vozilo_id        in number,
        p_datum_od         in date,
        p_datum_do         in date,
        p_mjesto_putovanja in varchar2,
        p_relacija         in varchar2,
        p_komentar         in varchar2,
        p_reg_oznaka       in varchar2,
        p_svrha_putovanja  in varchar2,
        p_teret_troskova   in varchar2,
        p_putnici          in varchar2
    ) return number;

    procedure delete_zahtjev (
        p_id in number
    );

    procedure update_zahtjev_status (
        p_zahtjev_id        in number,
        p_status_id         in number,
        p_komentar_statusa  in varchar2,
        p_radnik_odobrio_id in number
    );

    procedure update_zahtjev_status (
        p_zahtjev_id in number,
        p_status_id  in number
    );

    -- Izvjestaj
    procedure insert_izvjestaj (
        p_zahtjev_id       in number,
        p_radnik_id        in number,
        p_opis             in varchar2,
        p_vrijeme_polaska  in date,
        p_vrijeme_povratka in date,
        p_broj_sati        in number,
        p_broj_dana        in number,
        p_broj_min         in number,
        p_akontacija       in number,
        p_drzava_id        in number,
        p_kurs             in number,
        p_valuta_id        in number
    );

    -- Troskovi
    procedure get_trosak (
        p_id         in number,
        p_zahtjev_id out number,
        p_tip_id     out number,
        p_opis       out varchar2,
        p_iznos      out number,
        p_valid      out varchar2
    );

    procedure insert_trosak (
        p_zahtjev_id in number,
        p_tip_id     in number,
        p_opis       in varchar2,
        p_iznos      in number,
        p_racun      in varchar2
    );

    procedure update_trosak (
        p_id         in number,
        p_zahtjev_id in number,
        p_tip_id     in number,
        p_opis       in varchar2,
        p_iznos      in number,
        p_racun      in varchar2,
        p_valid      in varchar2
    );

    procedure delete_trosak (
        p_id in number
    );

    procedure insert_automatski_trosak (
        p_zahtjev_id          in number,
        p_drzava_id           in number,
        p_kurs                in number,
        p_broj_dana           in number,
        p_broj_sati           in number,
        p_vrsta_vozila_id     in number,
        p_tip_unosa           in varchar2,
        p_kilometraza_pocetak in number,
        p_kilometraza_kraj    in number,
        p_kilometraza         in number,
        p_cijena_goriva       in number
    );

    -- Knjizenje
    function knjizi_sp_zahtjev_list (
        p_ooj_id      in number,
        p_sp_list     in varchar2,
        p_godina      in number,
        p_proknjizeno in varchar2
    ) return number;

    function knjizi_sp_zahtjev_single (
        p_zahtjev_id  in number,
        p_ooj_id      in number,
        p_godina      in number,
        p_proknjizeno in varchar2
    ) return number;

end sp_pkg;
/

prompt
prompt Creating package VP_PKG
prompt =======================
prompt
create or replace package hrm.vp_pkg is

    -- Zahtjevi
    function get_broj_zahtjeva (
        p_ooj_id in number
    ) return number;

    procedure get_zahtjev (
        p_id        in number,
        p_radnik_id out number,
        p_status_id out number,
        p_datum_od  out date,
        p_datum_do  out date
    );

    procedure insert_zahtjev (
        p_radnik_id     in number,
        p_datum_od      in date,
        p_datum_do      in date,
        p_napomena      in varchar2,
        p_broj_dana     in number,
        p_nadredjeni_id in number,
        p_ooj_id        in number
    );

    procedure prihvati_zahtjev (
        p_id       in number,
        p_komentar in varchar2
    );

    procedure odbij_zahtjev (
        p_id       in number,
        p_komentar in varchar2
    );

    procedure ponisti_zahtjev (
        p_id in number
    );

    -- History
    procedure insert_zahtjev_hist (
        p_zahtjev_id in number,
        p_status_id  in number
    );

end vp_pkg;
/

prompt
prompt Creating package XML_PKG
prompt ========================
prompt
create or replace package hrm.xml_pkg as
    function obrazac_1002_doprinos (
        p_ooj_id           in number,
        p_mjesec_godina    in varchar2,
        p_isplata_primanja in number,
        p_inspektor        in varchar2,
        o_filename         out varchar2
    ) return xmltype;

    function obrazac_1002_porez (
        p_ooj_id        in number,
        p_mjesec_godina in varchar2,
        p_inspektor     in varchar2,
        o_filename      out varchar2
    ) return xmltype;

end xml_pkg;
/

prompt
prompt Creating package ZAPOSLJAVANJE_PKG
prompt ==================================
prompt
create or replace package hrm.zaposljavanje_pkg is

	-- Tagovi
    procedure insert_tags (
        p_tags in varchar2
    );

    function insert_tag (
        p_naziv in varchar2 default null
    ) return number;

    procedure delete_tag (
        p_id in number
    );

	-- Kandidati
    procedure get_kandidat (
        p_id          in number,
        p_ooj_id      out number,
        p_status_id   out number,
        p_ime         out varchar2,
        p_prezime     out varchar2,
        p_entitet_id  out number,
        p_kanton_id   out number,
        p_grad_id     out number,
        p_adresa      out varchar2,
        p_telefon     out varchar2,
        p_mobitel     out varchar2,
        p_email       out varchar2,
        p_tags        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure get_kandidat (
        p_id      in number,
        p_ime     out varchar2,
        p_prezime out varchar2,
        p_telefon out varchar2,
        p_mobitel out varchar2,
        p_email   out varchar2
    );

    function insert_kandidat (
        p_ooj_id     in number,
        p_ime        in varchar2,
        p_prezime    in varchar2,
        p_entitet_id in number,
        p_kanton_id  in number,
        p_grad_id    in number,
        p_adresa     in varchar2,
        p_telefon    in varchar2,
        p_mobitel    in varchar2,
        p_email      in varchar2,
        p_tags       in varchar2,
        p_komentar   in varchar2,
        p_u_procesu  in varchar2
    ) return number;

    procedure update_kandidat (
        p_id         in number,
        p_ooj_id     in number,
        p_ime        in varchar2,
        p_prezime    in varchar2,
        p_entitet_id in number,
        p_kanton_id  in number,
        p_grad_id    in number,
        p_adresa     in varchar2,
        p_telefon    in varchar2,
        p_mobitel    in varchar2,
        p_email      in varchar2,
        p_tags       in varchar2,
        p_valid      in varchar2
    );

	-- Kandidat dokumenti
    procedure insert_kandidat_docs (
        p_kandidat_id      in number,
        p_tip_dokumenta_id in number,
        p_documents        in varchar2
    );

    procedure insert_kandidat_dokument (
        p_kandidat_id      in number default null,
        p_tip_dokumenta_id in number default null,
        p_dokument         in varchar2 default null
    );

    procedure delete_kandidat_dokument (
        p_id in number
    );

	-- Kandidat tagovi
    procedure insert_kandidat_tags (
        p_kandidat_id in number,
        p_tags        in varchar2
    );

    procedure insert_kandidat_tag (
        p_kandidat_id in number default null,
        p_tag_id      in number default null
    );

    procedure delete_kandidat_tag (
        p_id in number
    );

	-- Kandidat history
    procedure insert_kandidat_hist (
        p_kandidat_id in number,
        p_status_id   in number,
        p_komentar    in varchar2
    );

end zaposljavanje_pkg;
/

prompt
prompt Creating function CREATE_ICAL_EVENT
prompt ===================================
prompt
create or replace function hrm.create_ical_event (
    p_summary     in varchar2,
    p_description in varchar2,
    p_start_date  in date,
    p_end_date    in date
) return varchar2 as

    l_desc    varchar2(4000);
    l_summary varchar2(4000);
    l_dtstart varchar2(255);
    l_date    varchar2(255);
    l_dtend   varchar2(255);
    l_event   varchar2(32767);
begin
    l_summary := 'SUMMARY:' || p_summary;
    l_desc := 'DESCRIPTION:' || p_description;
    l_date := 'DTSTAMP:'
              || to_char(sysdate, 'YYYYMMDD')
              || 'T'
              || to_char(sysdate, 'HHMISS');

    l_dtstart := 'DTSTART:'
                 || to_char(p_start_date, 'YYYYMMDD')
                 || 'T'
                 || to_char(p_start_date, 'HHMISS');

    l_dtend := 'DTEND:'
               || to_char(p_end_date, 'YYYYMMDD')
               || 'T'
               || to_char(p_end_date, 'HHMISS');

    l_event := '
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-// Oracle Application Express //ENCAL
SCALE:GREGORIAN
BEGIN:VEVENT
'
               || l_date
               || chr(10)
               || l_dtstart
               || chr(10)
               || l_dtend
               || chr(10)
               || l_summary
               || chr(10)
               || l_desc
               || '
SEQUENCE:0
END:VEVENT
END:VCALENDAR';

    dbms_output.put_line(l_event);
    return l_event;
end create_ical_event;
/

prompt
prompt Creating function GET_MONTH_NAME
prompt ================================
prompt
create or replace function hrm.get_month_name (
    p_date in date
) return varchar2 as
    l_mjesec number;
    l_month  varchar2(16);
begin
    l_mjesec := extract(month from p_date);
    apex_debug.message('DBG: ' || l_mjesec);
    case l_mjesec
        when 1 then
            l_month := 'Januar';
        when 2 then
            l_month := 'Februar';
        when 3 then
            l_month := 'Mart';
        when 4 then
            l_month := 'April';
        when 5 then
            l_month := 'Maj';
        when 6 then
            l_month := 'Jun';
        when 7 then
            l_month := 'Jul';
        when 8 then
            l_month := 'Avgust';
        when 9 then
            l_month := 'Septembar';
        when 10 then
            l_month := 'Oktobar';
        when 11 then
            l_month := 'Novembar';
        when 12 then
            l_month := 'Decembar';
    end case;

    return l_month;
end get_month_name;
/

prompt
prompt Creating function SIHT_GET_PREKOVREMENI_SUM
prompt ===========================================
prompt
create or replace function hrm.siht_get_prekovremeni_sum (
    p_radnik_id in number,
    p_first_day in date,
    p_tip       in number
) return varchar2 as
    l_output varchar2(32);
begin
    select
        sum(pvs_kolicina)
    into l_output
    from
        hr_siht_lista
    where
            radnik_id = p_radnik_id
        and pvs_tip_id = p_tip
        and trunc(datum) between p_first_day and last_day(p_first_day);

    if l_output is null then
        l_output := 0;
    end if;
    return l_output;
end siht_get_prekovremeni_sum;
/

prompt
prompt Creating function SIHT_GET_SATI_OUTPUT
prompt ======================================
prompt
create or replace function hrm.siht_get_sati_output (
    p_radnik_id in number,
    p_date      in date
) return varchar2 as
    l_output varchar2(32);
begin
    select
        dan_sati_output
    into l_output
    from
        vw_siht_lista_report
    where
            radnik_id = p_radnik_id
        and trunc(datum) = p_date;

    return l_output;
end siht_get_sati_output;
/

prompt
prompt Creating function VRATI_NADREDJENE_RADNIKE
prompt ==========================================
prompt
create or replace function hrm.vrati_nadredjene_radnike (
    p_firma_id number,
    p_ooj      number,
    p_oj       number
) return varchar as
    q       varchar2(2000);
    parentr number;
begin
    if p_ooj is null then
        q := 'select ''- Izaberite nadređenog radnika -'' as d,null as r from dual';
    else
    -- samo osnovna org jedinica
        if ( p_oj is null ) then
            q := 'select
            ime || '' '' || prezime as d,
            id as r
        from vw_radnici
        where
            firma_id = '
                 || p_firma_id
                 || '
            and zaposlen_do is null
            and (
                 ooj_id = '
                 || p_ooj
                 || ' and oj_id is null
            )
        order by prezime
        ';
        else -- ima org jedinicu
        --provjeri da li ima nadredjenu org jedinicu
            select
                parent_id
            into parentr
            from
                core.oj
            where
                id = p_oj;

            if ( parentr is null ) then --nema nadredjenu org jedinicu

            -- vrati sve iz odabrane i iz osnovne org jedinice
                q := 'select
                ime || '' '' || prezime as d,
                id as r
            from vw_radnici
            where
                firma_id = '
                     || p_firma_id
                     || '
                and zaposlen_do is null
                and (
                     ooj_id = '
                     || p_ooj
                     || ' and (oj_id is null or oj_id = '
                     || p_oj
                     || ')
                )
            order by prezime';

            else --ima nadredjenu

            --vrati sve iz odabrane i level vise
                q := 'select
                ime || '' '' || prezime as d,
                id as r
            from vw_radnici
            where
                firma_id = '
                     || p_firma_id
                     || '
                and zaposlen_do is null
                and (
                     ooj_id = '
                     || p_ooj
                     || ' and (oj_id  ='
                     || parentr
                     || ' or oj_id = '
                     || p_oj
                     || ')
                )
            order by prezime';
            end if;

        end if;
    end if;
    -- dbms_output.put_line(q);
    return q;
end vrati_nadredjene_radnike;
/

prompt
prompt Creating procedure BIRTHDAY_NOTIFICATIONS
prompt =========================================
prompt
create or replace procedure hrm.birthday_notifications (
    p_app_id in number
) as

    cursor c_rodjendani is
    (
        select
            ooj_id,
            id         as radnik_id,
            ime
            || ' '
            || prezime as radnik_naziv
        from
            vw_radnici r
        where
                trunc(rodjendan_datum) = trunc(sysdate)
            and exists (
                select
                    id
                from
                    core.firme f
                where
                        r.firma_id = f.id
                    and notifikacija_rodjendan = 'Y'
            )
            and zaposlen_do is null
            and get_date_from_jmbg(jmbg) is not null
    );

    cursor c_radnici (
        p_ooj_id    number,
        p_radnik_id number
    ) is
    (
        select
            ime
            || ' '
            || prezime as radnik_naziv,
            korisnicko_ime,
            email
        from
            vw_radnici
        where
                id != p_radnik_id
            and ooj_id = p_ooj_id
            and email is not null
            and zaposlen_do is null
            and korisnicko_ime is not null
    );

begin
    for c1 in c_rodjendani loop
        for c2 in c_radnici(c1.ooj_id, c1.radnik_id) loop
            mail_pkg.posalji_rodjendan_notifikacija(
                p_app_id          => p_app_id,
                p_username        => c2.korisnicko_ime,
                p_mail_to         => c2.email,
                p_radnik_naziv    => c2.radnik_naziv,
                p_rodjendan_naziv => c1.radnik_naziv
            );
        end loop;
    end loop;

    apex_mail.push_queue;
    apex_pwa.push_queue;
end birthday_notifications;
/

prompt
prompt Creating procedure CHECK_DOKUMENT_RADNIK
prompt ========================================
prompt
create or replace procedure hrm.check_dokument_radnik (
    p_app_id in number
) as

    cursor radnik_dokumenti is
    (
        select
            k.korisnicko_ime as nadredjeni_username,
            k.email          as nadredjeni_email,
            n.ime
            || ' '
            || n.prezime     as nadredjeni_name,
            r.ime
            || ' '
            || r.prezime     as radnik_name,
            d.dokument_filename
        from
            hr_radnik_dokumenti d
            left join hr_radnici          r on d.radnik_id = r.id
            left join hr_radnici          n on r.nadredjeni_id = n.id
            left join core.korisnici      k on n.korisnik_id = k.id
        where
                d.valid = 'Y'
            and trunc(d.datum) - trunc(sysdate) in ( 1, 7, 15 )
    );

    l_username varchar2(255);
begin
    for dokument in radnik_dokumenti loop
        mail_pkg.posalji_dokument_radnik(
            p_app_id        => p_app_id,
            p_username      => dokument.nadredjeni_username,
            p_mail_to       => dokument.nadredjeni_email,
            p_name          => dokument.nadredjeni_name,
            p_radnik_name   => dokument.radnik_name,
            p_document_name => dokument.dokument_filename
        );
    end loop;

    apex_pwa.push_queue;
    apex_mail.push_queue;
end check_dokument_radnik;
/

prompt
prompt Creating procedure CHECK_PRU_INTERVAL
prompt =====================================
prompt
create or replace procedure hrm.check_pru_interval (
    p_app_id in number
) as

    cursor intervali is
    (
        select
            ooj_id,
            broj_mjeseci,
            next_datum
        from
            pru_ooj_intervali     o
            left join sif.pru_sif_intervali i on o.interval_id = i.id
        where
                trunc(sysdate) = trunc(next_datum)
            and o.valid = 'Y'
    );

    l_datum_od date;
    l_datum_do date;
    l_naziv    varchar2(255);
begin
    for i in intervali loop
        l_datum_od := add_months(i.next_datum, -(i.broj_mjeseci));
        l_datum_do := i.next_datum;
        l_naziv := 'Procjena radne uspješnosti od '
                   || to_char(l_datum_od, 'DD.MM.YYYY')
                   || ' do '
                   || to_char(l_datum_do, 'DD.MM.YYYY');

        pru_pkg.insert_vremenski_rok(
            p_app_id   => p_app_id,
            p_ooj_id   => i.ooj_id,
            p_naziv    => l_naziv,
            p_datum_od => l_datum_od,
            p_datum_do => l_datum_do
        );

    end loop;
end check_pru_interval;
/

prompt
prompt Creating procedure END_TIME
prompt ===========================
prompt
create or replace procedure hrm.end_time as
    cursor c_aktivne_sesije is
    (
        select
            id,
            start_time
        from
            hr_siht_lista_vrijeme
        where
            end_time is null
    );

begin
    for x in c_aktivne_sesije loop
        siht_lista_pkg.end_vrijeme(
            p_id       => x.id,
            p_end_time => to_date(to_char(x.start_time, 'DD.MM.YYYY')
                                  || ' 23:00:00',
        'DD.MM.YYYY HH24:MI:SS')
        );
    end loop;
end end_time;
/

prompt
prompt Creating procedure GO_PLAN_SET_INVALID
prompt ======================================
prompt
create or replace procedure hrm.go_plan_set_invalid as
begin
    update go_plan_dana
    set
        valid = 'N'
    where
        godina = extract(year from sysdate) - 1;

end go_plan_set_invalid;
/

prompt
prompt Creating procedure INSERT_PRAZNICI
prompt ==================================
prompt
create or replace procedure hrm.insert_praznici (
    p_application_id in number
) as

    cursor admin_list is
    (
        select
            id,
            email,
            ime
            || ' '
            || prezime as name
        from
            core.korisnici
        where
                valid = 'Y'
            and core.korisnik_pkg.user_has_role(id, 'MAIN_ADMIN_RLE') > 0
    );

    l_year varchar2(4) := to_char(sysdate, 'YYYY') + 1;
begin
    insert into sif.hr_praznici (
        naziv,
        datum_od,
        datum_do,
        entitet_id
    )
        select
            naziv,
            add_months(datum_od, 12),
            add_months(datum_do, 12),
            entitet_id
        from
            sif.hr_praznici
        where
            extract(year from datum_od) = extract(year from sysdate);

    -- Saljemo mail adminima sistema da provjere da li uredu
    for a in admin_list loop
        mail_pkg.posalji_praznici_napomena(
            p_application_id => p_application_id,
            p_mail_to        => a.email,
            p_name           => a.name,
            p_godina         => l_year
        );
    end loop;

    apex_mail.push_queue;
    apex_pwa.push_queue;
end;
/

prompt
prompt Creating procedure SIHT_INFO_MAIL
prompt =================================
prompt
create or replace procedure hrm.siht_info_mail (
    p_app_id in number
) as

    cursor siht_radnik is
    (
        select distinct
            radnik_id,
            (
                select
                    ime
                    || ' '
                    || prezime
                from
                    vw_radnici
                where
                    id = radnik_id
            )                         as radnik,
            to_char(datum, 'mm.yyyy') mjesec,
            status_id,
            (
                select
                    email
                from
                    hr_radnici
                where
                    id = radnik_id
            )                         as email,
            (
                select
                    korisnicko_ime
                from
                    vw_radnici
                where
                    id = radnik_id
            )                         as korisnicko_ime
        from
            hr_siht_lista sl
        where
                status_id = 1
            and to_char(datum, 'mm.yyyy') = to_char(sysdate, 'mm.yyyy')
            and (
                select
                    korisnik
                from
                    vw_radnici r
                where
                    sl.radnik_id = r.id
            ) = 'Y'
    );

    l_username varchar2(255);
begin
    for c1 in siht_radnik loop
        mail_pkg.posalji_siht_lista_napomena(
            p_app_id   => p_app_id,
            p_username => c1.korisnicko_ime,
            p_mail_to  => c1.email,
            p_name     => c1.radnik,
            p_month    => c1.mjesec
        );
    end loop;

    apex_mail.push_queue;
    apex_pwa.push_queue;
end;
/

prompt
prompt Creating package body ANKETE_PKG
prompt ================================
prompt
create or replace package body hrm.ankete_pkg is

    -- Obavjestenja
    procedure get_obavjestenje (
        p_id                  in number,
        p_ooj_id              out number,
        p_tip_obavjestenja_id out number,
        p_poruka              out varchar2,
        p_korisnik_id         out number,
        p_datum_od            out date,
        p_datum_do            out date,
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
                a_obavjestenja
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_tip_obavjestenja_id := c1.tip_obavjestenja_id;
            p_poruka := c1.poruka;
            p_korisnik_id := c1.korisnik_id;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_obavjestenje;

    procedure insert_obavjestenje (
        p_ooj_id              in number default null,
        p_tip_obavjestenja_id in number default null,
        p_poruka              in varchar2 default null,
        p_korisnik_id         in number default null,
        p_datum_od            in date default null,
        p_datum_do            in date default null
    ) is
    begin
        insert into a_obavjestenja (
            ooj_id,
            tip_obavjestenja_id,
            poruka,
            korisnik_id,
            datum_od,
            datum_do
        ) values ( p_ooj_id,
                   p_tip_obavjestenja_id,
                   p_poruka,
                   p_korisnik_id,
                   p_datum_od,
                   p_datum_do );

    end insert_obavjestenje;

    procedure delete_obavjestenje (
        p_id in number
    ) is
    begin
        delete from a_obavjestenja
        where
            id = p_id;

    end delete_obavjestenje;

    function get_obavjestenje_id (
        p_ooj_id in number
    ) return number is
        l_id number;
    begin
        select
            a.id
        into l_id
        from
            (
                select
                    id
                from
                    a_obavjestenja
                where
                        datum_od <= sysdate
                    and datum_do >= sysdate
                    and ( ooj_id = p_ooj_id
                          or ooj_id is null )
                    and valid = 'Y'
                order by
                    ooj_id desc
            ) a
        where
            rownum = 1;

        return l_id;
    exception
        when no_data_found then
            return null;
    end get_obavjestenje_id;

    procedure get_obavjestenje_data (
        p_id         in number,
        p_poruka     out varchar2,
        p_color_code out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_a_obavjestenja
            where
                id = p_id
        ) loop
            p_poruka := c1.poruka;
            p_color_code := c1.tip_color_code;
        end loop;
    end get_obavjestenje_data;

    function get_obavjestenje_html (
        p_ooj_id in number
    ) return clob is
        l_id         number;
        l_color_code varchar2(255);
        l_poruka     varchar2(255);
    begin
        l_id := ankete_pkg.get_obavjestenje_id(p_ooj_id => p_ooj_id);
        if l_id is not null then
            ankete_pkg.get_obavjestenje_data(
                p_id         => l_id,
                p_poruka     => l_poruka,
                p_color_code => l_color_code
            );

            return '<center>
            <div class="'
                   || l_color_code
                   || '">
                <b>'
                   || l_poruka
                   || '</b>
            </div>
        </center>';
        end if;

        return '';
    end get_obavjestenje_html;

    -- Poruke
    procedure get_poruka (
        p_id          in number,
        p_ooj_id      out number,
        p_subject     out varchar2,
        p_poruka      out varchar2,
        p_korisnik_id out number,
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
                a_poruke
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_subject := c1.subject;
            p_poruka := c1.poruka;
            p_korisnik_id := c1.korisnik_id;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_poruka;

    procedure insert_poruka (
        p_ooj_id      in number default null,
        p_subject     in varchar2 default null,
        p_poruka      in varchar2 default null,
        p_korisnik_id in number default null
    ) is
    begin
        insert into a_poruke (
            ooj_id,
            subject,
            poruka,
            korisnik_id
        ) values ( p_ooj_id,
                   p_subject,
                   p_poruka,
                   p_korisnik_id );

    end insert_poruka;

    -- Ankete
    procedure get_anketa (
        p_id          in number,
        p_korisnik_id out number,
        p_status_id   out number,
        p_anonimno    out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                a_ankete
            where
                id = p_id
        ) loop
            p_korisnik_id := c1.korisnik_id;
            p_status_id := c1.status_id;
            p_anonimno := c1.anonimno;
        end loop;
    end get_anketa;

    function insert_anketa (
        p_ooj_id      in number default null,
        p_naziv       in varchar2 default null,
        p_korisnik_id in number default null
    ) return number is
        l_id number;
    begin
        insert into a_ankete (
            ooj_id,
            naziv,
            korisnik_id,
            status_id
        ) values ( p_ooj_id,
                   p_naziv,
                   p_korisnik_id,
                   1 ) returning id into l_id;

        return l_id;
    end insert_anketa;

    procedure delete_anketa (
        p_id in number
    ) is
    begin
        delete from a_ankete
        where
            id = p_id;

    end delete_anketa;

    procedure zavrsi_anketu (
        p_id in number
    ) is
    begin
        update a_ankete
        set
            status_id = 2
        where
            id = p_id;

    end zavrsi_anketu;

    -- Pitanja
    procedure get_pitanje (
        p_id          in number,
        p_anketa_id   out number,
        p_pitanje     out varchar2,
        p_obavezno    out varchar2,
        p_sequence    out number,
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
                a_pitanja
            where
                id = p_id
        ) loop
            p_anketa_id := c1.anketa_id;
            p_pitanje := c1.pitanje;
            p_obavezno := c1.obavezno;
            p_sequence := c1.sequence;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_pitanje;

    function insert_pitanje (
        p_anketa_id in number,
        p_pitanje   in varchar2,
        p_obavezno  in varchar2,
        p_sequence  in number
    ) return number is
        l_id number;
    begin
        insert into a_pitanja (
            anketa_id,
            pitanje,
            obavezno,
            sequence
        ) values ( p_anketa_id,
                   p_pitanje,
                   p_obavezno,
                   p_sequence ) returning id into l_id;

        return l_id;
    end insert_pitanje;

    -- Odgovori na pitanja
    procedure get_odgovor (
        p_id          in number,
        p_pitanje_id  out number,
        p_odgovor     out varchar2,
        p_sequence    out number,
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
                a_pitanja_odgovori
            where
                id = p_id
        ) loop
            p_pitanje_id := c1.pitanje_id;
            p_odgovor := c1.odgovor;
            p_sequence := c1.sequence;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_odgovor;

    procedure insert_odgovor (
        p_pitanje_id in number,
        p_odgovor    in varchar2,
        p_sequence   in number
    ) is
    begin
        insert into a_pitanja_odgovori (
            pitanje_id,
            odgovor,
            sequence
        ) values ( p_pitanje_id,
                   p_odgovor,
                   p_sequence );

    end insert_odgovor;

    -- Korisnici
    procedure get_korisnik_odgovor (
        p_id          in number,
        p_anketa_id   out number,
        p_korisnik_id out number,
        p_pitanje_id  out number,
        p_odgovor_id  out number,
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
                a_anketa_korisnici
            where
                id = p_id
        ) loop
            p_anketa_id := c1.anketa_id;
            p_korisnik_id := c1.korisnik_id;
            p_pitanje_id := c1.pitanje_id;
            p_odgovor_id := c1.odgovor_id;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_korisnik_odgovor;

    procedure insert_korisnik_odgovor (
        p_anketa_id   in number default null,
        p_korisnik_id in number default null,
        p_pitanje_id  in number default null,
        p_odgovor_id  in number default null
    ) is
    begin
        insert into a_anketa_korisnici (
            anketa_id,
            korisnik_id,
            pitanje_id,
            odgovor_id
        ) values ( p_anketa_id,
                   p_korisnik_id,
                   p_pitanje_id,
                   p_odgovor_id );

    end insert_korisnik_odgovor;

end ankete_pkg;
/

prompt
prompt Creating package body BOLOVANJE_PKG
prompt ===================================
prompt
create or replace package body hrm.bolovanje_pkg is

    -- Pomocne funkcije
    function trazeni_broj_dana (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number is
        l_broj_dana     number;
        l_broj_praznika number;
        l_ukupno_dana   number;
    begin
        l_broj_dana := go_pkg.broj_dana_perioda(p_datum_od, p_datum_do);
        l_broj_praznika := go_pkg.broj_dana_praznik(p_datum_od, p_datum_do, p_radnik_id);
        l_ukupno_dana := nvl(l_broj_dana, 0) - nvl(l_broj_praznika, 0);
        return l_ukupno_dana;
    end trazeni_broj_dana;

    function trazeni_broj_dana_mjesec (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number,
        p_mjesec    in number,
        p_godina    in number
    ) return number is

        l_first_day date := to_date ( p_mjesec
                                      || '.'
                                      || p_godina, 'MM.YYYY' );
        l_last_day  date := last_day(l_first_day);
        l_datum_od  date := p_datum_od;
        l_datum_do  date := p_datum_do;
        l_days      number;
    begin
        if p_datum_od <= l_first_day then
            l_datum_od := l_first_day;
        end if;
        if p_datum_do >= l_last_day then
            l_datum_do := l_last_day;
        end if;
        l_days := trazeni_broj_dana(
            p_datum_od  => l_datum_od,
            p_datum_do  => l_datum_do,
            p_radnik_id => p_radnik_id
        );

        return l_days;
    end trazeni_broj_dana_mjesec;

    function get_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number is
        l_max_broj  number;
        l_novi_broj number;
        l_ooj_id    number;
    begin
        select
            ooj_id
        into l_ooj_id
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            max(broj_zahtjeva)
        into l_max_broj
        from
            b_zahtjevi
        where
                godina = p_godina
            and radnik_id in (
                select
                    id
                from
                    hr_radnici
                where
                    ooj_id = l_ooj_id
            );

        if l_max_broj is null then
            l_max_broj := 0;
        end if;
        l_novi_broj := l_max_broj + 1;
        return l_novi_broj;
    end get_broj_zahtjeva;

    -- Zahtjev
    procedure get_zahtjev (
        p_id        in number,
        p_radnik_id out number,
        p_datum_od  out date,
        p_datum_do  out date,
        p_status_id out number,
        p_tip_id    out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                b_zahtjevi
            where
                id = p_id
        ) loop
            p_radnik_id := c1.radnik_id;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
            p_status_id := c1.status_id;
            p_tip_id := c1.tip_id;
        end loop;
    end get_zahtjev;

    procedure insert_zahtjev (
        p_radnik_id in number,
        p_datum_od  in date,
        p_napomena  in varchar2
    ) is
        l_godina        number;
        l_broj_zahtjeva number;
        l_broj_dana     number;
        l_tip_id        number;
        l_id            number;
    begin
        l_godina := to_number ( to_char(sysdate, 'YYYY') );
        l_broj_zahtjeva := get_broj_zahtjeva(
            p_radnik_id => p_radnik_id,
            p_godina    => l_godina
        );
        insert into b_zahtjevi (
            radnik_id,
            datum_od,
            napomena,
            godina,
            broj_zahtjeva,
            tip_id
        ) values ( p_radnik_id,
                   p_datum_od,
                   p_napomena,
                   l_godina,
                   l_broj_zahtjeva,
                   1 ) returning id into l_id;

        insert_zahtjev_hist(
            p_zahtjev_id => l_id,
            p_status_id  => 1
        );
    end insert_zahtjev;

    procedure update_zahtjev (
        p_id            in number,
        p_procenat      in number,
        p_status_id     in number,
        p_komentar      in varchar2 default null,
        p_prisutnost_id in number default null
    ) is
    begin
        update b_zahtjevi
        set
            status_id = p_status_id,
            procenat = p_procenat,
            komentar = p_komentar,
            prisutnost_id = p_prisutnost_id
        where
            id = p_id;

        insert_zahtjev_hist(
            p_zahtjev_id => p_id,
            p_status_id  => p_status_id
        );
    end update_zahtjev;

    procedure zatvori_bolovanje (
        p_id       in number,
        p_datum_do in date
    ) is
    begin
        update b_zahtjevi
        set
            datum_do = p_datum_do,
            status_id = 5
        where
            id = p_id;

        insert_zahtjev_hist(
            p_zahtjev_id => p_id,
            p_status_id  => 5
        );
        update_bolovanje_siht_lista(
            p_id       => p_id,
            p_datum_do => sysdate
        );
    end zatvori_bolovanje;

    procedure update_bolovanje_siht_lista (
        p_id       in number,
        p_datum_do in date
    ) is

        l_datum_od          date;
        l_datum_do          date;
        l_dan_30            date;
        l_radnik_id         number;
        l_tip_zahtjeva_id   number;
        l_broj_dana         number;
        l_ev_prisutnosti_id number;
    begin
        select
            datum_od,
            nvl(datum_do, p_datum_do),
            datum_od + 30,
            radnik_id,
            evidencija_prisutnosti_id
        into
            l_datum_od,
            l_datum_do,
            l_dan_30,
            l_radnik_id,
            l_ev_prisutnosti_id
        from
            vw_b_zahtjevi
        where
            id = p_id;

        -- Broj radnih dana
        l_broj_dana := trazeni_broj_dana(
            p_datum_od  => l_datum_od,
            p_datum_do  => l_datum_do,
            p_radnik_id => l_radnik_id
        );

        -- Provjera za tip bolovanja (do ili preko 30 dana)
        if l_datum_do > l_dan_30 then
            l_tip_zahtjeva_id := 2;
        else
            l_tip_zahtjeva_id := 1;
        end if;

        if l_dan_30 > l_datum_do then
            l_dan_30 := l_datum_do + 1;
        end if;

        -- Updatujemo siht listu (do 30 dana)
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = coalesce(l_ev_prisutnosti_id, 8)
        where
                radnik_id = l_radnik_id
            and trunc(datum) between trunc(l_datum_od) and trunc(l_dan_30)
            and dan not in ( 'SUBOTA', 'NEDJELJA' )
            and evidencija_prisutnosti_id not in ( 12 ); -- praznik

        -- Updatujemo siht listu (preko 30 dana)
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = coalesce(l_ev_prisutnosti_id, 9)
        where
                radnik_id = l_radnik_id
            and trunc(datum) between trunc(l_dan_30) and trunc(l_datum_do)
            and dan not in ( 'SUBOTA', 'NEDJELJA' )
            and evidencija_prisutnosti_id not in ( 12 ); -- praznik

        -- Updatujemo tip zahtjeva
        update b_zahtjevi
        set
            tip_id = l_tip_zahtjeva_id,
            broj_dana = l_broj_dana
        where
            id = p_id;

        -- Sve dane nakon (ako postoje) koji su bili u siht listi pod bolovanjem mijenjamo u radni dan..
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = 1
        where
                radnik_id = l_radnik_id
            and trunc(datum) > l_datum_do
            and evidencija_prisutnosti_id in ( 8, 9, l_ev_prisutnosti_id );

    end update_bolovanje_siht_lista;

    -- Zahtjev hist
    procedure insert_zahtjev_hist (
        p_zahtjev_id in number,
        p_status_id  in number
    ) is
    begin
        update b_zahtjevi
        set
            status_id = p_status_id
        where
            id = p_zahtjev_id;

        insert into b_zahtjev_hist (
            zahtjev_id,
            status_id
        ) values ( p_zahtjev_id,
                   p_status_id );

    end insert_zahtjev_hist;

    -- Dokumenti
    procedure get_dokument (
        p_id          in number,
        p_zahtjev_id  out number,
        p_dokument    out blob,
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
                b_dokumenti
            where
                id = p_id
        ) loop
            p_zahtjev_id := c1.zahtjev_id;
            p_dokument := c1.dokument;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_dokument;

    procedure insert_docs (
        p_zahtjev_id in number,
        p_documents  in varchar2
    ) is
    begin
        for x in (
            select
                regexp_substr(p_documents, '[^:]+', 1, level) document
            from
                dual
            connect by
                level <= length(p_documents) - length(replace(p_documents, ':')) + 1
        ) loop
            insert_dokument(
                p_zahtjev_id => p_zahtjev_id,
                p_dokument   => x.document
            );
        end loop;
    end;

    procedure insert_dokument (
        p_zahtjev_id in number,
        p_dokument   in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into b_dokumenti (
            zahtjev_id,
            dokument,
            dokument_filename,
            dokument_mimetype,
            dokument_lastupd
        ) values ( p_zahtjev_id,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   sysdate );

    end insert_dokument;

    procedure delete_dokument (
        p_id in number default null
    ) is
    begin
        delete from b_dokumenti
        where
            id = p_id;

    end delete_dokument;

end bolovanje_pkg;
/

prompt
prompt Creating package body EVIDENCIJA_PKG
prompt ====================================
prompt
create or replace package body hrm.evidencija_pkg as

    procedure radni_staz_radnika (
        p_radnik_id in number,
        p_datum     in date,
        p_godina    out number,
        p_mjeseci   out number,
        p_dana      out number
    ) is

        l_godine         number;
        l_mjeseci        number;
        l_dana           number;
        l_novi_datum_od  date;
        l_mjeseci_ukupno number;
        l_danas          date;
        l_zaposlen_od    date;
        l_staz_godina    number;
        l_staz_mjeseci   number;
        l_staz_dana      number;
        l_dana_pom       number;
        l_mjeseci_pom    number;
    begin
        select
            months_between(p_datum + 1, zaposlen_od),
            p_datum + 1,
            zaposlen_od,
            coalesce(staz_godina, 0),
            coalesce(staz_mjesec, 0),
            coalesce(staz_dan, 0)
        into
            l_mjeseci_ukupno,
            l_danas,
            l_zaposlen_od,
            l_staz_godina,
            l_staz_mjeseci,
            l_staz_dana
        from
            hr_radnici
        where
            id = p_radnik_id;

        l_godine := trunc(l_mjeseci_ukupno / 12);
        l_mjeseci := trunc(l_mjeseci_ukupno - l_godine * 12);
        l_novi_datum_od := add_months(l_zaposlen_od,
                                      trunc(l_mjeseci_ukupno));
        l_dana := trunc(l_danas) - l_novi_datum_od;
        p_godina := l_godine + l_staz_godina;
        p_mjeseci := l_mjeseci + l_staz_mjeseci;
        p_dana := l_dana + l_staz_dana;
        if p_mjeseci >= 12 then
            l_mjeseci_pom := trunc(p_mjeseci / 12);
            p_godina := p_godina + l_mjeseci_pom;
            p_mjeseci := p_mjeseci - l_mjeseci_pom * 12;
        end if;

        if p_dana >= 30 then
            l_dana_pom := trunc(p_dana / 30);
            p_mjeseci := p_mjeseci + l_dana_pom;
            p_dana := p_dana - l_dana_pom * 30;
            if p_mjeseci >= 12 then
                l_mjeseci_pom := trunc(p_mjeseci / 12);
                p_godina := p_godina + l_mjeseci_pom;
                p_mjeseci := p_mjeseci - l_mjeseci_pom * 12;
            end if;

        end if;

    end radni_staz_radnika;

    function radni_staz_radnika (
        p_radnik_id in number,
        p_datum     in date
    ) return varchar2 is
        l_godina  number;
        l_mjeseci number;
        l_dana    number;
        l_str     varchar2(100);
    begin
        radni_staz_radnika(
            p_radnik_id => p_radnik_id,
            p_datum     => p_datum,
            p_godina    => l_godina,
            p_mjeseci   => l_mjeseci,
            p_dana      => l_dana
        );

        l_str := to_char(l_godina) || ' god. ' || to_char(l_mjeseci) || ' mj. ' || to_char(l_dana)
                 || ' dan.';

        return l_str;
    end radni_staz_radnika;

    -- Radnik
    -- Za vizitku
    procedure get_radnik (
        p_id                  in number,
        p_firma_id            out number,
        p_ooj_id              out number,
        p_korisnik_id         out number,
        p_radnik_naziv        out varchar2,
        p_radnik_radno_mjesto out varchar2,
        p_radnik_telefon      out varchar2,
        p_radnik_email        out varchar2,
        p_firma_website       out varchar2,
        p_ooj_adresa          out varchar2
    ) is
    begin
        for c1 in (
            select
                firma_id,
                ooj_id,
                korisnik_id,
                radno_mjesto_naziv,
                initcap(ime) || ' ' || initcap(prezime) as radnik_naziv,
                coalesce(telefon, mobitel)              as telefon,
                email
            from
                vw_radnici
            where
                id = p_id
        ) loop
            p_firma_id := c1.firma_id;
            p_ooj_id := c1.ooj_id;
            p_korisnik_id := c1.korisnik_id;
            p_radnik_naziv := c1.radnik_naziv;
            p_radnik_radno_mjesto := c1.radno_mjesto_naziv;
            p_radnik_telefon := c1.telefon;
            p_radnik_email := c1.email;
        end loop;

        for c1 in (
            select
                www
            from
                core.vw_firme
            where
                id = p_firma_id
        ) loop
            p_firma_website := c1.www;
        end loop;

        for c1 in (
            select
                adresa || ', ' || zip || ' ' || grad_naziv as ooj_adresa
            from
                core.vw_ooj
            where
                id = p_ooj_id
        ) loop
            p_ooj_adresa := c1.ooj_adresa;
        end loop;

    end get_radnik;

    procedure get_radnik (
        p_id                    in number,
        p_nadredjeni_id         out number,
        p_ime                   out varchar2,
        p_prezime               out varchar2,
        p_jmbg                  out varchar2,
        p_zaposlen_od           out date,
        p_zaposlen_do           out date,
        p_samohrani_roditelj    out varchar2,
        p_invaliditet           out varchar2,
        p_hronicno_oboljenje    out varchar2,
        p_radno_mjesto_id       out number,
        p_staz_godina           out number,
        p_staz_mjesec           out number,
        p_staz_dan              out number,
        p_tip_ugovora_id        out number,
        p_pol                   out varchar2,
        p_obrazovanje_id        out number,
        p_tip_radnog_vremena_id out number,
        p_tip_radnog_odnosa_id  out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_radnici
            where
                id = p_id
        ) loop
            p_nadredjeni_id := c1.nadredjeni_id;
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_jmbg := c1.jmbg;
            p_zaposlen_od := c1.zaposlen_od;
            p_zaposlen_do := c1.zaposlen_do;
            p_samohrani_roditelj := c1.samohrani_roditelj;
            p_invaliditet := c1.invaliditet;
            p_hronicno_oboljenje := c1.hronicno_oboljenje;
            p_radno_mjesto_id := c1.radno_mjesto_id;
            p_staz_godina := c1.staz_godina;
            p_staz_mjesec := c1.staz_mjesec;
            p_staz_dan := c1.staz_dan;
            p_tip_ugovora_id := c1.tip_ugovora_id;
            p_pol := c1.pol;
            p_obrazovanje_id := c1.obrazovanje_id;
            p_tip_radnog_vremena_id := c1.tip_radnog_vremena_id;
            p_tip_radnog_odnosa_id := c1.tip_radnog_odnosa_id;
        end loop;
    end get_radnik;

    procedure get_radnik (
        p_id          in number,
        p_korisnik    out varchar2,
        p_korisnik_id out number,
        p_adresa      out varchar2,
        p_grad_id     out number,
        p_entitet_id  out number,
        p_telefon     out varchar2,
        p_mobitel     out varchar2,
        p_email       out varchar2,
        p_kanton_id   out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_radnici
            where
                id = p_id
        ) loop
            p_korisnik := c1.korisnik;
            p_korisnik_id := c1.korisnik_id;
            p_adresa := c1.adresa;
            p_grad_id := c1.grad_id;
            p_entitet_id := c1.entitet_id;
            p_telefon := c1.telefon;
            p_mobitel := c1.mobitel;
            p_email := c1.email;
            p_kanton_id := c1.kanton_id;
        end loop;
    end get_radnik;

    procedure get_radnik (
        p_id          in number,
        p_ime_prezime out varchar2,
        p_jmbg        out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_radnici
            where
                id = p_id
        ) loop
            p_ime_prezime := c1.ime || ' ' || c1.prezime;
            p_jmbg := c1.jmbg;
        end loop;
    end get_radnik;

    -- Za knjizenje SP
    procedure get_radnik (
        p_radnik_id  in number,
        p_oj_id      out number,
        p_entitet_id out number
    ) is
    begin
        for c1 in (
            select
                oj_id,
                entitet_id
            from
                vw_radnici
            where
                id = p_radnik_id
        ) loop
            p_oj_id := c1.oj_id;
            p_entitet_id := c1.entitet_id;
        end loop;
    end get_radnik;

    -- Za obrazac
    procedure get_radnik (
        p_radnik_id          in number,
        p_ime                out varchar2,
        p_prezime            out varchar2,
        p_jmbg               out varchar2,
        p_adresa             out varchar2,
        p_grad_naziv         out varchar2,
        p_zaposlen_od        out varchar2,
        p_radno_mjesto_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                ime,
                prezime,
                jmbg,
                adresa,
                grad_naziv,
                zaposlen_od,
                radno_mjesto_naziv
            from
                vw_radnici
            where
                id = p_radnik_id
        ) loop
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_jmbg := c1.jmbg;
            p_adresa := c1.adresa;
            p_grad_naziv := c1.grad_naziv;
            p_zaposlen_od := c1.zaposlen_od;
            p_radno_mjesto_naziv := c1.radno_mjesto_naziv;
        end loop;
    end get_radnik;

    -- Za budzet
    procedure get_radnik (
        p_radnik_id in number,
        p_oj_id     out number
    ) is
    begin
        for c1 in (
            select
                oj_id
            from
                vw_radnici
            where
                id = p_radnik_id
        ) loop
            p_oj_id := c1.oj_id;
        end loop;
    end get_radnik;

    function get_radnik_from_jmbg (
        p_ooj_id in number,
        p_jmbg   in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                hr_radnici
            where
                    jmbg = p_jmbg
                and ooj_id = p_ooj_id
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_radnik_from_jmbg;

    procedure insert_radnik (
        p_korisnik_id           in number,
        p_korisnik              in varchar2,
        p_ime                   in varchar2,
        p_prezime               in varchar2,
        p_email                 in varchar2,
        p_telefon               in varchar2,
        p_mobitel               in varchar2,
        p_jmbg                  in varchar2,
        p_nadredjeni_id         in varchar2,
        p_zaposlen_od           in date,
        p_zaposlen_do           in date,
        p_radno_mjesto_id       in number,
        p_staz_god              in number,
        p_staz_mj               in number,
        p_staz_dan              in number,
        p_entitet_id            in number,
        p_kanton_id             in number,
        p_grad_id               in number,
        p_adresa                in varchar2,
        p_samohrani_rod         in varchar2,
        p_invaliditet           in varchar2,
        p_hronicno_ob           in varchar2,
        p_tip_ugovora_id        in number,
        p_pol                   in varchar2,
        p_obrazovanje_id        in number,
        p_tip_radnog_vremena_id in number,
        p_tip_radnog_odnosa_id  in number
    ) as

        l_ime       varchar2(100);
        l_prezime   varchar2(100);
        l_telefon   varchar2(100);
        l_mobitel   varchar2(100);
        l_email     varchar2(100);
        l_oj_id     number;
        l_ooj_id    number;
        l_radnik_id number;
    begin
        if p_korisnik = 'Y' then
            -- Uzimamo podatke iz korisnika
            select
                ime,
                prezime,
                email,
                telefon,
                mobtel
            into
                l_ime,
                l_prezime,
                l_email,
                l_telefon,
                l_mobitel
            from
                core.korisnici
            where
                id = p_korisnik_id;

        else
            l_ime := p_ime;
            l_prezime := p_prezime;
            l_email := p_email;
            l_telefon := p_telefon;
            l_mobitel := p_mobitel;
        end if;

        -- Uzimamo podatke iz radnog mjesta
        select
            ooj_id,
            oj_id
        into
            l_ooj_id,
            l_oj_id
        from
            core.firma_radna_mjesta
        where
            id = p_radno_mjesto_id;

        -- Insertujemo u tabelu
        insert into hr_radnici (
            nadredjeni_id,
            ime,
            prezime,
            jmbg,
            zaposlen_od,
            zaposlen_do,
            adresa,
            grad_id,
            entitet_id,
            telefon,
            mobitel,
            samohrani_roditelj,
            invaliditet,
            hronicno_oboljenje,
            oj_id,
            ooj_id,
            staz_godina,
            staz_mjesec,
            staz_dan,
            email,
            radno_mjesto_id,
            korisnik_id,
            tip_ugovora_id,
            pol,
            obrazovanje_id,
            tip_radnog_vremena_id,
            tip_radnog_odnosa_id,
            korisnik
        ) values ( p_nadredjeni_id,
                   l_ime,
                   l_prezime,
                   p_jmbg,
                   p_zaposlen_od,
                   p_zaposlen_do,
                   p_adresa,
                   p_grad_id,
                   p_entitet_id,
                   l_telefon,
                   l_mobitel,
                   p_samohrani_rod,
                   p_invaliditet,
                   p_hronicno_ob,
                   l_oj_id,
                   l_ooj_id,
                   p_staz_god,
                   p_staz_mj,
                   p_staz_dan,
                   l_email,
                   p_radno_mjesto_id,
                   p_korisnik_id,
                   p_tip_ugovora_id,
                   p_pol,
                   p_obrazovanje_id,
                   p_tip_radnog_vremena_id,
                   p_tip_radnog_odnosa_id,
                   p_korisnik ) return id into l_radnik_id;

        -- Ako radnik nema nadredjenog, postavi da bude sam sebi nadredjeni
        if p_nadredjeni_id is null then
            update hr_radnici
            set
                nadredjeni_id = l_radnik_id
            where
                id = l_radnik_id;

        end if;

        -- Naknadno unosimo siht listu
        siht_lista_pkg.naknadni_insert_siht_lista(
            p_radnik_id   => l_radnik_id,
            p_zaposlen_od => p_zaposlen_od
        );
    end insert_radnik;

    -- Insert radnika za automatski unos kroz parametre plata
    function insert_radnik (
        p_ooj_id          in number,
        p_ime             in varchar2,
        p_prezime         in varchar2,
        p_nadredjeni_id   in varchar2,
        p_jmbg            in varchar2,
        p_zaposlen_od     in date,
        p_radno_mjesto_id in number,
        p_entitet_id      in number,
        p_grad_id         in number,
        p_tip_ugovora_id  in number
    ) return number is
        l_radnik_id number;
    begin
        insert into hr_radnici (
            nadredjeni_id,
            ime,
            prezime,
            jmbg,
            zaposlen_od,
            zaposlen_do,
            adresa,
            grad_id,
            entitet_id,
            telefon,
            mobitel,
            samohrani_roditelj,
            invaliditet,
            hronicno_oboljenje,
            oj_id,
            ooj_id,
            staz_godina,
            staz_mjesec,
            staz_dan,
            email,
            radno_mjesto_id,
            korisnik_id,
            tip_ugovora_id,
            pol,
            obrazovanje_id,
            tip_radnog_vremena_id,
            tip_radnog_odnosa_id,
            korisnik
        ) values ( p_nadredjeni_id,
                   p_ime,
                   p_prezime,
                   p_jmbg,
                   p_zaposlen_od,
                   null,
                   null,
                   p_grad_id,
                   p_entitet_id,
                   null,
                   null,
                   null,
                   null,
                   null,
                   null,
                   p_ooj_id,
                   null,
                   null,
                   null,
                   null,
                   p_radno_mjesto_id,
                   null,
                   p_tip_ugovora_id,
                   null,
                   null,
                   null,
                   null,
                   'N' ) return id into l_radnik_id;

        -- Ako radnik nema nadredjenog, postavi da bude sam sebi nadredjeni
        if p_nadredjeni_id is null then
            update hr_radnici
            set
                nadredjeni_id = l_radnik_id
            where
                id = l_radnik_id;

        end if;

        -- Naknadno unosimo siht listu
        siht_lista_pkg.naknadni_insert_siht_lista(
            p_radnik_id   => l_radnik_id,
            p_zaposlen_od => p_zaposlen_od
        );
        return l_radnik_id;
    end insert_radnik;

    procedure update_radnik (
        p_id                    in number,
        p_jmbg                  in varchar2,
        p_ime                   in varchar2,
        p_prezime               in varchar2,
        p_nadredjeni_id         in varchar2,
        p_radno_mjesto_id       in number,
        p_zaposlen_od           in date,
        p_zaposlen_do           in date,
        p_staz_god              in number,
        p_staz_mj               in number,
        p_staz_dan              in number,
        p_samohrani_rod         in varchar2,
        p_invaliditet           in varchar2,
        p_hronicno_ob           in varchar2,
        p_tip_ugovora_id        in number,
        p_pol                   in varchar2,
        p_obrazovanje_id        in number,
        p_tip_radnog_vremena_id in number,
        p_tip_radnog_odnosa_id  in number
    ) as
        l_korisnik_id number;
        l_oj_id       number;
        l_ooj_id      number;
    begin
        -- Uzimamo podatke iz korisnika i radnog mjesta
        select
            korisnik_id
        into l_korisnik_id
        from
            hr_radnici
        where
            id = p_id;

        select
            ooj_id,
            oj_id
        into
            l_ooj_id,
            l_oj_id
        from
            core.firma_radna_mjesta
        where
            id = p_radno_mjesto_id;

        -- Updatujemo u tabelu
        update hr_radnici
        set
            jmbg = p_jmbg,
            ime = p_ime,
            prezime = p_prezime,
            nadredjeni_id = p_nadredjeni_id,
            zaposlen_od = p_zaposlen_od,
            zaposlen_do = p_zaposlen_do,
            samohrani_roditelj = p_samohrani_rod,
            invaliditet = p_invaliditet,
            hronicno_oboljenje = p_hronicno_ob,
            oj_id = l_oj_id,
            ooj_id = l_ooj_id,
            staz_godina = p_staz_god,
            staz_mjesec = p_staz_mj,
            staz_dan = p_staz_dan,
            radno_mjesto_id = p_radno_mjesto_id,
            tip_ugovora_id = p_tip_ugovora_id,
            pol = p_pol,
            obrazovanje_id = p_obrazovanje_id,
            tip_radnog_vremena_id = p_tip_radnog_vremena_id,
            tip_radnog_odnosa_id = p_tip_radnog_odnosa_id
        where
            id = p_id;

        update core.korisnici
        set
            ime = p_ime,
            prezime = p_prezime
        where
            id = l_korisnik_id;

        << check_siht_list >> declare
            l_last_day date := trunc(last_day(p_zaposlen_do));
        begin
            if p_zaposlen_do is not null then
                delete from hr_siht_lista_vrijeme
                where
                    siht_lista_id in (
                        select
                            id
                        from
                            hr_siht_lista
                        where
                                radnik_id = p_id
                            and trunc(datum) > l_last_day
                    );

                delete from hr_siht_lista
                where
                        radnik_id = p_id
                    and trunc(datum) > l_last_day;

                update hr_siht_lista
                set
                    evidencija_prisutnosti_id = 16
                where
                        radnik_id = p_id
                    and trunc(datum) > p_zaposlen_do;

            end if;
        end check_siht_list;

    end update_radnik;

    procedure update_radnik_kontakt (
        p_id          in number,
        p_korisnik    in varchar2,
        p_korisnik_id in number,
        p_grad_id     in number,
        p_adresa      in varchar2,
        p_telefon     in varchar,
        p_mobitel     in varchar2,
        p_entitet_id  in number,
        p_kanton_id   in number,
        p_email       in varchar2
    ) as
        l_korisnik_id number;
    begin
        apex_debug.message('p_korisnik ' || p_korisnik);
        apex_debug.message('p_korisnik_id ' || p_korisnik_id);
        update hr_radnici
        set
            korisnik = p_korisnik,
            korisnik_id = p_korisnik_id,
            adresa = p_adresa,
            entitet_id = p_entitet_id,
            kanton_id = p_kanton_id,
            telefon = p_telefon,
            mobitel = p_mobitel,
            email = p_email,
            grad_id = p_grad_id
        where
            id = p_id;

        if p_korisnik = 'Y' then
            update core.korisnici
            set
                email = p_email,
                telefon = p_telefon,
                mobtel = p_mobitel
            where
                id = l_korisnik_id;

        end if;

    end update_radnik_kontakt;

    -- Vizitka
    function generate_radnik_kontakt (
        p_radnik_id in number
    ) return clob is

        cursor c_podaci is
        (
            select
                initcap(ime)                            as ime,
                initcap(prezime)                        as prezime,
                initcap(ime) || ' ' || initcap(prezime) as full_name,
                ooj_naziv                               as company,
                ooj_adresa,
                ooj_zip,
                ooj_grad_naziv,
                ooj_entitet_naziv,
                radno_mjesto_naziv,
                coalesce(telefon, mobitel)              as telefon,
                email,
                foto,
                foto_mimetype,
                to_char(rodjendan_datum, 'YYYY-MM-DD')  as birthday
            from
                vw_radnici
            where
                id = p_radnik_id
        );

        l_vcf   clob;
        l_photo clob;
    begin
        for c1 in c_podaci loop
            if c1.foto is not null then
                l_photo := apex_web_service.blob2clobbase64(
                    p_blob     => c1.foto,
                    p_newlines => 'N'
                );

                l_photo := regexp_replace(l_photo,
                                          '(.{76})',
                                          '\1' || chr(13) || chr(10) || ' ',
                                          1,
                                          0);

                l_photo := ' ' || l_photo;
            end if;

            -- Build vCard text
            l_vcf := 'BEGIN:VCARD' || chr(13) || chr(10) || 'VERSION:3.0' || chr(13) || chr(10) 
                     || 'N:' || c1.prezime || ';' || c1.ime || chr(13) || chr(10) 
                     || 'FN:' || c1.full_name || chr(13) || chr(10) 
                     || 'ORG:' || c1.company || chr(13) || chr(10)
                     || 'TITLE:' || c1.radno_mjesto_naziv || chr(13) || chr(10)
                     || 'ADR;TYPE=WORK:;;' || c1.ooj_adresa || ';' || c1.ooj_grad_naziv || ';' || c1.ooj_entitet_naziv || ' ;' || c1.ooj_zip || ';Bosna i Hercegovina' || chr(13) || chr(10);
                     

            if c1.telefon is not null then
                l_vcf := l_vcf || 'TEL;TYPE=CELL:' || c1.telefon || chr(13) || chr(10);
            end if;

            if c1.email is not null then
                l_vcf := l_vcf || 'EMAIL;TYPE=INTERNET:' || c1.email || chr(13) || chr(10);
            end if;

            if c1.birthday is not null then
                l_vcf := l_vcf || 'BDAY:' || c1.birthday || chr(13) || chr(10);
            end if;

            l_vcf := l_vcf || 'REV:' || to_char(sysdate, 'YYYY-MM-DD') || chr(13) || chr(10);

            -- Add photo if available
            if l_photo is not null then
                l_vcf := l_vcf || 'PHOTO;ENCODING=b;TYPE=' ||
                    case
                        when lower(c1.foto_mimetype) like '%jpeg%' then
                            'JPEG'
                        when lower(c1.foto_mimetype) like '%png%' then
                            'PNG'
                        else 'JPEG'
                    end
                         || ':' || chr(13)
                         || chr(10) || l_photo || chr(13) || chr(10);
            end if;

            l_vcf := l_vcf || 'END:VCARD';
        end loop;

        return l_vcf;
    end generate_radnik_kontakt;

    -- Djeca
    procedure get_radnik_dijete (
        p_id        in number,
        p_jmbg      out varchar2,
        p_ime       out varchar2,
        p_prezime   out varchar2,
        p_rodjendan out date,
        p_valid     out varchar2
    ) is
    begin
        for c1 in (
            select
                jmbg,
                ime,
                prezime,
                rodjendan,
                valid
            from
                hr_radnici_djeca
            where
                id = p_id
        ) loop
            p_jmbg := c1.jmbg;
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_rodjendan := c1.rodjendan;
            p_valid := c1.valid;
        end loop;
    end get_radnik_dijete;

    procedure insert_radnik_dijete (
        p_radnik_id in number,
        p_jmbg      in varchar2,
        p_ime       in varchar2,
        p_prezime   in varchar2,
        p_rodjendan in date
    ) as
    begin
        insert into hr_radnici_djeca (
            radnik_id,
            jmbg,
            ime,
            prezime,
            rodjendan
        ) values ( p_radnik_id,
                   p_jmbg,
                   p_ime,
                   p_prezime,
                   p_rodjendan );

    end insert_radnik_dijete;

    procedure update_radnik_dijete (
        p_id        in number,
        p_jmbg      in varchar2,
        p_ime       in varchar2,
        p_prezime   in varchar2,
        p_rodjendan in date,
        p_valid     in varchar2
    ) as
    begin
        update hr_radnici_djeca
        set
            jmbg = p_jmbg,
            ime = p_ime,
            prezime = p_prezime,
            rodjendan = p_rodjendan,
            valid = p_valid
        where
            id = p_id;

    end update_radnik_dijete;

    procedure delete_radnik_dijete (
        p_id in number
    ) as
    begin
        delete from hr_radnici_djeca
        where
            id = p_id;

    end delete_radnik_dijete;

    procedure obnovi_radnika (
        p_id in number
    ) as
        l_zaposlen_do date;
        l_godina      number;
        l_mjeseci     number;
        l_dana        number;
        l_plata_id    number;
    begin
        -- prebacujemo trenutno stanje radnika u history
        insert into hr_radnici_hist (
            id,
            nadredjeni_id,
            ime,
            prezime,
            jmbg,
            zaposlen_od,
            zaposlen_do,
            adresa,
            grad_id,
            entitet_id,
            telefon,
            mobitel,
            samohrani_roditelj,
            invaliditet,
            hronicno_oboljenje,
            oj_id,
            staz_godina,
            staz_mjesec,
            staz_dan,
            email,
            radno_mjesto_id,
            kanton_id,
            korisnik_id,
            ooj_id,
            tip_ugovora_id,
            prijava_kod,
            pol,
            obrazovanje_id,
            tip_radnog_vremena_id,
            tip_radnog_odnosa_id,
            cijena_sata
        )
            select
                id,
                nadredjeni_id,
                ime,
                prezime,
                jmbg,
                zaposlen_od,
                zaposlen_do,
                adresa,
                grad_id,
                entitet_id,
                telefon,
                mobitel,
                samohrani_roditelj,
                invaliditet,
                hronicno_oboljenje,
                oj_id,
                staz_godina,
                staz_mjesec,
                staz_dan,
                email,
                radno_mjesto_id,
                kanton_id,
                korisnik_id,
                ooj_id,
                tip_ugovora_id,
                prijava_kod,
                pol,
                obrazovanje_id,
                tip_radnog_vremena_id,
                tip_radnog_odnosa_id,
                cijena_sata
            from
                hr_radnici
            where
                id = p_id;

        -- Selectujemo potrebne varijable iz hr_radnik
        select
            zaposlen_do
        into l_zaposlen_do
        from
            hr_radnici
        where
            id = p_id;

        -- Stavimo sve plate koje trenutno ima da ne vaze
        update pl_radnici
        set
            vazi = 'N'
        where
            radnik_id = p_id;

        -- Racunamo radni staz radnika
        radni_staz_radnika(
            p_radnik_id => p_id,
            p_datum     => l_zaposlen_do,
            p_godina    => l_godina,
            p_mjeseci   => l_mjeseci,
            p_dana      => l_dana
        );

        -- Uradili Nikola i Rajko   
        update hr_radnici
        set
            zaposlen_od = trunc(sysdate),
            zaposlen_do = null,
            staz_godina = l_godina,
            staz_mjesec = l_mjeseci,
            staz_dan = l_dana
        where
            id = p_id;

        -- Naknadni insert siht liste ukoliko ona ne postoji
        siht_lista_pkg.naknadni_insert_siht_lista(
            p_radnik_id   => p_id,
            p_zaposlen_od => trunc(sysdate)
        );

--        Exception when others then
--            dbms_output.put_line('rollback');
--            rollback;
--            raise_application_error(-20001, 'Test');

    end obnovi_radnika;

    -- Insert dokumenata za radnika
    procedure insert_radnik_docs (
        p_radnik_id        in number,
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

            insert into hr_radnik_dokumenti (
                radnik_id,
                dokument,
                dokument_mimetype,
                dokument_filename,
                tip_dokumenta_id,
                datum
            ) values ( p_radnik_id,
                       l_blob,
                       l_mimetype,
                       l_filename,
                       p_tip_dokumenta_id,
                       p_datum );

        end loop;
    end insert_radnik_docs;

    procedure delete_radnik_dokument (
        p_id in number
    ) is
    begin
        delete from hr_radnik_dokumenti
        where
            id = p_id;

    end delete_radnik_dokument;

    -- Cjenovnik obrazovanja
    procedure get_obrazovanje_cijena (
        p_id             in number,
        p_ooj_id         out number,
        p_oj_id          out number,
        p_obrazovanje_id out number,
        p_cijena_sata    out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_obrazovanje_cjenovnik
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_oj_id := c1.oj_id;
            p_obrazovanje_id := c1.obrazovanje_id;
            p_cijena_sata := c1.cijena_sata;
        end loop;
    end get_obrazovanje_cijena;

    procedure insert_obrazovanje_cijena (
        p_ooj_id         in number,
        p_oj_id          in number,
        p_obrazovanje_id in number,
        p_cijena_sata    in number
    ) is
    begin
        insert into hr_obrazovanje_cjenovnik (
            ooj_id,
            oj_id,
            obrazovanje_id,
            cijena_sata
        ) values ( p_ooj_id,
                   p_oj_id,
                   p_obrazovanje_id,
                   p_cijena_sata );

    end insert_obrazovanje_cijena;

    procedure update_obrazovanje_cijena (
        p_id             in number,
        p_ooj_id         in number,
        p_oj_id          in number,
        p_obrazovanje_id in number,
        p_cijena_sata    in number
    ) is
    begin
        update hr_obrazovanje_cjenovnik
        set
            ooj_id = p_ooj_id,
            oj_id = p_oj_id,
            obrazovanje_id = p_obrazovanje_id,
            cijena_sata = p_cijena_sata
        where
            id = p_id;

    end update_obrazovanje_cijena;

    procedure delete_obrazovanje_cijena (
        p_id in number
    ) is
    begin
        delete from hr_obrazovanje_cjenovnik
        where
            id = p_id;

    end delete_obrazovanje_cijena;

    -- Cjenovnik radnika
    procedure get_radnik_cijena (
        p_radnik_id   in number,
        p_cijena_sata out number
    ) is
    begin
        for c1 in (
            select
                cijena_sata
            from
                hr_radnici
            where
                id = p_radnik_id
        ) loop
            p_cijena_sata := c1.cijena_sata;
        end loop;
    end get_radnik_cijena;

    procedure update_radnik_cijena (
        p_radnik_id   in number,
        p_cijena_sata in number
    ) is
    begin
        update hr_radnici
        set
            cijena_sata = p_cijena_sata
        where
            id = p_radnik_id;

    end update_radnik_cijena;

end evidencija_pkg;
/

prompt
prompt Creating package body FV_PKG
prompt ============================
prompt
create or replace package body hrm.fv_pkg is

    fv_status_funkcionalan number := 10;
    fv_status_pokvaren     number := 10;

    -- vozila
    procedure get_vozilo (
        p_id               in number,
        p_vrsta_vozila_id  out number,
        p_firma_id         out number,
        p_radnik_id        out number,
        p_ooj_id           out number,
        p_oj_id            out number,
        p_status           out number,
        p_reg_oznaka       out varchar2,
        p_reg_datum        out date,
        p_tip_vozila       out varchar2,
        p_marka_vozila     out varchar2,
        p_model_vozila     out varchar2,
        p_gorivo_max       out number,
        p_zapremina_motora out varchar2,
        p_snaga_motora     out varchar2,
        p_vrsta_goriva     out varchar2,
        p_boja             out varchar2,
        p_broj_sasije      out varchar2,
        p_masa_vozila      out varchar2,
        p_broj_mjesta      out number,
        p_valid            out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_vozila
            where
                id = p_id
        ) loop
            p_vrsta_vozila_id := c1.vrsta_vozila_id;
            p_firma_id := c1.firma_id;
            p_radnik_id := c1.radnik_id;
            p_ooj_id := c1.ooj_id;
            p_oj_id := c1.oj_id;
            p_status := c1.status;
            p_reg_oznaka := c1.reg_oznaka;
            p_reg_datum := c1.reg_datum;
            p_tip_vozila := c1.tip_vozila;
            p_marka_vozila := c1.marka_vozila;
            p_model_vozila := c1.model_vozila;
            p_gorivo_max := c1.gorivo_max;
            p_zapremina_motora := c1.zapremina_motora;
            p_snaga_motora := c1.snaga_motora;
            p_vrsta_goriva := c1.vrsta_goriva;
            p_boja := c1.boja;
            p_broj_sasije := c1.broj_sasije;
            p_masa_vozila := c1.masa_vozila;
            p_broj_mjesta := c1.broj_mjesta;
            p_valid := c1.valid;
        end loop;
    end get_vozilo;

    procedure ce_vozilo (
        p_id               in number default null,
        p_vrsta_vozila_id  in number,
        p_firma_id         in number,
        p_radnik_id        in number,
        p_ooj_id           in number,
        p_oj_id            in number,
        p_status           in number,
        p_reg_oznaka       in varchar2,
        p_reg_datum        in date,
        p_tip_vozila       in varchar2,
        p_marka_vozila     in varchar2,
        p_model_vozila     in varchar2,
        p_gorivo_max       in number,
        p_zapremina_motora in varchar2,
        p_snaga_motora     in varchar2,
        p_vrsta_goriva     in varchar2,
        p_boja             in varchar2,
        p_broj_sasije      in varchar2,
        p_masa_vozila      in varchar2,
        p_broj_mjesta      in number,
        p_valid            in varchar2 default null
    ) is
    begin
        if p_id is null then
            insert into fv_vozila (
                vrsta_vozila_id,
                firma_id,
                radnik_id,
                ooj_id,
                oj_id,
                status,
                reg_oznaka,
                reg_datum,
                tip_vozila,
                marka_vozila,
                model_vozila,
                gorivo_max,
                zapremina_motora,
                snaga_motora,
                vrsta_goriva,
                boja,
                broj_sasije,
                masa_vozila,
                broj_mjesta
            ) values ( p_vrsta_vozila_id,
                       p_firma_id,
                       p_radnik_id,
                       p_ooj_id,
                       p_oj_id,
                       p_status,
                       p_reg_oznaka,
                       p_reg_datum,
                       p_tip_vozila,
                       p_marka_vozila,
                       p_model_vozila,
                       p_gorivo_max,
                       p_zapremina_motora,
                       p_snaga_motora,
                       p_vrsta_goriva,
                       p_boja,
                       p_broj_sasije,
                       p_masa_vozila,
                       p_broj_mjesta );

        else
            update fv_vozila
            set
                vrsta_vozila_id = p_vrsta_vozila_id,
                firma_id = p_firma_id,
                radnik_id = p_radnik_id,
                ooj_id = p_ooj_id,
                oj_id = p_oj_id,
                status = p_status,
                reg_oznaka = p_reg_oznaka,
                reg_datum = p_reg_datum,
                tip_vozila = p_tip_vozila,
                marka_vozila = p_marka_vozila,
                model_vozila = p_model_vozila,
                gorivo_max = p_gorivo_max,
                zapremina_motora = p_zapremina_motora,
                snaga_motora = p_snaga_motora,
                vrsta_goriva = p_vrsta_goriva,
                boja = p_boja,
                broj_sasije = p_broj_sasije,
                masa_vozila = p_masa_vozila,
                broj_mjesta = p_broj_mjesta,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_vozilo;

    procedure obrisi_vozilo (
        p_id in number
    ) is
    begin
        delete from fv_vozila
        where
            id = p_id;

    end obrisi_vozilo;

    -- servis vozila
    procedure get_servis_vozila (
        p_id          in number,
        p_vozilo_id   out number,
        p_vrsta_id    out varchar2,
        p_datum       out date,
        p_kilometraza out number,
        p_cijena      out number,
        p_valid       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_servisi_vozila
            where
                id = p_id
        ) loop
            p_vozilo_id := c1.vozilo_id;
            p_vrsta_id := c1.vrsta_id;
            p_datum := c1.datum;
            p_kilometraza := c1.kilometraza;
            p_cijena := c1.cijena;
            p_valid := c1.valid;
        end loop;
    end get_servis_vozila;

    procedure ce_servis_vozila (
        p_id          in number default null,
        p_vozilo_id   in number,
        p_vrsta_id    in varchar2,
        p_datum       in date,
        p_kilometraza in number,
        p_cijena      in number,
        p_valid       in varchar2 default null
    ) is
    begin
        if p_id is null then
            insert into fv_servisi_vozila (
                vozilo_id,
                vrsta_id,
                datum,
                kilometraza,
                cijena
            ) values ( p_vozilo_id,
                       p_vrsta_id,
                       p_datum,
                       p_kilometraza,
                       p_cijena );

        else
            update fv_servisi_vozila
            set
                vozilo_id = p_vozilo_id,
                vrsta_id = p_vrsta_id,
                datum = p_datum,
                kilometraza = p_kilometraza,
                cijena = p_cijena,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_servis_vozila;

    procedure obrisi_servis_vozila (
        p_id in number
    ) is
    begin
        delete from fv_servisi_vozila
        where
            id = p_id;

    end obrisi_servis_vozila;

    -- tocenje vozila
    procedure get_tocenje_vozila (
        p_id        in number,
        p_vozilo_id out number,
        p_kolicina  out number,
        p_cijena    out number,
        p_datum     out date,
        p_valid     out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_tocenje_vozila
            where
                id = p_id
        ) loop
            p_vozilo_id := c1.vozilo_id;
            p_kolicina := c1.kolicina;
            p_cijena := c1.cijena;
            p_datum := c1.datum;
            p_valid := c1.valid;
        end loop;
    end get_tocenje_vozila;

    procedure ce_tocenje_vozila (
        p_id        in number default null,
        p_vozilo_id in number,
        p_kolicina  in number,
        p_cijena    in number,
        p_datum     in date,
        p_valid     in varchar2 default null
    ) is
    begin
        if p_id is null then
            insert into fv_tocenje_vozila (
                vozilo_id,
                kolicina,
                cijena,
                datum
            ) values ( p_vozilo_id,
                       p_kolicina,
                       p_cijena,
                       p_datum );

        else
            update fv_tocenje_vozila
            set
                vozilo_id = p_vozilo_id,
                kolicina = p_kolicina,
                cijena = p_cijena,
                datum = p_datum,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_tocenje_vozila;

    procedure obrisi_tocenje_vozila (
        p_id in number
    ) is
    begin
        delete from fv_tocenje_vozila
        where
            id = p_id;

    end obrisi_tocenje_vozila;

    -- rezervacija vozila
    procedure get_rezervacija (
        p_id                  in number,
        p_vozilo_id           out number,
        p_radnik_id           out number,
        p_tip_rezervacije_id  out number,
        p_zahtjev_id          out number,
        p_kilometraza_pocetak out number,
        p_kilometraza_kraj    out number,
        p_datum_od            out date,
        p_datum_do            out date,
        p_valid               out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_rezervacije_vozila
            where
                id = p_id
        ) loop
            p_vozilo_id := c1.vozilo_id;
            p_radnik_id := c1.radnik_id;
            p_tip_rezervacije_id := c1.tip_rezervacije_id;
            p_zahtjev_id := c1.zahtjev_id;
            p_kilometraza_pocetak := c1.kilometraza_pocetak;
            p_kilometraza_kraj := c1.kilometraza_kraj;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
            p_valid := c1.valid;
        end loop;
    end get_rezervacija;

    procedure ce_rezervacija (
        p_id                  in number default null,
        p_vozilo_id           in number,
        p_radnik_id           in number,
        p_tip_rezervacije_id  in number,
        p_zahtjev_id          in number,
        p_kilometraza_pocetak in number default null,
        p_kilometraza_kraj    in number default null,
        p_datum_od            in date,
        p_datum_do            in date,
        p_valid               in varchar2 default null
    ) is
    begin
        if p_id is null then
            insert into fv_rezervacije_vozila (
                vozilo_id,
                radnik_id,
                tip_rezervacije_id,
                zahtjev_id,
                kilometraza_pocetak,
                kilometraza_kraj,
                datum_od,
                datum_do
            ) values ( p_vozilo_id,
                       p_radnik_id,
                       p_tip_rezervacije_id,
                       p_zahtjev_id,
                       p_kilometraza_pocetak,
                       p_kilometraza_kraj,
                       p_datum_od,
                       p_datum_do );

        else
            update fv_rezervacije_vozila
            set
                vozilo_id = p_vozilo_id,
                radnik_id = p_radnik_id,
                tip_rezervacije_id = p_tip_rezervacije_id,
                zahtjev_id = p_zahtjev_id,
                kilometraza_pocetak = p_kilometraza_pocetak,
                kilometraza_kraj = p_kilometraza_kraj,
                datum_od = p_datum_od,
                datum_do = p_datum_do,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_rezervacija;

    procedure obrisi_rezervacija (
        p_id in number
    ) is
    begin
        delete from fv_rezervacije_vozila
        where
            id = p_id;

    end obrisi_rezervacija;

end fv_pkg;
/

prompt
prompt Creating package body GO_PKG
prompt ============================
prompt
create or replace package body hrm.go_pkg as

	-- Helper
    function broj_dana_perioda (
        p_datum_od in date,
        p_datum_do in date
    ) return number is

        f_brojdana   number;
        f_ukupnodana number;
        f_datum      date;
        idx          number := 0;
        f_dani       number;
        f_dan        varchar2(50);
    begin
        f_brojdana := 0;
        f_dani := 0;
        f_ukupnodana := p_datum_do - p_datum_od;
        dbms_output.put_line('f_ukupnodana ' || f_ukupnodana);
        for idx in 0..f_ukupnodana loop
            f_datum := p_datum_od + idx;
  --   DBMS_OUTPUT.Put_Line( 'f_datum '||f_datum );
  --f_dan :=  to_char(f_datum,'D','NLS_DATE_LANGUAGE=CROATIAN');  
            f_dan := trim(to_char(f_datum, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN'''));
            if f_dan not in ( 'SUBOTA', 'NEDJELJA' ) then

  --IF f_dan not in  ('6','7')  then
      --(, 'SUNDAY', 'SUBOTA', 'NEDJELJA') then
  --  DBMS_OUTPUT.Put_Line(to_char(f_datum, 'D','NLS_DATE_LANGUAGE=CROATIAN'));
                f_dani := f_dani + 1;
   -- DBMS_OUTPUT.Put_Line( 'f_dani '||f_dani );
            end if;

        end loop;

        return f_dani;
    end broj_dana_perioda;

    function broj_dana_praznik (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number is

        f_brojdana     number;
        f_ukupnodana   number;
        f_datum        date;
        idx            number := 0;
        f_danipraznika number;
        f_entitet_id   number;
        f_praznik      date;
    begin
        f_brojdana := 0;
        f_danipraznika := 0;
        f_ukupnodana := p_datum_do - p_datum_od;
        select
            entitet_id
        into f_entitet_id
        from
            hr_radnici
        where
            id = p_radnik_id;

        for idx in 0..f_ukupnodana loop
            f_datum := p_datum_od + idx;
            begin
                select
                    datum_od
                into f_praznik
                from
                    sif.hr_praznici
                where
                        entitet_id = f_entitet_id
                    and trunc(f_datum) between trunc(datum_od) and trunc(datum_do);

            exception
                when others then
                    f_praznik := null;
            end;

            if
                f_praznik is not null
                and trim(to_char(f_datum, 'DAY')) not in ( 'SATURDAY', 'SUNDAY', 'SUBOTA', 'NEDJELJA' )
            then
                f_danipraznika := f_danipraznika + 1;
            end if;

        end loop;

        return f_danipraznika;
    end broj_dana_praznik;

    function trazeni_broj_dana (
        p_datum_od  in date,
        p_datum_do  in date,
        p_radnik_id in number
    ) return number is
        l_broj_praznika number;
        l_broj_dana     number;
        l_ukupno_dana   number;
    begin
        l_broj_dana := broj_dana_perioda(p_datum_od, p_datum_do);
        l_broj_praznika := broj_dana_praznik(p_datum_od, p_datum_do, p_radnik_id);
        l_ukupno_dana := nvl(l_broj_dana, 0) - nvl(l_broj_praznika, 0);
        return l_ukupno_dana;
    end trazeni_broj_dana;

    function vrati_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number as
        l_max_broj  number;
        l_novi_broj number;
        l_ooj_id    number;
    begin
        select
            ooj_id
        into l_ooj_id
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            max(broj_zahtjeva)
        into l_max_broj
        from
            go_zahtjevi
        where
                godina = p_godina
            and radnik_id in (
                select
                    id
                from
                    hr_radnici
                where
                    ooj_id = l_ooj_id
            );

        if l_max_broj is null then
            l_max_broj := 0;
        end if;
        l_novi_broj := l_max_broj + 1;
        return l_novi_broj;
    end vrati_broj_zahtjeva;

    function iskoristeno_dana (
        p_radnik_id in number,
        p_godina    in number
    ) return number as
        l_iskoristeno_dana number;
    begin
        select
            sum(broj_dana)
        into l_iskoristeno_dana
        from
            go_zahtjevi
        where
                radnik_id = p_radnik_id
            and godina = p_godina
            and status_id not in ( g_go_odbijen, g_go_ponisten )
            and valid = 'Y';

        if l_iskoristeno_dana is null then
            l_iskoristeno_dana := 0;
        else
            l_iskoristeno_dana := l_iskoristeno_dana;
        end if;

        return l_iskoristeno_dana;
    end iskoristeno_dana;

	-- Plan dana
    function ukupno_dana_go (
        p_radnik_id number
    ) return number as
        l_ukupno number;
        l_dummy  number;
    begin
        ukupno_plan_dana(
            p_radnik_id => p_radnik_id,
            p_ukupno    => l_ukupno,
            p_staz      => l_dummy,
            p_hr_ob     => l_dummy,
            p_inval     => l_dummy,
            p_sam_rod   => l_dummy,
            p_djeca     => l_dummy
        );

        return l_ukupno;
    end ukupno_dana_go;

    procedure ukupno_plan_dana (
        p_radnik_id in number,
        p_ukupno    out number,
        p_staz      out number,
        p_hr_ob     out number,
        p_inval     out number,
        p_sam_rod   out number,
        p_djeca     out number
    ) is

        l_vrsta_rm           number;
        l_samohrani_roditelj varchar2(1);
        l_broj_djece         number;
        l_invaliditet        varchar2(1);
        l_hronicno_oboljenje varchar2(1);
        l_start_dana         number;
        l_staz_godina        number;
        l_staz_mjeseci       number;
        l_staz_dana          number;
        l_max_broj_dana      number;
        l_prvi_april         date;
    begin
        select
            radno_mjesto_id,
            samohrani_roditelj,
            invaliditet,
            hronicno_oboljenje
        into
            l_vrsta_rm,
            l_samohrani_roditelj,
            l_invaliditet,
            l_hronicno_oboljenje
        from
            hr_radnici
        where
            id = p_radnik_id;

        -- početni broj dana go za radno mjesto radnika 
        select
            broj_dana_go
        into l_start_dana
        from
            core.firma_radna_mjesta
        where
            id = l_vrsta_rm; 

        -- Maksimalni broj dana godisnjeg odmora
        begin
            select
                vrijednost
            into l_max_broj_dana
            from
                sif.go_parametri
            where
                    tip_parametra_id = 5
                and valid = 'Y';

        exception
            when no_data_found then
                l_max_broj_dana := 30;
        end;

        -- računanje staža radnika na prvi april april tekuće godine
        select
            to_date('01.04.' || to_char(sysdate, 'yyyy'),
                    'dd.mm.yyyy')
        into l_prvi_april
        from
            dual;

        evidencija_pkg.radni_staz_radnika(p_radnik_id, l_prvi_april, l_staz_godina, l_staz_mjeseci, l_staz_dana); 

        -- ako je broj mjeseci jednak ili veci od 6 tada se računa kao još jedna godina više staža od predhodno dobijenog rezultata
        if l_staz_mjeseci >= 6 then
            l_staz_godina := l_staz_godina + 1;
        end if;

        -- Broj dodatnih dana na osnovu broja maloljetne djece
        begin
            select
                count(*)
            into l_broj_djece
            from
                hr_radnici_djeca
            where
                    radnik_id = p_radnik_id
                and rodjendan > add_months(sysdate, -216);

            if l_broj_djece > 0 then
                select
                    vrijednost
                into p_djeca
                from
                    sif.go_parametri
                where
                        tip_parametra_id = 6
                    and valid = 'Y'
                    and param_od <= l_broj_djece
                    and param_do >= l_broj_djece;

            else
                p_djeca := 0;
            end if;

        exception
            when others then
                p_djeca := 0;
        end;

        -- Broj dodatnih dana na ako raddniik ima invaliditet
        begin
            if l_invaliditet = 'Y' then
                select
                    vrijednost
                into p_inval
                from
                    sif.go_parametri
                where
                        tip_parametra_id = 2
                    and valid = 'Y';

            else
                p_inval := 0;
            end if;
        exception
            when others then
                p_inval := 0;
        end;

        -- Broj dodatnih dana ako radnik ima hronicno oboljenje
        begin
            if l_hronicno_oboljenje = 'Y' then
                select
                    vrijednost
                into p_hr_ob
                from
                    sif.go_parametri
                where
                        tip_parametra_id = 3
                    and valid = 'Y';

            else
                p_hr_ob := 0;
            end if;
        exception
            when others then
                p_hr_ob := 0;
        end;

        -- Broj dodatnih dana ako je radnik samohrani roditelj
        begin
            if l_samohrani_roditelj = 'Y' then
                select
                    vrijednost
                into p_sam_rod
                from
                    sif.go_parametri
                where
                        tip_parametra_id = 4
                    and valid = 'Y';

            else
                p_sam_rod := 0;
            end if;
        exception
            when others then
                p_sam_rod := 0;
        end;

        -- Broj dodatnih dana na osnovu radnog staza
        begin
            select
                vrijednost
            into p_staz
            from
                sif.go_parametri
            where
                    tip_parametra_id = 1
                and valid = 'Y'
                and param_od <= l_staz_godina
                and param_do > l_staz_godina;

        exception
            when no_data_found then
                p_staz := 0;
        end;

        p_ukupno := l_start_dana + p_staz + p_hr_ob + p_inval + p_sam_rod + p_djeca;
        if p_ukupno > l_max_broj_dana then
            p_ukupno := l_max_broj_dana;
        else
            p_ukupno := p_ukupno;
        end if;

    end ukupno_plan_dana;

    function insert_plan_dana (
        p_radnik_id in number,
        p_broj_dana in number,
        p_godina    in number,
        p_komentar  in varchar2
    ) return number as
        l_id    number;
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            go_plan_dana
        where
                radnik_id = p_radnik_id
            and godina = p_godina;

        if l_count > 0 then
            raise_application_error(-20001, 'Već postoji određen plan GO za odabranu godinu i radnika');
        end if;
        insert into go_plan_dana (
            radnik_id,
            broj_dana,
            komentar,
            godina
        ) values ( p_radnik_id,
                   p_broj_dana,
                   p_komentar,
                   p_godina ) returning id into l_id;

        return l_id;
    end insert_plan_dana;

    procedure update_plan_dana (
        p_id        in number,
        p_radnik_id in number,
        p_broj_dana in number,
        p_godina    in number,
        p_komentar  in varchar2
    ) as
    begin
        update go_plan_dana
        set
            radnik_id = p_radnik_id,
            broj_dana = p_broj_dana,
            godina = p_godina,
            komentar = p_komentar
        where
            id = p_id;

    end update_plan_dana;

    procedure delete_plan_dana (
        p_id in number
    ) is
        l_radnik_id number;
        l_godina    number;
        l_broj_dana number;
    begin
        select
            radnik_id,
            godina
        into
            l_radnik_id,
            l_godina
        from
            go_plan_dana
        where
            id = p_id;

        l_broj_dana := iskoristeno_dana(
            p_radnik_id => l_radnik_id,
            p_godina    => l_godina
        );
        if l_broj_dana > 0 then
            raise_application_error(-20000, 'Ne možete obrisati plan dana godišnjeg odmora koji je radnik već počeo koristiti.');
            return;
        end if;
        delete from go_plan_dana_detalji
        where
            plan_dana_id = p_id;

        delete from go_plan_dana
        where
            id = p_id;

    end delete_plan_dana;

    procedure insert_go_plan_detalji (
        p_plan_dana_id in number,
        p_tip_id       in number,
        p_broj_dana    in number
    ) is
    begin
        insert into go_plan_dana_detalji (
            plan_dana_id,
            tip_id,
            broj_dana
        ) values ( p_plan_dana_id,
                   p_tip_id,
                   p_broj_dana );

    end insert_go_plan_detalji;

	-- Zahtjev
    procedure get_zahtjev (
        p_id                  in number,
        p_radnik_id           out number,
        p_datum_od            out date,
        p_datum_do            out date,
        p_broj_zahtjeva_naziv out varchar2,
        p_filename            out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_go_zahtjevi
            where
                id = p_id
        ) loop
            p_radnik_id := c1.radnik_id;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
            p_broj_zahtjeva_naziv := c1.broj_zahtjeva_naziv;
            p_filename := 'zahtjev_go-'
                          || c1.broj_zahtjeva
                          || '-'
                          || c1.godina
                          || '.pdf';

        end loop;
    end get_zahtjev;

    procedure insert_zahtjev (
        p_radnik_id       in number,
        p_datum_od        in varchar2,
        p_datum_do        in varchar2,
        p_komentar        in varchar2,
        p_broj_dana       in number,
        p_tip_zahtjeva_id in number,
        p_godina          in number,
        p_firma_id        in number
    ) as

        l_prethodna_dani   number;
        l_broj_zahtjeva    number;
        l_ukupno_dana      number;
        l_preostalo_dana   number;
        l_zaposlen_od      date;
        l_plan_go          number;
        l_iskoristeno_dana number;
        l_zahtjev_id       number;
        l_datum_od         date;
        l_datum_do         date;
        l_broj_radnih_dana number;
        l_tekuca_godina    number;
        l_podnesen         number;
        l_godina           number;
        l_mjeseci          number;
        l_dani             number;
        l_min_dana_go      number;
    begin
        -- Provjera da li ima dan iz prethodne godine
        select
            sum(broj_dana - iskoristeno_dana(p_radnik_id, godina))
        into l_prethodna_dani
        from
            go_plan_dana
        where
                godina = ( p_godina - 1 )
            and radnik_id = p_radnik_id
            and valid = 'Y';

        if l_prethodna_dani > 0 then
            raise_application_error(-20001,
                                    'Ne možete koristiti godišnji za '
                                    || to_char(p_godina)
                                    || '. dok imate neiskorištenih dana iz '
                                    || to_char(to_number(p_godina) - 1)
                                    || '.');

        end if;

        -- pokupi vrijednost za minimalan broj dana GO
        select
            nvl(min_dana_go, 12)
        into l_min_dana_go
        from
            core.firme
        where
            id = p_firma_id;

        l_datum_od := to_date ( p_datum_od, 'dd.mm.yyyy' );
        l_datum_do := to_date ( p_datum_do, 'dd.mm.yyyy' );
        l_tekuca_godina := to_number ( to_char(sysdate, 'yyyy') );
        if l_datum_do < l_datum_od then
            raise_application_error(-20005, '"Datum do" ne može biti stariji od "datuma od"');
        end if;

        -- validacija da ukoliko već ima zahtjev u statusu podnesen iz iste godine nije moguće podnijeti novi----
        select
            count(*)
        into l_podnesen
        from
            go_zahtjevi
        where
                radnik_id = p_radnik_id
            and godina = p_godina
            and status_id = g_go_podnesen;

        if l_podnesen > 0 then
            raise_application_error(-20053, 'Postoji zahtjev za go za traženu godinu koji je u statusu Podnesen. Potrebno je rješiti taj zahtjev da bi mogao biti podnesen novi!'
            );
        end if;

        -- validacija da ukoliko se radi o zahtjevu za prvi dio go tada broj trazenih dana ne moze biti manji od unsesnog ----
        l_broj_radnih_dana := trazeni_broj_dana(l_datum_od, l_datum_do, p_radnik_id);

        -- racunanje staza radnika 
        evidencija_pkg.radni_staz_radnika(
            p_radnik_id => p_radnik_id,
            p_datum     => trunc(sysdate),
            p_godina    => l_godina,
            p_mjeseci   => l_mjeseci,
            p_dana      => l_dani
        );

        l_mjeseci := l_mjeseci + ( l_godina * 12 );
        if
            l_mjeseci >= 6
            and p_tip_zahtjeva_id = 1
            and l_broj_radnih_dana < l_min_dana_go
        then
            raise_application_error(-20015, 'Broj traženih dana GO ne može biti manji od '
                                            || l_min_dana_go
                                            || ' za ovaj tip zahtjeva');
        end if;

        -- validacija da zahtjev za prvi dio go i godina moraju biti jednake tekućoj godini
--        IF
--            p_tip_zahtjeva = 1
--            AND p_godina <> l_tekuca_godina
--        THEN
--            raise_application_error(-20051, 'Zahtjev za I dio GO mora biti tražen za tekuću godinu!!!');
--        END IF;

        -- validacija da se posle 30.06. ne može koristiti odmor iz predhodne godine
        if
            p_godina = l_tekuca_godina - 1
            and ( to_char(l_datum_od, 'MMDD') > g_trideseti_jun
            or to_char(l_datum_do, 'MMDD') > g_trideseti_jun )
        then
            raise_application_error(-20052, 'Nakon 30.06. tekuće godine nije moguće koristiti GO iz predhodne godine!');
        end if;

        ----- broj zahtjeva ---------
        l_broj_zahtjeva := vrati_broj_zahtjeva(p_radnik_id, p_godina);

        ----------------------------------------

        --provjera da li je radnik zaposlen u firmi duže od 6 mjeseci i računanje dana odmora ukoliko je prvi zahtjev u godini i ukoliko nema unesen plan GO-----
        select
            zaposlen_od
        into l_zaposlen_od
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            count(*)
        into l_plan_go
        from
            go_plan_dana
        where
                godina = p_godina
            and radnik_id = p_radnik_id;

        if
            l_mjeseci < 6
            and l_plan_go = 0
        then
            raise_application_error(-20000, 'Broj mjeseci staža je manji od 6,potrebno ručno unijeti plan za GO');
        end if;

        -- ako ima vše od 6 mjeseci staža i nema unesen plan odredjuju se dani GO i insertaju u tabelu go_plan_dana 
        if
            l_mjeseci >= 6
            and l_plan_go = 0
        then
            l_ukupno_dana := ukupno_dana_go(p_radnik_id);
            insert into go_plan_dana (
                radnik_id,
                godina,
                broj_dana,
                komentar
            ) values ( p_radnik_id,
                       p_godina,
                       l_ukupno_dana,
                       'Automatsko određivanje broja dana godišnjeg odmora nakon zahtjeva radnika' );

        ------------------------------------------------------------------------
        else
            select
                broj_dana
            into l_ukupno_dana
            from
                go_plan_dana
            where
                    godina = p_godina
                and radnik_id = p_radnik_id;

        end if;

        --- računanje preostalih dana GO ---------------
        l_iskoristeno_dana := iskoristeno_dana(p_radnik_id, p_godina);
        if l_iskoristeno_dana + p_broj_dana > l_ukupno_dana then
            raise_application_error(-20020, 'Traženi ('
                                            || p_broj_dana
                                            || ') i do sada iskorišteni broj ('
                                            || l_iskoristeno_dana
                                            || ') prelazi ukupan broj dana('
                                            || l_ukupno_dana
                                            || ') koji je određen planom za GO.');
        end if;

        l_preostalo_dana := l_ukupno_dana - ( l_iskoristeno_dana + p_broj_dana );

        ------------------------------------------------------------------------

        ------------ insert podataka u glavnu tabelu go_zahtjevi ---------------
        insert into go_zahtjevi (
            radnik_id,
            broj_zahtjeva,
            datum_od,
            datum_do,
            komentar,
            broj_dana,
            status_id,
            ukupno_dana,
            preostalo_dana,
            godina,
            tip_zahtjeva_id
        ) values ( p_radnik_id,
                   l_broj_zahtjeva,
                   l_datum_od,
                   l_datum_do,
                   p_komentar,
                   p_broj_dana,
                   g_go_podnesen,
                   l_ukupno_dana,
                   l_preostalo_dana,
                   p_godina,
                   p_tip_zahtjeva_id ) return id into l_zahtjev_id;

        ---------------------------------------------

        insert_zahtjev_status(
            p_zahtjev_id => l_zahtjev_id,
            p_status_id  => g_go_podnesen
        );
    end insert_zahtjev;

    procedure update_zahtjev (
        p_id        in number,
        p_datum_od  in varchar2,
        p_datum_do  in varchar2,
        p_broj_dana in number,
        p_komentar  in varchar2
    ) as
        l_preostalo_old number;
        l_preostalo_new number;
        l_broj_dana_old number;
    begin
        select
            preostalo_dana,
            broj_dana
        into
            l_preostalo_old,
            l_broj_dana_old
        from
            go_zahtjevi
        where
            id = p_id;

        l_preostalo_new := ( l_preostalo_old + l_broj_dana_old ) - p_broj_dana;
        update go_zahtjevi
        set
            status_id = g_go_na_izmjeni,
            komentar = p_komentar,
            preostalo_dana = l_preostalo_new,
            broj_dana = p_broj_dana,
            datum_od = to_date(p_datum_od, 'dd.mm.yyyy'),
            datum_do = to_date(p_datum_do, 'dd.mm.yyyy')
        where
            id = p_id;

        insert_zahtjev_status(
            p_zahtjev_id => p_id,
            p_status_id  => g_go_na_izmjeni
        );
    end update_zahtjev;

    procedure update_zahtjev_odobri (
        p_zahtjev_id        in number,
        p_komentar_statusa  in varchar2,
        p_radnik_odobrio_id in number
    ) is
        l_datum_od  date;
        l_datum_do  date;
        l_radnik_id number;
    begin
        select
            datum_od,
            datum_do,
            radnik_id
        into
            l_datum_od,
            l_datum_do,
            l_radnik_id
        from
            go_zahtjevi
        where
            id = p_zahtjev_id;

        update go_zahtjevi
        set
            status_id = g_go_odobren,
            komentar_statusa = p_komentar_statusa,
            radnik_odobrio_id = p_radnik_odobrio_id
        where
            id = p_zahtjev_id;
            
        update hr_siht_lista set
            evidencija_prisutnosti_id = 5
        where
            radnik_id = l_radnik_id
            and trunc(datum) between l_datum_od and l_datum_do
            and radni_dan = 'Y';

        insert_zahtjev_status(
            p_zahtjev_id => p_zahtjev_id,
            p_status_id  => g_go_odobren
        );      
        
    end update_zahtjev_odobri;

    procedure update_zahtjev_odbij (
        p_zahtjev_id       in number,
        p_komentar_statusa in varchar2
    ) is
        l_preostalo_old number;
        l_preostalo_new number;
        l_broj_dana     number;
    begin
        select
            preostalo_dana,
            broj_dana
        into
            l_preostalo_old,
            l_broj_dana
        from
            go_zahtjevi
        where
            id = p_zahtjev_id;

        l_preostalo_new := l_preostalo_old + l_broj_dana;
        update go_zahtjevi
        set
            status_id = g_go_odbijen,
            komentar_statusa = p_komentar_statusa,
            preostalo_dana = l_preostalo_new,
            broj_dana = 0
        where
            id = p_zahtjev_id;

        insert_zahtjev_status(
            p_zahtjev_id => p_zahtjev_id,
            p_status_id  => g_go_odbijen
        );
    end update_zahtjev_odbij;

    procedure update_zahtjev_ponisti (
        p_zahtjev_id       in number,
        p_komentar_statusa in varchar2
    ) is
        l_preostalo_old number;
        l_preostalo_new number;
        l_broj_dana     number;
    begin
        select
            preostalo_dana,
            broj_dana
        into
            l_preostalo_old,
            l_broj_dana
        from
            go_zahtjevi
        where
            id = p_zahtjev_id;

        l_preostalo_new := l_preostalo_old + l_broj_dana;
        update go_zahtjevi
        set
            status_id = g_go_ponisten,
            komentar_statusa = p_komentar_statusa,
            preostalo_dana = l_preostalo_new,
            broj_dana = 0
        where
            id = p_zahtjev_id;

        insert_zahtjev_status(
            p_zahtjev_id => p_zahtjev_id,
            p_status_id  => g_go_ponisten
        );
    end update_zahtjev_ponisti;

    procedure insert_zahtjev_status (
        p_zahtjev_id in number,
        p_status_id  in varchar2
    ) is
    begin
        insert into go_statusi_hist (
            zahtjev_id,
            datum,
            status_id
        ) values ( p_zahtjev_id,
                   sysdate,
                   p_status_id );

    end insert_zahtjev_status;

end go_pkg;
/

prompt
prompt Creating package body KALKULATOR_PKG
prompt ====================================
prompt
create or replace package body hrm.kalkulator_pkg as

    procedure obracun_puno_radno_vrijeme (
        p_bruto           in number,
        p_staz            in number,
        p_topli_obrok     in number,
        p_broj_dana       in number,
        p_koeficijent_lo  in number,
        p_poreska_kartica in number,
        p_prevoz          in number,
        p_prevoz_tip      in varchar2
    ) is

        l_minuli_rad              number;
        l_topli_obrok_bruto       number;
        l_ukupno_bruto            number;
        l_pio                     number;
        l_zdravstvo               number;
        l_zaposljavanje           number;
        l_dz                      number;
        l_ukupno_doprinosi        number;
        l_osnovni_licni_odbitak   number;
        l_ukupni_licni_odbitak    number;
        l_osnovica_porez          number;
        l_porez                   number;
        l_doprinosi_koeficijent   number;
        l_porez_koeficijent       number;
        l_ukupno_procenat         number;
        l_topli_obrok_ukupno_neto number;
        l_topli_obrok_dnevno_neto number;
        l_prevoz_ukupno           number;
        l_neto_prije_poreza       number;
        l_neto_poslije_poreza     number;
        l_fond_solidarnosti       number;
        l_ukupno                  number;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRACUN_PLATE');

        -- c007 - minuli rad
        l_minuli_rad := plate_pkg.fn_koeficijent(plate_pkg.c_min_rs, 1) * p_staz * p_bruto;

        -- c008 - topli obrok ukupno bruto
        if p_topli_obrok is not null then
            l_topli_obrok_bruto := p_topli_obrok * p_broj_dana;
        end if;

        -- c009 - ukupno bruto (bruto osnova + minuli rad + topli obrok)
        l_ukupno_bruto := p_bruto + l_minuli_rad + nvl(l_topli_obrok_bruto, 0);

        -- c010 - pio
        l_pio := plate_pkg.fn_koeficijent(plate_pkg.c_pio_posl, 1) * l_ukupno_bruto;
        -- c011 - zdravstvo
        l_zdravstvo := plate_pkg.fn_koeficijent(plate_pkg.c_zdr_posl, 1) * l_ukupno_bruto;
        -- c012 - zaposljavanje
        l_zaposljavanje := plate_pkg.fn_koeficijent(plate_pkg.c_nez_posl, 1) * l_ukupno_bruto;
        -- c013 - djecija zastita
        l_dz := plate_pkg.fn_koeficijent(plate_pkg.c_dj_zas, 1) * l_ukupno_bruto;
        -- c014 - ukupno doprinosi
        l_ukupno_doprinosi := l_pio + l_zdravstvo + l_zaposljavanje + l_dz;

        -- c020 - osnovni licni odbitak (koeficijent * osnova)
        l_osnovni_licni_odbitak := plate_pkg.fn_koeficijent(plate_pkg.c_odb_rs, 1) * p_koeficijent_lo;
        -- c021 - ukupni licni odbitak (osnovni licni odbitak + poreska kartica)
        l_ukupni_licni_odbitak := l_osnovni_licni_odbitak + p_poreska_kartica;
        if l_ukupni_licni_odbitak > l_ukupno_bruto then
            l_ukupni_licni_odbitak := l_ukupno_bruto;
        end if;        
        -- c022 - osnovica porez (ukupno bruto - ukupni licni odbitak)
        l_osnovica_porez := l_ukupno_bruto - l_ukupni_licni_odbitak;
        -- c023 - porez
        l_porez := plate_pkg.fn_koeficijent(plate_pkg.c_doh_rs, 1) * l_osnovica_porez;

        -- TOPLI OBROK
        l_doprinosi_koeficijent := plate_pkg.fn_koeficijent(plate_pkg.c_pio_posl, 1) + plate_pkg.fn_koeficijent(plate_pkg.c_zdr_posl,
        1) + plate_pkg.fn_koeficijent(plate_pkg.c_nez_posl, 1) + plate_pkg.fn_koeficijent(plate_pkg.c_dj_zas, 1);

        l_porez_koeficijent := plate_pkg.fn_koeficijent(plate_pkg.c_doh_rs, 1);
        l_ukupno_procenat := l_doprinosi_koeficijent + l_porez_koeficijent;

        -- c030 - topli obrok ukupno neto
        l_topli_obrok_ukupno_neto := l_topli_obrok_bruto - ( l_topli_obrok_bruto * l_ukupno_procenat );
        -- c031 - topli obrok dnevno neto
        l_topli_obrok_dnevno_neto := l_topli_obrok_ukupno_neto / p_broj_dana;

        -- c035 - prevoz karta
        -- c036 - prevoz tip
        -- c037 - prevoz ukupno
        if p_prevoz_tip = 'M' then
            l_prevoz_ukupno := p_prevoz;
        else
            l_prevoz_ukupno := p_prevoz * p_broj_dana;
        end if;

        -- c040 - neto prije poreza
        l_neto_prije_poreza := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c041 - neto poslije poreza
        l_neto_poslije_poreza := l_neto_prije_poreza - l_porez;
        -- c042 - fond solidarnosti za lijecenje
        l_fond_solidarnosti := plate_pkg.fn_koeficijent(plate_pkg.c_fsd_rs, 1) * l_neto_poslije_poreza;

        -- c043 - ukupno
        l_ukupno := l_neto_poslije_poreza - l_fond_solidarnosti + nvl(l_prevoz_ukupno, 0);

        -- Dodavamo u kolekciju
        apex_collection.add_member(
            p_collection_name => 'OBRACUN_PLATE',
            p_c001            => p_bruto,
            p_c002            => p_staz,
            p_c003            => p_topli_obrok,
            p_c004            => p_broj_dana,
            p_c005            => p_koeficijent_lo,
            p_c006            => p_poreska_kartica,
            p_c007            => to_char(
                round(l_minuli_rad, 2),
                '999G999G990D00'
            ),
            p_c008            => to_char(
                round(l_topli_obrok_bruto, 2),
                '999G999G990D00'
            ),
            p_c009            => to_char(
                round(l_ukupno_bruto, 2),
                '999G999G990D00'
            ),
            p_c010            => to_char(
                round(l_pio, 2),
                '999G999G990D00'
            ),
            p_c011            => to_char(
                round(l_zdravstvo, 2),
                '999G999G990D00'
            ),
            p_c012            => to_char(
                round(l_zaposljavanje, 2),
                '999G999G990D00'
            ),
            p_c013            => to_char(
                round(l_dz, 2),
                '999G999G990D00'
            ),
            p_c014            => to_char(
                round(l_ukupno_doprinosi, 2),
                '999G999G990D00'
            ),
            p_c020            => to_char(
                round(l_osnovni_licni_odbitak, 2),
                '999G999G990D00'
            ),
            p_c021            => to_char(
                round(l_ukupni_licni_odbitak, 2),
                '999G999G990D00'
            ),
            p_c022            => to_char(
                round(l_osnovica_porez, 2),
                '999G999G990D00'
            ),
            p_c023            => to_char(
                round(l_porez, 2),
                '999G999G990D00'
            ),
            p_c030            => to_char(
                round(l_topli_obrok_ukupno_neto, 2),
                '999G999G990D00'
            ),
            p_c031            => to_char(
                round(l_topli_obrok_dnevno_neto, 2),
                '999G999G990D00'
            ),
            p_c035            => to_char(
                round(p_prevoz, 2),
                '999G999G990D00'
            ),
            p_c036            => p_prevoz_tip,
            p_c037            => to_char(
                round(l_prevoz_ukupno, 2),
                '999G999G990D00'
            ),
            p_c040            => to_char(
                round(l_neto_prije_poreza, 2),
                '999G999G990D00'
            ),
            p_c041            => to_char(
                round(l_neto_poslije_poreza, 2),
                '999G999G990D00'
            ),
            p_c042            => to_char(
                round(l_fond_solidarnosti, 2),
                '999G999G990D00'
            ),
            p_c043            => to_char(
                round(l_ukupno, 2),
                '999G999G990D00'
            )
        );

    end obracun_puno_radno_vrijeme;

    procedure obracun_nepuno_radno_vrijeme (
        p_bruto           in number,
        p_staz            in number,
        p_topli_obrok     in number,
        p_broj_dana       in number,
        p_koeficijent_lo  in number,
        p_poreska_kartica in number,
        p_prevoz          in number,
        p_prevoz_tip      in varchar2
    ) is

        l_minuli_rad              number;
        l_topli_obrok_bruto       number;
        l_ukupno_bruto            number;
        l_pio                     number;
        l_zdravstvo               number;
        l_zaposljavanje           number;
        l_dz                      number;
        l_ukupno_doprinosi        number;
        l_osnovni_licni_odbitak   number;
        l_ukupni_licni_odbitak    number;
        l_osnovica_porez          number;
        l_porez                   number;
        l_doprinosi_koeficijent   number;
        l_porez_koeficijent       number;
        l_ukupno_procenat         number;
        l_topli_obrok_ukupno_neto number;
        l_topli_obrok_dnevno_neto number;
        l_prevoz_ukupno           number;
        l_neto_prije_poreza       number;
        l_neto_poslije_poreza     number;
        l_fond_solidarnosti       number;
        l_ukupno                  number;
        l_temp                    number;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRACUN_PLATE');

        -- c007 - minuli rad
        l_minuli_rad := plate_pkg.fn_koeficijent(plate_pkg.c_min_rs, 1) * p_staz * p_bruto;

        -- c008 - topli obrok ukupno bruto
        if p_topli_obrok is not null then
            l_topli_obrok_bruto := p_topli_obrok * p_broj_dana;
        end if;

        -- c009 - ukupno bruto (bruto osnova + minuli rad + topli obrok)
        l_ukupno_bruto := p_bruto + l_minuli_rad + nvl(l_topli_obrok_bruto, 0);
        if l_ukupno_bruto < plate_pkg.c_min_bruto_rs then
            l_temp := l_ukupno_bruto;
            l_ukupno_bruto := plate_pkg.c_min_bruto_rs;

            -- c010 - pio
            l_pio := plate_pkg.fn_koeficijent(plate_pkg.c_pio_posl, 1) * l_ukupno_bruto;
            -- c011 - zdravstvo
            l_zdravstvo := plate_pkg.fn_koeficijent(plate_pkg.c_zdr_posl, 1) * l_ukupno_bruto;
            -- c012 - zaposljavanje
            l_zaposljavanje := plate_pkg.fn_koeficijent(plate_pkg.c_nez_posl, 1) * l_ukupno_bruto;
            -- c013 - djecija zastita
            l_dz := plate_pkg.fn_koeficijent(plate_pkg.c_dj_zas, 1) * l_ukupno_bruto;
            l_ukupno_bruto := l_temp;
        else
            -- c010 - pio
            l_pio := plate_pkg.fn_koeficijent(plate_pkg.c_pio_posl, 1) * l_ukupno_bruto;
            -- c011 - zdravstvo
            l_zdravstvo := plate_pkg.fn_koeficijent(plate_pkg.c_zdr_posl, 1) * l_ukupno_bruto;
            -- c012 - zaposljavanje
            l_zaposljavanje := plate_pkg.fn_koeficijent(plate_pkg.c_nez_posl, 1) * l_ukupno_bruto;
            -- c013 - djecija zastita
            l_dz := plate_pkg.fn_koeficijent(plate_pkg.c_dj_zas, 1) * l_ukupno_bruto;
        end if;

        -- c014 - ukupno doprinosi
        l_ukupno_doprinosi := l_pio + l_zdravstvo + l_zaposljavanje + l_dz;

        -- c020 - osnovni licni odbitak (koeficijent * osnova)
        l_osnovni_licni_odbitak := plate_pkg.fn_koeficijent(plate_pkg.c_odb_rs, 1) * p_koeficijent_lo;
        -- c021 - ukupni licni odbitak (osnovni licni odbitak + poreska kartica)
        l_ukupni_licni_odbitak := l_osnovni_licni_odbitak + p_poreska_kartica;
        if l_ukupni_licni_odbitak > l_ukupno_bruto then
            l_ukupni_licni_odbitak := l_ukupno_bruto;
        end if;        
        -- c022 - osnovica porez (ukupno bruto - ukupni licni odbitak)
        l_osnovica_porez := l_ukupno_bruto - l_ukupni_licni_odbitak;
        -- c023 - porez
        l_porez := plate_pkg.fn_koeficijent(plate_pkg.c_doh_rs, 1) * l_osnovica_porez;

        -- TOPLI OBROK
        l_doprinosi_koeficijent := plate_pkg.fn_koeficijent(plate_pkg.c_pio_posl, 1) + plate_pkg.fn_koeficijent(plate_pkg.c_zdr_posl,
        1) + plate_pkg.fn_koeficijent(plate_pkg.c_nez_posl, 1) + plate_pkg.fn_koeficijent(plate_pkg.c_dj_zas, 1);

        l_porez_koeficijent := plate_pkg.fn_koeficijent(plate_pkg.c_doh_rs, 1);
        l_ukupno_procenat := l_doprinosi_koeficijent + l_porez_koeficijent;

        -- c030 - topli obrok ukupno neto
        l_topli_obrok_ukupno_neto := l_topli_obrok_bruto - ( l_topli_obrok_bruto * l_ukupno_procenat );
        -- c031 - topli obrok dnevno neto
        l_topli_obrok_dnevno_neto := l_topli_obrok_ukupno_neto / p_broj_dana;

        -- c035 - prevoz karta
        -- c036 - prevoz tip
        -- c037 - prevoz ukupno
        if p_prevoz_tip = 'M' then
            l_prevoz_ukupno := p_prevoz;
        else
            l_prevoz_ukupno := p_prevoz * p_broj_dana;
        end if;

        -- c040 - neto prije poreza
        l_neto_prije_poreza := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c041 - neto poslije poreza
        l_neto_poslije_poreza := l_neto_prije_poreza - l_porez;
        -- c042 - fond solidarnosti za lijecenje
        l_fond_solidarnosti := plate_pkg.fn_koeficijent(plate_pkg.c_fsd_rs, 1) * l_neto_poslije_poreza;

        -- c043 - ukupno
        l_ukupno := l_neto_poslije_poreza - l_fond_solidarnosti + nvl(l_prevoz_ukupno, 0);

        -- Dodavamo u kolekciju
        apex_collection.add_member(
            p_collection_name => 'OBRACUN_PLATE',
            p_c001            => p_bruto,
            p_c002            => p_staz,
            p_c003            => p_topli_obrok,
            p_c004            => p_broj_dana,
            p_c045            => p_koeficijent_lo,
            p_c006            => p_poreska_kartica,
            p_c007            => to_char(
                round(l_minuli_rad, 2),
                '999G999G990D00'
            ),
            p_c008            => to_char(
                round(l_topli_obrok_bruto, 2),
                '999G999G990D00'
            ),
            p_c009            => to_char(
                round(l_ukupno_bruto, 2),
                '999G999G990D00'
            ),
            p_c010            => to_char(
                round(l_pio, 2),
                '999G999G990D00'
            ),
            p_c011            => to_char(
                round(l_zdravstvo, 2),
                '999G999G990D00'
            ),
            p_c012            => to_char(
                round(l_zaposljavanje, 2),
                '999G999G990D00'
            ),
            p_c013            => to_char(
                round(l_dz, 2),
                '999G999G990D00'
            ),
            p_c014            => to_char(
                round(l_ukupno_doprinosi, 2),
                '999G999G990D00'
            ),
            p_c020            => to_char(
                round(l_osnovni_licni_odbitak, 2),
                '999G999G990D00'
            ),
            p_c021            => to_char(
                round(l_ukupni_licni_odbitak, 2),
                '999G999G990D00'
            ),
            p_c022            => to_char(
                round(l_osnovica_porez, 2),
                '999G999G990D00'
            ),
            p_c023            => to_char(
                round(l_porez, 2),
                '999G999G990D00'
            ),
            p_c030            => to_char(
                round(l_topli_obrok_ukupno_neto, 2),
                '999G999G990D00'
            ),
            p_c031            => to_char(
                round(l_topli_obrok_dnevno_neto, 2),
                '999G999G990D00'
            ),
            p_c035            => to_char(
                round(p_prevoz, 2),
                '999G999G990D00'
            ),
            p_c036            => p_prevoz_tip,
            p_c037            => to_char(
                round(l_prevoz_ukupno, 2),
                '999G999G990D00'
            ),
            p_c040            => to_char(
                round(l_neto_prije_poreza, 2),
                '999G999G990D00'
            ),
            p_c041            => to_char(
                round(l_neto_poslije_poreza, 2),
                '999G999G990D00'
            ),
            p_c042            => to_char(
                round(l_fond_solidarnosti, 2),
                '999G999G990D00'
            ),
            p_c043            => to_char(
                round(l_ukupno, 2),
                '999G999G990D00'
            )
        );

    end obracun_nepuno_radno_vrijeme;

    procedure obracun_djelo_dopunski_rad (
        p_bruto in number
    ) is

        l_ukupno_bruto        number;
        l_pio                 number;
        l_ukupno_doprinosi    number;
        l_osnovica_porez      number;
        l_porez               number;
        l_neto_prije_poreza   number;
        l_neto_poslije_poreza number;
        l_ukupno              number;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRACUN_PLATE');

        -- c009 - ukupno bruto (bruto osnova + minuli rad + topli obrok)
        l_ukupno_bruto := p_bruto;

        -- c010 - pio
        l_pio := plate_pkg.fn_koeficijent(plate_pkg.c_dop_pio_rs, 1) * l_ukupno_bruto;

        -- c014 - ukupno doprinosi
        l_ukupno_doprinosi := l_pio;

        -- c022 - osnovica porez (ukupno bruto - ukupni licni odbitak)
        l_osnovica_porez := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c023 - porez
        l_porez := plate_pkg.fn_koeficijent(plate_pkg.c_dop_doh_rs, 1) * l_osnovica_porez;


        -- c040 - neto prije poreza
        l_neto_prije_poreza := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c041 - neto poslije poreza
        l_neto_poslije_poreza := l_ukupno_bruto - ( l_ukupno_doprinosi + l_porez );

        -- c043 - ukupno
        l_ukupno := l_neto_poslije_poreza;

        -- Dodavamo u kolekciju
        apex_collection.add_member(
            p_collection_name => 'OBRACUN_PLATE',
            p_c001            => p_bruto,
            p_c009            => to_char(
                round(l_ukupno_bruto, 2),
                '999G999G990D00'
            ),
            p_c010            => to_char(
                round(l_pio, 2),
                '999G999G990D00'
            ),
            p_c014            => to_char(
                round(l_ukupno_doprinosi, 2),
                '999G999G990D00'
            ),
            p_c022            => to_char(
                round(l_osnovica_porez, 2),
                '999G999G990D00'
            ),
            p_c023            => to_char(
                round(l_porez, 2),
                '999G999G990D00'
            ),
            p_c040            => to_char(
                round(l_neto_prije_poreza, 2),
                '999G999G990D00'
            ),
            p_c041            => to_char(
                round(l_neto_poslije_poreza, 2),
                '999G999G990D00'
            ),
            p_c043            => to_char(
                round(l_ukupno, 2),
                '999G999G990D00'
            )
        );

    end obracun_djelo_dopunski_rad;

    procedure obracun_menadzerski_ugovor (
        p_bruto in number
    ) is

        l_ukupno_bruto        number;
        l_pio                 number;
        l_zdravstvo           number;
        l_zaposljavanje       number;
        l_dz                  number;
        l_ukupno_doprinosi    number;
        l_osnovica_porez      number;
        l_porez               number;
        l_neto_prije_poreza   number;
        l_neto_poslije_poreza number;
        l_ukupno              number;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRACUN_PLATE');

        -- c009 - ukupno bruto (bruto osnova + minuli rad + topli obrok)
        l_ukupno_bruto := p_bruto;

        -- c010 - pio
        l_pio := plate_pkg.fn_koeficijent(plate_pkg.c_men_pio_posl_rs, 1) * l_ukupno_bruto;
        -- c011 - zdravstvo
        l_zdravstvo := plate_pkg.fn_koeficijent(plate_pkg.c_men_zdr_posl_rs, 1) * l_ukupno_bruto;
        -- c012 - zaposljavanje
        l_zaposljavanje := plate_pkg.fn_koeficijent(plate_pkg.c_men_nez_posl_rs, 1) * l_ukupno_bruto;
        -- c013 - djecija zastita
        l_dz := plate_pkg.fn_koeficijent(plate_pkg.c_men_dj_zas_rs, 1) * l_ukupno_bruto;
        -- c014 - ukupno doprinosi
        l_ukupno_doprinosi := l_pio + l_zdravstvo + l_zaposljavanje + l_dz;

        -- c022 - osnovica porez (ukupno bruto - ukupni licni odbitak)
        l_osnovica_porez := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c023 - porez
        l_porez := plate_pkg.fn_koeficijent(plate_pkg.c_men_doh_rs, 1) * l_osnovica_porez;

        -- c040 - neto prije poreza
        l_neto_prije_poreza := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c041 - neto poslije poreza
        l_neto_poslije_poreza := l_neto_prije_poreza - l_porez;

        -- c043 - ukupno
        l_ukupno := l_neto_poslije_poreza;

        -- Dodavamo u kolekciju
        apex_collection.add_member(
            p_collection_name => 'OBRACUN_PLATE',
            p_c001            => p_bruto,
            p_c009            => to_char(
                round(l_ukupno_bruto, 2),
                '999G999G990D00'
            ),
            p_c010            => to_char(
                round(l_pio, 2),
                '999G999G990D00'
            ),
            p_c011            => to_char(
                round(l_zdravstvo, 2),
                '999G999G990D00'
            ),
            p_c012            => to_char(
                round(l_zaposljavanje, 2),
                '999G999G990D00'
            ),
            p_c013            => to_char(
                round(l_dz, 2),
                '999G999G990D00'
            ),
            p_c014            => to_char(
                round(l_ukupno_doprinosi, 2),
                '999G999G990D00'
            ),
            p_c022            => to_char(
                round(l_osnovica_porez, 2),
                '999G999G990D00'
            ),
            p_c023            => to_char(
                round(l_porez, 2),
                '999G999G990D00'
            ),
            p_c040            => to_char(
                round(l_neto_prije_poreza, 2),
                '999G999G990D00'
            ),
            p_c041            => to_char(
                round(l_neto_poslije_poreza, 2),
                '999G999G990D00'
            ),
            p_c043            => to_char(
                round(l_ukupno, 2),
                '999G999G990D00'
            )
        );

    end obracun_menadzerski_ugovor;

    procedure obracun_privremeni_povremeni_poslovi (
        p_bruto in number
    ) is

        l_ukupno_bruto        number;
        l_ukupno_doprinosi    number;
        l_osnovica_porez      number;
        l_porez               number;
        l_neto_prije_poreza   number;
        l_neto_poslije_poreza number;
        l_ukupno              number;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRACUN_PLATE');

        -- c009 - ukupno bruto (bruto osnova + minuli rad + topli obrok)
        l_ukupno_bruto := p_bruto;

        -- c014 - ukupno doprinosi
        l_ukupno_doprinosi := plate_pkg.fn_koeficijent(plate_pkg.c_pov_dop_rs, 1) * l_ukupno_bruto;

        -- c022 - osnovica porez (ukupno bruto - ukupni licni odbitak)
        l_osnovica_porez := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c023 - porez
        l_porez := plate_pkg.fn_koeficijent(plate_pkg.c_pov_doh_rs, 1) * l_osnovica_porez;


        -- c040 - neto prije poreza
        l_neto_prije_poreza := l_ukupno_bruto - l_ukupno_doprinosi;
        -- c041 - neto poslije poreza
        l_neto_poslije_poreza := l_ukupno_bruto - ( l_ukupno_doprinosi + l_porez );

        -- c043 - ukupno
        l_ukupno := l_neto_poslije_poreza;

        -- Dodavamo u kolekciju
        apex_collection.add_member(
            p_collection_name => 'OBRACUN_PLATE',
            p_c001            => p_bruto,
            p_c009            => to_char(
                round(l_ukupno_bruto, 2),
                '999G999G990D00'
            ),
            p_c014            => to_char(
                round(l_ukupno_doprinosi, 2),
                '999G999G990D00'
            ),
            p_c022            => to_char(
                round(l_osnovica_porez, 2),
                '999G999G990D00'
            ),
            p_c023            => to_char(
                round(l_porez, 2),
                '999G999G990D00'
            ),
            p_c040            => to_char(
                round(l_neto_prije_poreza, 2),
                '999G999G990D00'
            ),
            p_c041            => to_char(
                round(l_neto_poslije_poreza, 2),
                '999G999G990D00'
            ),
            p_c043            => to_char(
                round(l_ukupno, 2),
                '999G999G990D00'
            )
        );

    end obracun_privremeni_povremeni_poslovi;

end kalkulator_pkg;
/

prompt
prompt Creating package body LPR_PKG
prompt =============================
prompt
create or replace package body hrm.lpr_pkg as
    
    -- oblasti Treba da sebi unesu OOJ firme
    procedure get_oblast (
        p_id          in lpr_oblasti.id%type,
        p_naziv       out lpr_oblasti.naziv%type,
        p_opis        out lpr_oblasti.opis%type,
        p_ooj_id      out lpr_oblasti.ooj_id%type,
        p_valid       out lpr_oblasti.valid%type,
        p_created     out lpr_oblasti.created%type,
        p_created_by  out lpr_oblasti.created_by%type,
        p_updated     out lpr_oblasti.updated%type,
        p_updated_by  out lpr_oblasti.updated_by%type,
        p_row_version out lpr_oblasti.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                lpr_oblasti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_ooj_id := c1.ooj_id;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_oblast;

    procedure insert_oblast (
        p_naziv  in lpr_oblasti.naziv%type,
        p_opis   in lpr_oblasti.opis%type,
        p_ooj_id in lpr_oblasti.ooj_id%type
    ) as
    begin
        insert into lpr_oblasti (
            naziv,
            opis,
            ooj_id
        ) values ( p_naziv,
                   p_opis,
                   p_ooj_id );

    end insert_oblast;

    procedure update_oblast (
        p_id     in lpr_oblasti.id%type,
        p_naziv  in lpr_oblasti.naziv%type,
        p_opis   in lpr_oblasti.opis%type,
        p_ooj_id in lpr_oblasti.ooj_id%type,
        p_valid  in lpr_oblasti.valid%type
    ) as
    begin
        update lpr_oblasti
        set
            naziv = p_naziv,
            opis = p_opis,
            ooj_id = p_ooj_id,
            valid = p_valid
        where
            id = p_id;

    end update_oblast;

    -- radnici
    procedure insert_radnik (
        p_prioritet_id  in lpr_radnici.prioritet_id%type,
        p_radnik_id     in lpr_radnici.radnik_id%type,
        p_nadredjeni_id in lpr_radnici.nadredjeni_id%type,
        p_oblast_id     in lpr_radnici.oblast_id%type,
        p_opis          in lpr_radnici.opis%type
    ) as
        l_lpr_radnik_id number;
    begin
        insert into lpr_radnici (
            prioritet_id,
            radnik_id,
            nadredjeni_id,
            oblast_id,
            opis
        ) values ( p_prioritet_id,
                   p_radnik_id,
                   p_nadredjeni_id,
                   p_oblast_id,
                   p_opis ) returning id into l_lpr_radnik_id;

        insert_radnik_status_hist(
            p_lpr_radnik_id => l_lpr_radnik_id,
            p_status_id     => 1
        );
    end insert_radnik;


    -- radnik hist
    -- u ovoj proceduri se automatski za tog radnika updatuje status_id 
    procedure insert_radnik_status_hist (
        p_lpr_radnik_id in lpr_radnici_hist.lpr_radnik_id%type,
        p_status_id     in lpr_radnici_hist.status_id%type
    ) as
    begin
        insert into lpr_radnici_hist (
            lpr_radnik_id,
            status_id
        ) values ( p_lpr_radnik_id,
                   p_status_id );

        update lpr_radnici
        set
            status_id = p_status_id
        where
            id = p_lpr_radnik_id;

    end insert_radnik_status_hist;

    procedure update_radnik_status (
        p_id        in lpr_radnici.id%type,
        p_status_id in lpr_radnici.status_id%type,
        p_komentar  in lpr_radnici.komentar%type
    ) as
    begin
        update lpr_radnici
        set
            komentar = p_komentar
        where
            id = p_id;

        insert_radnik_status_hist(
            p_lpr_radnik_id => p_id,
            p_status_id     => p_status_id
        );
    end update_radnik_status;


    -- izvjestaji
    procedure zapocni_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_datum_od      in lpr_radnici_izvjestaji.datum_od%type
    ) as
    begin
        insert into lpr_radnici_izvjestaji (
            lpr_radnik_id,
            datum_od
        ) values ( p_lpr_radnik_id,
                   p_datum_od );

        insert_radnik_status_hist(
            p_lpr_radnik_id => p_lpr_radnik_id,
            p_status_id     => 4
        );
    end zapocni_lpr;

    procedure zavrsi_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_datum_do      in lpr_radnici_izvjestaji.datum_do%type
    ) as
    begin
        update lpr_radnici_izvjestaji
        set
            datum_do = p_datum_do
        where
            lpr_radnik_id = p_lpr_radnik_id;

        insert_radnik_status_hist(
            p_lpr_radnik_id => p_lpr_radnik_id,
            p_status_id     => 5
        );
    end zavrsi_lpr;

    procedure unesi_izvjestaj_lpr (
        p_lpr_radnik_id in lpr_radnici_izvjestaji.lpr_radnik_id%type,
        p_napomena      in lpr_radnici_izvjestaji.napomena%type
    ) as
    begin
        update lpr_radnici_izvjestaji
        set
            napomena = p_napomena
        where
            lpr_radnik_id = p_lpr_radnik_id;

        insert_radnik_status_hist(
            p_lpr_radnik_id => p_lpr_radnik_id,
            p_status_id     => 6
        );
    end unesi_izvjestaj_lpr;

end lpr_pkg;
/

prompt
prompt Creating package body MAIL_PKG
prompt ==============================
prompt
create or replace package body hrm.mail_pkg as

    -- Struktura maila nije u divovima ili nesto slicno zbog mail pregledaca. 
    -- Vecina mail clienata ne podrzava to pa mailovi ne izgledaju kako treba.
    -- Dosta njih takodje podrzava samo inline css, pa se zato pise samo inline css
    -- Pri kreiranju novog maila, najlakse je kreirati prvo html template lokalno pa onda prebaciti u paket

    function get_template_html (
        p_email_template_id in varchar2
    ) return clob is
        l_html        clob;
        l_html_header clob;
        l_html_body   clob;
        l_html_footer clob;
    begin
        select
            html_template,
            html_header,
            html_body,
            html_footer
        into
            l_html,
            l_html_header,
            l_html_body,
            l_html_footer
        from
            apex_appl_email_templates
        where
            email_template_id = p_email_template_id;

        l_html := replace(l_html, '#HEADER#', l_html_header);
        l_html := replace(l_html, '#BODY#', l_html_body);
        l_html := replace(l_html, '#FOOTER#', l_html_footer);
        l_html := replace(l_html, '#MAIL_FOOTER!RAW#', footer);
        l_html := regexp_replace(l_html, '.*?<head>', '<head>', 1, 1,
                                 'n');
        l_html := regexp_replace(l_html, '</html.*', '', 1, 1,
                                 'n');
        return to_clob(l_html);
    end get_template_html;

    function check_username (
        p_username in varchar2
    ) return boolean is
        l_id number;
    begin
        select
            id
        into l_id
        from
            core.korisnici
        where
            korisnicko_ime = p_username;

        return true;
    exception
        when no_data_found then
            return false;
    end check_username;

    procedure posalji_go_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za godišnji odmor';
        l_mini := p_radnik || ' je podnio zahtjev za godišnji odmor.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'GO_ZAHTJEV',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'GO_ZAHTJEV',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_go_zahtjev;

    procedure posalji_go_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Odgovor na zahtjev za godisnji odmor';
        l_mini := 'Nadređeni je poslao odgovor na vaš zahtjev.';
        if l_mailing = 'Y' then
            -- Posalji email
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'GO_ODOBRENJE',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"ODOBREN":'
                                  || apex_json.stringify(p_odobren)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'GO_ODOBRENJE',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_go_odobrenje;

    procedure posalji_go_plan_dana (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_godina   in varchar2
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Rješenje o godišnjem odmoru';
        l_mini := 'Kreiran je plan dana godišnjeg odmora za '
                  || p_godina
                  || '. godinu.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'GO_PLAN_DANA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(upper(p_radnik))
                                  || '   ,"GODINA":'
                                  || apex_json.stringify(p_godina)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'GO_PLAN_DANA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_go_plan_dana;

    procedure posalji_sp_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za službeni put';
        l_mini := p_radnik || ' radnik je podnio zahtjev za službeni put.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SP_ZAHTJEV',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SP_ZAHTJEV',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_sp_zahtjev;

    procedure posalji_sp_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Odgovor na zahtjev za službeni put';
        l_mini := 'Nadređeni je poslao odgovor na vaš zahtjev.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SP_ODOBRENJE',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"ODOBREN":'
                                  || apex_json.stringify(p_odobren)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SP_ODOBRENJE',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_sp_odobrenje;

    procedure posalji_siht_lista_napomena (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_name     in varchar2,
        p_month    in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Šiht lista - ' || p_month;
        l_mini := 'Molimo Vas da provjerite i popunite šiht listu.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SL_NAPOMENA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"MONTH":'
                                  || apex_json.stringify(p_month)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SL_NAPOMENA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_siht_lista_napomena;

    procedure posalji_obracun_plate (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_radnik_id in number,
        p_firma     in number,
        p_mjesec    in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_radnik            varchar2(255);
        l_radno_mjesto      varchar2(255);
        l_email             varchar2(255);
        l_firma             varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => l_email,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Obračun plate';
        l_mini := 'Izvršen je obračun plate za mjesec - ' || p_mjesec;
        select
            ime
            || ' '
            || prezime,
            radno_mjesto_naziv,
            email
        into
            l_radnik,
            l_radno_mjesto,
            l_email
        from
            vw_radnici
        where
            id = p_radnik_id;

        select
            naziv
        into l_firma
        from
            core.firme
        where
            id = p_firma;

        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => l_email,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'PL_OBRACUN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(l_radnik)
                                  || '   ,"FIRMA":'
                                  || apex_json.stringify(l_firma)
                                  || '   ,"MJESEC":'
                                  || apex_json.stringify(p_mjesec)
                                  || '   ,"RADNO_MJESTO":'
                                  || apex_json.stringify(l_radno_mjesto)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'PL_OBRACUN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_obracun_plate;

    procedure posalji_praznici_napomena (
        p_application_id in number,
        p_mail_to        in varchar2,
        p_name           in varchar2,
        p_godina         in varchar2
    ) as
        l_subject varchar2(255);
    begin
        l_subject := 'Admin napomena za praznike';
        apex_mail.send(
            p_application_id     => p_application_id,
            p_to                 => p_mail_to,
            p_from               => hrm.mail_pkg.mail_from,
            p_template_static_id => 'PRAZNICI_NAPOMENA',
            p_placeholders       => '{'
                              || '    "SUBJECT":'
                              || apex_json.stringify(l_subject)
                              || '   ,"NAME":'
                              || apex_json.stringify(p_name)
                              || '   ,"GODINA":'
                              || apex_json.stringify(p_godina)
                              || '   ,"LOGIN_URL":'
                              || apex_json.stringify(login_url)
                              || '   ,"MAIL_FOOTER":'
                              || apex_json.stringify(footer)
                              || '}'
        );

    end posalji_praznici_napomena;

    procedure posalji_sp_izvjestaj (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_ime_prezime in varchar2,
        p_sp_id       in varchar2,
        p_radnik      in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_broj              varchar2(255);
        l_datum_od          varchar2(255);
        l_datum_do          varchar2(255);
        l_relacija          varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Službeni put - unesen izvještaj';
        l_mini := 'Molimo Vas da ga obračunate.';
        if l_mailing = 'Y' then
            select
                broj_zahtjeva_naziv,
                relacija
            into
                l_broj,
                l_relacija
            from
                vw_sp_zahtjevi
            where
                id = p_sp_id;

            select
                to_char(vrijeme_polaska, 'DD.MM.YYYY HH24:MI:SS'),
                to_char(vrijeme_povratka, 'DD.MM.YYYY HH24:MI:SS')
            into
                l_datum_od,
                l_datum_do
            from
                vw_sp_izvjestaj
            where
                zahtjev_id = p_sp_id;

            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SP_IZVJESTAJ',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_ime_prezime)
                                  || '   ,"BROJ":'
                                  || apex_json.stringify(l_broj)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"RELACIJA":'
                                  || apex_json.stringify(l_relacija)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SP_IZVJESTAJ',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_sp_izvjestaj;

    procedure posalji_sp_obracun (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_ime_prezime in varchar2,
        p_sp_id       in varchar2,
        p_knjigovodja in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_broj              varchar2(255);
        l_datum_od          varchar2(255);
        l_datum_do          varchar2(255);
        l_relacija          varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Službeni put - obračunat';
        l_mini := 'Molimo Vas da ga odobrite za isplatu.';
        if l_mailing = 'Y' then
            select
                broj_zahtjeva_naziv,
                relacija
            into
                l_broj,
                l_relacija
            from
                vw_sp_zahtjevi
            where
                id = p_sp_id;

            select
                to_char(vrijeme_polaska, 'DD.MM.YYYY HH24:MI:SS'),
                to_char(vrijeme_povratka, 'DD.MM.YYYY HH24:MI:SS')
            into
                l_datum_od,
                l_datum_do
            from
                vw_sp_izvjestaj
            where
                zahtjev_id = p_sp_id;

            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SP_OBRACUN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_ime_prezime)
                                  || '   ,"BROJ":'
                                  || apex_json.stringify(l_broj)
                                  || '   ,"KNJIGOVODJA":'
                                  || apex_json.stringify(p_knjigovodja)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"RELACIJA":'
                                  || apex_json.stringify(l_relacija)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SP_OBRACUN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_sp_obracun;

    procedure posalji_lpr_zahtjev (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_nadredjeni     in varchar2,
        p_radnik         in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za lični plan razvoja';
        l_mini := p_nadredjeni || ' podnio zahtjev za lični plan razvoja za svog radnika.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'LPR_ZAHTJEV',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"NADREDJENI":'
                                  || apex_json.stringify(p_nadredjeni)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'LPR_ZAHTJEV',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_lpr_zahtjev;

    procedure posalji_lpr_odobrenje (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_mail_cc    in varchar2,
        p_nadredjeni in varchar2,
        p_radnik     in varchar2,
        p_valid      in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Odobravanje ličnog plana razvoja';
        l_mini := 'Odgovor na zahtjeva za lični plan razvoja za radnika '
                  || p_radnik
                  || '.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email
                        || ','
                        || p_mail_cc,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'LPR_ODOBRENJE',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_nadredjeni)
                                  || '   ,"NADREDJENI":'
                                  || apex_json.stringify(p_nadredjeni)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"ANSWER":'
                                  || apex_json.stringify(p_valid)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'LPR_ODOBRENJE',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_lpr_odobrenje;

    procedure posalji_lpr_zavrseno (
        p_app_id     in varchar2,
        p_username   in varchar2,
        p_mail_to    in varchar2,
        p_nadredjeni in varchar2,
        p_radnik     in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Završen lični plan razvoja';
        l_mini := 'Radnik '
                  || p_radnik
                  || ' je završio lični plan razvoja koji je kreiran za njega.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'LPR_ZAVRSENO',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_nadredjeni)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'LPR_ZAVRSENO',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_lpr_zavrseno;

    procedure posalji_pru_kreiran (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_vremenski_rok_id in number
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_datum_od          varchar2(255);
        l_datum_do          varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Započeta procjena radne uspješnosti';
        l_mini := 'Započeta procjena radne uspješnosti za vremenski period '
                  || l_datum_od
                  || ' - '
                  || l_datum_do
                  || '.';
        if l_mailing = 'Y' then
            select
                to_char(datum_od, 'DD.MM.YYYY'),
                to_char(datum_do, 'DD.MM.YYYY')
            into
                l_datum_od,
                l_datum_do
            from
                pru_vremenski_rokovi
            where
                id = p_vremenski_rok_id;

            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'PRU_KREIRAN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'PRU_KREIRAN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_pru_kreiran;

    procedure posalji_pru_ocijenjen (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_nadredjeni       in varchar2,
        p_vremenski_rok_id in number
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_datum_od          varchar2(255);
        l_datum_do          varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Ocijenjen u procjeni radne uspješnosti';
        l_mini := 'Molimo Vas da pregledate i zaključite ocjene';
        if l_mailing = 'Y' then
            select
                to_char(datum_od, 'DD.MM.YYYY'),
                to_char(datum_do, 'DD.MM.YYYY')
            into
                l_datum_od,
                l_datum_do
            from
                pru_vremenski_rokovi
            where
                id = p_vremenski_rok_id;

            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'PRU_OCIJENJEN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"NADREDJENI":'
                                  || apex_json.stringify(p_nadredjeni)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'PRU_OCIJENJEN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_pru_ocijenjen;

    procedure posalji_pru_zavrsen (
        p_app_id           in varchar2,
        p_username         in varchar2,
        p_mail_to          in varchar2,
        p_odgovorno_lice   in varchar2,
        p_vremenski_rok_id in number
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_datum_od          varchar2(255);
        l_datum_do          varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Procjena radne uspješnosti završena';
        l_mini := 'Vaše ocjene možete pregledati na korisničkoj aplikaciji';
        if l_mailing = 'Y' then
            select
                to_char(datum_od, 'DD.MM.YYYY'),
                to_char(datum_do, 'DD.MM.YYYY')
            into
                l_datum_od,
                l_datum_do
            from
                pru_vremenski_rokovi
            where
                id = p_vremenski_rok_id;

            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'PRU_ZAVRSEN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'PRU_ZAVRSEN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_pru_zavrsen;

    procedure posalji_bolovanje_zahtjev (
        p_app_id         in varchar2,
        p_username       in varchar2,
        p_mail_to        in varchar2,
        p_odgovorno_lice in varchar2,
        p_radnik         in varchar2,
        p_date_from      in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za bolovanje';
        l_mini := 'Radnik '
                  || p_radnik
                  || ' podnio zahtjev za bolovanje';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'BOLOVANJE_ZAHTJEV',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_odgovorno_lice)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'BOLOVANJE_ZAHTJEV',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_bolovanje_zahtjev;

    procedure posalji_bolovanje_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_radnik    in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Odgovor na zahtjev za bolovanje';
        l_mini := 'Dobili ste odgovor na vaš zahtjev za bolovanje';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'BOLOVANJE_ODOBRENJE',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"ODOBREN":'
                                  || apex_json.stringify(p_odobren)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'BOLOVANJE_ODOBRENJE',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_bolovanje_odobrenje;

    procedure posalji_poruku (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_subject     in varchar2,
        p_korisnik_id in number,
        p_ooj_id      in number,
        p_poruka      in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_korisnik          varchar2(255);
        l_ooj               varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        select
            ime
            || ' '
            || prezime
        into l_korisnik
        from
            core.korisnici
        where
            id = p_korisnik_id;

        select
            naziv
        into l_ooj
        from
            core.ooj
        where
            id = p_ooj_id;

        l_subject := p_subject;
        l_mini := l_korisnik
                  || ' je poslao poruku svima u '
                  || l_ooj;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'PORUKA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"KORISNIK":'
                                  || apex_json.stringify(l_korisnik)
                                  || '   ,"OOJ":'
                                  || apex_json.stringify(l_ooj)
                                  || '   ,"PORUKA":'
                                  || apex_json.stringify(p_poruka)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'PORUKA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_poruku;

    procedure posalji_sastanak (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_datum_od in date,
        p_datum_do in date
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_datum_od          varchar2(255) := to_char(p_datum_od, 'DD.MM.YYYY HH24:MI:SS');
        l_datum_do          varchar2(255) := to_char(p_datum_do, 'HH24:MI:SS');
        l_email_id          number;
        l_event             varchar2(4000);
        l_blob              blob;
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zakazan sastanak';
        l_mini := 'Novi sastanak pod nazivom - ' || p_naziv;
        if l_mailing = 'Y' then
            l_email_id := apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SASTANAK',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"NAZIV":'
                                  || apex_json.stringify(p_naziv)
                                  || '   ,"DATUM_OD":'
                                  || apex_json.stringify(l_datum_od)
                                  || '   ,"DATUM_DO":'
                                  || apex_json.stringify(l_datum_do)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            -- Kreiramo .ics file
            l_event := create_ical_event(
                p_summary     => p_naziv,
                p_description => p_opis,
                p_start_date  => p_datum_od,
                p_end_date    => p_datum_do
            );

            l_blob := utl_raw.cast_to_raw(l_event);
            apex_mail.add_attachment(
                p_mail_id    => l_email_id,
                p_attachment => l_blob,
                p_filename   => 'sastanak.ics',
                p_mime_type  => 'application/hbs-ics'
            );

        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SASTANAK',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_sastanak;

    procedure posalji_sastanak_otkazan (
        p_app_id   in varchar2,
        p_username in varchar2,
        p_mail_to  in varchar2,
        p_radnik   in varchar2,
        p_naziv    in varchar2
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Otkazan sastanak';
        l_mini := 'Otkazan sastanak pod nazivom - ' || p_naziv;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'SASTANAK_OTKAZAN',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"NAZIV":'
                                  || apex_json.stringify(p_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'SASTANAK_OTKAZAN',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_sastanak_otkazan;

    procedure posalji_vp_zahtjev (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_radnik    in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Zahtjev za vjerski praznik - ' || p_radnik;
        l_mini := 'Radnik je podnio zahtjev za vjerski praznik.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'VP_ZAHTJEV',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'VP_ZAHTJEV',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_vp_zahtjev;

    procedure posalji_vp_odobrenje (
        p_app_id    in varchar2,
        p_username  in varchar2,
        p_mail_to   in varchar2,
        p_name      in varchar2,
        p_odobren   in varchar2,
        p_date_from in varchar2,
        p_date_to   in varchar2
    ) as

        l_answer            varchar2(1000);
        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Odgovor na zahtjev za vjerski praznik';
        l_mini := 'Nadređeni je poslao odgovor na vaš zahtjev.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'VP_ODOBRENJE',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"DATE_FROM":'
                                  || apex_json.stringify(p_date_from)
                                  || '   ,"DATE_TO":'
                                  || apex_json.stringify(p_date_to)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"ODOBREN":'
                                  || apex_json.stringify(p_odobren)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'VP_ODOBRENJE',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

        apex_pwa.push_queue;
    end posalji_vp_odobrenje;

    procedure posalji_dokument_firma (
        p_app_id        in varchar2,
        p_username      in varchar2,
        p_mail_to       in varchar2,
        p_name          in varchar2,
        p_document_name in varchar2
    ) as

        l_body              clob;
        l_body_html         clob;
        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
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
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'DOKUMENT_FIRMA',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_dokument_firma;

    procedure posalji_dokument_radnik (
        p_app_id        in varchar2,
        p_username      in varchar2,
        p_mail_to       in varchar2,
        p_name          in varchar2,
        p_radnik_name   in varchar2,
        p_document_name in varchar2
    ) as

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Validnost dokumenta se završava';
        l_mini := 'Validnost dokumenta podređenog radnika ističe za 15 dana';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'DOKUMENT_RADNIK',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"DOCUMENT_NAME":'
                                  || apex_json.stringify(p_document_name)
                                  || '   ,"RADNIK":'
                                  || apex_json.stringify(p_radnik_name)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'DOKUMENT_RADNIK',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_dokument_radnik;

    procedure posalji_prijava_kod (
        p_app_id      in varchar2,
        p_username    in varchar2,
        p_mail_to     in varchar2,
        p_name        in varchar2,
        p_prijava_kod in varchar2
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(1);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Novi kod za prijavu';
        l_mini := 'Kreiran je novi kod za prijavu na posao';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'HR_PRIJAVA_KOD',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(p_name)
                                  || '   ,"PRIJAVA_KOD":'
                                  || apex_json.stringify(p_prijava_kod)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_application_id => p_app_id,
            p_sifra          => 'HR_PRIJAVA_KOD',
            p_user_name      => p_username,
            p_title          => l_subject,
            p_body           => l_mini
        );

    end posalji_prijava_kod;

    -- Projekti mailovi
    procedure posalji_dodavanje_projekat (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_pristup_id  in number
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(255);
        l_username          varchar2(255);
        l_name              varchar2(255);
        l_email             varchar2(255);
        l_korisnik_naziv    varchar2(255);
        l_projekat_naziv    varchar2(255);
        l_pristup_naziv     varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnik_id       => p_korisnik_id,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        select
            mailing,
            korisnicko_ime,
            ime
            || ' '
            || prezime,
            email
        into
            l_mailing,
            l_username,
            l_name,
            l_email
        from
            core.korisnici
        where
            id = p_korisnik_id;

        select
            ime
            || ' '
            || prezime
        into l_korisnik_naziv
        from
            core.korisnici
        where
            id = p_admin_id;

        select
            naziv
        into l_projekat_naziv
        from
            p_projekti
        where
            id = p_projekat_id;

        select
            naziv
        into l_pristup_naziv
        from
            sif.p_sif_nivoi_pristupa
        where
            id = p_pristup_id;

        l_subject := 'Uspješno dodani u projekat';
        l_mini := l_projekat_naziv || ' - uspješno ste dodani u novi projekat';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => l_email,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'P_DODAVANJE_PROJEKAT',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(l_name)
                                  || '   ,"KORISNIK_NAZIV":'
                                  || apex_json.stringify(l_korisnik_naziv)
                                  || '   ,"PROJEKAT_NAZIV":'
                                  || apex_json.stringify(l_projekat_naziv)
                                  || '   ,"NIVO_PRISTUPA":'
                                  || apex_json.stringify(l_pristup_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_sifra     => 'P_DODAVANJE_PROJEKAT',
            p_user_name => l_username,
            p_title     => l_subject,
            p_body      => l_mini
        );

        apex_pwa.push_queue;
    end posalji_dodavanje_projekat;

    procedure posalji_dodavanje_kartica (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_kartica_id  in number
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(255);
        l_sekretarice_email varchar2(512);
        l_username          varchar2(255);
        l_name              varchar2(255);
        l_email             varchar2(255);
        l_korisnik_naziv    varchar2(255);
        l_projekat_naziv    varchar2(255);
        l_kartica_naziv     varchar2(255);
    begin
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnik_id       => p_korisnik_id,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        select
            mailing,
            korisnicko_ime,
            ime
            || ' '
            || prezime,
            email
        into
            l_mailing,
            l_username,
            l_name,
            l_email
        from
            core.korisnici
        where
            id = p_korisnik_id;

        select
            ime
            || ' '
            || prezime
        into l_korisnik_naziv
        from
            core.korisnici
        where
            id = p_admin_id;

        select
            naziv
        into l_projekat_naziv
        from
            p_projekti
        where
            id = p_projekat_id;

        select
            naziv
        into l_kartica_naziv
        from
            p_kartice
        where
            id = p_kartica_id;

        l_subject := 'Uspješno dodani u karticu';
        l_mini := l_kartica_naziv || ' - uspješno dodani u unutar kartice';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => l_email,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'P_DODAVANJE_KARTICA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(l_name)
                                  || '   ,"KORISNIK_NAZIV":'
                                  || apex_json.stringify(l_korisnik_naziv)
                                  || '   ,"KARTICA_NAZIV":'
                                  || apex_json.stringify(l_kartica_naziv)
                                  || '   ,"PROJEKAT_NAZIV":'
                                  || apex_json.stringify(l_projekat_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_sifra     => 'P_DODAVANJE_KARTICA',
            p_user_name => l_username,
            p_title     => l_subject,
            p_body      => l_mini
        );

        apex_pwa.push_queue;
    end posalji_dodavanje_kartica;

    procedure posalji_uklanjanje_projekat (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(255);
        l_username          varchar2(255);
        l_name              varchar2(255);
        l_email             varchar2(255);
        l_korisnik_naziv    varchar2(255);
        l_projekat_naziv    varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnik_id       => p_korisnik_id,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        select
            mailing,
            korisnicko_ime,
            ime
            || ' '
            || prezime,
            email
        into
            l_mailing,
            l_username,
            l_name,
            l_email
        from
            core.korisnici
        where
            id = p_korisnik_id;

        select
            ime
            || ' '
            || prezime
        into l_korisnik_naziv
        from
            core.korisnici
        where
            id = p_admin_id;

        select
            naziv
        into l_projekat_naziv
        from
            p_projekti
        where
            id = p_projekat_id;

        l_subject := 'Uklonjeni sa projekta';
        l_mini := 'Nažalost, uklonjeni ste sa projekta - ' || l_projekat_naziv;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => l_email,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'P_UKLANJANJE_PROJEKAT',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(l_name)
                                  || '   ,"KORISNIK_NAZIV":'
                                  || apex_json.stringify(l_korisnik_naziv)
                                  || '   ,"PROJEKAT_NAZIV":'
                                  || apex_json.stringify(l_projekat_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_sifra     => 'P_UKLANJANJE_PROJEKAT',
            p_user_name => l_username,
            p_title     => l_subject,
            p_body      => l_mini
        );

        apex_pwa.push_queue;
    end posalji_uklanjanje_projekat;

    procedure posalji_uklanjanje_kartica (
        p_korisnik_id in number,
        p_admin_id    in number,
        p_projekat_id in number,
        p_kartica_id  in number
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(255);
        l_username          varchar2(255);
        l_name              varchar2(255);
        l_email             varchar2(255);
        l_korisnik_naziv    varchar2(255);
        l_projekat_naziv    varchar2(255);
        l_kartica_naziv     varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnik_id       => p_korisnik_id,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        select
            mailing,
            korisnicko_ime,
            ime
            || ' '
            || prezime,
            email
        into
            l_mailing,
            l_username,
            l_name,
            l_email
        from
            core.korisnici
        where
            id = p_korisnik_id;

        select
            ime
            || ' '
            || prezime
        into l_korisnik_naziv
        from
            core.korisnici
        where
            id = p_admin_id;

        select
            naziv
        into l_projekat_naziv
        from
            p_projekti
        where
            id = p_projekat_id;

        select
            naziv
        into l_kartica_naziv
        from
            p_kartice
        where
            id = p_kartica_id;

        l_subject := 'Uklonjeni sa kartice';
        l_mini := 'Nažalost, uklonjeni ste sa kartice - ' || l_kartica_naziv;
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => l_email,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'P_UKLANJANJE_KARTICA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"NAME":'
                                  || apex_json.stringify(l_name)
                                  || '   ,"KORISNIK_NAZIV":'
                                  || apex_json.stringify(l_korisnik_naziv)
                                  || '   ,"KARTICA_NAZIV":'
                                  || apex_json.stringify(l_kartica_naziv)
                                  || '   ,"PROJEKAT_NAZIV":'
                                  || apex_json.stringify(l_projekat_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );

            apex_mail.push_queue;
        end if;

        -- Posalji notifikaciju
        core.notifikacije_pkg.send_notification(
            p_sifra     => 'P_UKLANJANJE_KARTICA',
            p_user_name => l_username,
            p_title     => l_subject,
            p_body      => l_mini
        );

        apex_pwa.push_queue;
    end posalji_uklanjanje_kartica;

    procedure posalji_rodjendan_notifikacija (
        p_app_id          in number,
        p_username        in varchar2,
        p_mail_to         in varchar2,
        p_radnik_naziv    in varchar2,
        p_rodjendan_naziv in varchar2
    ) is

        l_subject           varchar2(255);
        l_mini              varchar2(255);
        l_mailing           varchar2(255);
        l_sekretarice_email varchar2(512);
    begin
        if not check_username(p_username) then
            return;
        end if;
        core.korisnik_pkg.get_korisnik_mailing(
            p_korisnicko_ime    => p_username,
            p_email             => p_mail_to,
            p_mailing           => l_mailing,
            p_sekretarice_email => l_sekretarice_email
        );

        l_subject := 'Rođendan u Vašoj firmi';
        l_mini := p_rodjendan_naziv || ' danas slavi svoj rođendan.';
        if l_mailing = 'Y' then
            apex_mail.send(
                p_to                 => p_mail_to,
                p_cc                 => l_sekretarice_email,
                p_from               => hrm.mail_pkg.mail_from,
                p_template_static_id => 'RODJENDAN_NOTIFIKACIJA',
                p_placeholders       => '{'
                                  || '    "SUBJECT":'
                                  || apex_json.stringify(l_subject)
                                  || '   ,"RADNIK_NAZIV":'
                                  || apex_json.stringify(p_radnik_naziv)
                                  || '   ,"RODJENDAN_NAZIV":'
                                  || apex_json.stringify(p_rodjendan_naziv)
                                  || '   ,"LOGIN_URL":'
                                  || apex_json.stringify(login_url)
                                  || '   ,"MAIL_FOOTER":'
                                  || apex_json.stringify(footer)
                                  || '}'
            );
        end if;

        core.notifikacije_pkg.send_notification(
            p_sifra     => 'RODJENDAN_NOTIFIKACIJA',
            p_user_name => p_username,
            p_title     => l_subject,
            p_body      => l_mini
        );

    end posalji_rodjendan_notifikacija;

end mail_pkg;
/

prompt
prompt Creating package body MIDDLEWARE_PKG
prompt ====================================
prompt
create or replace package body hrm.middleware_pkg as

    -- Log

    procedure insert_log (
        p_request   in varchar2 default null,
        p_username  in varchar2 default null,
        p_longitude in number default null,
        p_latitude  in number default null,
        p_vrijeme   in varchar2 default null,
        p_status    in number default null,
        p_message   in varchar2 default null
    ) is
    begin
        insert into middleware_log (
            request,
            username,
            longitude,
            latitude,
            vrijeme,
            status,
            message
        ) values ( p_request,
                   p_username,
                   p_longitude,
                   p_latitude,
                   p_vrijeme,
                   p_status,
                   p_message );

    end insert_log;

    -- Auth

    function authenticate (
        p_username in varchar2,
        p_password in varchar2
    ) return boolean is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            core.korisnici
        where
            upper(korisnicko_ime) = upper(p_username);
--            AND lozinka = login_pck.get_hash(p_username, p_password);

        if l_count > 0 then
            return true;
        end if;
        return false;
    exception
        when others then
            return false;
    end authenticate;

    function get_user_id (
        p_username in varchar2,
        p_password in varchar2
    ) return number is
        l_id number;
    begin
        select
            id
        into l_id
        from
            core.korisnici
        where
            upper(korisnicko_ime) = upper(p_username);
--            AND lozinka = login_pck.get_hash(p_username, p_password);

        return l_id;
    exception
        when no_data_found then
            return null;
    end get_user_id;

    function get_radnik_id (
        p_korisnik_id in number
    ) return number is
        l_id number;
    begin
        select
            id
        into l_id
        from
            hr_radnici
        where
            korisnik_id = p_korisnik_id;

        return l_id;
    exception
        when no_data_found then
            return null;
    end get_radnik_id;

    function get_ooj_id (
        p_korisnik_id in number
    ) return number is
        l_id number;
    begin
        select
            ooj_id
        into l_id
        from
            hr_radnici
        where
            korisnik_id = p_korisnik_id;

        return l_id;
    exception
        when no_data_found then
            return null;
    end get_ooj_id;

    -- Login

    procedure login (
        p_username  in varchar2,
        p_password  in varchar2,
        p_status    out number,
        p_longitude out number,
        p_latitude  out number,
        p_message   out varchar2
    ) is
        l_korisnik_id number;
        l_radnik_id   number;
        l_ooj_id      number;
    begin
        if not authenticate(p_username, p_password) then
            p_status := 0;
            p_message := 'Pogrešno korisničko ime / lozinka';
            insert_log(
                p_request  => 'login',
                p_username => p_username,
                p_status   => p_status,
                p_message  => p_message
            );

            return;
        end if;

        l_korisnik_id := get_user_id(p_username, p_password);
        l_ooj_id := get_ooj_id(l_korisnik_id);
        select
            lat,
            lng
        into
            p_latitude,
            p_longitude
        from
            core.ooj
        where
            id = l_ooj_id;

        p_status := 1;
        p_message := 'Uspješna prijava na middleware aplikaciju.';
        insert_log(
            p_request   => 'login',
            p_username  => p_username,
            p_longitude => p_longitude,
            p_latitude  => p_latitude,
            p_status    => p_status,
            p_message   => p_message
        );

    end login;

    -- Inwork

    procedure inwork (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2
    ) is

        l_date              date := to_date ( p_vrijeme, 'DD.MM.YYYY HH24:MI' );
        l_time              varchar2(5) := to_char(l_date, 'HH24:MI');
        l_start_time        date := to_date ( '06:00', 'HH24:MI' );
        l_end_time          date := to_date ( '18:00', 'HH24:MI' );
        l_korisnik_id       number;
        l_radnik_id         number;
        l_siht_lista_id     number;
        l_ev_prisutnosti_id number;
        l_count             number;
    begin
        if not authenticate(p_username, p_password) then
            p_status := 0;
            p_message := 'Pogrešno korisničko ime / lozinka';
            insert_log(
                p_request   => 'inwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Provjera radnog vremena
        if not to_date(l_time, 'HH24:MI') between l_start_time and l_end_time then
            p_status := 0;
            p_message := 'Izvan radnog vremena';
            insert_log(
                p_request   => 'inwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        l_korisnik_id := get_user_id(p_username, p_password);
        l_radnik_id := get_radnik_id(l_korisnik_id);

        -- Provjera siht liste (mora biti redovan radni dan)
        select
            id
        into l_siht_lista_id
        from
            hr_siht_lista
        where
                trunc(datum) = trunc(l_date)
            and radnik_id = l_radnik_id;

        select
            evidencija_prisutnosti_id
        into l_ev_prisutnosti_id
        from
            hr_siht_lista
        where
            id = l_siht_lista_id;

        if l_ev_prisutnosti_id != 1 then
            p_status := 0;
            p_message := 'Evidencija prisutnosti u šiht listi mora biti: Redovan rad';
            insert_log(
                p_request   => 'inwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Provjera da li je radnik vec prijavljen na posao
        select
            count(*)
        into l_count
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = l_siht_lista_id
            and end_time is null;

        if l_count > 0 then
            p_status := 0;
            p_message := 'Radnik je već prijavljen na posao';
            insert_log(
                p_request   => 'inwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Prijava na posao
        -- Tip rada 1 - office
        -- Tip prijave 3 - middleware
        siht_lista_pkg.start_vrijeme(
            p_siht_lista_id  => l_siht_lista_id,
            p_tip_rada_id    => 1,
            p_tip_prijave_id => 3,
            p_start_time     => l_date,
            p_start_lat      => p_latitude,
            p_start_lng      => p_longitude
        );

        p_status := 1;
        p_message := 'Radnik se uspješno prijavio na posao';
        insert_log(
            p_request   => 'inwork',
            p_username  => p_username,
            p_status    => p_status,
            p_message   => p_message,
            p_latitude  => p_latitude,
            p_longitude => p_longitude,
            p_vrijeme   => p_vrijeme
        );

    end inwork;

    -- Outwork

    procedure outwork (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2,
        p_end_time  out varchar2
    ) is

        l_date          date := to_date ( p_vrijeme, 'DD.MM.YYYY HH24:MI' );
        l_korisnik_id   number;
        l_radnik_id     number;
        l_siht_lista_id number;
        l_count         number;
        l_detalji_id    number;
        l_tip_rada_id   number;
        l_start_time    date;
        l_trajanje      number;
    begin
        if not authenticate(p_username, p_password) then
            p_status := 0;
            p_message := 'Pogrešno korisničko ime / lozinka';
            insert_log(
                p_request   => 'outwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        l_korisnik_id := get_user_id(p_username, p_password);
        l_radnik_id := get_radnik_id(l_korisnik_id);

        -- Provjera da li je radnik vec prijavljen na posao
        select
            id
        into l_siht_lista_id
        from
            hr_siht_lista
        where
                trunc(datum) = trunc(l_date)
            and radnik_id = l_radnik_id;

        select
            count(*)
        into l_count
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = l_siht_lista_id
            and end_time is null;

        if l_count = 0 then
            p_status := 0;
            p_message := 'Radnik nije prijavljen na posao';
            insert_log(
                p_request   => 'outwork',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Provjera da li je pauza ili sastanak van firme
        select
            id
        into l_detalji_id
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = l_siht_lista_id
            and end_time is null;

        select
            tip_rada_id,
            start_time,
            trajanje + 1
        into
            l_tip_rada_id,
            l_start_time,
            l_trajanje
        from
            hr_siht_lista_vrijeme
        where
            id = l_detalji_id;

        if l_tip_rada_id in ( 3, 4 ) then
            if l_date < ( l_start_time + ( 1 / 1440 * l_trajanje ) ) then
                p_status := 0;
                p_message := 'Radnik je na pauzi / sastanku van firme';
                p_end_time := to_char(l_start_time +(1 / 1440 * l_trajanje), 'DD.MM.YYYY HH24:MI');
                insert_log(
                    p_request   => 'outwork',
                    p_username  => p_username,
                    p_status    => p_status,
                    p_message   => p_message,
                    p_latitude  => p_latitude,
                    p_longitude => p_longitude,
                    p_vrijeme   => p_vrijeme
                );

                return;
            end if;
        end if;

        -- Odjava sa posla
        siht_lista_pkg.end_vrijeme(
            p_id       => l_detalji_id,
            p_end_time => l_date,
            p_end_lat  => p_latitude,
            p_end_lng  => p_longitude
        );

        p_status := 1;
        p_message := 'Radnik se uspješno odjavio sa posla';
        insert_log(
            p_request   => 'outwork',
            p_username  => p_username,
            p_status    => p_status,
            p_message   => p_message,
            p_latitude  => p_latitude,
            p_longitude => p_longitude,
            p_vrijeme   => p_vrijeme
        );

    end outwork;

    procedure outwork_priority (
        p_username  in varchar2,
        p_password  in varchar2,
        p_longitude in number,
        p_latitude  in number,
        p_vrijeme   in varchar2,
        p_status    out number,
        p_message   out varchar2
    ) is

        l_date          date := to_date ( p_vrijeme, 'DD.MM.YYYY HH24:MI' );
        l_korisnik_id   number;
        l_radnik_id     number;
        l_siht_lista_id number;
        l_count         number;
        l_detalji_id    number;
        l_tip_rada_id   number;
        l_start_time    date;
        l_trajanje      number;
    begin
        if not authenticate(p_username, p_password) then
            p_status := 0;
            p_message := 'Pogrešno korisničko ime / lozinka';
            insert_log(
                p_request   => 'outwork_priority',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        l_korisnik_id := get_user_id(p_username, p_password);
        l_radnik_id := get_radnik_id(l_korisnik_id);

        -- Provjera da li je radnik vec prijavljen na posao
        select
            id
        into l_siht_lista_id
        from
            hr_siht_lista
        where
                trunc(datum) = trunc(l_date)
            and radnik_id = l_radnik_id;

        select
            count(*)
        into l_count
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = l_siht_lista_id
            and end_time is null;

        if l_count = 0 then
            p_status := 0;
            p_message := 'Radnik nije prijavljen na posao';
            insert_log(
                p_request   => 'outwork_priority',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Provjera da li je pauza ili sastanak van firme
        select
            id
        into l_detalji_id
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = l_siht_lista_id
            and end_time is null;

        select
            tip_rada_id,
            start_time,
            trajanje + 1
        into
            l_tip_rada_id,
            l_start_time,
            l_trajanje
        from
            hr_siht_lista_vrijeme
        where
            id = l_detalji_id;

        if l_tip_rada_id not in ( 3, 4 ) then
            p_status := 0;
            p_message := 'Radnik se prijavio na posao nakon pauze / sastanka van firme.';
            insert_log(
                p_request   => 'outwork_priority',
                p_username  => p_username,
                p_status    => p_status,
                p_message   => p_message,
                p_latitude  => p_latitude,
                p_longitude => p_longitude,
                p_vrijeme   => p_vrijeme
            );

            return;
        end if;

        -- Odjava sa posla
        siht_lista_pkg.end_vrijeme(
            p_id       => l_detalji_id,
            p_end_time => l_date,
            p_end_lat  => p_latitude,
            p_end_lng  => p_longitude
        );

        p_status := 1;
        p_message := 'Radnik se uspješno odjavio sa posla (nakon pauze / sastanka van firme)';
        insert_log(
            p_request   => 'outwork_priority',
            p_username  => p_username,
            p_status    => p_status,
            p_message   => p_message,
            p_latitude  => p_latitude,
            p_longitude => p_longitude,
            p_vrijeme   => p_vrijeme
        );

    end outwork_priority;

end middleware_pkg;
/

prompt
prompt Creating package body OBRASCI_PKG
prompt =================================
prompt
create or replace package body hrm.obrasci_pkg is

    -- Obrasci
    procedure get_obrazac (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_valid  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                obrasci
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        end loop;
    end get_obrazac;

    procedure get_obrazac (
        p_id                in number,
        p_dokument_filename out varchar2
    ) is
    begin
        for c1 in (
            select
                dokument_filename
            from
                obrasci
            where
                id = p_id
        ) loop
            p_dokument_filename := c1.dokument_filename;
        end loop;
    end get_obrazac;

    function insert_obrazac (
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_dokument in varchar2
    ) return number is
        l_id       number;
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into obrasci (
            ooj_id,
            naziv,
            dokument,
            dokument_filename,
            dokument_mimetype
        ) values ( p_ooj_id,
                   p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype ) returning id into l_id;

        return l_id;
    end insert_obrazac;

    procedure update_obrazac (
        p_id       in number,
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_valid    in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_dokument is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_dokument,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update obrasci
            set
                ooj_id = p_ooj_id,
                naziv = p_naziv,
                dokument = l_blob,
                dokument_filename = l_filename,
                dokument_mimetype = l_mimetype,
                valid = p_valid
            where
                id = p_id;

            clear_polja(p_obrazac_id => p_id);
        else
            update obrasci
            set
                ooj_id = p_ooj_id,
                naziv = p_naziv,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_obrazac;

    procedure delete_obrazac (
        p_id in number
    ) is
    begin
        delete from obrazac_polja
        where
            obrazac_id = p_id;

        delete from obrasci
        where
            id = p_id;

    end delete_obrazac;

    -- Polja
    procedure clear_polja (
        p_obrazac_id in number
    ) is
    begin
        delete from obrazac_polja
        where
            obrazac_id = p_obrazac_id;

    end clear_polja;

    procedure insert_polje (
        p_obrazac_id in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2
    ) is
    begin
        insert into obrazac_polja (
            obrazac_id,
            naziv,
            sifra
        ) values ( p_obrazac_id,
                   p_naziv,
                   p_sifra );

    end insert_polje;

    procedure update_polje (
        p_id         in number,
        p_obrazac_id in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2
    ) is
    begin
        update obrazac_polja
        set
            naziv = p_naziv,
            sifra = p_sifra
        where
            id = p_id;

    end update_polje;

    procedure get_polja_into_collection (
        p_obrazac_id in number
    ) is
        l_query varchar2(1000);
    begin
        l_query := '
SELECT
    sifra,
    naziv
FROM (
    SELECT
        sifra,
        naziv
    FROM
        obrazac_polja
    WHERE
        obrazac_id = '''
                   || p_obrazac_id
                   || '''
    ORDER BY
        id
)      
        ';
        if apex_collection.collection_exists('OBRAZAC_POLJA') then
            apex_collection.delete_collection('OBRAZAC_POLJA');
        end if;
        apex_collection.create_collection_from_query(
            p_collection_name => 'OBRAZAC_POLJA',
            p_query           => l_query
        );
    end get_polja_into_collection;

    procedure get_polja_into_collection (
        p_dokument in varchar2
    ) is

        l_word     blob;
        l_files    apex_zip.t_files;
        l_file     blob;
        l_clob     clob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        -- Create collection
        apex_collection.create_or_truncate_collection(p_collection_name => 'OBRAZAC_POLJA');

        -- Get file
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_word,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        -- Unzip
        l_files := apex_zip.get_files(l_word);

        -- Loop through files in DOCX
        for i in 1..l_files.count loop
            if l_files(i) = 'word/document.xml' then
                l_file := apex_zip.get_file_content(
                    p_zipped_blob => l_word,
                    p_file_name   => l_files(i)
                );

                l_clob := apex_util.blob_to_clob(l_file);
                for c1 in (
                    with data as (
                        select
                            dbms_lob.substr(
                                regexp_substr(l_clob, '\[(.*?)\]', 1, level, null,
                                              1),
                                32767,
                                1
                            ) as polje
                        from
                            dual
                        connect by
                            level <= regexp_count(l_clob, '\[(.*?)\]')
                    )
                    select distinct
                        polje
                    from
                        data
--                    WHERE
--                        upper(polje) NOT LIKE 'FIRMA%'
--                        AND upper(polje) NOT LIKE 'RADNIK%'
                ) loop
                    if upper(c1.polje) like 'FIRMA%'
                       or upper(c1.polje) like 'RADNIK%' then
                        apex_collection.add_member(
                            p_collection_name => 'OBRAZAC_POLJA',
                            p_c001            => upper(c1.polje),
                            p_c002            => upper(c1.polje)
                        );

                    else
                        apex_collection.add_member(
                            p_collection_name => 'OBRAZAC_POLJA',
                            p_c001            => c1.polje
                        );
                    end if;
                end loop;

            end if;
        end loop;

    end get_polja_into_collection;

    -- Dynamic
    procedure generate_obrazac_fields_collection (
        p_obrazac_id in number,
        p_page_id    in number
    ) is
        /*

            c001 - item_name
            c002 - label
            c003 - item_type
            c004 - idx
            c005 - value
            c006 - options_display (separated by :)
            c007 - options_return (separated by :)
            c008 - required
            c009 - sifra

        */
        l_query varchar2(1000);
    begin
        l_query := '
SELECT
    sif.dynamic_pkg.generate_item_name('''
                   || p_page_id
                   || ''', sifra),
    naziv,
    ''INPUT'',
    rownum,
    null,
    null,
    null,
    ''Y'',
    sifra
FROM (
    SELECT
        sifra,
        naziv
    FROM
        obrazac_polja
    WHERE
        obrazac_id = '''
                   || p_obrazac_id
                   || '''
        AND upper(sifra) NOT LIKE ''FIRMA%''
        AND upper(sifra) NOT LIKE ''RADNIK%''
    ORDER BY
        id
)      
        ';
        if apex_collection.collection_exists('OBRAZAC_POLJA_ITEMS') then
            apex_collection.delete_collection('OBRAZAC_POLJA_ITEMS');
        end if;
        apex_collection.create_collection_from_query(
            p_collection_name => 'OBRAZAC_POLJA_ITEMS',
            p_query           => l_query
        );
    end generate_obrazac_fields_collection;

    function get_field_value (
        p_sifra in varchar2
    ) return varchar2 is
    begin
        for c1 in (
            select
                c005 as value
            from
                apex_collections
            where
                    collection_name = 'OBRAZAC_POLJA_ITEMS'
                and c009 = p_sifra
        ) loop
            return c1.value;
        end loop;

        return null;
    end get_field_value;

    procedure generate_radnik_dokument (
        p_ooj_id           in number,
        p_radnik_id        in number,
        p_obrazac_id       in number,
        p_filename         in varchar2,
        p_tip_dokumenta_id in number,
        p_datum            in date
    ) is

        l_word                      blob;
        l_files                     apex_zip.t_files;
        l_file                      blob;
        l_clob                      clob;
        l_blob                      blob;
        l_zip                       blob;
        l_filename                  varchar2(255);
        l_mimetype                  varchar2(255);
        l_firma_naziv               varchar2(255);
        l_firma_odgovorno_lice      varchar2(255);
        l_firma_adresa              varchar2(255);
        l_firma_grad_naziv          varchar2(255);
        l_firma_zip                 varchar2(255);
        l_firma_tel                 varchar2(255);
        l_firma_fax                 varchar2(255);
        l_firma_jib                 varchar2(255);
        l_firma_pib                 varchar2(255);
        l_firma_mbs                 varchar2(255);
        l_firma_mb                  varchar2(255);
        l_radnik_ime                varchar2(255);
        l_radnik_prezime            varchar2(255);
        l_radnik_jmbg               varchar2(255);
        l_radnik_adresa             varchar2(255);
        l_radnik_grad_naziv         varchar2(255);
        l_radnik_zaposlen_od        varchar2(255);
        l_radnik_radno_mjesto_naziv varchar2(255);
        l_value                     varchar2(255);
    begin
        evidencija_pkg.get_radnik(
            p_radnik_id          => p_radnik_id,
            p_ime                => l_radnik_ime,
            p_prezime            => l_radnik_prezime,
            p_jmbg               => l_radnik_jmbg,
            p_adresa             => l_radnik_adresa,
            p_grad_naziv         => l_radnik_grad_naziv,
            p_zaposlen_od        => l_radnik_zaposlen_od,
            p_radno_mjesto_naziv => l_radnik_radno_mjesto_naziv
        );

        core.ooj_pkg.get_ooj(
            p_ooj_id         => p_ooj_id,
            p_naziv          => l_firma_naziv,
            p_odgovorno_lice => l_firma_odgovorno_lice,
            p_adresa         => l_firma_adresa,
            p_grad_naziv     => l_firma_grad_naziv,
            p_zip            => l_firma_zip,
            p_tel            => l_firma_tel,
            p_fax            => l_firma_fax,
            p_jib            => l_firma_jib,
            p_pib            => l_firma_pib,
            p_mbs            => l_firma_mbs,
            p_mb             => l_firma_mb
        );

        -- Get file
        select
            dokument,
            dokument_filename,
            dokument_mimetype
        into
            l_word,
            l_filename,
            l_mimetype
        from
            obrasci
        where
            id = p_obrazac_id;            

        -- Unzip
        l_files := apex_zip.get_files(l_word);

        -- Loop through files in DOCX
        for i in 1..l_files.count loop
            l_file := apex_zip.get_file_content(
                p_zipped_blob => l_word,
                p_file_name   => l_files(i)
            );

            if l_files(i) = 'word/document.xml' then
                l_clob := apex_util.blob_to_clob(l_file);
                for c1 in (
                    with data as (
                        select
                            dbms_lob.substr(
                                regexp_substr(l_clob, '\[(.*?)\]', 1, level, null,
                                              1),
                                32767,
                                1
                            ) as polje
                        from
                            dual
                        connect by
                            level <= regexp_count(l_clob, '\[(.*?)\]')
                    )
                    select distinct
                        polje
                    from
                        data
                ) loop
                    l_value :=
                        case c1.polje
                            when 'FIRMA_NAZIV' then
                                l_firma_naziv
                            when 'FIRMA_ODGOVORNO_LICE' then
                                l_firma_odgovorno_lice
                            when 'FIRMA_ADRESA' then
                                l_firma_adresa
                            when 'FIRMA_GRAD_NAZIV' then
                                l_firma_grad_naziv
                            when 'FIRMA_ZIP' then
                                l_firma_zip
                            when 'FIRMA_TEL' then
                                l_firma_tel
                            when 'FIRMA_FAX' then
                                l_firma_fax
                            when 'FIRMA_JIB' then
                                l_firma_jib
                            when 'FIRMA_PIB' then
                                l_firma_pib
                            when 'FIRMA_MBS' then
                                l_firma_mbs
                            when 'FIRMA_MB' then
                                l_firma_mb
                            when 'RADNIK_IME' then
                                l_radnik_ime
                            when 'RADNIK_PREZIME' then
                                l_radnik_prezime
                            when 'RADNIK_JMBG' then
                                l_radnik_jmbg
                            when 'RADNIK_ADRESA' then
                                l_radnik_adresa
                            when 'RADNIK_GRAD_NAZIV' then
                                l_radnik_grad_naziv
                            when 'RADNIK_ZAPOSLEN_OD' then
                                l_radnik_zaposlen_od
                            when 'RADNIK_RADNO_MJESTO_NAZIV' then
                                l_radnik_radno_mjesto_naziv
                            else get_field_value(c1.polje)
                        end;

                    l_clob := replace(l_clob, c1.polje, l_value);
                end loop;

                l_clob := replace(l_clob, '[', '');
                l_clob := replace(l_clob, ']', '');
                l_blob := apex_util.clob_to_blob(l_clob);
                apex_zip.add_file(
                    p_zipped_blob => l_zip,
                    p_file_name   => l_files(i),
                    p_content     => l_blob
                );

            else
                apex_zip.add_file(
                    p_zipped_blob => l_zip,
                    p_file_name   => l_files(i),
                    p_content     => l_file
                );
            end if;

        end loop;

        apex_zip.finish(p_zipped_blob => l_zip);
        insert into hr_radnik_dokumenti (
            radnik_id,
            dokument,
            dokument_mimetype,
            dokument_filename,
            tip_dokumenta_id,
            datum,
            obrazac_id
        ) values ( p_radnik_id,
                   l_zip,
                   l_mimetype,
                   p_filename,
                   p_tip_dokumenta_id,
                   p_datum,
                   p_obrazac_id );

    end generate_radnik_dokument;

end obrasci_pkg;
/

prompt
prompt Creating package body PLATE_PKG
prompt ===============================
prompt
create or replace package body hrm.plate_pkg as

    -- Helper
    function pl_radnik4ent (
        p_plradnik_id in number
    ) return number as
        l_ret number;
    begin
        select
            entitet_id
        into l_ret
        from
            hr_radnici
        where
            id = p_plradnik_id;

        return l_ret;
    exception
        when others then
            return 1;
    end pl_radnik4ent;

    function fn_koeficijent (
        p_sifra      in sif.pl_koeficijenti.sifra%type,
        p_entitet_id in sif.pl_koeficijenti.entitet_id%type
    ) return number as
        l_retval number;
    begin
        select
            vrijednost
        into l_retval
        from
            sif.pl_koeficijenti
        where
                sifra = p_sifra
            and entitet_id = p_entitet_id;

        return l_retval;
    exception
        when no_data_found then
            return 1;
        when others then
            raise;
    end fn_koeficijent;

    function neto2bruto (
        p_neto           in number,
        p_tip_ugovora_id in number
    ) return number as
    begin
        if p_tip_ugovora_id in ( 1, 6 ) then -- Ugovor o radu na puno radno vrijeme
            return round((p_neto / 0.61), 2);
        elsif p_tip_ugovora_id = 2 then -- Ugovor o stipendiranju
            return round((p_neto / 1), 2);
        elsif p_tip_ugovora_id = 3 then -- Ugovor o djelu / dopunski rad
            return round((p_neto / 0.70905), 2);
        elsif p_tip_ugovora_id = 4 then -- Menadžerski ugovor / Dužnosti bez zasnivanja radnog odnosa
            return round((p_neto / 0.6003), 2);
        elsif p_tip_ugovora_id in ( 5, 7 ) then -- Ugovor o privremenim i povremenim poslovima
            return round((p_neto / 0.62031), 2);
        else
            raise_application_error(-20001, 'Pogrešan tip ugovora.');
        end if;

        return round((p_neto / 0.61), 2);
    end neto2bruto;

    function bruto2neto (
        p_bruto          in number,
        p_tip_ugovora_id in number
    ) return number as
        l_temp number;
    begin
        if p_tip_ugovora_id in ( 1, 6 ) then -- Ugovor o radu na puno radno vrijeme
            return round((p_bruto * 0.61), 2);
        elsif p_tip_ugovora_id = 2 then -- Ugovor o stipendiranju
            return round((p_bruto * 1), 2);
        elsif p_tip_ugovora_id = 3 then -- Ugovor o djelu / dopunski rad
            return round((p_bruto * 0.70905), 2);
        elsif p_tip_ugovora_id = 4 then -- Menadžerski ugovor / Dužnosti bez zasnivanja radnog odnosa
            return round((p_bruto * 0.6003), 2);
        elsif p_tip_ugovora_id in ( 5, 7 ) then -- Ugovor o privremenim i povremenim poslovima
            return round((p_bruto * 0.62031), 2);
        else
            raise_application_error(-20001, 'Pogrešan tip ugovora.');
        end if;
    end bruto2neto;

    procedure get_neobracunato_nearhivirano (
        p_ooj_id        in number,
        p_mjesec_godina in varchar2,
        p_neobracunato  out number,
        p_nearhivirano  out number
    ) is
    begin
        for c1 in (
            select
                count(*) as neobracunato
            from
                (
                    select unique
                        to_char(datum, 'mm.yyyy') as d,
                        radnik_id
                    from
                        hr_siht_lista s
                    where
                        radnik_id in (
                            select
                                id
                            from
                                vw_radnici
                            where
                                ooj_id = p_ooj_id
                        )
                        and to_char(datum, 'mm.yyyy') not in (
                            select
                                to_char(datum_obracuna_od, 'mm.yyyy')
                            from
                                vw_pl_plate p
                            where
                                    ooj_id = p_ooj_id
                                and s.radnik_id = p.radnik_id
                        )
                        and trunc(datum, 'MM') = trunc(to_date(p_mjesec_godina, 'MM.YYYY'), 'MM')
                )
        ) loop
            p_neobracunato := c1.neobracunato;
        end loop;

        for c2 in (
            select
                count(*) as nearhivirano
            from
                pl_plate
            where
                radnik_id in (
                    select
                        id
                    from
                        vw_radnici
                    where
                        ooj_id = p_ooj_id
                )
                and extract(month from datum_obracuna_od) = extract(month from to_date(p_mjesec_godina, 'MM.YYYY'))
                and trunc(datum_obracuna_od, 'MM') = trunc(to_date(p_mjesec_godina, 'MM.YYYY'), 'MM')
                and vazi = 'Y'
        ) loop
            p_nearhivirano := c2.nearhivirano;
        end loop;

    end get_neobracunato_nearhivirano;

    -- Parametri plate
    procedure get_plata_radnika (
        p_id             in number,
        p_radnik_id      out number,
        p_koeficijent_lo out number,
        p_plata_bruto    out number,
        p_prevoz_iznos   out number,
        p_prevoz_tip     out varchar2,
        p_tp_obrok_iznos out number,
        p_tekuci_racun   out varchar2,
        p_banka_id       out number,
        p_tip_ugovora_id out number,
        p_korekcija      out number,
        p_vazi           out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                pl_radnici
            where
                id = p_id
        ) loop
            p_radnik_id := c1.radnik_id;
            p_koeficijent_lo := c1.koeficijent_lo;
            p_plata_bruto := c1.plata_bruto;
            p_prevoz_iznos := c1.prevoz_iznos;
            p_prevoz_tip := c1.prevoz_tip;
            p_tp_obrok_iznos := c1.tp_obrok_iznos;
            p_tekuci_racun := c1.tekuci_racun;
            p_banka_id := c1.banka_id;
            p_tip_ugovora_id := c1.tip_ugovora_id;
            p_korekcija := c1.korekcija;
            p_vazi := c1.vazi;
        end loop;
    end get_plata_radnika;

    procedure get_plata_radnika (
        p_id                    in number,
        p_ugovorena_bruto_plata out number
    ) is
    begin
        for c1 in (
            select
                ugovorena_bruto_plata
            from
                pl_radnici
            where
                id = p_id
        ) loop
            p_ugovorena_bruto_plata := c1.ugovorena_bruto_plata;
        end loop;
    end get_plata_radnika;

    procedure get_plata_radnika (
        p_id             in number,
        p_tip_ugovora_id out number,
        p_korekcija      out varchar2
    ) is
    begin
        for c1 in (
            select
                tip_ugovora_id,
                to_char(korekcija, '999G999G999G999G990D00') as korekcija
            from
                pl_radnici
            where
                id = p_id
        ) loop
            p_tip_ugovora_id := c1.tip_ugovora_id;
            p_korekcija := c1.korekcija;
        end loop;
    end get_plata_radnika;

    procedure get_plata_radnika (
        p_radnik_id    in number,
        p_tekuci_racun out varchar2,
        p_banka_id     out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                pl_radnici
            where
                    radnik_id = p_radnik_id
                and vazi = 'Y'
        ) loop
            p_tekuci_racun := c1.tekuci_racun;
            p_banka_id := c1.banka_id;
        end loop;
    end get_plata_radnika;

    function insert_plata_radnika (
        p_radnik_id      in number,
        p_koeficijent_lo in varchar2,
        p_plata_bruto    in number,
        p_prevoz_iznos   in number,
        p_prevoz_tip     in varchar2,
        p_tp_obrok_iznos in number,
        p_tekuci_racun   in varchar2,
        p_banka_id       in number,
        p_tip_ugovora_id in number,
        p_korekcija      in number
    ) return number is
        l_id    number;
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and tip_ugovora_id = p_tip_ugovora_id
            and vazi = 'Y';

        if l_count > 0 then
            raise_application_error(-20001, 'Ovaj radnik već ima aktivnu platu sa istim tipom ugovora.');
        end if;
        insert into pl_radnici (
            radnik_id,
            koeficijent_lo,
            ugovorena_bruto_plata,
            plata_bruto,
            prevoz_iznos,
            prevoz_tip,
            tp_obrok_iznos,
            tekuci_racun,
            banka_id,
            vazi,
            history,
            tip_ugovora_id,
            korekcija
        ) values ( p_radnik_id,
                   p_koeficijent_lo,
                   p_plata_bruto,
                   p_plata_bruto,
                   p_prevoz_iznos,
                   p_prevoz_tip,
                   p_tp_obrok_iznos,
                   p_tekuci_racun,
                   p_banka_id,
                   'Y',
                   'N',
                   p_tip_ugovora_id,
                   p_korekcija ) returning id into l_id;

        return l_id;
    end insert_plata_radnika;

    function update_plata_radnika (
        p_id             in number,
        p_radnik_id      in number,
        p_koeficijent_lo in varchar2,
        p_plata_bruto    in number,
        p_prevoz_iznos   in number,
        p_prevoz_tip     in varchar2,
        p_tp_obrok_iznos in number,
        p_tekuci_racun   in varchar2,
        p_banka_id       in number,
        p_tip_ugovora_id in number,
        p_korekcija      in number,
        p_vazi           in varchar2
    ) return number is
        l_id number;
    begin
        -- Trenutnu platu ubacujemo u history
        update pl_radnici
        set
            vazi = 'N',
            history = 'Y'
        where
            id = p_id;

        -- Ubacujemo novu platu
        insert into pl_radnici (
            radnik_id,
            koeficijent_lo,
            ugovorena_bruto_plata,
            plata_bruto,
            prevoz_iznos,
            prevoz_tip,
            tp_obrok_iznos,
            tekuci_racun,
            banka_id,
            vazi,
            history,
            tip_ugovora_id,
            korekcija
        ) values ( p_radnik_id,
                   p_koeficijent_lo,
                   p_plata_bruto,
                   p_plata_bruto,
                   p_prevoz_iznos,
                   p_prevoz_tip,
                   p_tp_obrok_iznos,
                   p_tekuci_racun,
                   p_banka_id,
                   p_vazi,
                   'N',
                   p_tip_ugovora_id,
                   p_korekcija ) returning id into l_id;

        -- Promjena poreskih odbitaka ukoliko ih ima
        update pl_poreski_odbici
        set
            plata_radnik_id = l_id
        where
            plata_radnik_id = p_id;

        return l_id;
    end update_plata_radnika;

    procedure update_plata_radnika_detalji (
        p_radnik_id       in number,
        p_plata_radnik_id in number
    ) is
        l_sum number;
    begin
        select
            sum(iznos)
        into l_sum
        from
            pl_detalji
        where
            radnik_id = p_radnik_id;

        if l_sum > 0 then
            update pl_radnici
            set
                plata_bruto = l_sum
            where
                id = p_plata_radnik_id;

        else
            update pl_radnici
            set
                plata_bruto = ugovorena_bruto_plata
            where
                id = p_plata_radnik_id;

        end if;

    end update_plata_radnika_detalji;

    -- Poreski odbici
    procedure get_plata_odbitak (
        p_id              in number,
        p_radnik_id       out number,
        p_plata_radnik_id out number,
        p_vrsta           out varchar2,
        p_iznos           out number,
        p_vazi            out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                pl_poreski_odbici
            where
                id = p_id
        ) loop
            p_radnik_id := c1.radnik_id;
            p_plata_radnik_id := c1.plata_radnik_id;
            p_vrsta := c1.vrsta;
            p_iznos := c1.iznos;
            p_vazi := c1.vazi;
        end loop;
    end get_plata_odbitak;

    procedure insert_plata_odbitak (
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_vrsta           in varchar2,
        p_iznos           in number
    ) is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            pl_poreski_odbici
        where
                plata_radnik_id = p_plata_radnik_id
            and vrsta = p_vrsta
            and vazi = 'Y';

        if l_count > 0 then
            raise_application_error(-20012, 'Već postoji unesena vrijednost za traženi tip odbitka.');
        end if;
        insert into pl_poreski_odbici (
            vrsta,
            iznos,
            plata_radnik_id,
            vazi,
            radnik_id
        ) values ( p_vrsta,
                   p_iznos,
                   p_plata_radnik_id,
                   'Y',
                   p_radnik_id );

    end insert_plata_odbitak;

    procedure update_plata_odbitak (
        p_id    in number,
        p_vrsta in varchar2,
        p_iznos in number,
        p_vazi  in varchar2
    ) is
    begin
        update pl_poreski_odbici
        set
            iznos = p_iznos,
            vrsta = p_vrsta,
            vazi = p_vazi
        where
            id = p_id;

    end update_plata_odbitak;

    procedure delete_plata_odbitak (
        p_id in number
    ) is
    begin
        delete from pl_poreski_odbici
        where
            id = p_id;

    end delete_plata_odbitak;

    -- Obustave
    procedure get_plata_obustava (
        p_id               in number,
        p_radnik_id        out number,
        p_iznos_ukupno     out number,
        p_iznos_trenutno   out number,
        p_mjesecni_anuitet out number,
        p_naziv            out varchar2,
        p_vazi             out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                pl_obustave
            where
                id = p_id
        ) loop
            p_radnik_id := c1.radnik_id;
            p_iznos_ukupno := c1.iznos_ukupno;
            p_iznos_trenutno := c1.iznos_trenutno;
            p_mjesecni_anuitet := c1.mjesecni_anuitet;
            p_naziv := c1.naziv;
            p_vazi := c1.vazi;
        end loop;
    end get_plata_obustava;

    procedure insert_plata_obustava (
        p_radnik_id        in number,
        p_iznos_ukupno     in number,
        p_iznos_trenutno   in number,
        p_mjesecni_anuitet in number,
        p_naziv            in varchar2
    ) is
    begin
        insert into pl_obustave (
            radnik_id,
            iznos_ukupno,
            iznos_trenutno,
            mjesecni_anuitet,
            naziv
        ) values ( p_radnik_id,
                   p_iznos_ukupno,
                   p_iznos_trenutno,
                   p_mjesecni_anuitet,
                   p_naziv );

    end insert_plata_obustava;

    procedure update_plata_obustava (
        p_id               in number,
        p_radnik_id        in number,
        p_iznos_ukupno     in number,
        p_iznos_trenutno   in number,
        p_mjesecni_anuitet in number,
        p_naziv            in varchar2,
        p_vazi             in varchar2
    ) is
    begin
        update pl_obustave
        set
            iznos_ukupno = p_iznos_ukupno,
            iznos_trenutno = p_iznos_trenutno,
            mjesecni_anuitet = p_mjesecni_anuitet,
            vazi = p_vazi,
            naziv = p_naziv
        where
            id = p_id;

    end update_plata_obustava;

    procedure delete_plata_obustava (
        p_id in number
    ) is
    begin
        delete from pl_obustave
        where
            id = p_id;

    end delete_plata_obustava;    

    -- Detalji obracuna / parametara plate
    procedure generate_pl_detalji (
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_mjesec          in date
    ) is

        cursor c_detalji is
        with working_days as (
            select
                datum,
                evidencija_prisutnosti_id,
                row_number()
                over(
                    order by
                        datum
                ) - row_number()
                    over(partition by evidencija_prisutnosti_id
                         order by
                             datum
                ) as grp
            from
                hr_siht_lista
            where
                    radnik_id = p_radnik_id
                and trunc(datum, 'MM') = trunc(p_mjesec, 'MM')
                and radni_dan = 'Y'
        ), grouped as (
            select
                min(datum) as start_date,
                max(datum) as end_date,
                evidencija_prisutnosti_id
            from
                working_days
            group by
                evidencija_prisutnosti_id,
                grp
        )
        select
            start_date,
            end_date,
            evidencija_prisutnosti_id,
            round(((end_date - start_date + 1) /(last_day(start_date) - trunc(start_date, 'MM') + 1)) * 100,
                  2) as percentage
        from
            grouped
        order by
            start_date;

        l_plata_bruto number;
    begin
        get_plata_radnika(
            p_id                    => p_plata_radnik_id,
            p_ugovorena_bruto_plata => l_plata_bruto
        );
        delete from pl_detalji
        where
            radnik_id = p_radnik_id;

        for c1 in c_detalji loop
            insert_pl_detalji(
                p_radnik_id                 => p_radnik_id,
                p_evidencija_prisutnosti_id => c1.evidencija_prisutnosti_id,
                p_datum_od                  => c1.start_date,
                p_datum_do                  => c1.end_date,
                p_sati                      => null,
                p_koeficijent               => null,
                p_iznos                     => l_plata_bruto * c1.percentage / 100,
                p_cijena_sata               => null
            );
        end loop;

        update_plata_radnika_detalji(
            p_radnik_id       => p_radnik_id,
            p_plata_radnik_id => p_plata_radnik_id
        );
    end generate_pl_detalji;

    procedure insert_pl_detalji (
        p_radnik_id                 in number,
        p_evidencija_prisutnosti_id in number,
        p_datum_od                  in date,
        p_datum_do                  in date,
        p_iznos                     in number,
        p_sati                      in number,
        p_koeficijent               in number,
        p_cijena_sata               in number
    ) is
    begin
        insert into pl_detalji (
            radnik_id,
            evidencija_prisutnosti_id,
            datum_od,
            datum_do,
            iznos,
            sati,
            koeficijent,
            cijena_sata
        ) values ( p_radnik_id,
                   p_evidencija_prisutnosti_id,
                   p_datum_od,
                   p_datum_do,
                   p_iznos,
                   p_sati,
                   p_koeficijent,
                   p_cijena_sata );

    end insert_pl_detalji;

    procedure update_pl_detalji (
        p_id                        in number,
        p_radnik_id                 in number,
        p_evidencija_prisutnosti_id in number,
        p_datum_od                  in date,
        p_datum_do                  in date,
        p_iznos                     in number,
        p_sati                      in number,
        p_koeficijent               in number,
        p_cijena_sata               in number
    ) is
    begin
        update pl_detalji
        set
            radnik_id = p_radnik_id,
            evidencija_prisutnosti_id = p_evidencija_prisutnosti_id,
            datum_od = p_datum_od,
            datum_do = p_datum_do,
            iznos = p_iznos,
            sati = p_sati,
            koeficijent = p_koeficijent,
            cijena_sata = p_cijena_sata
        where
            id = p_id;

    end update_pl_detalji;

    procedure delete_pl_detalji (
        p_id in number
    ) is
    begin
        delete from pl_detalji
        where
            id = p_id;

    end delete_pl_detalji;

    -- Obracunavanje plata
    procedure obracunaj_platu (
        p_radnik_id      in number,
        p_godina         in number,
        p_mjesec         in number,
        p_tip_ugovora_id in number,
        o_plata_id       out number
    ) as
    begin
        if ( p_radnik_id is null
             or p_godina is null
        or p_mjesec is null ) then
            raise_application_error(-20111, 'Nisu svi ulazni parametri uneseni.');
        end if;

        apex_debug.message('==================');
        apex_debug.message('TOP radnik_id = ' || p_radnik_id);
        apex_debug.message('TOP tip_ugovora_id = ' || p_tip_ugovora_id);
        case
            when p_tip_ugovora_id in ( 1, 6 ) then
                obracun_puno_radno_vrijeme(
                    p_radnik_id      => p_radnik_id,
                    p_godina         => p_godina,
                    p_mjesec         => p_mjesec,
                    p_tip_ugovora_id => p_tip_ugovora_id,
                    o_plata_id       => o_plata_id
                );
            when p_tip_ugovora_id = 2 then
                obracun_stipendija(
                    p_radnik_id      => p_radnik_id,
                    p_godina         => p_godina,
                    p_mjesec         => p_mjesec,
                    p_tip_ugovora_id => p_tip_ugovora_id,
                    o_plata_id       => o_plata_id
                );
            when p_tip_ugovora_id = 3 then
                obracun_djelo_dopunski_rad(
                    p_radnik_id      => p_radnik_id,
                    p_godina         => p_godina,
                    p_mjesec         => p_mjesec,
                    p_tip_ugovora_id => p_tip_ugovora_id,
                    o_plata_id       => o_plata_id
                );
            when p_tip_ugovora_id = 4 then
                obracun_menadzerski_ugovor(
                    p_radnik_id      => p_radnik_id,
                    p_godina         => p_godina,
                    p_mjesec         => p_mjesec,
                    p_tip_ugovora_id => p_tip_ugovora_id,
                    o_plata_id       => o_plata_id
                );
            when p_tip_ugovora_id in ( 5, 7 ) then
                obracun_privremeni_povremeni_poslovi(
                    p_radnik_id      => p_radnik_id,
                    p_godina         => p_godina,
                    p_mjesec         => p_mjesec,
                    p_tip_ugovora_id => p_tip_ugovora_id,
                    o_plata_id       => o_plata_id
                );
            else
                raise_application_error(-20111, 'Pogrešna vrsta ugovora.');
        end case;

    end obracunaj_platu;

    procedure obracun_puno_radno_vrijeme (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    ) as

        r_radnik              pl_radnici%rowtype;
        r_obustave            pl_obustave%rowtype;
        r_radnik_hr           hr_radnici%rowtype;
        r_pl_plate            pl_plate%rowtype;
        l_ima_obustavu        number;
        l_datum_od            date;
        l_datum_do            date;
        l_poslije_poreza      number;
        l_koristi_sh          number;
        l_radnih_dana         number;
        l_ukupno_dana_obracun number;
        l_plata_id            number;
        l_iznos_obustave      number := 0;
        l_odb_porodica        number;
        l_odb_kredit          number;
        l_odb_osiguranje      number;
        --1 RS, 2 FBIH

        l_broj_dana           number;
    begin
        select
            *
        into r_radnik_hr
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            *
        into r_radnik
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and history = 'N'
            and vazi = 'Y'
            and tip_ugovora_id = p_tip_ugovora_id;

        r_pl_plate.obrazovanje_id := r_radnik_hr.obrazovanje_id;
        r_pl_plate.tip_radnog_vremena_id := r_radnik_hr.tip_radnog_vremena_id;
        r_pl_plate.tip_radnog_odnosa_id := r_radnik_hr.tip_radnog_odnosa_id;
        r_pl_plate.banka_id := r_radnik.banka_id;
        r_pl_plate.ugovorena_bruto_plata := r_radnik.ugovorena_bruto_plata;
        l_broj_dana := get_broj_dana(
            p_mjesec => p_mjesec,
            p_godina => p_godina
        );
        r_pl_plate.cijena_sata := round(r_pl_plate.ugovorena_bruto_plata / l_broj_dana / 8, 2);

        -- od-do
        l_datum_od := to_date ( to_char(p_mjesec, '00')
                                || '-'
                                || to_char(p_godina), 'mm-yyyy' );

        l_datum_do := last_day(l_datum_od);

        -- provjera za obustavu
        select
            count(*)
        into l_ima_obustavu
        from
            pl_obustave
        where
                radnik_id = p_radnik_id
            and vazi = 'Y';

        if l_ima_obustavu > 0 then
            for x in (
                select
                    *
                from
                    pl_obustave
                where
                        radnik_id = p_radnik_id
                    and vazi = 'Y'
            ) loop
                r_obustave := x;
                if r_obustave.iznos_trenutno < r_obustave.mjesecni_anuitet then
                    r_obustave.mjesecni_anuitet := r_obustave.iznos_trenutno;
                end if;

                update pl_obustave
                set
                    iznos_trenutno = iznos_trenutno - r_obustave.mjesecni_anuitet
                where
                        radnik_id = x.radnik_id
                    and id = x.id;

                if r_obustave.iznos_trenutno - r_obustave.mjesecni_anuitet = 0 then
                    update pl_obustave
                    set
                        vazi = 'N'
                    where
                            radnik_id = x.radnik_id
                        and id = x.id;

                end if;

                l_iznos_obustave := l_iznos_obustave + r_obustave.mjesecni_anuitet;

                -- upisujemo obustavu u history 
                insert into pl_obustave_hist (
                    plata_id,
                    radnik_id,
                    obustava_id,
                    anuitet,
                    vazi
                ) values ( null,
                           p_radnik_id,
                           r_obustave.id,
                           r_obustave.mjesecni_anuitet,
                           'Y' );

            end loop;
        end if;

        -- Racunanje broja radnih dana i radnih dana za obracun
        begin
            -- select * into r_siht_lista 
            -- from hr_siht_lista where radnik_id = p_radnik_id and datum between l_datum_od and l_datum_do;

            --Na liniju ispod smo dodali trunct jer nije hvatao poslednji dan za between
            select
                count(*)
            into l_radnih_dana
            from
                hr_siht_lista
            where
                    radnik_id = p_radnik_id
                and trunc(datum) between l_datum_od and l_datum_do
                and evidencija_prisutnosti_id in ( 1, 2 );

            --Na liniju ispod smo dodali trunct jer nije hvatao poslednji dan za between         
            select
                count(*)
            into l_ukupno_dana_obracun
            from
                hr_siht_lista
            where
                    radnik_id = p_radnik_id
                and trunc(datum) between l_datum_od and l_datum_do
                and radni_dan = 'Y';

            l_koristi_sh := 1;
        exception
            when no_data_found then
                l_koristi_sh := 0;
            when others then
                raise;
        end;    

        -- Obracun plate FBIH
        if r_radnik_hr.entitet_id = 2 then
            -- sad obracunaj platu zasad samo fbih
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto;
            r_pl_plate.licni_odbitak := r_radnik.koeficijent_lo * fn_koeficijent(c_odb_fbih, 2);
            -- doprinosi na teret poslodavca --
            r_pl_plate.pio_poslodavac := r_radnik.plata_bruto * fn_koeficijent(c_pio_posl, 2);
            r_pl_plate.zdravstvo_poslodavac := r_radnik.plata_bruto * fn_koeficijent(c_zdr_posl, 2);
            r_pl_plate.nezaposlesnost_poslodavac := r_radnik.plata_bruto * fn_koeficijent(c_nez_posl, 2);
            -- sad doprinosi na teret radnika --
            r_pl_plate.pio_uposlenik := r_radnik.plata_bruto * fn_koeficijent(c_pio_rad, 2);
            r_pl_plate.zdravstvo_uposlenik := r_radnik.plata_bruto * fn_koeficijent(c_zdr_rad, 2);
            r_pl_plate.nezaposlenost_uposlenik := r_radnik.plata_bruto * fn_koeficijent(c_nez_rad, 2);
            --osnovica porez je bruto plata - doprinosi na teretoslodavca - iznos licnog odbitka
            -- obracunati bolovanje kako oni kazu da treba
            r_pl_plate.osnovica_porez := r_radnik.plata_bruto - ( r_pl_plate.pio_poslodavac + r_pl_plate.zdravstvo_poslodavac + r_pl_plate.nezaposlesnost_poslodavac
            ) - r_pl_plate.licni_odbitak;

            -- r_pl_plate.minuli_rad :=r_radnik_hr.staz_godina*fn_koeficijent(c_min_fbih,2);

            -- Ako se koristi siht lista i prevoz se racuna preko dnevne karte (cijena_karte * broj radnih dana)
            -- Ako se koristi siht lista i prevoz se racuna preko mjesecne karte (cijena karte)
            -- Ako se ne koristii shit lista prevoz i topli obrok = 0
            if
                l_koristi_sh = 1
                and r_radnik.prevoz_tip = 'D'
            then
                r_pl_plate.prevoz := l_radnih_dana * r_radnik.prevoz_iznos;
                r_pl_plate.topli_obrok := ( l_radnih_dana ) * r_radnik.tp_obrok_iznos;
            elsif
                l_koristi_sh = 1
                and r_radnik.prevoz_tip = 'M'
            then
                r_pl_plate.prevoz := r_radnik.prevoz_iznos;
                r_pl_plate.topli_obrok := ( l_radnih_dana ) * r_radnik.tp_obrok_iznos;
            else
                r_pl_plate.prevoz := 0;
                r_pl_plate.topli_obrok := 0;
            end if;

            r_pl_plate.broj_sati := l_ukupno_dana_obracun * 8;

            -- porez na dohodak je procenat od osnovice porez
            r_pl_plate.porez_dohodak := r_pl_plate.osnovica_porez * fn_koeficijent(c_doh_fbih, 2);

            -- ovo je sad neto primanje:  bruto plata - doprinosi na teret poslodavca - porez na platu
            r_pl_plate.neto_prije_poreza := r_radnik.plata_bruto - ( r_pl_plate.pio_poslodavac + r_pl_plate.zdravstvo_poslodavac + r_pl_plate.nezaposlesnost_poslodavac
            );

            l_poslije_poreza := r_radnik.plata_bruto - ( r_pl_plate.pio_poslodavac + r_pl_plate.zdravstvo_poslodavac + r_pl_plate.nezaposlesnost_poslodavac
            ) - r_pl_plate.porez_dohodak;

            l_poslije_poreza := l_poslije_poreza + r_pl_plate.prevoz + r_pl_plate.topli_obrok;
            r_pl_plate.minuli_rad := r_radnik_hr.staz_godina * fn_koeficijent(c_min_fbih, 2) * l_poslije_poreza;

            -- ako ima minuli rad topli obrok i prevoz dodaj ga na neto primanja i kasnije u troškove
            l_poslije_poreza := l_poslije_poreza + r_pl_plate.minuli_rad;

            -- rehabilacija ide nesto kao 0.55 od bruto plate
            r_pl_plate.rehabilitacija := r_radnik.plata_bruto * fn_koeficijent(c_reh_fbih, 2);
            r_pl_plate.vazi := 'Y';
            -- dodaj jos obracun toplog obroka, minulog rada i prevoza

            r_pl_plate.neto_poslije_poreza := r_pl_plate.neto_prije_poreza - r_pl_plate.porez_dohodak;
            r_pl_plate.ukupno_primanja := r_pl_plate.neto_poslije_poreza + r_pl_plate.prevoz + r_pl_plate.topli_obrok;
            r_pl_plate.ukupno_sa_obustavom := r_pl_plate.ukupno_primanja - l_iznos_obustave;
            r_pl_plate.porez_zastita_nepogode := r_pl_plate.neto_poslije_poreza * fn_koeficijent(c_nep_fbih, 2);
            r_pl_plate.vodna_naknada := r_pl_plate.neto_poslije_poreza * fn_koeficijent(c_vod_fbih, 2);
            r_pl_plate.izos_obustave := l_iznos_obustave;
            r_pl_plate.ukupno_dadzbina := r_pl_plate.pio_poslodavac + r_pl_plate.zdravstvo_poslodavac + r_pl_plate.nezaposlesnost_poslodavac
            + r_pl_plate.pio_uposlenik + r_pl_plate.zdravstvo_uposlenik + r_pl_plate.nezaposlenost_uposlenik + r_pl_plate.porez_zastita_nepogode
            + r_pl_plate.vodna_naknada + r_pl_plate.rehabilitacija;

            r_pl_plate.ukupno_troskova := r_pl_plate.neto_poslije_poreza + r_pl_plate.ukupno_dadzbina;

--            r_pl_plate.id := pl_plate_seq.nextval;
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;

            --- unesi uplatnice, stavi koeficijente u tabrlu --
            insert into pl_plate_uplatnice (
                plata_id,
                radnik_id,
                plata_porez,
                pio_doprinos,
                zdravstvo_fond_solid,
                zdravstvo_fond_kantona,
                nezaposlenost_f,
                nezaposlenos_k,
                porez_dohodak,
                opca_vodna_naknada,
                naknada_zastita_eln,
                naknada_rehabil,
                neto_plata,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac + r_pl_plate.pio_uposlenik,
                       ( r_pl_plate.zdravstvo_poslodavac + r_pl_plate.zdravstvo_uposlenik ) * fn_koeficijent(c_sol_fbih, 2),
                       ( r_pl_plate.zdravstvo_poslodavac + r_pl_plate.zdravstvo_uposlenik ) * fn_koeficijent(c_zk_fbih, 2),
                       ( r_pl_plate.nezaposlesnost_poslodavac + r_pl_plate.nezaposlenost_uposlenik ) * fn_koeficijent(c_nez_fbih, 2),
                       ( r_pl_plate.nezaposlesnost_poslodavac + r_pl_plate.nezaposlenost_uposlenik ) * fn_koeficijent(c_nez_kan, 2),
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.vodna_naknada,
                       r_pl_plate.porez_zastita_nepogode,
                       r_pl_plate.rehabilitacija,
                       r_pl_plate.neto_poslije_poreza,
                       'Y' );

            --- aszuriraj koliko je duga u obustavama ---

            ---------------------------------------------------------
            ---------------------------------------------------------
            insert into pl_plate_troskovi (
                plata_id,
                radnik_id,
                plata_porez,
                ukupno_pio,
                ukupno_zdravstvo,
                nezaposlenost,
                ostale_naknade,
                ukupno_dazbina,
                ukupni_troskovi_plate,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac + r_pl_plate.pio_uposlenik,
                       r_pl_plate.zdravstvo_poslodavac + r_pl_plate.zdravstvo_uposlenik,
                       r_pl_plate.nezaposlesnost_poslodavac + r_pl_plate.nezaposlenost_uposlenik,
                       r_pl_plate.vodna_naknada + r_pl_plate.porez_zastita_nepogode + r_pl_plate.rehabilitacija,
                       r_pl_plate.ukupno_dadzbina,
                       r_pl_plate.ukupno_troskova,
                       'Y' );

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

        -- Obracun plate RS
        elsif r_radnik_hr.entitet_id = 1 then
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto + coalesce(r_radnik.korekcija, 0);
            r_pl_plate.korekcija := coalesce(r_radnik.korekcija, 0);
            
            if r_radnik.korekcija > 0 then
                r_radnik.korekcija := null;
                update pl_radnici
                set
                    row = r_radnik
                where
                    id = r_radnik.id;
                
            end if;

            -- minuli rad
            select
                floor((months_between(sysdate + 1, zaposlen_od) + nvl(staz_godina, 0) * 12 + nvl(staz_mjesec, 0) + ceil(nvl(staz_dan,
                0) / 30)) / 12)
            into r_pl_plate.minuli_rad
            from
                hr_radnici
            where
                id = r_radnik_hr.id;

            r_pl_plate.minuli_rad := round(r_pl_plate.minuli_rad * fn_koeficijent(c_min_rs, 1) * r_radnik.plata_bruto,
                                           2);
            --  MR=BO*ST*0.3%  --

            -- Ako se koristi siht lista i prevoz se racuna preko dnevne karte (cijena_karte * broj radnih dana)
            -- Ako se koristi siht lista i prevoz se racuna preko mjesecne karte (cijena karte)
            -- Ako se ne koristii shit lista prevoz i topli obrok = 0
            if
                l_koristi_sh = 1
                and r_radnik.prevoz_tip = 'D'
            then
                r_pl_plate.prevoz := l_radnih_dana * r_radnik.prevoz_iznos;
                r_pl_plate.topli_obrok := ( l_radnih_dana ) * r_radnik.tp_obrok_iznos;
            elsif
                l_koristi_sh = 1
                and r_radnik.prevoz_tip = 'M'
            then
                r_pl_plate.prevoz := r_radnik.prevoz_iznos;
                r_pl_plate.topli_obrok := ( l_radnih_dana ) * r_radnik.tp_obrok_iznos;
            else
                r_pl_plate.prevoz := 0;
                r_pl_plate.topli_obrok := 0;
            end if;

            r_pl_plate.broj_sati := l_ukupno_dana_obracun * 8;

            --poreski odbici pojedinačno

            r_pl_plate.osnovni_licni_odb := round(r_radnik.koeficijent_lo * fn_koeficijent(c_odb_rs, 1),
                                                  2);

            select
                nvl(odb_porodica, 0)
            into l_odb_porodica
            from
                vw_pl_radnici
            where
                    radnik_id = p_radnik_id
                and history = 'N'
                and vazi = 'Y'
                and tip_ugovora_id = p_tip_ugovora_id;

            r_pl_plate.odb_porodica := l_odb_porodica;
            select
                nvl(odb_kredit, 0)
            into l_odb_kredit
            from
                vw_pl_radnici
            where
                    radnik_id = p_radnik_id
                and history = 'N'
                and vazi = 'Y'
                and tip_ugovora_id = p_tip_ugovora_id;

            r_pl_plate.odb_kredit := l_odb_kredit;
            select
                nvl(odb_osiguranje, 0)
            into l_odb_osiguranje
            from
                vw_pl_radnici
            where
                    radnik_id = p_radnik_id
                and history = 'N'
                and vazi = 'Y'
                and tip_ugovora_id = p_tip_ugovora_id;

            r_pl_plate.odb_osiguranje := l_odb_osiguranje;
            
            -- Poresko umanjenje
            r_pl_plate.poreska_umanjenje := l_odb_porodica + l_odb_kredit + l_odb_osiguranje;

            -- ukupan lični odbitak sabiramo
            r_pl_plate.licni_odbitak := round(r_radnik.koeficijent_lo * fn_koeficijent(c_odb_rs, 1) + r_pl_plate.odb_porodica + r_pl_plate.odb_kredit + r_pl_plate.odb_osiguranje, 2);
            
            -- Ukoliko je NK i trogodisnja SSS, 50km neoporezivi dio plate
            <<dodatni_neoporezivi_dio>>
            declare
                l_obrazovanje_sifra varchar2(64);
            begin
                sif.hr_pkg.get_obrazovanje (
                    p_id    => r_radnik_hr.obrazovanje_id,
                    p_sifra => l_obrazovanje_sifra
                );
                
                if l_obrazovanje_sifra in ('NSS', 'NK') then
                    r_pl_plate.licni_odbitak := r_pl_plate.licni_odbitak + 50;
                end if;
            
            end dodatni_neoporezivi_dio;

            r_pl_plate.ukupno_troskova := round(r_radnik.plata_bruto + r_pl_plate.minuli_rad + r_pl_plate.topli_obrok, 2);

            obracun_plate_rs(
                p_plata          => r_pl_plate,
                p_iznos_obustave => l_iznos_obustave
            );
            r_pl_plate.vazi := 'Y';
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;
            select
                *
            into r_pl_plate
            from
                pl_plate
            where
                id = l_plata_id;

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

            -- Bolovanje
            obracun_bolovanja(
                p_radnik_id => p_radnik_id,
                p_godina    => p_godina,
                p_mjesec    => p_mjesec,
                p_plata     => r_pl_plate
            );

            -- Prekovremeni sati
            obracun_prekovremenih_sati(
                p_radnik_id => p_radnik_id,
                p_godina    => p_godina,
                p_mjesec    => p_mjesec,
                p_plata     => r_pl_plate
            );


            -- Uplatnice
            insert_uplatnice_rs(
                p_plata_id  => l_plata_id,
                p_radnik_id => p_radnik_id,
                p_plata     => r_pl_plate
            );

            -- Troskovi
            insert_troskovi_rs(
                p_plata_id  => l_plata_id,
                p_radnik_id => p_radnik_id,
                p_plata     => r_pl_plate
            );


        -- Obracun plate Brcko Distrikt
        else
            null;
        end if;

        -- Updatujemo obustave
        update pl_obustave_hist
        set
            plata_id = o_plata_id
        where
            plata_id is null
            and radnik_id = p_radnik_id;

    end obracun_puno_radno_vrijeme;

    procedure obracun_bolovanja (
        p_radnik_id in pl_plate.radnik_id%type,
        p_godina    in pl_plate.godina%type,
        p_mjesec    in pl_plate.mjesec%type,
        p_plata     in out pl_plate%rowtype
    ) as

        l_first_day        date := to_date ( p_mjesec
                                      || '.'
                                      || p_godina, 'MM.YYYY' );
        l_last_day         date := last_day(l_first_day);
        l_count            number;
        l_tip_count        number;
        l_broj_dana        number;
        l_broj_sati        number;
        l_cijena_sata      number;
        l_iznos_evident    number;
        l_bolovanje_od     date;
        l_bolovanje_do     date;
        l_umanjenje        number;
        l_ukupno_umanjenje number := 0;
        l_ukupno_sati      number := 0;
        r_pl_bolovanja     pl_bolovanja%rowtype;
        type nt_type is
            table of number;
        tipovi_ids         nt_type := nt_type(8, 9, 15);
    begin
        select
            count(*)
        into l_count
        from
            b_zahtjevi
        where
                radnik_id = p_radnik_id
            and trunc(datum_od) <= l_last_day
            and trunc(coalesce(datum_do, l_last_day)) >= l_first_day
            and status_id in ( 3, 5 );

        if l_count > 0 then
            for bolovanje in (
                select
                    id,
                    procenat,
                    datum_od,
                    coalesce(datum_do, l_last_day) as datum_do
                from
                    b_zahtjevi
                where
                        radnik_id = p_radnik_id
                    and trunc(datum_od) <= l_last_day
                    and trunc(coalesce(datum_do, l_last_day)) >= l_first_day
                    and status_id in ( 3, 5 )
            ) loop
                l_bolovanje_od := l_first_day;
                l_bolovanje_do := l_last_day;
                apex_debug.message('bolovanje_id: ' || bolovanje.id);
                for i in 1..tipovi_ids.count loop
                    select
                        count(*)
                    into l_tip_count
                    from
                        plate_detalji
                    where
                            evidencija_prisutnosti_id = tipovi_ids(i)
                        and pl_id = p_plata.id;

                    apex_debug.message('evidencijaprisutnostiid: ' || tipovi_ids(i));
                    apex_debug.message('l_tip_count: ' || l_tip_count);
                    if l_tip_count > 0 then
                        -- 
                        if l_bolovanje_od < bolovanje.datum_od then
                            l_bolovanje_od := bolovanje.datum_od;
                        end if;
                        if l_bolovanje_do > bolovanje.datum_do then
                            l_bolovanje_do := bolovanje.datum_do;
                        end if;
                        apex_debug.message('l_bolovanje_od: ' || l_bolovanje_od);
                        apex_debug.message('l_bolovanje_do: ' || l_bolovanje_do);

                        -- Cijena sata i ukupni iznos
                        select
                            cijena_sata
                        into l_cijena_sata
                        from
                            plate_detalji
                        where
                                evidencija_prisutnosti_id = tipovi_ids(i)
                            and pl_id = p_plata.id;

                        apex_debug.message('l_cijena_sata: ' || l_cijena_sata);

                        -- Broj dana u ovom bolovanju
                        select
                            count(*)
                        into l_broj_dana
                        from
                            hr_siht_lista
                        where
                                radnik_id = p_radnik_id
                            and trunc(datum) between trunc(l_bolovanje_od) and trunc(l_bolovanje_do)
                            and ( evidencija_prisutnosti_id = tipovi_ids(i) );

                        l_broj_sati := l_broj_dana * 8;
                        l_iznos_evident := round(l_broj_sati * l_cijena_sata, 2);
                        apex_debug.message('l_broj_dana: ' || l_broj_dana);
                        apex_debug.message('l_broj_sati: ' || l_broj_sati);
                        apex_debug.message('l_iznos_evident: ' || l_iznos_evident);

                        -- Umanjujemo za procenat
                        l_umanjenje := round(l_iznos_evident *(bolovanje.procenat / 100), 2);
                        apex_debug.message('bolovanje.procenat: ' || bolovanje.procenat);
                        apex_debug.message('l_umanjenje: ' || l_umanjenje);

                        -- Sabiramo ukupno
                        if bolovanje.procenat < 100 then
                            l_ukupno_sati := l_ukupno_sati + l_broj_sati;
                        end if;
                        if l_umanjenje > 0 then
                            l_ukupno_umanjenje := l_ukupno_umanjenje + ( l_iznos_evident - l_umanjenje );
                        end if;

                    end if;

                    apex_debug.message('=============== ');
                end loop;

            end loop;

            p_plata.ukupno_troskova := p_plata.ukupno_troskova - p_plata.minuli_rad - p_plata.topli_obrok;
            r_pl_bolovanja.plata_id := p_plata.id;
            r_pl_bolovanja.radnik_id := p_radnik_id;
            r_pl_bolovanja.broj_sati := l_ukupno_sati;
            r_pl_bolovanja.bruto_iznos_full := p_plata.ukupno_troskova;
            r_pl_bolovanja.neto_iznos_full := p_plata.ukupno_primanja;
            p_plata.ukupno_troskova := p_plata.ukupno_troskova - l_ukupno_umanjenje;
            p_plata.minuli_rad := obracun_plate_minuli_rad(
                p_radnik_id => p_plata.radnik_id,
                p_bruto     => p_plata.ukupno_troskova
            );

            p_plata.ukupno_troskova := p_plata.ukupno_troskova + p_plata.minuli_rad + p_plata.topli_obrok;
            obracun_plate_rs(
                p_plata          => p_plata,
                p_iznos_obustave => p_plata.izos_obustave
            );
            r_pl_bolovanja.bruto_iznos := p_plata.ukupno_troskova - p_plata.minuli_rad - p_plata.topli_obrok;
            r_pl_bolovanja.neto_iznos := p_plata.ukupno_primanja;

            -- Insert u bolovanje
            insert into pl_bolovanja values r_pl_bolovanja;

            -- Update plate
            update pl_plate
            set
                row = p_plata
            where
                id = p_plata.id;

        end if;

    end obracun_bolovanja;

    procedure obracun_prekovremenih_sati (
        p_radnik_id in number,
        p_godina    in number,
        p_mjesec    in number,
        p_plata     in out pl_plate%rowtype
    ) is

        l_first_day   date := to_date ( p_mjesec
                                      || '.'
                                      || p_godina, 'MM.YYYY' );
        l_last_day    date := last_day(l_first_day);
        l_ooj_id      number;
        l_cijena_sata number;
        l_procenat    number;
        l_vrijednost  number;
        l_exist       number;
    begin
        select
            count(*)
        into l_exist
        from
            hr_siht_lista
        where
                radnik_id = p_radnik_id
            and pvs_tip_id is not null
            and trunc(datum, 'MM') = trunc(l_first_day, 'MM');

        -- Provjerava samo ukoliko ima prekovremenih sati..
        if l_exist > 0 then 
            -- OOJ
            select
                ooj_id
            into l_ooj_id
            from
                hr_radnici
            where
                id = p_radnik_id;

            -- Cijena sata
            select
                cijena_sata
            into l_cijena_sata
            from
                plate_detalji
            where
                evidencija_prisutnosti_id in ( 1, 2, 4, 5, 6,
                                               7, 8, 9 )
                and pl_id = p_plata.id
                and rownum = 1;

            for tip in (
                select
                    sum(pvs_kolicina) as broj_sati,
                    pvs_tip_id        as tip_id
                from
                    hr_siht_lista
                where
                        radnik_id = p_radnik_id
                    and trunc(datum) between l_first_day and l_last_day
                    and pvs_tip_id is not null
                group by
                    pvs_tip_id
            ) loop
                declare
                    r_pl_prekovremeni pl_prekovremeni%rowtype;
                begin
                    siht_lista_pkg.get_ooj_pvs_procenat(
                        p_ooj_id   => l_ooj_id,
                        p_pvs_id   => tip.tip_id,
                        p_procenat => l_procenat
                    );

                    r_pl_prekovremeni.plata_id := p_plata.id;
                    r_pl_prekovremeni.radnik_id := p_radnik_id;
                    r_pl_prekovremeni.pvs_id := tip.tip_id;
                    r_pl_prekovremeni.cijena_sata := round(l_cijena_sata +(l_cijena_sata * l_procenat / 100), 2);

                    r_pl_prekovremeni.broj_sati := tip.broj_sati;
                    r_pl_prekovremeni.procenat := l_procenat;
                    r_pl_prekovremeni.bruto_iznos_before := p_plata.ukupno_troskova;
                    r_pl_prekovremeni.neto_iznos_before := p_plata.ukupno_primanja;

                    -- Dodavanje 
                    l_vrijednost := r_pl_prekovremeni.cijena_sata * tip.broj_sati;
                    p_plata.ukupno_troskova := p_plata.ukupno_troskova + l_vrijednost;
                    p_plata.ukupno_troskova := p_plata.ukupno_troskova - p_plata.minuli_rad - p_plata.topli_obrok;
                    p_plata.minuli_rad := obracun_plate_minuli_rad(
                        p_radnik_id => p_plata.radnik_id,
                        p_bruto     => p_plata.ukupno_troskova
                    );

                    p_plata.ukupno_troskova := p_plata.ukupno_troskova + p_plata.minuli_rad + p_plata.topli_obrok;
                    obracun_plate_rs(
                        p_plata          => p_plata,
                        p_iznos_obustave => p_plata.izos_obustave
                    );

                    -- Nakon obracuna
                    r_pl_prekovremeni.bruto_iznos_after := p_plata.ukupno_troskova;
                    r_pl_prekovremeni.neto_iznos_after := p_plata.ukupno_primanja;

                    -- Insert u prekovremen
                    insert into pl_prekovremeni values r_pl_prekovremeni;

                end;
            end loop;

            -- Update plate
            update pl_plate
            set
                row = p_plata
            where
                id = p_plata.id;

        end if;

    end obracun_prekovremenih_sati;

    procedure obracun_plate_rs (
        p_plata          in out pl_plate%rowtype,
        p_iznos_obustave in number
    ) is
        l_ukupno_procenat       number;
        l_doprinosi_koeficijent number;
        l_porez_koeficijent     number;
        l_temp                  number;
    begin
        if
            p_plata.tip_ugovora_id = 6
            and p_plata.ukupno_troskova < c_min_bruto_rs
        then
            l_temp := p_plata.ukupno_troskova;
            p_plata.ukupno_troskova := c_min_bruto_rs;

            -- Doprinosi 
            -- PIO
            p_plata.pio_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_pio_posl, 1),
                                            2);
            -- Zdravstvo 
            p_plata.zdravstvo_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_zdr_posl, 1),
                                                  2);
            -- Zaposljavanje
            p_plata.nezaposlesnost_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_nez_posl, 1),
                                                       2);
            -- Djecija zastita (kolona solidarnost)
            p_plata.doprinos_solidarnost := round(p_plata.ukupno_troskova * fn_koeficijent(c_dj_zas, 1),
                                                  2);

            p_plata.ukupno_troskova := l_temp;
        else
            -- Doprinosi 
            -- PIO
            p_plata.pio_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_pio_posl, 1),
                                            2);
            -- Zdravstvo 
            p_plata.zdravstvo_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_zdr_posl, 1),
                                                  2);
            -- Zaposljavanje
            p_plata.nezaposlesnost_poslodavac := round(p_plata.ukupno_troskova * fn_koeficijent(c_nez_posl, 1),
                                                       2);
            -- Djecija zastita (kolona solidarnost)
            p_plata.doprinos_solidarnost := round(p_plata.ukupno_troskova * fn_koeficijent(c_dj_zas, 1),
                                                  2);

        end if;

        -- Ukupno doprinos
        p_plata.ukupno_dadzbina := p_plata.pio_poslodavac + p_plata.zdravstvo_poslodavac + p_plata.nezaposlesnost_poslodavac + p_plata.doprinos_solidarnost
        ;

		-- Osnovica za porez = Bruto - (Licni odbitak (ukupno osnovni odbitak plus poreska kartica))
        if p_plata.licni_odbitak > p_plata.ukupno_troskova then
            p_plata.licni_odbitak := p_plata.ukupno_troskova;
        end if;

        p_plata.osnovica_porez := p_plata.ukupno_troskova - p_plata.licni_odbitak; 

        -- Porez
        p_plata.porez_dohodak := round(p_plata.osnovica_porez * fn_koeficijent(c_doh_rs, 1),
                                       2);

        -- Isplata toplog obroka
        l_doprinosi_koeficijent := fn_koeficijent(c_pio_posl, 1) + fn_koeficijent(c_zdr_posl, 1) + fn_koeficijent(c_nez_posl, 1) + fn_koeficijent
        (c_dj_zas, 1);

        l_porez_koeficijent := fn_koeficijent(c_doh_rs, 1);
        l_ukupno_procenat := l_doprinosi_koeficijent + l_porez_koeficijent;
        p_plata.topli_obrok_isplata := round(p_plata.topli_obrok -(p_plata.topli_obrok * l_ukupno_procenat), 2);

        -- Neto prije poreza (Bruto - Doprinosi)
        p_plata.neto_prije_poreza := p_plata.ukupno_troskova - ( p_plata.ukupno_dadzbina ); 

        -- Neto poslije poreza (Bruto - Doprinosi - Porez)
        p_plata.neto_poslije_poreza := p_plata.ukupno_troskova - ( p_plata.ukupno_dadzbina ) - p_plata.porez_dohodak;

        -- Fond solidarnosti za lijecenje
        p_plata.rehabilitacija := round(p_plata.neto_poslije_poreza * fn_koeficijent(c_fsd_rs, 1),
                                        2);

        -- Ukupno (Poslije poreza + Prevoz - Rehabilitacija) 
        p_plata.ukupno_primanja := p_plata.neto_poslije_poreza + p_plata.prevoz - p_plata.rehabilitacija;
        p_plata.ukupno_sa_obustavom := p_plata.ukupno_primanja - p_iznos_obustave;
        p_plata.izos_obustave := p_iznos_obustave;
    end obracun_plate_rs;

    function obracun_plate_minuli_rad (
        p_radnik_id in number,
        p_bruto     in number
    ) return number is
        l_staz       number;
        l_minuli_rad number;
    begin
        select
            floor((months_between(sysdate + 1, zaposlen_od) + nvl(staz_godina, 0) * 12 + nvl(staz_mjesec, 0) + ceil(nvl(staz_dan, 0) / 30
            )) / 12)
        into l_staz
        from
            hr_radnici
        where
            id = p_radnik_id;

        return round(l_staz * fn_koeficijent(c_min_rs, 1) * p_bruto,
                     2);
    end obracun_plate_minuli_rad;

    procedure insert_troskovi_rs (
        p_plata_id  in number,
        p_radnik_id in number,
        p_plata     in pl_plate%rowtype
    ) as
    begin
        insert into pl_plate_troskovi (
            plata_id,
            radnik_id,
            plata_porez,
            ukupno_pio,
            ukupno_zdravstvo,
            nezaposlenost,
            ostale_naknade,
            ukupno_dazbina,
            ukupni_troskovi_plate,
            vazi
        ) values ( p_plata_id,
                   p_radnik_id,
                   p_plata.porez_dohodak,
                   p_plata.pio_poslodavac,
                   p_plata.zdravstvo_poslodavac,
                   p_plata.nezaposlesnost_poslodavac,
                   p_plata.doprinos_solidarnost,
                   p_plata.ukupno_dadzbina,
                   p_plata.ukupno_troskova,
                   'Y' );

    end insert_troskovi_rs;

    procedure insert_uplatnice_rs (
        p_plata_id  in number,
        p_radnik_id in number,
        p_plata     in pl_plate%rowtype
    ) as
    begin
        insert into pl_plate_uplatnice (
            plata_id,
            radnik_id,
            plata_porez,
            pio_doprinos,
            zdravstvo_fond_solid,
            zdravstvo_fond_kantona,
            nezaposlenost_f,
            nezaposlenos_k,
            porez_dohodak,
            opca_vodna_naknada,
            naknada_zastita_eln,
            naknada_rehabil,
            neto_plata,
            vazi
        ) values ( p_plata_id,
                   p_radnik_id,
                   p_plata.porez_dohodak,
                   p_plata.pio_poslodavac,
                   p_plata.zdravstvo_poslodavac,
                   0,
                   p_plata.nezaposlesnost_poslodavac,
                   0,
                   p_plata.porez_dohodak,
                   0,
                   0,
                   0,
                   p_plata.neto_poslije_poreza,
                   'Y' );

    end insert_uplatnice_rs;

    procedure insert_detalji (
        p_plata_id        in number,
        p_radnik_id       in number,
        p_plata_radnik_id in number,
        p_plata           in pl_plate%rowtype
    ) is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            pl_detalji
        where
                radnik_id = p_radnik_id
            and trunc(datum_od, 'MM') = trunc(p_plata.datum_obracuna_od, 'MM');

        if l_count > 0 then
            for c1 in (
                select
                    evidencija_prisutnosti_id,
                    sati,
                    koeficijent,
                    iznos,
                    cijena_sata
                from
                    pl_detalji
                where
                        radnik_id = p_radnik_id
                    and trunc(datum_od, 'MM') = trunc(p_plata.datum_obracuna_od, 'MM')
            ) loop
                insert into plate_detalji (
                    mjesec,
                    godina,
                    radnik_id,
                    evidencija_prisutnosti_id,
                    sati,
                    neto_plata,
                    cijena_sata,
                    iznos_evident,
                    pl_id,
                    koeficijent,
                    neto_iznos,
                    neto_cijena_sata
                ) values ( p_plata.mjesec,
                           p_plata.godina,
                           p_radnik_id,
                           c1.evidencija_prisutnosti_id,
                           c1.sati,
                           bruto2neto(c1.iznos, p_plata.tip_ugovora_id),
                           c1.cijena_sata,
                           c1.iznos,
                           p_plata.id,
                           c1.koeficijent,
                           null,
                           null );

            end loop;

            delete from pl_detalji
            where
                radnik_id = p_radnik_id;

            update pl_radnici
            set
                plata_bruto = ugovorena_bruto_plata
            where
                id = p_plata_radnik_id;

        else
            for c1 in (
                select
                    mjesec,
                    godina,
                    radnik_id,
                    ev_id,
                    sati,
                    neto_poslije_poreza,
                    ugovorena_bruto_plata / ( sum(sati)
                                              over(partition by radnik_id, mjesec, godina) ) * koeficijent        as cijena_sata,
                    ugovorena_bruto_plata / ( sum(sati)
                                              over(partition by radnik_id, mjesec, godina) ) * sati * koeficijent as iznos_evident,
                    neto_poslije_poreza / ( sum(sati)
                                            over(partition by radnik_id, mjesec, godina) ) * koeficijent        as neto_cijena_sata,
                    neto_poslije_poreza / ( sum(sati)
                                            over(partition by radnik_id, mjesec, godina) ) * sati * koeficijent as neto_iznos,
                    koeficijent
                from
                    (
                        select distinct
                            sl.evidencija_prisutnosti_id                                                   as ev_id,
                            sl.radnik_id,
                            p.godina,
                            p.mjesec,
                            count(*)
                            over(partition by sl.radnik_id, evidencija_prisutnosti_id, mjesec, godina) * 8 sati,
                            p.iznos_bruto                                                                  as ugovorena_bruto_plata,
                            neto_poslije_poreza,
                            ep.koeficijent
                        from
                                 hr_siht_lista sl
                            join pl_plate                  p on p.radnik_id = sl.radnik_id
                            join vw_radnici                r on sl.radnik_id = r.id
                            join sif.hr_sif_ev_prisutnosti ep on sl.evidencija_prisutnosti_id = ep.id
                        where
                            trunc(sl.datum) between p.datum_obracuna_od and p.datum_obracuna_do
                            and p.godina = p_plata.godina
                            and p.mjesec = p_plata.mjesec
                            and sl.radnik_id = p_radnik_id
                            and sl.evidencija_prisutnosti_id != 16
                            and sl.radni_dan = 'Y'
                            and p.tip_ugovora_id = p_plata.tip_ugovora_id
                        order by
                            radnik_id,
                            godina,
                            mjesec
                    )
            ) loop
                insert into plate_detalji (
                    mjesec,
                    godina,
                    radnik_id,
                    evidencija_prisutnosti_id,
                    sati,
                    neto_plata,
                    cijena_sata,
                    iznos_evident,
                    pl_id,
                    koeficijent,
                    neto_iznos,
                    neto_cijena_sata
                ) values ( c1.mjesec,
                           c1.godina,
                           c1.radnik_id,
                           c1.ev_id,
                           c1.sati,
                           round(c1.neto_poslije_poreza, 2),
                           round(c1.cijena_sata, 2),
                           round(c1.iznos_evident, 2),
                           p_plata.id,
                           c1.koeficijent,
                           round(c1.neto_iznos, 2),
                           round(c1.neto_cijena_sata, 2) );

            end loop;
        end if;

    end insert_detalji;

    procedure obracun_stipendija (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    ) as

        r_radnik          pl_radnici%rowtype;
        r_obustave        pl_obustave%rowtype;
        r_radnik_hr       hr_radnici%rowtype;
        r_pl_plate        pl_plate%rowtype;
        l_datum_od        date;
        l_datum_do        date;
        l_ukupno_primanja number;
        l_plata_id        number;
    begin
        select
            *
        into r_radnik_hr
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            *
        into r_radnik
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and history = 'N'
            and vazi = 'Y'
            and tip_ugovora_id = p_tip_ugovora_id;

        r_pl_plate.obrazovanje_id := r_radnik_hr.obrazovanje_id;
        r_pl_plate.tip_radnog_vremena_id := r_radnik_hr.tip_radnog_vremena_id;
        r_pl_plate.tip_radnog_odnosa_id := r_radnik_hr.tip_radnog_odnosa_id;
        r_pl_plate.banka_id := r_radnik.banka_id;

        -- od-do
        l_datum_od := to_date ( to_char(p_mjesec, '00')
                                || '-'
                                || to_char(p_godina), 'mm-yyyy' );

        l_datum_do := last_day(l_datum_od);

        -- Obracun za RS
        if r_radnik_hr.entitet_id = 1 then
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.vazi := 'Y';
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto;
            r_pl_plate.ukupno_troskova := r_radnik.plata_bruto;
            r_pl_plate.ukupno_primanja := r_radnik.plata_bruto;
            r_pl_plate.neto_poslije_poreza := r_radnik.plata_bruto;
            r_pl_plate.ukupno_sa_obustavom := r_pl_plate.ukupno_primanja;

--            r_pl_plate.id := pl_plate_seq.nextval;
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

        -- Obracun za FBIH
        elsif r_radnik_hr.entitet_id = 2 then
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. FBIH (ugovor o stipendiranju)');

        -- Obracun plate Brcko Distrikt
        else
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. BRCKO (ugovor o stipendiranju)');
        end if;

    end obracun_stipendija;

    procedure obracun_djelo_dopunski_rad (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    ) as

        r_radnik          pl_radnici%rowtype;
        r_obustave        pl_obustave%rowtype;
        r_radnik_hr       hr_radnici%rowtype;
        r_pl_plate        pl_plate%rowtype;
        l_datum_od        date;
        l_datum_do        date;
        l_ukupno_primanja number;
        l_plata_id        number;
    begin
        select
            *
        into r_radnik_hr
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            *
        into r_radnik
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and history = 'N'
            and vazi = 'Y'
            and tip_ugovora_id = p_tip_ugovora_id;

        r_pl_plate.obrazovanje_id := r_radnik_hr.obrazovanje_id;
        r_pl_plate.tip_radnog_vremena_id := r_radnik_hr.tip_radnog_vremena_id;
        r_pl_plate.tip_radnog_odnosa_id := r_radnik_hr.tip_radnog_odnosa_id;
        r_pl_plate.banka_id := r_radnik.banka_id;

        -- od-do
        l_datum_od := to_date ( to_char(p_mjesec, '00')
                                || '-'
                                || to_char(p_godina), 'mm-yyyy' );

        l_datum_do := last_day(l_datum_od);

        -- Obracun za RS
        if r_radnik_hr.entitet_id = 1 then
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.vazi := 'Y';
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto;
            r_pl_plate.ukupno_troskova := round(r_radnik.plata_bruto, 2);

            -- Doprinosi PIO - D=B*18.5%
            r_pl_plate.pio_poslodavac := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_dop_pio_rs, 1),
                                               2);

            -- Dohodak - DH=B-D
            r_pl_plate.osnovica_porez := round(r_pl_plate.ukupno_troskova - r_pl_plate.pio_poslodavac, 2);

            -- Porez - P=DH*13%
            r_pl_plate.porez_dohodak := round(r_pl_plate.osnovica_porez * fn_koeficijent(c_dop_doh_rs, 1),
                                              2);

            -- Neto naknada - N=B-(D+P)
            l_ukupno_primanja := r_pl_plate.ukupno_troskova - ( r_pl_plate.pio_poslodavac + r_pl_plate.porez_dohodak );
            r_pl_plate.ukupno_primanja := l_ukupno_primanja;
            r_pl_plate.neto_poslije_poreza := l_ukupno_primanja;
            r_pl_plate.ukupno_sa_obustavom := r_pl_plate.ukupno_primanja;

            -- Ukupne obaveze - D
            r_pl_plate.ukupno_dadzbina := r_pl_plate.pio_poslodavac;

--            r_pl_plate.id := pl_plate_seq.nextval;
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;

            -- Uplatnice
            insert into pl_plate_uplatnice (
                plata_id,
                radnik_id,
                plata_porez,
                pio_doprinos,
                porez_dohodak,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac,
                       r_pl_plate.porez_dohodak,
                       'Y' );

            -- Troskovi
            insert into pl_plate_troskovi (
                plata_id,
                radnik_id,
                plata_porez,
                ukupno_pio,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac,
                       'Y' );

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

        -- Obracun za FBIH
        elsif r_radnik_hr.entitet_id = 2 then
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. FBIH (ugovor o djelu / dopunskom radu)');

        -- Obracun plate Brcko Distrikt
        else
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. BRCKO (ugovor o djelu / dopunskom radu)');
        end if;

    end obracun_djelo_dopunski_rad;

    procedure obracun_menadzerski_ugovor (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    ) as

        r_radnik           pl_radnici%rowtype;
        r_obustave         pl_obustave%rowtype;
        r_radnik_hr        hr_radnici%rowtype;
        r_pl_plate         pl_plate%rowtype;
        l_datum_od         date;
        l_datum_do         date;
        l_ukupno_doprinosi number := 0;
        l_ukupno_primanja  number;
        l_plata_id         number;
    begin
        select
            *
        into r_radnik_hr
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            *
        into r_radnik
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and history = 'N'
            and vazi = 'Y'
            and tip_ugovora_id = p_tip_ugovora_id;

        r_pl_plate.obrazovanje_id := r_radnik_hr.obrazovanje_id;
        r_pl_plate.tip_radnog_vremena_id := r_radnik_hr.tip_radnog_vremena_id;
        r_pl_plate.tip_radnog_odnosa_id := r_radnik_hr.tip_radnog_odnosa_id;
        r_pl_plate.banka_id := r_radnik.banka_id;

        -- od-do
        l_datum_od := to_date ( to_char(p_mjesec, '00')
                                || '-'
                                || to_char(p_godina), 'mm-yyyy' );

        l_datum_do := last_day(l_datum_od);

        -- Obracun za RS
        if r_radnik_hr.entitet_id = 1 then
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.vazi := 'Y';
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto;
            r_pl_plate.ukupno_troskova := r_radnik.plata_bruto;

            -- Doprinosi na teret poslodavca
            -- PIO 18.5%
            r_pl_plate.pio_poslodavac := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_men_pio_posl_rs, 1),
                                               2);

            l_ukupno_doprinosi := l_ukupno_doprinosi + r_pl_plate.pio_poslodavac;

            -- Zdravstvo 10.2%
            r_pl_plate.zdravstvo_poslodavac := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_men_zdr_posl_rs, 1),
                                                     2);

            l_ukupno_doprinosi := l_ukupno_doprinosi + r_pl_plate.zdravstvo_poslodavac;

            -- Djecija zastita 1.7% (za RS, upisujemo u kolonu doprinos_solidarnost) (Marko tako napravio)
            r_pl_plate.doprinos_solidarnost := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_men_dj_zas_rs, 1),
                                                     2);

            l_ukupno_doprinosi := l_ukupno_doprinosi + r_pl_plate.doprinos_solidarnost;

            -- Nezaposlenost 0.6%
            r_pl_plate.nezaposlesnost_poslodavac := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_men_nez_posl_rs, 1),
                                                          2);

            l_ukupno_doprinosi := l_ukupno_doprinosi + r_pl_plate.nezaposlesnost_poslodavac;

            -- Neto prije poreza (NPP=B-PIO)
            r_pl_plate.neto_prije_poreza := r_pl_plate.ukupno_troskova - l_ukupno_doprinosi;
            r_pl_plate.osnovica_porez := r_pl_plate.neto_prije_poreza;

            -- Porez - P=DH*13%
            r_pl_plate.porez_dohodak := round(r_pl_plate.osnovica_porez * fn_koeficijent(c_men_doh_rs, 1),
                                              2);

            -- Neto naknada - N=B-D-P
            l_ukupno_primanja := r_pl_plate.ukupno_troskova - l_ukupno_doprinosi - r_pl_plate.porez_dohodak;
            r_pl_plate.ukupno_primanja := l_ukupno_primanja;
            r_pl_plate.neto_poslije_poreza := l_ukupno_primanja;
            r_pl_plate.ukupno_sa_obustavom := r_pl_plate.ukupno_primanja;

            -- Ukupne obaveze - D
            r_pl_plate.ukupno_dadzbina := l_ukupno_doprinosi;

--            r_pl_plate.id := pl_plate_seq.nextval;
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;

            -- Uplatnice
            insert into pl_plate_uplatnice (
                plata_id,
                radnik_id,
                plata_porez,
                pio_doprinos,
                zdravstvo_fond_solid,
                nezaposlenost_f,
                neto_plata,
                porez_dohodak,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac,
                       r_pl_plate.zdravstvo_poslodavac,
                       r_pl_plate.nezaposlesnost_poslodavac,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.neto_poslije_poreza,
                       'Y' );

            -- Troskovi
            insert into pl_plate_troskovi (
                plata_id,
                radnik_id,
                plata_porez,
                ukupno_pio,
                ukupno_zdravstvo,
                nezaposlenost,
                ostale_naknade,
                ukupno_dazbina,
                ukupni_troskovi_plate,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.pio_poslodavac,
                       r_pl_plate.zdravstvo_poslodavac,
                       r_pl_plate.nezaposlesnost_poslodavac,
                       r_pl_plate.doprinos_solidarnost,
                       r_pl_plate.ukupno_dadzbina,
                       r_pl_plate.ukupno_troskova,
                       'Y' );

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

        -- Obracun za FBIH
        elsif r_radnik_hr.entitet_id = 2 then
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. FBIH (menadžerski ugovor / dužnosti bez zasnivanja radnog odnosa)'
            );

        -- Obracun plate Brcko Distrikt
        else
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. BRCKO (menadžerski ugovor / dužnosti bez zasnivanja radnog odnosa)'
            );
        end if;

    end obracun_menadzerski_ugovor;

    procedure obracun_privremeni_povremeni_poslovi (
        p_radnik_id      in pl_plate.radnik_id%type,
        p_godina         in pl_plate.godina%type,
        p_mjesec         in pl_plate.mjesec%type,
        p_tip_ugovora_id in pl_plate.tip_ugovora_id%type,
        o_plata_id       out number
    ) as

        r_radnik          pl_radnici%rowtype;
        r_obustave        pl_obustave%rowtype;
        r_radnik_hr       hr_radnici%rowtype;
        r_pl_plate        pl_plate%rowtype;
        l_datum_od        date;
        l_datum_do        date;
        l_ukupno_primanja number;
        l_plata_id        number;
    begin
        select
            *
        into r_radnik_hr
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            *
        into r_radnik
        from
            pl_radnici
        where
                radnik_id = p_radnik_id
            and history = 'N'
            and vazi = 'Y'
            and tip_ugovora_id = p_tip_ugovora_id;

        r_pl_plate.obrazovanje_id := r_radnik_hr.obrazovanje_id;
        r_pl_plate.tip_radnog_vremena_id := r_radnik_hr.tip_radnog_vremena_id;
        r_pl_plate.tip_radnog_odnosa_id := r_radnik_hr.tip_radnog_odnosa_id;
        r_pl_plate.banka_id := r_radnik.banka_id;

        -- od-do
        l_datum_od := to_date ( to_char(p_mjesec, '00')
                                || '-'
                                || to_char(p_godina), 'mm-yyyy' );

        l_datum_do := last_day(l_datum_od);

        -- Obracun za RS
        if r_radnik_hr.entitet_id = 1 then
            r_pl_plate.radnik_id := p_radnik_id;
            r_pl_plate.godina := p_godina;
            r_pl_plate.mjesec := p_mjesec;
            r_pl_plate.tip_ugovora_id := p_tip_ugovora_id;
            r_pl_plate.datum_obracuna_od := l_datum_od;
            r_pl_plate.datum_obracuna_do := l_datum_do;
            r_pl_plate.vazi := 'Y';
            r_pl_plate.iznos_bruto := r_radnik.plata_bruto;
            r_pl_plate.ukupno_troskova := r_radnik.plata_bruto;

            -- Doprinosi - D=B*28.7%
            r_pl_plate.ukupno_dadzbina := round(r_pl_plate.ukupno_troskova * fn_koeficijent(c_pov_dop_rs, 1),
                                                2);

            -- Dohodak - DH=B-D
            r_pl_plate.osnovica_porez := r_pl_plate.ukupno_troskova - r_pl_plate.ukupno_dadzbina;

            -- Porez - P=DH*13%
            r_pl_plate.porez_dohodak := round(r_pl_plate.osnovica_porez * fn_koeficijent(c_pov_doh_rs, 1),
                                              2);

            -- Neto naknada - N=B-(D+P)
            l_ukupno_primanja := r_pl_plate.ukupno_troskova - ( r_pl_plate.ukupno_dadzbina + r_pl_plate.porez_dohodak );
            r_pl_plate.ukupno_primanja := l_ukupno_primanja;
            r_pl_plate.neto_poslije_poreza := l_ukupno_primanja;
            r_pl_plate.ukupno_sa_obustavom := r_pl_plate.ukupno_primanja;
            insert into pl_plate values r_pl_plate returning id into l_plata_id;

            o_plata_id := l_plata_id;

            -- Uplatnice
            insert into pl_plate_uplatnice (
                plata_id,
                radnik_id,
                plata_porez,
                porez_dohodak,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       r_pl_plate.porez_dohodak,
                       'Y' );

            -- Troskovi
            insert into pl_plate_troskovi (
                plata_id,
                radnik_id,
                plata_porez,
                vazi
            ) values ( l_plata_id,
                       p_radnik_id,
                       r_pl_plate.porez_dohodak,
                       'Y' );

            -- insert into plate_detalji
            insert_detalji(
                p_plata_id        => l_plata_id,
                p_radnik_id       => p_radnik_id,
                p_plata_radnik_id => r_radnik.id,
                p_plata           => r_pl_plate
            );

        -- Obracun za FBIH
        elsif r_radnik_hr.entitet_id = 2 then
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. FBIH (Ugovor o privremenim i povremenim poslovima)'
            );

        -- Obracun plate Brcko Distrikt
        else
            raise_application_error(-20001, 'Obracun za ovaj tip ugovora nije zavrsen. BRCKO (Ugovor o privremenim i povremenim poslovima)'
            );
        end if;

    end obracun_privremeni_povremeni_poslovi;

    procedure obrisi_platu (
        p_plata_id in number
    ) as
    begin
        delete from plate_detalji
        where
            pl_id = p_plata_id;

        delete from pl_poreski_odbici
        where
            plata_radnik_id = p_plata_id;

        delete from pl_plate_uplatnice
        where
            plata_id = p_plata_id;

        delete from pl_plate_troskovi
        where
            plata_id = p_plata_id;

        delete from pl_bolovanja
        where
            plata_id = p_plata_id;

        delete from pl_prekovremeni
        where
            plata_id = p_plata_id;

        for obustava in (
            select
                *
            from
                pl_obustave_hist
            where
                plata_id = p_plata_id
        ) loop
            update pl_obustave
            set
                iznos_trenutno = iznos_trenutno + obustava.anuitet,
                vazi = 'Y'
            where
                id = obustava.obustava_id;

        end loop;

        delete from pl_obustave_hist
        where
            plata_id = p_plata_id;

        delete from pl_plate
        where
            id = p_plata_id;

    end obrisi_platu;

    procedure arhiviraj_obracun (
        p_id in number
    ) as
    begin
        update pl_plate
        set
            vazi = 'N'
        where
            id = p_id;

    end arhiviraj_obracun;

    function get_broj_dana (
        p_mjesec in number,
        p_godina in number
    ) return number is
    begin
        return last_day(to_date(p_godina
                                || lpad(p_mjesec, 2, '0'),
         'YYYYMM')) - to_date ( p_godina
                                || lpad(p_mjesec, 2, '0'), 'YYYYMM' ) + 1;
    end get_broj_dana;

    function day_name (
        p_datum in date
    ) return varchar2 as
        day_name varchar2(50);
    begin
        day_name := to_char(sysdate, 'DAY', 'NLS_DATE_LANGUAGE = ''LATIN SERBIAN''');
        return day_name;
    end day_name;

    function first_day_nmonth (
        p_datum in date
    ) return date as
        l_first_day date;
    begin
        l_first_day := add_months(last_day(p_datum) + 1,
                                  0);
        return l_first_day;
    end first_day_nmonth;

    function last_day_nmonth (
        p_datum in date
    ) return date as
        l_first_day       date;
        last_day_of_month date;
    begin
        l_first_day := add_months(last_day(p_datum) + 1,
                                  0);
        last_day_of_month := last_day(l_first_day);
        return last_day_of_month;
    end last_day_nmonth;

    function month_name (
        p_datum in date
    ) return varchar2 as
        month_name varchar2(50);
    begin
        month_name := initcap(to_char(p_datum, 'MONTH', 'NLS_DATE_LANGUAGE = ''LATIN SERBIAN'''));
        return trim(month_name);
    end month_name;

    function radni_sati_ukupno (
        p_datum_od in date,
        p_datum_do in date,
        p_ooj_id   in number
    ) return number as
        l_radni_dani number;
        l_sati       number;
    begin
        select
            count(*)
        into l_radni_dani
        from
            hr_siht_lista
        where
                radnik_id = (
                    select
                        min(id)
                    from
                        hr_radnici
                    where
                        zaposlen_do is null
                        and ooj_id = p_ooj_id
                )
            and trunc(datum) between trunc(p_datum_od) and trunc(p_datum_do)
            and radni_dan = 'Y';

        l_sati := l_radni_dani * 8;
        return l_sati;
    end radni_sati_ukupno;

    function ukupno_pio (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_sum_pio number;
    begin
        select
            sum(pio_poslodavac)
        into l_sum_pio
        from
            vw_pl_plate
        where
                datum_obracuna_od >= p_datum_od
            and datum_obracuna_do <= p_datum_do
            and firma_id = p_firma;

        return l_sum_pio;
    end ukupno_pio;

    function ukupno_zdravstvo (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_ukupno_zdravstvo number;
    begin
        select
            sum(zdravstvo_poslodavac)
        into l_ukupno_zdravstvo
        from
            vw_pl_plate
        where
                datum_obracuna_od >= p_datum_od
            and datum_obracuna_do <= p_datum_do
            and firma_id = p_firma;

        return l_ukupno_zdravstvo;
    end ukupno_zdravstvo;

    function ukupno_nezaposlenost (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_ukupno_nezaposlenost number;
    begin
        select
            sum(nezaposlesnost_poslodavac)
        into l_ukupno_nezaposlenost
        from
            vw_pl_plate
        where
                datum_obracuna_od >= p_datum_od
            and datum_obracuna_do <= p_datum_do;

        return l_ukupno_nezaposlenost;
    end ukupno_nezaposlenost;

    function ukupno_dj_zastita (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_ukupno_dj_zastita number;
    begin
        select
            sum(ostale_naknade)
        into l_ukupno_dj_zastita
        from
            vw_pl_plate
        where
                datum_obracuna_od >= p_datum_od
            and datum_obracuna_do <= p_datum_do
            and firma_id = p_firma;

        return l_ukupno_dj_zastita;
    end ukupno_dj_zastita;

    function ukupno_doprinosi (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_ukupno_doprinosi number;
    begin
        l_ukupno_doprinosi := plate_pkg.ukupno_pio(p_datum_od, p_datum_do, p_firma) + plate_pkg.ukupno_zdravstvo(p_datum_od, p_datum_do
        , p_firma) + plate_pkg.ukupno_nezaposlenost(p_datum_od, p_datum_do, p_firma) + plate_pkg.ukupno_dj_zastita(p_datum_od, p_datum_do
        , p_firma);

        return l_ukupno_doprinosi;
    end ukupno_doprinosi;

    function ukupno_dohodak_po (
        p_datum_od in date,
        p_datum_do in date,
        p_firma    in number
    ) return number as
        l_ukupno_dohodak_po number;
    begin
        select
            sum(ukupno_troskova)
        into l_ukupno_dohodak_po
        from
            vw_pl_plate
        where
                datum_obracuna_od >= p_datum_od
            and datum_obracuna_do <= p_datum_do
            and firma_id = p_firma;

        return l_ukupno_dohodak_po;
    end ukupno_dohodak_po;

    function generate_nalog_halcom (
        p_ooj_id         in number,
        p_mjesec         in date,
        p_tip_ugovora_id in number
    ) return clob is

        cursor c_plate is
        (
            select
                to_char(datum_obracuna_od, 'MM.YY') as mjesec,
                radnik_racun,
                radnik_naziv,
                radnik_adresa,
                radnik_grad_naziv,
                to_char(
                    round((ukupno_sa_obustavom - prevoz - topli_obrok_isplata) * 100),
                    'FM0000000000000'
                )                                   as ukupno,
                to_char(
                    round(prevoz * 100),
                    'FM0000000000000'
                )                                   as prevoz,
                to_char(
                    round(topli_obrok_isplata * 100),
                    'FM0000000000000'
                )                                   as topli_obrok_isplata
            from
                vw_pl_plate
            where
                    ooj_id = p_ooj_id
                and tip_ugovora_id = p_tip_ugovora_id
                and trunc(datum_obracuna_od, 'MM') = trunc(p_mjesec, 'MM')
        );

        l_rezervisano1         varchar2(1) := '0';
        l_model_zaduzenja      varchar2(2) := ' ';
        l_referenca_zaduzenja  varchar2(23) := ' ';
        l_rezervisano2         varchar2(5) := '00000';
        l_rezervisano3         varchar2(1) := ' ';
        l_oblik_placanja       varchar2(1) := '2';
        l_sifra_placanja       varchar2(2) := '10';
        l_oblik_placanja_blank varchar2(1) := ' ';
        l_rezervisano4         varchar2(1) := ' ';
        l_model_odobrenja      varchar2(2) := ' ';
        l_referenca_odobrenja  varchar2(23) := ' ';
        l_datum_valute         varchar2(6) := ' ';
        l_tip_dokumenta        varchar2(1) := '0';
        l_tip_stavke           varchar2(1) := '1';
        l_hitno_placanje       varchar2(1) := '0';
        l_kraj_reda            varchar2(2) := chr(13)
                                   || chr(10);
        l_clob                 clob;
    begin
        for c1 in c_plate loop
            -- Ukupno
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 18)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_adresa, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(l_rezervisano1, 1)
                      || rpad(l_model_zaduzenja, 2)
                      || rpad(l_referenca_zaduzenja, 23)
                      || rpad('Neto plata za ' || c1.mjesec, 36)
                      || rpad(l_rezervisano2, 5)
                      || rpad(l_rezervisano3, 1)
                      || rpad(l_oblik_placanja, 1)
                      || rpad(l_sifra_placanja, 2)
                      || rpad(l_oblik_placanja_blank, 1)
                      || rpad(l_rezervisano4, 1)
                      || rpad(c1.ukupno, 13)
                      || rpad(l_model_odobrenja, 2)
                      || rpad(l_referenca_odobrenja, 23)
                      || rpad(l_datum_valute, 6)
                      || rpad(l_tip_dokumenta, 1)
                      || rpad(l_tip_stavke, 1)
                      || rpad(l_hitno_placanje, 1)
                      || l_kraj_reda;

            -- Topli obrok
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 18)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_adresa, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(l_rezervisano1, 1)
                      || rpad(l_model_zaduzenja, 2)
                      || rpad(l_referenca_zaduzenja, 23)
                      || rpad('Topli obrok za ' || c1.mjesec, 36)
                      || rpad(l_rezervisano2, 5)
                      || rpad(l_rezervisano3, 1)
                      || rpad(l_oblik_placanja, 1)
                      || rpad(l_sifra_placanja, 2)
                      || rpad(l_oblik_placanja_blank, 1)
                      || rpad(l_rezervisano4, 1)
                      || rpad(c1.topli_obrok_isplata, 13)
                      || rpad(l_model_odobrenja, 2)
                      || rpad(l_referenca_odobrenja, 23)
                      || rpad(l_datum_valute, 6)
                      || rpad(l_tip_dokumenta, 1)
                      || rpad(l_tip_stavke, 1)
                      || rpad(l_hitno_placanje, 1)
                      || l_kraj_reda;

--            -- Prevoz
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 18)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_adresa, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(l_rezervisano1, 1)
                      || rpad(l_model_zaduzenja, 2)
                      || rpad(l_referenca_zaduzenja, 23)
                      || rpad('Prevoz za ' || c1.mjesec, 36)
                      || rpad(l_rezervisano2, 5)
                      || rpad(l_rezervisano3, 1)
                      || rpad(l_oblik_placanja, 1)
                      || rpad(l_sifra_placanja, 2)
                      || rpad(l_oblik_placanja_blank, 1)
                      || rpad(l_rezervisano4, 1)
                      || rpad(c1.prevoz, 13)
                      || rpad(l_model_odobrenja, 2)
                      || rpad(l_referenca_odobrenja, 23)
                      || rpad(l_datum_valute, 6)
                      || rpad(l_tip_dokumenta, 1)
                      || rpad(l_tip_stavke, 1)
                      || rpad(l_hitno_placanje, 1)
                      || l_kraj_reda;

        end loop;

        apex_debug.message(l_clob);
        return l_clob;
    end generate_nalog_halcom;

    function generate_nalog_eklik (
        p_ooj_id         in number,
        p_mjesec         in date,
        p_tip_ugovora_id in number
    ) return clob is

        cursor c_plate is
        (
            select
                to_char(datum_obracuna_od, 'MM.YY') as mjesec,
                radnik_racun,
                radnik_naziv,
                radnik_adresa,
                radnik_grad_naziv,
                to_char(
                    round((ukupno_sa_obustavom - prevoz - topli_obrok_isplata) * 100),
                    'FM0000000000000'
                )                                   as ukupno,
                to_char(
                    round(prevoz * 100),
                    'FM0000000000000'
                )                                   as prevoz,
                to_char(
                    round(topli_obrok_isplata * 100),
                    'FM0000000000000'
                )                                   as topli_obrok_isplata
            from
                vw_pl_plate
            where
                    ooj_id = p_ooj_id
                and ( tip_ugovora_id = p_tip_ugovora_id
                      or p_tip_ugovora_id is null )
                and trunc(datum_obracuna_od, 'MM') = trunc(p_mjesec, 'MM')
        );

        cursor c_ooj is
        (
            select
                ooj_ziro_racun,
                ooj_naziv,
                ooj_grad_naziv,
                count(*) * 3 as broj_naloga,
                to_char(
                    round(sum(ukupno_sa_obustavom * 100)),
                    'FM000000000000000'
                )            as ukupno
            from
                vw_pl_plate
            where
                    ooj_id = p_ooj_id
                and ( tip_ugovora_id = p_tip_ugovora_id
                      or p_tip_ugovora_id is null )
                and trunc(datum_obracuna_od, 'MM') = trunc(p_mjesec, 'MM')
            group by
                ooj_ziro_racun,
                ooj_naziv,
                ooj_grad_naziv
            fetch first 1 row only
        );

        l_kraj_reda varchar2(2) := chr(13)
                                   || chr(10);
        l_clob      clob;
    begin
        for ooj in c_ooj loop
            l_clob := l_clob
                      || rpad(ooj.ooj_ziro_racun, 16)
                      || rpad(' ', 2)
                      || rpad(ooj.ooj_naziv, 35)
                      || rpad(ooj.ooj_grad_naziv, 10)
                      || rpad(
                to_char(sysdate + 1, 'DDMMYYYY'),
                6
            )
                      || rpad(' ', 266)
                      || rpad('1', 1)
                      || l_kraj_reda;

            l_clob := l_clob
                      || rpad(ooj.ooj_ziro_racun, 16)
                      || rpad(' ', 2)
                      || rpad(ooj.ooj_naziv, 35)
                      || rpad(ooj.ooj_grad_naziv, 10)
                      || rpad(ooj.ukupno, 15)
                      || rpad(ooj.broj_naloga, 5)
                      || rpad(' ', 252)
                      || rpad('9', 1)
                      || l_kraj_reda;

        end loop;

        for c1 in c_plate loop
            -- Ukupno
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 16)
                      || rpad(' ', 2)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(' ', 25)
                      || rpad('Neto plata za ' || c1.mjesec, 140)
                      || rpad(' ', 11)
                      || rpad(c1.ukupno, 13)
                      || rpad(' ', 30)
                      || rpad(' ', 1)
                      || rpad(' ', 13)
                      || rpad(' ', 1)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 3)
                      || rpad(' ', 7)
                      || rpad(' ', 10)
                      || rpad('1', 1)
                      || l_kraj_reda;

            -- Topli obrok
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 16)
                      || rpad(' ', 2)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(' ', 25)
                      || rpad('Topli obrok za ' || c1.mjesec, 140)
                      || rpad(' ', 11)
                      || rpad(c1.topli_obrok_isplata, 13)
                      || rpad(' ', 30)
                      || rpad(' ', 1)
                      || rpad(' ', 13)
                      || rpad(' ', 1)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 3)
                      || rpad(' ', 7)
                      || rpad(' ', 10)
                      || rpad('1', 1)
                      || l_kraj_reda;

--            -- Prevoz
            l_clob := l_clob
                      || rpad(c1.radnik_racun, 16)
                      || rpad(' ', 2)
                      || rpad(c1.radnik_naziv, 35)
                      || rpad(c1.radnik_grad_naziv, 10)
                      || rpad(' ', 25)
                      || rpad('Prevoz za za ' || c1.mjesec, 140)
                      || rpad(' ', 11)
                      || rpad(c1.prevoz, 13)
                      || rpad(' ', 30)
                      || rpad(' ', 1)
                      || rpad(' ', 13)
                      || rpad(' ', 1)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 6)
                      || rpad(' ', 3)
                      || rpad(' ', 7)
                      || rpad(' ', 10)
                      || rpad('1', 1)
                      || l_kraj_reda;

        end loop;

        apex_debug.message(l_clob);
        return l_clob;
    end generate_nalog_eklik;

end plate_pkg;
/

prompt
prompt Creating package body POTVRDE_PKG
prompt =================================
prompt
create or replace package body hrm.potvrde_pkg is

    procedure get_potvrda (
        p_id             in number,
        p_ooj_id         out number,
        p_radnik_id      out number,
        p_tip_potvrde_id out number,
        p_godina         out number,
        p_naziv          out varchar2,
        p_broj           out number,
        p_datum_potvrde  out date,
        p_valid          out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_potvrde
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_radnik_id := c1.radnik_id;
            p_tip_potvrde_id := c1.tip_potvrde_id;
            p_godina := c1.godina;
            p_naziv := c1.naziv;
            p_broj := c1.broj;
            p_datum_potvrde := c1.datum_potvrde;
            p_valid := c1.valid;
        end loop;
    end get_potvrda;

    procedure insert_potvrda (
        p_ooj_id         in number,
        p_radnik_id      in number,
        p_tip_potvrde_id in number,
        p_godina         in number,
        p_naziv          in varchar2,
        p_broj           in number,
        p_datum_potvrde  in date
    ) is
    begin
        insert into hr_potvrde (
            ooj_id,
            radnik_id,
            tip_potvrde_id,
            godina,
            naziv,
            broj,
            datum_potvrde
        ) values ( p_ooj_id,
                   p_radnik_id,
                   p_tip_potvrde_id,
                   p_godina,
                   p_naziv,
                   p_broj,
                   p_datum_potvrde );

    end insert_potvrda;

    procedure update_potvrda (
        p_id             in number,
        p_ooj_id         in number,
        p_radnik_id      in number,
        p_tip_potvrde_id in number,
        p_godina         in number,
        p_naziv          in varchar2,
        p_broj           in number,
        p_datum_potvrde  in date,
        p_valid          in varchar2
    ) is
    begin
        update hr_potvrde
        set
            ooj_id = p_ooj_id,
            radnik_id = p_radnik_id,
            tip_potvrde_id = p_tip_potvrde_id,
            godina = p_godina,
            naziv = p_naziv,
            broj = p_broj,
            datum_potvrde = p_datum_potvrde,
            valid = p_valid
        where
            id = p_id;

    end update_potvrda;

    procedure delete_potvrda (
        p_id in number
    ) is
    begin
        delete from hr_potvrde
        where
            id = p_id;

    end delete_potvrda;

end potvrde_pkg;
/

prompt
prompt Creating package body PROJEKTI_PKG
prompt ==================================
prompt
create or replace package body hrm.projekti_pkg is

    function get_korisnik_naziv (
        p_korisnik_id in number
    ) return varchar2 is
        l_naziv varchar2(255);
    begin
        select
            initcap(ime)
            || ' '
            || initcap(prezime)
        into l_naziv
        from
            core.korisnici
        where
            id = p_korisnik_id;

        return l_naziv;
    exception
        when no_data_found then
            raise_application_error(-20001, 'Pogrešan korisnik, kontaktirajte admina');
    end get_korisnik_naziv;

    function check_korisnik_pristup (
        p_projekat_id   in number,
        p_korisnik_id   in number,
        p_pristup_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                1
            from
                vw_p_projekat_korisnici
            where
                    projekat_id = p_projekat_id
                and korisnik_id = p_korisnik_id
                and instr(
                    lower(p_pristup_sifra),
                    lower(pristup_sifra)
                ) > 0
        ) loop
            return 1;
        end loop;

        return 0;
    end check_korisnik_pristup;

    function check_korisnik_kartica_pristup (
        p_projekat_id in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    ) return number is
    begin
        for c1 in (
            select
                1
            from
                vw_p_projekat_korisnici
            where
                    projekat_id = p_projekat_id
                and korisnik_id = p_korisnik_id
                and korisnik_id in (
                    select
                        korisnik_id
                    from
                        p_kartica_korisnici
                    where
                        kartica_id = p_kartica_id
                )
        ) loop
            return 1;
        end loop;

        return 0;
    end check_korisnik_kartica_pristup;

    -- OOJ labeli
    procedure get_ooj_label (
        p_id         in number,
        p_ooj_id     out number,
        p_naziv      out varchar2,
        p_color_code out varchar2,
        p_valid      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_ooj_labeli
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
        end loop;
    end get_ooj_label;

    procedure get_ooj_label (
        p_id         in number,
        p_naziv      out varchar2,
        p_color_code out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_ooj_labeli
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
        end loop;
    end get_ooj_label;

    procedure get_ooj_label (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_ooj_labeli
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_ooj_label;

    procedure insert_ooj_label (
        p_ooj_id     in number,
        p_naziv      in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into p_ooj_labeli (
            ooj_id,
            naziv,
            color_code
        ) values ( p_ooj_id,
                   p_naziv,
                   p_color_code );

    end insert_ooj_label;

    procedure update_ooj_label (
        p_id         in number,
        p_ooj_id     in number,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update p_ooj_labeli
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_ooj_label;

    procedure delete_ooj_label (
        p_id in number
    ) is
    begin
        delete from p_kartica_labeli
        where
            label_id = p_id;

        delete from p_ooj_labeli
        where
            id = p_id;

    end delete_ooj_label;

    -- OOJ projekti
    procedure get_projekat (
        p_id         in number,
        p_ooj_id     out number,
        p_naziv      out varchar2,
        p_opis       out varchar2,
        p_status_id  out number,
        p_klijent_id out number,
        p_valid      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_projekti
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_status_id := c1.status_id;
            p_klijent_id := c1.klijent_id;
            p_valid := c1.valid;
        end loop;
    end get_projekat;

    procedure get_projekat (
        p_id            in number,
        p_naziv         out varchar2,
        p_pozadina_path out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_p_projekti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_pozadina_path := '#WORKSPACE_FILES#' || c1.pozadina_file_name;
        end loop;
    end get_projekat;

    procedure insert_projekat (
        p_korisnik_id in number,
        p_ooj_id      in number,
        p_klijent_id  in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    ) is
        l_id          number;
        l_pozadina_id number;
    begin
        select
            id
        into l_pozadina_id
        from
            sif.p_sif_pozadine
        where
                osnovna_pozadina = 'Y'
            and rownum = 1;

        insert into p_projekti (
            ooj_id,
            klijent_id,
            naziv,
            opis,
            pozadina_id
        ) values ( p_ooj_id,
                   p_klijent_id,
                   p_naziv,
                   p_opis,
                   l_pozadina_id ) returning id into l_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_projekat',
            p_projekat_id         => l_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Kreirao novi projekat - <b>'
                          || p_naziv
                          || '</b>'
        );

        insert_projekat_korisnik(
            p_admin_id    => p_korisnik_id,
            p_projekat_id => l_id,
            p_korisnik_id => p_korisnik_id,
            p_pristup_id  => 1
        );

    end insert_projekat;

    procedure update_projekat (
        p_id          in number,
        p_korisnik_id in number,
        p_naziv       in varchar2,
        p_opis        in varchar2,
        p_status_id   in number,
        p_klijent_id  in number
    ) is
    begin
        update p_projekti
        set
            naziv = p_naziv,
            opis = p_opis,
            status_id = p_status_id,
            klijent_id = p_klijent_id
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_projekat',
            p_projekat_id         => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao <b>naziv / opis / status</b> projekta.'
        );

    end update_projekat;

    procedure archive_projekat (
        p_korisnik_id in number,
        p_id          in number
    ) is
    begin
        update p_projekti
        set
            valid = 'N'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'archive_projekat',
            p_projekat_id         => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Arhivirao projekat.'
        );

    end archive_projekat;

    procedure unarchive_projekat (
        p_korisnik_id in number,
        p_id          in number
    ) is
    begin
        update p_projekti
        set
            valid = 'Y'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'unarchive_projekat',
            p_projekat_id         => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dearhivirao projekat.'
        );

    end unarchive_projekat;

    procedure delete_projekat (
        p_korisnik_id in number,
        p_id          in number
    ) is
        cursor c_liste is
        (
            select
                id
            from
                p_projekat_liste
            where
                projekat_id = p_id
        );

    begin
        for lista in c_liste loop
            delete_projekat_lista(
                p_korisnik_id => p_korisnik_id,
                p_id          => lista.id
            );
        end loop;

        delete from p_projekat_korisnici
        where
            projekat_id = p_id;

        delete from p_projekat_dokumenti
        where
            projekat_id = p_id;

        delete from p_projekat_komentari
        where
            projekat_id = p_id;

        delete from p_projekti
        where
            id = p_id;

    end delete_projekat;

    procedure update_projekat_pozadina (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_pozadina_id in number
    ) is
    begin
        update p_projekti
        set
            pozadina_id = p_pozadina_id
        where
            id = p_projekat_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_projekat_pozadina',
            p_projekat_id         => p_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao pozadinu projekta.'
        );

    end update_projekat_pozadina;

    -- Projekat korisnici
    procedure get_projekat_korisnik (
        p_id          in number,
        p_projekat_id out number,
        p_korisnik_id out number,
        p_pristup_id  out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_projekat_korisnici
            where
                id = p_id
        ) loop
            p_projekat_id := c1.projekat_id;
            p_korisnik_id := c1.korisnik_id;
            p_pristup_id := c1.pristup_id;
        end loop;
    end get_projekat_korisnik;

    procedure insert_projekat_korisnik (
        p_admin_id    in number,
        p_projekat_id in number,
        p_korisnik_id in number,
        p_pristup_id  in number
    ) is
    begin
        insert into p_projekat_korisnici (
            projekat_id,
            korisnik_id,
            pristup_id
        ) values ( p_projekat_id,
                   p_korisnik_id,
                   p_pristup_id );

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_projekat_korisnik',
            p_projekat_id         => p_projekat_id,
            p_korisnik_id         => p_admin_id,
            p_komentar            => 'Dodao novog korisnika na projekat - <b>'
                          || get_korisnik_naziv(p_korisnik_id)
                          || '</b>'
        );

        mail_pkg.posalji_dodavanje_projekat(
            p_korisnik_id => p_korisnik_id,
            p_admin_id    => p_admin_id,
            p_projekat_id => p_projekat_id,
            p_pristup_id  => p_pristup_id
        );

    end insert_projekat_korisnik;

    procedure update_projekat_korisnik (
        p_korisnik_id in number,
        p_id          in number,
        p_pristup_id  in number
    ) is
        l_id          number;
        l_projekat_id number;
    begin
        select
            korisnik_id,
            projekat_id
        into
            l_id,
            l_projekat_id
        from
            p_projekat_korisnici
        where
            id = p_id;

        update p_projekat_korisnici
        set
            pristup_id = p_pristup_id
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_projekat_korisnik',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao nivo pristupa korisniku na projektu - <b>'
                          || get_korisnik_naziv(l_id)
                          || '</b>'
        );

    end update_projekat_korisnik;

    procedure delete_projekat_korisnik (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_id          number;
        l_projekat_id number;
    begin
        select
            korisnik_id,
            projekat_id
        into
            l_id,
            l_projekat_id
        from
            p_projekat_korisnici
        where
            id = p_id;

        delete from p_projekat_korisnici
        where
            id = p_id;

        mail_pkg.posalji_uklanjanje_projekat(
            p_korisnik_id => l_id,
            p_admin_id    => p_korisnik_id,
            p_projekat_id => l_projekat_id
        );

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_projekat_korisnik',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao korisnika sa projekta - <b>'
                          || get_korisnik_naziv(l_id)
                          || '</b>'
        );

    end delete_projekat_korisnik;

    -- Projekat dokumenti
    procedure get_projekat_dokument (
        p_id          in number,
        p_projekat_id out number,
        p_naziv       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_projekat_dokumenti
            where
                id = p_id
        ) loop
            p_projekat_id := c1.projekat_id;
            p_naziv := c1.naziv;
        end loop;
    end get_projekat_dokument;

    procedure insert_projekat_docs (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2,
        p_docs        in varchar2
    ) is
        l_count number := 0;
    begin
        for x in (
            select
                regexp_substr(p_docs, '[^:]+', 1, level) document
            from
                dual
            connect by
                level <= length(p_docs) - length(replace(p_docs, ':')) + 1
        ) loop
            l_count := l_count + 1;
            insert_projekat_dokument(
                p_korisnik_id => p_korisnik_id,
                p_projekat_id => p_projekat_id,
                p_naziv       => lpad(
                    to_char(l_count),
                    2,
                    '0'
                )
                           || '_'
                           || p_naziv,
                p_dokument    => x.document
            );

        end loop;
    end insert_projekat_docs;

    procedure insert_projekat_dokument (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2,
        p_dokument    in varchar2
    ) is
        l_blob     blob;
        l_size     number;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into p_projekat_dokumenti (
            projekat_id,
            naziv,
            dokument,
            dokument_filename,
            dokument_mimetype,
            dokument_lastupd
        ) values ( p_projekat_id,
                   p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   sysdate );

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_projekat_dokument',
            p_projekat_id         => p_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dodao novi fajl na projekat - <b>'
                          || p_naziv
                          || '</b>'
        );

    end insert_projekat_dokument;

    procedure update_projekat_dokument (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    ) is
        l_projekat_id number;
        l_naziv       number;
    begin
        select
            projekat_id,
            naziv
        into
            l_projekat_id,
            l_naziv
        from
            p_projekat_dokumenti
        where
            id = p_id;

        update p_projekat_dokumenti
        set
            naziv = p_naziv
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_projekat_dokument',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao fajl na projektu - <b>'
                          || p_naziv
                          || '</b>'
        );

    end update_projekat_dokument;

    procedure delete_projekat_dokument (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_projekat_id number;
        l_naziv       number;
    begin
        select
            projekat_id,
            naziv
        into
            l_projekat_id,
            l_naziv
        from
            p_projekat_dokumenti
        where
            id = p_id;

        delete from p_projekat_dokumenti
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_projekat_dokument',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao fajl sa projekta - <b>'
                          || l_naziv
                          || '</b>'
        );

    end delete_projekat_dokument;

    -- Projekat liste
    procedure get_projekat_lista (
        p_id          in number,
        p_projekat_id out number,
        p_naziv       out varchar2,
        p_valid       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_projekat_liste
            where
                id = p_id
        ) loop
            p_projekat_id := c1.projekat_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        end loop;
    end get_projekat_lista;

    function get_projekat_lista_sequence (
        p_id in number
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                p_projekat_liste
            where
                id = p_id
        ) loop
            return c1.sequence;
        end loop;
    end get_projekat_lista_sequence;

    procedure get_projekat_lista (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_projekat_liste
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_projekat_lista;

    procedure insert_projekat_lista (
        p_korisnik_id in number,
        p_projekat_id in number,
        p_naziv       in varchar2
    ) is
        l_sequence number;
    begin
        select
            count(*) + 1
        into l_sequence
        from
            p_projekat_liste
        where
            projekat_id = p_projekat_id;

        insert into p_projekat_liste (
            projekat_id,
            naziv,
            sequence
        ) values ( p_projekat_id,
                   p_naziv,
                   l_sequence );

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_projekat_lista',
            p_projekat_id         => p_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Kreirao novu listu - <b>'
                          || p_naziv
                          || '</b>'
        );

    end insert_projekat_lista;

    procedure update_projekat_lista (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    ) is
        l_projekat_id number;
    begin
        select
            projekat_id
        into l_projekat_id
        from
            p_projekat_liste
        where
            id = p_id;

        update p_projekat_liste
        set
            naziv = p_naziv
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_projekat_lista',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao listu - <b>'
                          || p_naziv
                          || '</b>'
        );

    end update_projekat_lista;

    procedure update_projekat_lista (
        p_id       in number,
        p_sequence in number
    ) is
    begin
        update p_projekat_liste
        set
            sequence = p_sequence
        where
            id = p_id;

    end update_projekat_lista;

    procedure archive_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_projekat_id number;
        l_naziv       varchar2(255);
    begin
        select
            projekat_id,
            naziv
        into
            l_projekat_id,
            l_naziv
        from
            p_projekat_liste
        where
            id = p_id;

        update p_projekat_liste
        set
            valid = 'N'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'archive_projekat_lista',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Arhivirao listu - <b>'
                          || l_naziv
                          || '</b>'
        );

    end archive_projekat_lista;

    procedure unarchive_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_projekat_id number;
        l_naziv       varchar2(255);
    begin
        select
            projekat_id,
            naziv
        into
            l_projekat_id,
            l_naziv
        from
            p_projekat_liste
        where
            id = p_id;

        update p_projekat_liste
        set
            valid = 'Y'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'unarchive_projekat_lista',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dearhivirao listu - <b>'
                          || l_naziv
                          || '</b>'
        );

    end unarchive_projekat_lista;

    procedure delete_projekat_lista (
        p_korisnik_id in number,
        p_id          in number
    ) is

        l_projekat_id number;
        l_naziv       varchar2(255);
        cursor c_kartice is
        (
            select
                id
            from
                p_kartice
            where
                lista_id = p_id
        );

    begin
        select
            projekat_id,
            naziv
        into
            l_projekat_id,
            l_naziv
        from
            p_projekat_liste
        where
            id = p_id;

        for kartica in c_kartice loop
            delete_kartica(
                p_korisnik_id => p_korisnik_id,
                p_id          => kartica.id
            );
        end loop;

        delete p_projekat_liste
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_projekat_lista',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao listu - <b>'
                          || l_naziv
                          || '</b>'
        );

    end delete_projekat_lista;

    -- Projekat komentari
    procedure insert_komentar_system (
        p_tip_komentara_sifra in varchar2,
        p_kartica_id          in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    ) is
        l_tip_komentara_id number := sif.projekti_pkg.get_id_tip_komentara_with_sifra(p_tip_komentara_sifra);
    begin
        insert_projekat_komentar(
            p_tip_komentara_id => l_tip_komentara_id,
            p_kartica_id       => p_kartica_id,
            p_korisnik_id      => p_korisnik_id,
            p_komentar         => p_komentar,
            p_system           => 'Y'
        );
    end insert_komentar_system;

    procedure insert_komentar_system (
        p_tip_komentara_sifra in varchar2,
        p_projekat_id         in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    ) is
        l_tip_komentara_id number := sif.projekti_pkg.get_id_tip_komentara_with_sifra(p_tip_komentara_sifra);
    begin
        insert_projekat_komentar(
            p_tip_komentara_id => l_tip_komentara_id,
            p_projekat_id      => p_projekat_id,
            p_korisnik_id      => p_korisnik_id,
            p_komentar         => p_komentar,
            p_system           => 'Y'
        );
    end insert_komentar_system;

    procedure insert_komentar_normal (
        p_tip_komentara_sifra in varchar2,
        p_kartica_id          in number,
        p_korisnik_id         in number,
        p_komentar            in varchar2
    ) is
        l_tip_komentara_id number := sif.projekti_pkg.get_id_tip_komentara_with_sifra(p_tip_komentara_sifra);
    begin
        insert_projekat_komentar(
            p_tip_komentara_id => l_tip_komentara_id,
            p_kartica_id       => p_kartica_id,
            p_korisnik_id      => p_korisnik_id,
            p_komentar         => p_komentar,
            p_system           => 'N'
        );
    end insert_komentar_normal;

    procedure insert_projekat_komentar (
        p_tip_komentara_id in number,
        p_kartica_id       in number,
        p_korisnik_id      in number,
        p_komentar         in varchar2,
        p_system           in varchar2
    ) is
        l_projekat_id number;
    begin
        select
            projekat_id
        into l_projekat_id
        from
            vw_p_kartice
        where
            id = p_kartica_id;

        insert into p_projekat_komentari (
            tip_komentara_id,
            projekat_id,
            kartica_id,
            korisnik_id,
            komentar,
            system
        ) values ( p_tip_komentara_id,
                   l_projekat_id,
                   p_kartica_id,
                   p_korisnik_id,
                   p_komentar,
                   p_system );

    end insert_projekat_komentar;

    procedure insert_projekat_komentar (
        p_tip_komentara_id in number,
        p_projekat_id      in number,
        p_korisnik_id      in number,
        p_komentar         in varchar2,
        p_system           in varchar2
    ) is
    begin
        insert into p_projekat_komentari (
            tip_komentara_id,
            projekat_id,
            korisnik_id,
            komentar,
            system
        ) values ( p_tip_komentara_id,
                   p_projekat_id,
                   p_korisnik_id,
                   p_komentar,
                   p_system );

    end insert_projekat_komentar;

    procedure delete_projekat_komentar (
        p_id in number
    ) is
    begin
        delete from p_projekat_komentari
        where
            id = p_id;

    end delete_projekat_komentar;

    -- Projekat kartice
    procedure get_kartica (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_datum_od    out varchar2,
        p_datum_do    out varchar2,
        p_status_id   out number,
        p_cijena_sata out number,
        p_valid       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_kartice
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_datum_od := to_char(c1.datum_od, 'DD.MM.YYYY HH24:MI');
            p_datum_do := to_char(c1.datum_do, 'DD.MM.YYYY HH24:MI');
            p_status_id := c1.status_id;
            p_cijena_sata := c1.cijena_sata;
            p_valid := c1.valid;
        end loop;
    end get_kartica;

    procedure get_kartica (
        p_id       in number,
        p_datum_od out varchar2,
        p_datum_do out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_kartice
            where
                id = p_id
        ) loop
            p_datum_od := to_char(c1.datum_od, 'DD.MM.YYYY HH24:MI');
            p_datum_do := to_char(c1.datum_do, 'DD.MM.YYYY HH24:MI');
        end loop;
    end get_kartica;

    procedure get_kartica (
        p_id          in number,
        p_naziv       out varchar2,
        p_projekat_id out number
    ) is
    begin
        for c1 in (
            select
                naziv,
                projekat_id
            from
                vw_p_kartice
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_projekat_id := c1.projekat_id;
        end loop;
    end get_kartica;

    procedure get_kartica (
        p_id        in number,
        p_status_id out varchar
    ) is
    begin
        for c1 in (
            select
                status_id
            from
                p_kartice
            where
                id = p_id
        ) loop
            p_status_id := c1.status_id;
        end loop;
    end get_kartica;

    procedure get_kartica (
        p_id          in number,
        p_cijena_sata out number
    ) is
    begin
        for c1 in (
            select
                cijena_sata
            from
                p_kartice
            where
                id = p_id
        ) loop
            p_cijena_sata := c1.cijena_sata;
        end loop;
    end get_kartica;

    procedure get_kartica_count (
        p_id        in number,
        p_korisnici out number,
        p_labeli    out number,
        p_checklist out number,
        p_dokumenti out number
    ) is
    begin
        select
            count(*)
        into p_korisnici
        from
            p_kartica_korisnici
        where
            kartica_id = p_id;

        select
            count(*)
        into p_labeli
        from
            p_kartica_labeli
        where
            kartica_id = p_id;

        select
            count(*)
        into p_checklist
        from
            p_checklist
        where
            kartica_id = p_id;

        select
            count(*)
        into p_dokumenti
        from
            p_kartica_dokumenti
        where
            kartica_id = p_id;

    end get_kartica_count;

    procedure insert_kartica (
        p_korisnik_id in number,
        p_lista_id    in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    ) is
        l_id    number;
        l_naziv varchar2(255);
    begin
        get_projekat_lista(
            p_id    => p_lista_id,
            p_naziv => l_naziv
        );
        insert into p_kartice (
            lista_id,
            naziv,
            opis,
            status_id
        ) values ( p_lista_id,
                   p_naziv,
                   p_opis,
                   1 ) returning id into l_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_kartica',
            p_kartica_id          => l_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Kreirao karticu <b>'
                          || p_naziv
                          || '</b> u listi - <b>'
                          || l_naziv
                          || '</b>.'
        );

        insert_kartica_korisnik(
            p_admin_id    => p_korisnik_id,
            p_kartica_id  => l_id,
            p_korisnik_id => p_korisnik_id
        );
    end insert_kartica;

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2,
        p_opis        in varchar2
    ) is
    begin
        update p_kartice
        set
            naziv = p_naziv,
            opis = p_opis
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_kartica_1',
            p_kartica_id          => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao <b>naziv / opis</b> kartice.'
        );

    end update_kartica;

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_datum_od    in date,
        p_datum_do    in date
    ) is
    begin
        update p_kartice
        set
            datum_od = p_datum_od,
            datum_do = p_datum_do
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_kartica_2',
            p_kartica_id          => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao datum kartice - <b>Kraj: '
                          || to_char(p_datum_do, 'DD.MM.YYYY HH24:MI')
                          || '</b>'
        );

    end update_kartica;

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_status_id   in number
    ) is
        l_naziv varchar(255);
    begin
        update p_kartice
        set
            status_id = p_status_id
        where
            id = p_id;

        select
            naziv
        into l_naziv
        from
            sif.p_sif_statusi
        where
            id = p_status_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_kartica_3',
            p_kartica_id          => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao status kartice - <b>Status: '
                          || l_naziv
                          || '</b>'
        );

    end update_kartica;

    procedure archive_kartica (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_naziv       varchar2(255);
        l_projekat_id number;
    begin
        get_kartica(
            p_id          => p_id,
            p_naziv       => l_naziv,
            p_projekat_id => l_projekat_id
        );
        update p_kartice
        set
            valid = 'N'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'archive_kartica',
            p_kartica_id          => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Arhivirao karticu pod nazivom - <b>'
                          || l_naziv
                          || '</b>.'
        );

    end archive_kartica;

    procedure unarchive_kartica (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_naziv       varchar2(255);
        l_projekat_id number;
    begin
        get_kartica(
            p_id          => p_id,
            p_naziv       => l_naziv,
            p_projekat_id => l_projekat_id
        );
        update p_kartice
        set
            valid = 'Y'
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'unarchive_kartica',
            p_kartica_id          => p_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dearhivirao karticu pod nazivom - <b>'
                          || l_naziv
                          || '</b>.'
        );

    end unarchive_kartica;

    procedure update_kartica (
        p_korisnik_id in number,
        p_id          in number,
        p_cijena_sata in number
    ) is
    begin
        update p_kartice
        set
            cijena_sata = p_cijena_sata
        where
            id = p_id;

    end update_kartica;

    procedure delete_kartica (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_naziv       varchar2(255);
        l_projekat_id number;
    begin
        get_kartica(
            p_id          => p_id,
            p_naziv       => l_naziv,
            p_projekat_id => l_projekat_id
        );
        delete from p_projekat_komentari
        where
            kartica_id = p_id;

        delete from p_kartica_korisnici
        where
            kartica_id = p_id;

        delete from p_kartica_labeli
        where
            kartica_id = p_id;

        delete from p_checklist_stavke
        where
            checklist_id in (
                select
                    id
                from
                    p_checklist
                where
                    kartica_id = p_id
            );

        delete from p_checklist
        where
            kartica_id = p_id;

        delete from p_kartica_dokumenti
        where
            kartica_id = p_id;

        delete from p_kartice
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_kartica',
            p_projekat_id         => l_projekat_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao karticu pod nazivom - <b>'
                          || l_naziv
                          || '</b>.'
        );

    end delete_kartica;

    -- Projekat kartica korisnik
    procedure get_kartica_korisnik (
        p_id          in number,
        p_kartica_id  out number,
        p_korisnik_id out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_kartica_korisnici
            where
                id = p_id
        ) loop
            p_kartica_id := c1.kartica_id;
            p_korisnik_id := c1.korisnik_id;
        end loop;
    end get_kartica_korisnik;

    procedure insert_kartica_korisnik (
        p_admin_id    in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    ) is
        l_count       number;
        l_projekat_id number;
    begin
        select
            count(*)
        into l_count
        from
            p_kartica_korisnici
        where
                kartica_id = p_kartica_id
            and korisnik_id = p_korisnik_id;

        if l_count = 0 then
            select
                projekat_id
            into l_projekat_id
            from
                vw_p_kartice
            where
                id = p_kartica_id;

            insert into p_kartica_korisnici (
                kartica_id,
                korisnik_id
            ) values ( p_kartica_id,
                       p_korisnik_id );

            mail_pkg.posalji_dodavanje_kartica(
                p_korisnik_id => p_korisnik_id,
                p_admin_id    => p_admin_id,
                p_projekat_id => l_projekat_id,
                p_kartica_id  => p_kartica_id
            );

            insert_komentar_system(
                p_tip_komentara_sifra => 'insert_kartica_korisnik',
                p_kartica_id          => p_kartica_id,
                p_korisnik_id         => p_admin_id,
                p_komentar            => 'Dodao novog korisnika na karticu - <b>'
                              || get_korisnik_naziv(p_korisnik_id)
                              || '</b>'
            );

        end if;

    end insert_kartica_korisnik;

    procedure delete_kartica_korisnik (
        p_admin_id    in number,
        p_kartica_id  in number,
        p_korisnik_id in number
    ) is
        l_projekat_id number;
    begin
        delete from p_kartica_korisnici
        where
                kartica_id = p_kartica_id
            and korisnik_id = p_korisnik_id;

        select
            projekat_id
        into l_projekat_id
        from
            vw_p_kartice
        where
            id = p_kartica_id;

        mail_pkg.posalji_uklanjanje_kartica(
            p_korisnik_id => p_korisnik_id,
            p_admin_id    => p_admin_id,
            p_projekat_id => l_projekat_id,
            p_kartica_id  => p_kartica_id
        );

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_kartica_korisnik',
            p_kartica_id          => p_kartica_id,
            p_korisnik_id         => p_admin_id,
            p_komentar            => 'Izbrisao korisnika sa kartice - <b>'
                          || get_korisnik_naziv(p_korisnik_id)
                          || '</b>'
        );

    end delete_kartica_korisnik;

    -- Projekat kartica labeli
    procedure get_kartica_label (
        p_id         in number,
        p_kartica_id out number,
        p_label_id   out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_kartica_labeli
            where
                id = p_id
        ) loop
            p_kartica_id := c1.kartica_id;
            p_label_id := c1.label_id;
        end loop;
    end get_kartica_label;

    procedure insert_kartica_label (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_label_id    in number
    ) is
        l_count number;
        l_naziv varchar2(255);
    begin
        select
            count(*)
        into l_count
        from
            p_kartica_labeli
        where
                kartica_id = p_kartica_id
            and label_id = p_label_id;

        if l_count = 0 then
            insert into p_kartica_labeli (
                kartica_id,
                label_id
            ) values ( p_kartica_id,
                       p_label_id );

            get_ooj_label(
                p_id    => p_label_id,
                p_naziv => l_naziv
            );
            insert_komentar_system(
                p_tip_komentara_sifra => 'insert_kartica_label',
                p_kartica_id          => p_kartica_id,
                p_korisnik_id         => p_korisnik_id,
                p_komentar            => 'Dodao label na karticu - <b>'
                              || l_naziv
                              || '</b>'
            );

        end if;

    end insert_kartica_label;

    procedure delete_kartica_label (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_label_id    in number
    ) is
        l_naziv varchar2(255);
    begin
        delete from p_kartica_labeli
        where
                kartica_id = p_kartica_id
            and label_id = p_label_id;

        get_ooj_label(
            p_id    => p_label_id,
            p_naziv => l_naziv
        );
        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_kartica_label',
            p_kartica_id          => p_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao label sa kartice - <b>'
                          || l_naziv
                          || '</b>'
        );

    end delete_kartica_label;

    -- Projekat checklist
    procedure get_checklist (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                naziv
            from
                p_checklist
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_checklist;

    procedure get_checklist (
        p_id       in number,
        p_naziv    out varchar2,
        p_stavke   out number,
        p_checked  out number,
        p_procenat out number
    ) is
    begin
        for c1 in (
            select
                naziv,
                total_count,
                checked_count
            from
                vw_p_checklist
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_stavke := c1.total_count;
            p_checked := c1.checked_count;
            if c1.total_count = 0 then
                p_procenat := null;
            else
                p_procenat := round(c1.checked_count / c1.total_count * 100, 2);
            end if;

        end loop;
    end get_checklist;

    function insert_checklist (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2
    ) return number is
        l_id number;
    begin
        insert into p_checklist (
            kartica_id,
            naziv
        ) values ( p_kartica_id,
                   p_naziv ) returning id into l_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_checklist',
            p_kartica_id          => p_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dodao checklist na karticu - <b>'
                          || p_naziv
                          || '</b>'
        );

        return l_id;
    end insert_checklist;

    procedure update_checklist (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    ) is
        l_kartica_id number;
    begin
        update p_checklist
        set
            naziv = p_naziv
        where
            id = p_id;

        select
            kartica_id
        into l_kartica_id
        from
            p_checklist
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_checklist',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao checklist na kartici - <b>'
                          || p_naziv
                          || '</b>'
        );

    end update_checklist;

    procedure delete_checklist (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_kartica_id number;
        l_naziv      varchar2(255);
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_naziv
        from
            p_checklist
        where
            id = p_id;

        delete from p_checklist_korisnici
        where
            stavka_id in (
                select
                    id
                from
                    p_checklist_stavke
                where
                    checklist_id = p_id
            );

        delete from p_checklist_stavke
        where
            checklist_id = p_id;

        delete from p_checklist
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_checklist',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao checklist sa kartice - <b>'
                          || l_naziv
                          || '</b>'
        );

    end delete_checklist;

    procedure delete_checklist_stavke_all (
        p_checklist_id in number
    ) is
    begin
        delete from p_checklist_korisnici
        where
            stavka_id in (
                select
                    id
                from
                    p_checklist_stavke
                where
                    checklist_id = p_checklist_id
            );

        delete from p_checklist_stavke
        where
            checklist_id = p_checklist_id;

    end delete_checklist_stavke_all;

    -- Projekat checklist stavke
    function insert_checklist_stavka (
        p_checklist_id in number,
        p_naziv        in varchar2,
        p_datum_od     in date,
        p_datum_do     in date,
        p_status_id    in number
    ) return number is
        l_id number;
    begin
        insert into p_checklist_stavke (
            checklist_id,
            naziv,
            datum_od,
            datum_do,
            status_id
        ) values ( p_checklist_id,
                   p_naziv,
                   p_datum_od,
                   p_datum_do,
                   p_status_id ) returning id into l_id;

        return l_id;
    end insert_checklist_stavka;

    procedure delete_checklist_stavka (
        p_id in number
    ) is
    begin
        delete from p_checklist_stavke
        where
            id = p_id;

    end delete_checklist_stavka;

    procedure insert_checklist_korisnik (
        p_stavka_id   in number,
        p_korisnik_id in number
    ) is
    begin
        insert into p_checklist_korisnici (
            stavka_id,
            korisnik_id
        ) values ( p_stavka_id,
                   p_korisnik_id );

    end insert_checklist_korisnik;

    -- Projekat kartica dokumenti
    procedure get_kartica_dokument (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_kartica_dokumenti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    end get_kartica_dokument;

    procedure insert_kartica_docs (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2,
        p_docs        in varchar2
    ) is
        l_count number := 0;
    begin
        for x in (
            select
                regexp_substr(p_docs, '[^:]+', 1, level) document
            from
                dual
            connect by
                level <= length(p_docs) - length(replace(p_docs, ':')) + 1
        ) loop
            l_count := l_count + 1;
            insert_kartica_dokument(
                p_korisnik_id => p_korisnik_id,
                p_kartica_id  => p_kartica_id,
                p_naziv       => lpad(
                    to_char(l_count),
                    2,
                    '0'
                )
                           || '_'
                           || p_naziv,
                p_dokument    => x.document
            );

        end loop;
    end insert_kartica_docs;

    procedure insert_kartica_dokument (
        p_korisnik_id in number,
        p_kartica_id  in number,
        p_naziv       in varchar2,
        p_dokument    in varchar2
    ) is
        l_blob     blob;
        l_size     number;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into p_kartica_dokumenti (
            kartica_id,
            naziv,
            dokument,
            dokument_filename,
            dokument_mimetype,
            dokument_lastupd
        ) values ( p_kartica_id,
                   p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   sysdate );

        insert_komentar_system(
            p_tip_komentara_sifra => 'insert_kartica_dokument',
            p_kartica_id          => p_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Dodao dokument na karticu - <b>'
                          || p_naziv
                          || '</b>'
        );

    end insert_kartica_dokument;

    procedure update_kartica_dokument (
        p_korisnik_id in number,
        p_id          in number,
        p_naziv       in varchar2
    ) is
        l_kartica_id number;
    begin
        select
            kartica_id
        into l_kartica_id
        from
            p_kartica_dokumenti
        where
            id = p_id;

        update p_kartica_dokumenti
        set
            naziv = p_naziv
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'update_kartica_dokument',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Ažurirao dokument na kartici - <b>'
                          || p_naziv
                          || '</b>'
        );

    end update_kartica_dokument;

    procedure delete_kartica_dokument (
        p_korisnik_id in number,
        p_id          in number
    ) is
        l_kartica_id number;
        l_naziv      varchar2(255);
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_naziv
        from
            p_kartica_dokumenti
        where
            id = p_id;

        delete from p_kartica_dokumenti
        where
            id = p_id;

        insert_komentar_system(
            p_tip_komentara_sifra => 'delete_kartica_dokument',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Izbrisao dokument sa kartice - <b>'
                          || l_naziv
                          || '</b>'
        );

    end delete_kartica_dokument;

    --Stefo kod za body

    procedure update_stavka_status (
        p_id           in number,
        p_status_sifra in varchar2
    ) is
        l_status_id number;
    begin
        select
            id
        into l_status_id
        from
            sif.p_sif_statusi
        where
            sifra = p_status_sifra;

        update p_checklist_stavke
        set
            status_id = l_status_id
        where
            id = p_id;

    end update_stavka_status;

    function get_stavka_status (
        p_id in number
    ) return varchar2 is
        l_status       number;
        l_status_sifra varchar2(1);
    begin
        select
            status_id
        into l_status
        from
            p_checklist_stavke
        where
            id = p_id;

        select
            sifra
        into l_status_sifra
        from
            sif.p_sif_statusi
        where
            id = l_status;

        return l_status_sifra;
    end get_stavka_status;

    procedure checklist_stavka_start (
        p_id          in number,
        p_korisnik_id in number
    ) is
        l_kartica_id   number;
        l_stavka_naziv varchar2(255);
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_stavka_naziv
        from
            vw_p_checklist_stavke
        where
            id = p_id;

        update p_checklist_stavke
        set
            start_time = sysdate
        where
            id = p_id;

        update_stavka_status(p_id, 's');
        insert_komentar_system(
            p_tip_komentara_sifra => 'checklist_stavka_start',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Započeo da radi stavku - <b>'
                          || l_stavka_naziv
                          || '</b>'
        );

    end checklist_stavka_start;

    procedure checklist_stavka_pause (
        p_id          in number,
        p_korisnik_id in number
    ) is
        l_kartica_id   number;
        l_stavka_naziv varchar2(255);
        l_razlika      number;
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_stavka_naziv
        from
            vw_p_checklist_stavke
        where
            id = p_id;

        select
            sysdate - start_time
        into l_razlika
        from
            p_checklist_stavke
        where
            id = p_id;

        update p_checklist_stavke
        set
            start_time = null,
            vrijeme_rada = nvl(vrijeme_rada, 0) + ( l_razlika * 60 )
--            vrijeme_rada = coalesce(vrijeme_rada, 0) + l_razlika
        where
            id = p_id;

        update_stavka_status(p_id, 'p');
        insert_komentar_system(
            p_tip_komentara_sifra => 'checklist_stavka_pause',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Pauzirao rad na stavci - <b>'
                          || l_stavka_naziv
                          || '</b>'
        );

    end checklist_stavka_pause;

    procedure checklist_stavka_finish (
        p_id          in number,
        p_korisnik_id in number
    ) is
        l_kartica_id   number;
        l_stavka_naziv varchar2(255);
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_stavka_naziv
        from
            vw_p_checklist_stavke
        where
            id = p_id;

        if get_stavka_status(p_id) = 's' then
            checklist_stavka_pause(p_id, p_korisnik_id);
        end if;
        update_stavka_status(p_id, 'f');
        insert_komentar_system(
            p_tip_komentara_sifra => 'checklist_stavka_finish',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Završio rad na stavci - <b>'
                          || l_stavka_naziv
                          || '</b>'
        );

    end checklist_stavka_finish;

    procedure checklist_stavka_return_to_work (
        p_id          in number,
        p_korisnik_id in number
    ) is
        l_kartica_id   number;
        l_stavka_naziv varchar2(255);
    begin
        select
            kartica_id,
            naziv
        into
            l_kartica_id,
            l_stavka_naziv
        from
            vw_p_checklist_stavke
        where
            id = p_id;

        update p_checklist_stavke
        set
            start_time = sysdate
        where
            id = p_id;

        update_stavka_status(p_id, 's');
        insert_komentar_system(
            p_tip_komentara_sifra => 'checklist_stavka_return_to_work',
            p_kartica_id          => l_kartica_id,
            p_korisnik_id         => p_korisnik_id,
            p_komentar            => 'Vratio stavku <b>'
                          || l_stavka_naziv
                          || '</b> u rad.'
        );

    end checklist_stavka_return_to_work;

    procedure update_vrijeme_rada (
        p_id           in number,
        p_vrijeme_rada in number
    ) is
    begin
        update p_checklist_stavke
        set
            vrijeme_rada = p_vrijeme_rada
        where
            id = p_id;

    end update_vrijeme_rada;

end projekti_pkg;
/

prompt
prompt Creating package body PRU_PKG
prompt =============================
prompt
create or replace package body hrm.pru_pkg as
    
    -- ooj intervali
    procedure get_ooj_interval (
        p_id          in pru_ooj_intervali.id%type,
        p_ooj_id      out pru_ooj_intervali.ooj_id%type,
        p_interval_id out pru_ooj_intervali.interval_id%type,
        p_next_datum  out pru_ooj_intervali.next_datum%type,
        p_valid       out pru_ooj_intervali.valid%type,
        p_created     out pru_ooj_intervali.created%type,
        p_created_by  out pru_ooj_intervali.created_by%type,
        p_updated     out pru_ooj_intervali.updated%type,
        p_updated_by  out pru_ooj_intervali.updated_by%type,
        p_row_version out pru_ooj_intervali.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_ooj_intervali
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_interval_id := c1.interval_id;
            p_next_datum := c1.next_datum;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_ooj_interval;

    procedure insert_ooj_interval (
        p_ooj_id      in pru_ooj_intervali.ooj_id%type,
        p_interval_id in pru_ooj_intervali.interval_id%type,
        p_next_datum  in pru_ooj_intervali.next_datum%type
    ) as
    begin
        insert into pru_ooj_intervali (
            ooj_id,
            interval_id,
            next_datum
        ) values ( p_ooj_id,
                   p_interval_id,
                   p_next_datum );

    end insert_ooj_interval;

    procedure update_ooj_interval (
        p_id          in pru_ooj_intervali.id%type,
        p_ooj_id      in pru_ooj_intervali.ooj_id%type,
        p_interval_id in pru_ooj_intervali.interval_id%type,
        p_next_datum  in pru_ooj_intervali.next_datum%type,
        p_valid       in pru_ooj_intervali.valid%type
    ) as
    begin
        update pru_ooj_intervali
        set
            ooj_id = p_ooj_id,
            interval_id = p_interval_id,
            next_datum = p_next_datum,
            valid = p_valid
        where
            id = p_id;

    end update_ooj_interval;
    -- Procedura da se na next_datum poveca za broj mjeseci koji je trenutno aktivan u ooj
    procedure add_ooj_interval (
        p_ooj_id in pru_ooj_intervali.ooj_id%type
    ) as
        l_broj_mjeseci number;
    begin
        select
            broj_mjeseci
        into l_broj_mjeseci
        from
            sif.pru_sif_intervali
        where
            id = (
                select
                    interval_id
                from
                    pru_ooj_intervali
                where
                        ooj_id = p_ooj_id
                    and valid = 'Y'
            );

        update pru_ooj_intervali
        set
            next_datum = add_months(next_datum, l_broj_mjeseci)
        where
            ooj_id = p_ooj_id;

    end add_ooj_interval;

    -- vremenski rokovi
    procedure insert_vremenski_rok (
        p_app_id   in number,
        p_ooj_id   in pru_vremenski_rokovi.ooj_id%type,
        p_naziv    in pru_vremenski_rokovi.naziv%type,
        p_datum_od in pru_vremenski_rokovi.datum_od%type,
        p_datum_do in pru_vremenski_rokovi.datum_do%type
    ) as

        l_id            number;
        l_nadredjeni_id number;
        l_supervizor_id number;
        l_tip_radnika   varchar2(1);
        cursor radnici is
        (
            select
                id,
                radno_mjesto_id
            from
                hr_radnici
            where
                    ooj_id = p_ooj_id
                and zaposlen_do is null
        );

    begin
        insert into pru_vremenski_rokovi (
            ooj_id,
            naziv,
            datum_od,
            datum_do
        ) values ( p_ooj_id,
                   p_naziv,
                   p_datum_od,
                   p_datum_do ) returning id into l_id;

        insert_vremenski_rok_status(
            p_vremenski_rok_id => l_id,
            p_status_id        => 21
        );
        add_ooj_interval(p_ooj_id => p_ooj_id);

        -- Automatsko dodavanje radnika u ovaj vremenski rok
        for i in radnici loop
            l_nadredjeni_id := get_nadredjeni_id(i.id);
            l_supervizor_id := get_supervizor_id(i.id);
            l_tip_radnika := get_tip_radnika(i.id);
            if l_nadredjeni_id is not null then
                insert_radnik(
                    p_vremenski_rok_id => l_id,
                    p_radnik_id        => i.id,
                    p_radno_mjesto_id  => i.radno_mjesto_id,
                    p_nadredjeni_id    => l_nadredjeni_id,
                    p_supervizor_id    => l_supervizor_id,
                    p_tip_radnika      => l_tip_radnika
                );
            end if;

        end loop;

        -- Slanje mail svim nadredjenim
        for i in (
            select
                email,
                ime
                || ' '
                || prezime as radnik_naziv,
                korisnicko_ime
            from
                vw_radnici
            where
                    ooj_id = p_ooj_id
                and zaposlen_do is null
                and id in (
                    select
                        nadredjeni_id
                    from
                        pru_radnici
                    where
                        vremenski_rok_id = l_id
                )
        ) loop
            mail_pkg.posalji_pru_kreiran(
                p_app_id           => p_app_id,
                p_username         => i.korisnicko_ime,
                p_mail_to          => i.email,
                p_odgovorno_lice   => i.radnik_naziv,
                p_vremenski_rok_id => l_id
            );
        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end insert_vremenski_rok;

    procedure zavrsi_ocjenivanje (
        p_app_id in number,
        p_id     in pru_vremenski_rokovi.id%type
    ) as
    begin
        insert_vremenski_rok_status(
            p_vremenski_rok_id => p_id,
            p_status_id        => 22
        );

        -- Slanje mail svim radnicima
        for i in (
            select
                r.email,
                r.ime
                || ' '
                || r.prezime as radnik_naziv,
                n.ime
                || ' '
                || n.prezime as nadredjeni_naziv,
                r.korisnicko_ime
            from
                vw_radnici r
                left join hr_radnici n on r.nadredjeni_id = n.id
            where
                r.zaposlen_do is null
                and r.id in (
                    select
                        radnik_id
                    from
                        pru_radnici
                    where
                        vremenski_rok_id = p_id
                )
        ) loop
            mail_pkg.posalji_pru_ocijenjen(
                p_app_id           => p_app_id,
                p_username         => i.korisnicko_ime,
                p_mail_to          => i.email,
                p_odgovorno_lice   => i.radnik_naziv,
                p_nadredjeni       => i.nadredjeni_naziv,
                p_vremenski_rok_id => p_id
            );
        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end zavrsi_ocjenivanje;

    procedure zavrsi_reviziju (
        p_app_id in number,
        p_id     in pru_vremenski_rokovi.id%type
    ) as
    begin
        insert_vremenski_rok_status(
            p_vremenski_rok_id => p_id,
            p_status_id        => 23
        );

        -- Slanje mail svim radnicima
        for i in (
            select
                email,
                ime
                || ' '
                || prezime as radnik_naziv,
                korisnicko_ime
            from
                vw_radnici
            where
                zaposlen_do is null
                and id in (
                    select
                        radnik_id
                    from
                        pru_radnici
                    where
                        vremenski_rok_id = p_id
                )
        ) loop
            mail_pkg.posalji_pru_zavrsen(
                p_app_id           => p_app_id,
                p_username         => i.korisnicko_ime,
                p_mail_to          => i.email,
                p_odgovorno_lice   => i.radnik_naziv,
                p_vremenski_rok_id => p_id
            );
        end loop;

        apex_pwa.push_queue;
        apex_mail.push_queue;
    end zavrsi_reviziju;

    -- vremenski rokovi hist
    -- u ovoj proceduri se automatski za taj vremenski rok updatuje status_id 
    procedure insert_vremenski_rok_status (
        p_vremenski_rok_id in pru_vremenski_rokovi_hist.vremenski_rok_id%type,
        p_status_id        in pru_vremenski_rokovi_hist.status_id%type
    ) as
    begin
        insert into pru_vremenski_rokovi_hist (
            vremenski_rok_id,
            status_id
        ) values ( p_vremenski_rok_id,
                   p_status_id );

        update pru_vremenski_rokovi
        set
            status_id = p_status_id
        where
            id = p_vremenski_rok_id;

    end insert_vremenski_rok_status;

    -- radnici
    procedure insert_radnik (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_radno_mjesto_id  in pru_radnici.radno_mjesto_id%type,
        p_nadredjeni_id    in pru_radnici.nadredjeni_id%type,
        p_supervizor_id    in pru_radnici.supervizor_id%type,
        p_tip_radnika      in pru_radnici.tip_radnika%type
    ) as

        l_id          number;
        l_zaposlen_od date;
        l_mjeseci     number;
        cursor nadredjeni_ocjene is
        (
            select
                id
            from
                sif.pru_sif_kompetencije
            where
                    valid = 'Y'
                and tip_kompetencije_id in ( 1, 3 )
        );

        cursor radnik_ocjene is
        (
            select
                id
            from
                sif.pru_sif_kompetencije
            where
                    valid = 'Y'
                and tip_kompetencije_id in ( 1, 2 )
        );

    begin
        insert into pru_radnici (
            vremenski_rok_id,
            radnik_id,
            radno_mjesto_id,
            nadredjeni_id,
            supervizor_id,
            tip_radnika
        ) values ( p_vremenski_rok_id,
                   p_radnik_id,
                   p_radno_mjesto_id,
                   p_nadredjeni_id,
                   p_supervizor_id,
                   p_tip_radnika ) returning id into l_id;

        insert_radnik_status(
            p_pru_radnik_id => l_id,
            p_status_id     => 1
        );

        -- Provjera da se automatski postavi neocijnjeno ako radi manje od 6 mj u firmi
        select
            zaposlen_od
        into l_zaposlen_od
        from
            hr_radnici
        where
            id = p_radnik_id;

        l_mjeseci := round(months_between(sysdate, l_zaposlen_od));
        if l_mjeseci < 6 then
            update pru_radnici
            set
                neocijenjen_id = 1
            where
                id = l_id;

            insert_radnik_status(
                p_pru_radnik_id => l_id,
                p_status_id     => 6
            );
        end if;

        -- Insert svih ocjena za tog radnika
        if p_tip_radnika = 'R' then
            for ocjena in radnik_ocjene loop
                insert_radnik_ocjene(
                    p_vremenski_rok_id => p_vremenski_rok_id,
                    p_kompetencija_id  => ocjena.id,
                    p_radnik_id        => p_radnik_id
                );
            end loop;
        elsif p_tip_radnika = 'N' then
            for ocjena in nadredjeni_ocjene loop
                insert_radnik_ocjene(
                    p_vremenski_rok_id => p_vremenski_rok_id,
                    p_kompetencija_id  => ocjena.id,
                    p_radnik_id        => p_radnik_id
                );
            end loop;
        end if;

    end insert_radnik;

    procedure ocijeni_radnika (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    ) as
        l_pru_radnik_id number;
    begin
        select
            id
        into l_pru_radnik_id
        from
            pru_radnici
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        insert_radnik_status(
            p_pru_radnik_id => l_pru_radnik_id,
            p_status_id     => 2,
            p_komentar      => p_komentar
        );
    end ocijeni_radnika;

    procedure radnik_neocijenjen (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_neocijenjen_id   in pru_radnici.neocijenjen_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    ) as
        l_pru_radnik_id number;
    begin
        select
            id
        into l_pru_radnik_id
        from
            pru_radnici
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        update pru_radnici
        set
            neocijenjen_id = p_neocijenjen_id
        where
            id = l_pru_radnik_id;

        update pru_radnici_ocjene
        set
            ocjena_id = null
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        insert_radnik_status(
            p_pru_radnik_id => l_pru_radnik_id,
            p_status_id     => 6,
            p_komentar      => p_komentar
        );
    end radnik_neocijenjen;

    procedure zakljucite_ocjene (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    ) as
        l_pru_radnik_id number;
    begin
        select
            id
        into l_pru_radnik_id
        from
            pru_radnici
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        insert_radnik_status(
            p_pru_radnik_id => l_pru_radnik_id,
            p_status_id     => 4,
            p_komentar      => p_komentar
        );
    end zakljucite_ocjene;

    procedure posaljite_supervizoru (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    ) as
        l_pru_radnik_id number;
    begin
        select
            id
        into l_pru_radnik_id
        from
            pru_radnici
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        insert_radnik_status(
            p_pru_radnik_id => l_pru_radnik_id,
            p_status_id     => 3,
            p_komentar      => p_komentar
        );
    end posaljite_supervizoru;

    procedure supervizor_zakljucio (
        p_vremenski_rok_id in pru_radnici.vremenski_rok_id%type,
        p_radnik_id        in pru_radnici.radnik_id%type,
        p_komentar         in pru_radnici_hist.komentar%type
    ) as
        l_pru_radnik_id number;
    begin
        select
            id
        into l_pru_radnik_id
        from
            pru_radnici
        where
                vremenski_rok_id = p_vremenski_rok_id
            and radnik_id = p_radnik_id;

        insert_radnik_status(
            p_pru_radnik_id => l_pru_radnik_id,
            p_status_id     => 5,
            p_komentar      => p_komentar
        );
    end supervizor_zakljucio;

    -- radnik hist
    -- u ovoj proceduri se automatski za tog radnika updatuje status_id 
    procedure insert_radnik_status (
        p_pru_radnik_id in pru_radnici_hist.pru_radnik_id%type,
        p_status_id     in pru_radnici_hist.status_id%type,
        p_komentar      in pru_radnici_hist.komentar%type default null
    ) as
        l_current_status_id number;
    begin
        select
            status_id
        into l_current_status_id
        from
            pru_radnici
        where
            id = p_pru_radnik_id;

        if l_current_status_id = p_status_id then
            update pru_radnici_hist
            set
                komentar = p_komentar
            where
                    pru_radnik_id = p_pru_radnik_id
                and status_id = p_status_id;

        else
            insert into pru_radnici_hist (
                pru_radnik_id,
                status_id,
                komentar
            ) values ( p_pru_radnik_id,
                       p_status_id,
                       p_komentar );

        end if;

        update pru_radnici
        set
            status_id = p_status_id
        where
            id = p_pru_radnik_id;

    end insert_radnik_status;

    procedure insert_radnik_ocjene (
        p_vremenski_rok_id in pru_radnici_ocjene.vremenski_rok_id%type,
        p_kompetencija_id  in pru_radnici_ocjene.kompetencija_id%type,
        p_radnik_id        in pru_radnici_ocjene.radnik_id%type
    ) as
    begin
        insert into pru_radnici_ocjene (
            vremenski_rok_id,
            kompetencija_id,
            ocjena_id,
            radnik_id
        ) values ( p_vremenski_rok_id,
                   p_kompetencija_id,
                   null,
                   p_radnik_id );

    end insert_radnik_ocjene;

    -- Pomocne funkcije
    function get_nadredjeni_id (
        p_radnik_id in number
    ) return number as
        l_nadredjeni_id number;
    begin
        select
            nadredjeni_id
        into l_nadredjeni_id
        from
            hr_radnici
        where
            id = p_radnik_id;

        if l_nadredjeni_id = p_radnik_id then
            return null;
        end if;
        return l_nadredjeni_id;
    end get_nadredjeni_id;

    function get_supervizor_id (
        p_radnik_id in number
    ) return number as
        l_nadredjeni_id number;
        l_supervizor_id number;
    begin
        l_nadredjeni_id := get_nadredjeni_id(p_radnik_id);
        if l_nadredjeni_id is null then
            return null;
        else
            l_supervizor_id := get_nadredjeni_id(l_nadredjeni_id);
            return l_supervizor_id;
        end if;

    end get_supervizor_id;

    function get_tip_radnika (
        p_radnik_id in number
    ) return varchar2 as
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            hr_radnici
        where
            nadredjeni_id = p_radnik_id;

        if l_count > 0 then
            return 'N';
        else
            return 'R';
        end if;
    end get_tip_radnika;

end pru_pkg;
/

prompt
prompt Creating package body SASTANCI_PKG
prompt ==================================
prompt
create or replace package body hrm.sastanci_pkg is

    -- OOJ prostorije
    procedure get_ooj_prostorija (
        p_id          in number,
        p_ooj_id      out number,
        p_naziv       out varchar2,
        p_kapacitet   out number,
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
                s_ooj_prostorije
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_kapacitet := c1.kapacitet;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_ooj_prostorija;

    procedure insert_ooj_prostorija (
        p_ooj_id    in number,
        p_naziv     in varchar2,
        p_kapacitet in number
    ) is
    begin
        insert into s_ooj_prostorije (
            ooj_id,
            naziv,
            kapacitet
        ) values ( p_ooj_id,
                   p_naziv,
                   p_kapacitet );

    end insert_ooj_prostorija;

    procedure update_ooj_prostorija (
        p_id        in number,
        p_naziv     in varchar2,
        p_kapacitet in number,
        p_valid     in varchar2
    ) is
    begin
        update s_ooj_prostorije
        set
            naziv = p_naziv,
            kapacitet = p_kapacitet,
            valid = p_valid
        where
            id = p_id;

    end update_ooj_prostorija;

    -- Sastanci
    procedure get_sastanak (
        p_id            in number,
        p_status_id     out number,
        p_prostorija_id out number,
        p_tip_id        out number,
        p_naziv         out varchar2,
        p_opis          out varchar2,
        p_datum_od      out varchar2,
        p_datum_do      out varchar2,
        p_valid         out varchar2,
        p_row_version   out number,
        p_created       out date,
        p_created_by    out varchar2,
        p_updated       out date,
        p_updated_by    out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                s_sastanci
            where
                id = p_id
        ) loop
            p_status_id := c1.status_id;
            p_prostorija_id := c1.prostorija_id;
            p_tip_id := c1.tip_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_datum_od := to_char(c1.datum_od, 'DD.MM.YYYY HH24:MI');
            p_datum_do := to_char(c1.datum_do, 'DD.MM.YYYY HH24:MI');
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_sastanak;

    procedure insert_sastanak (
        p_ooj_id        in number,
        p_prostorija_id in number,
        p_tip_id        in number,
        p_datum_od      in date,
        p_datum_do      in date,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_radnik_id     in number,
        p_radnici       in varchar2
    ) is
        l_id number;
    begin
        insert into s_sastanci (
            ooj_id,
            prostorija_id,
            tip_id,
            datum_od,
            datum_do,
            naziv,
            opis
        ) values ( p_ooj_id,
                   p_prostorija_id,
                   p_tip_id,
                   p_datum_od,
                   p_datum_do,
                   p_naziv,
                   p_opis ) returning id into l_id;

        insert_sastanak_hist(
            p_sastanak_id => l_id,
            p_status_id   => 1
        );
        insert_sastanak_radnik(
            p_sastanak_id => l_id,
            p_radnik_id   => p_radnik_id
        );
        if p_radnici is not null then
            for x in (
                select
                    regexp_substr(p_radnici, '[^:]+', 1, level) radnik_id
                from
                    dual
                connect by
                    level <= length(p_radnici) - length(replace(p_radnici, ':')) + 1
            ) loop
                insert_sastanak_radnik(
                    p_sastanak_id => l_id,
                    p_radnik_id   => x.radnik_id
                );
            end loop;
        end if;

    end insert_sastanak;

    procedure update_sastanak (
        p_id            in number,
        p_prostorija_id in number,
        p_tip_id        in number,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_valid         in varchar2,
        p_radnik_id     in number,
        p_radnici       in varchar2
    ) is
    begin
        update s_sastanci
        set
            prostorija_id = p_prostorija_id,
            tip_id = p_tip_id,
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

        -- Brisemo sve radnike i dodavamo nove
        delete from s_sastanak_radnici
        where
            sastanak_id = p_id;

        insert_sastanak_radnik(
            p_sastanak_id => p_id,
            p_radnik_id   => p_radnik_id
        );
        if p_radnici is not null then
            for x in (
                select
                    regexp_substr(p_radnici, '[^:]+', 1, level) radnik_id
                from
                    dual
                connect by
                    level <= length(p_radnici) - length(replace(p_radnici, ':')) + 1
            ) loop
                insert_sastanak_radnik(
                    p_sastanak_id => p_id,
                    p_radnik_id   => x.radnik_id
                );
            end loop;
        end if;

    end update_sastanak;

    procedure zavrsi_sastanak (
        p_id       in number,
        p_napomena in varchar2
    ) is
    begin
        update s_sastanci
        set
            status_id = 2,
            napomena = p_napomena
        where
            id = p_id;

        insert_sastanak_hist(
            p_sastanak_id => p_id,
            p_status_id   => 2
        );
    end zavrsi_sastanak;

    procedure otkazi_sastanak (
        p_id in number
    ) is
    begin
        update s_sastanci
        set
            status_id = 3
        where
            id = p_id;

        insert_sastanak_hist(
            p_sastanak_id => p_id,
            p_status_id   => 3
        );
    end otkazi_sastanak;

    -- Sastanak history
    procedure insert_sastanak_hist (
        p_sastanak_id in number,
        p_status_id   in number
    ) is
    begin
        update s_sastanci
        set
            status_id = p_status_id
        where
            id = p_sastanak_id;

        insert into s_sastanak_hist (
            sastanak_id,
            status_id
        ) values ( p_sastanak_id,
                   p_status_id );

    end insert_sastanak_hist;

    -- Sastanak radnici
    procedure insert_sastanak_radnik (
        p_sastanak_id in number,
        p_radnik_id   in number
    ) is
    begin
        insert into s_sastanak_radnici (
            sastanak_id,
            radnik_id
        ) values ( p_sastanak_id,
                   p_radnik_id );

    end insert_sastanak_radnik;

    procedure delete_sastanak_radnik (
        p_id in number
    ) is
    begin
        delete from s_sastanak_radnici
        where
            id = p_id;

    end delete_sastanak_radnik;

end sastanci_pkg;
/

prompt
prompt Creating package body SIHT_LISTA_HTML
prompt =====================================
prompt
create or replace package body hrm.siht_lista_html as

    function get_header_radnik (
        p_mjesec in varchar2
    ) return number is
    begin
        for c1 in (
            select distinct
                radnik_id
            from
                hr_siht_lista
            where
                    to_char(datum, 'mm.yyyy') = p_mjesec
                and rownum = 1
        ) loop
            return c1.radnik_id;
        end loop;

        raise_application_error(-20001, 'Greška prilikom generisanja šiht liste.');
    end get_header_radnik;

    function generate_siht_lista_header (
        p_mjesec in varchar2
    ) return clob is

        l_clob      clob;
        l_radnik_id number := get_header_radnik(p_mjesec);
        cursor c_fields is
        (
            select
                rb,
                display,
                title,
                datum,
                style,
                column_span
            from
                (
                    select
                        1                       as rb,
                        'Ime i prezime'         as display,
                        'Ime i prezime radnika' as title,
                        sysdate                 as datum,
                        'padding: 0px 20px'     as style,
                        6                       as column_span
                    from
                        dual
                    union
                    select
                        2                             as rb,
                        to_char(datum, 'dd.mm')
                        || '-'
                        || initcap(substr(dan, 1, 3)) as display,
                        to_char(datum, 'dd.mm.yyyy')
                        || ' - '
                        || initcap(dan)               as title,
                        datum,
                        'padding: 0px 3px'            as style,
                        3                             as column_span
                    from
                        vw_siht_lista
                    where
                            to_char(datum, 'mm.yyyy') = p_mjesec
                        and radnik_id = l_radnik_id
                    union
                    select
                        3                  as rb,
                        oznaka             as display,
                        naziv              as title,
                        sysdate            as datum,
                        'padding: 0px 3px' as style,
                        3                  as column_span
                    from
                        sif.hr_pvs_tipovi
                )
        )
        order by
            rb,
            datum;

    begin
        l_clob := '<tr><th colspan="200">Šiht lista za mjesec: '
                  || p_mjesec
                  || '</th></tr>';
        l_clob := l_clob || '<tr>';
        for c1 in c_fields loop
            l_clob := l_clob
                      || '<th colspan="'
                      || c1.column_span
                      || '" title="'
                      || c1.title
                      || '" style="'
                      || c1.style
                      || '">'
                      || c1.display
                      || '</th>';
        end loop;

        l_clob := l_clob || '</tr>';
        return l_clob;
    end generate_siht_lista_header;

    function generate_siht_lista_radnik (
        p_mjesec    in varchar2,
        p_radnik_id in number
    ) return clob is

        l_clob clob;
        l_url  varchar2(1000);
        cursor c_fields is
        (
            select
                rb,
                display
                || ' '
                || additional_column as display,
                title,
                datum,
                pvs_tip_id,
                case
                    when rb = 1 then
                        6
                    else
                        3
                end                  as column_span,
                color_code
            from
                (
                    select distinct
                        1           as rb,
                        ime_prezime as display,
                        null        as title,
                        null        as datum,
                        null        as pvs_tip_id,
                        null        as additional_column,
                        null        as color_code
                    from
                        vw_siht_lista
                    where
                            to_char(datum, 'mm.yyyy') = p_mjesec
                        and radnik_id = p_radnik_id
                        and rownum = 1
                    union all
                    select
                        2                   as rb,
                        oznaka              as display,
                        evprisutnosti_naziv as title,
                        datum,
                        null                as pvs_tip_id,
                        prekovremeni_sati2  as additional_column,
                        ev_color_code       as color_code
                    from
                        vw_siht_lista
                    where
                            to_char(datum, 'mm.yyyy') = p_mjesec
                        and radnik_id = p_radnik_id
                    union all
                    select
                        3                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        1                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 1
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                    union all
                    select
                        4                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        2                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 2
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                    union all
                    select
                        5                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        3                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 3
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                    union all
                    select
                        6                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        4                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 4
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                    union all
                    select
                        7                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        5                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 5
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                    union all
                    select
                        8                    as rb,
                        to_char(sum(ukupno)) as display,
                        null                 as title,
                        null                 as datum,
                        6                    as pvs_tip_id,
                        null                 as additional_column,
                        null                 as color_code
                    from
                        (
                            select
                                nvl(
                                    sum(vs.pvs_kol),
                                    0
                                ) ukupno,
                                vs.radnik_id
                            from
                                sif.hr_pvs_tipovi pt
                                right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                            where
                                ( vs.radnik_id = p_radnik_id
                                  or vs.radnik_id is null )
                                and ( vs.pvs_tip_id = 6
                                      or vs.pvs_tip_id is null )
                                and to_char(datum, 'mm.yyyy') = p_mjesec
                            group by
                                vs.radnik_id,
                                to_char(vs.datum, 'mm.yyyy'),
                                vs.prekovremeni_sati
                        )
                    group by
                        radnik_id
                )
        )
        order by
            rb,
            datum;

    begin
        l_clob := '<tr>';
        for c1 in c_fields loop
            if c1.rb = 1 then
                l_url := apex_page.get_url(
                    p_page   => 155,
                    p_items  => 'P155_RADNIK,P155_RADNIK_1,P155_RADNIK_2',
                    p_values => ''
                                || p_radnik_id
                                || ','
                                || p_radnik_id
                                || ','
                                || p_radnik_id
                                || ''
                );

                l_url := apex_escape.html(l_url);
                l_clob := l_clob
                          || '<td colspan="'
                          || c1.column_span
                          || '"><a href=" '
                          || l_url
                          || '">'
                          || c1.display
                          || '</a></td>';

            elsif c1.rb = 2 then
                l_url := apex_page.get_url(
                    p_page   => 158,
                    p_items  => 'P158_RADNIK,P158_DATUM,P158_MJESEC,P158_PVS_TIP_ID',
                    p_values => p_radnik_id
                                || ','
                                || c1.datum
                                || ','
                                || p_mjesec
                                || ','
                                || c1.pvs_tip_id
                );

                l_url := apex_escape.html(l_url);
                l_clob := l_clob
                          || '<td colspan="'
                          || c1.column_span
                          || '" title="'
                          || c1.title
                          || '"><a href=" '
                          || l_url
                          || '">'
                          || '<span class="t-Badge t-Badge--basic '
                          || c1.color_code
                          || '">'
                          || c1.display
                          || '</span>'
                          || '</a></td>';

            elsif c1.rb > 2 then
                l_clob := l_clob
                          || '<td colspan="'
                          || c1.column_span
                          || '">'
                          || c1.display
                          || '</td>';
            end if;
        end loop;

        l_clob := l_clob || '</tr>';
        return l_clob;
    end generate_siht_lista_radnik;

    function generate_siht_lista_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    ) return clob is

        l_clob clob;
        cursor c_radnici is
        (
            select distinct
                radnik_id
            from
                vw_siht_lista
            where
                    nadredjeni_id = p_nadredjeni_id
                and to_char(datum, 'mm.yyyy') = p_mjesec
        );

    begin
        if p_mjesec is null then
            return null;
        end if;
        l_clob := '<table class="blueTable"><tbody>';
        l_clob := l_clob || generate_siht_lista_header(p_mjesec);
        for c1 in c_radnici loop
            l_clob := l_clob
                      || generate_siht_lista_radnik(p_mjesec, c1.radnik_id);
        end loop;

        l_clob := l_clob || '</tbody></table>';
        return l_clob;
    end generate_siht_lista_potvrdjivanje;

    function generate_siht_lista_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    ) return clob is

        l_clob clob;
        cursor c_radnici is
        (
            select distinct
                radnik_id
            from
                vw_siht_lista
            where
                    ooj_id = p_ooj_id
                and to_char(datum, 'mm.yyyy') = p_mjesec
        );

    begin
        if p_mjesec is null then
            return null;
        end if;
        l_clob := '<table class="blueTable"><tbody>';
        l_clob := l_clob || generate_siht_lista_header(p_mjesec);
        for c1 in c_radnici loop
            l_clob := l_clob
                      || generate_siht_lista_radnik(p_mjesec, c1.radnik_id);
        end loop;

        l_clob := l_clob || '</tbody></table>';
        return l_clob;
    end generate_siht_lista_zakljucavanje;

    procedure generate_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    ) as
        l_url        varchar2(1000);
        l_radnik_hed number;
        l_span       number;
        l_style      varchar2(64);
    begin
        htp.tableopen(
            cborder     => '1',
            cattributes => 'class="blueTable"'
        );
        htp.tablerowopen;
        htp.tableheader(
            cvalue   => 'Šiht lista za mjesec: ' || p_mjesec,
            ccolspan => '200'
        );
        htp.tablerowopen;
        select
            min(id)
        into l_radnik_hed
        from
            hr_radnici
        where
            id in (
                select
                    radnik_id
                from
                    hr_siht_lista
                where
                    to_char(datum, 'mm.yyyy') = p_mjesec
            )
            and zaposlen_do is null
            and rownum = 1;

        for x in (
            select
                *
            from
                (
                    select
                        to_char(datum, 'dd.mm')
                        || '-'
                        || initcap(substr(dan, 1, 3)) as dan,
                        to_char(datum, 'dd.mm.yyyy')
                        || ' - '
                        || initcap(dan)               as title,
                        2                             as rb,
                        datum,
                        9                             as treci
                    from
                        vw_siht_lista
                    where
                            to_char(datum, 'mm.yyyy') = p_mjesec
                        and radnik_id = l_radnik_hed
                    union
                    select
                        'Ime i Prezime'         as ime,
                        'Ime i prezime radnika' as title,
                        1                       as rb,
                        sysdate,
                        9                       as treci
                    from
                        dual
                    union
                    select
                        oznaka,
                        naziv as title,
                        3     as rb,
                        sysdate,
                        id    as treci
                    from
                        sif.hr_pvs_tipovi
                ) a
            order by
                rb,
                datum,
                treci
        ) loop
            if x.rb = 1 then
                l_span := 6;
                l_style := 'padding: 0px 25px';
            else
                l_span := 3;
                l_style := 'padding: 0px 3px';
            end if;

            htp.p('<th colspan="'
                  || l_span
                  || '" title="'
                  || x.title
                  || '" style="'
                  || l_style
                  || '">'
                  || x.dan
                  || '</th>');

        end loop;

        for z in (
            select
                id
            from
                hr_radnici
            where
                zaposlen_do is null
                and nadredjeni_id = p_nadredjeni_id
        ) loop
            htp.tablerowopen;
            for y in (
                select
                    rad
                    || ' '
                    || prekovremeni_sati2 as rad,
                    rb,
                    datum,
                    radnik_id,
                    mjesec,
                    tip
                from
                    (
                        select
                            oznaka   as rad,
                            2        as rb,
                            datum,
                            radnik_id,
                            p_mjesec as mjesec,
                            0        as tip,
                            prekovremeni_sati2
                        from
                            vw_siht_lista
                        where
                                to_char(datum, 'mm.yyyy') = p_mjesec
                            and radnik_id = z.id
                        union all
                        select
                            ime_prezime,
                            1   as rb,
                            datum,
                            radnik_id,
                            p_mjesec,
                            - 1 as tip,
                            ''
                        from
                            vw_siht_lista
                        where
                                to_char(datum, 'mm.yyyy') = p_mjesec
                            and radnik_id = z.id
                            and rownum = 1
                        union all
                        select
                            to_char(sum(ukupno)),
                            3 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            1 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 1
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            4 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            2 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 2
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            5 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            3 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 3
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            6 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            4 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 4
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            7 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            5 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 5
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            8 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            6 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 6
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                    ) a
                order by
                    a.rb,
                    a.datum
            ) loop
                if y.rb = 1 then
                    l_span := 6;
                else
                    l_span := 3;
                end if;

                if (
                    y.datum != '01.01.2000'
                    and y.tip >= 0
                ) then
                    l_url := apex_page.get_url(
                        p_page   => 158,
                        p_items  => 'P158_RADNIK,P158_DATUM,P158_MJESEC,P158_PVS_TIP_ID',
                        p_values => y.radnik_id
                                    || ','
                                    || y.datum
                                    || ','
                                    || p_mjesec
                                    || ','
                                    || y.tip
                    );

                    l_url := apex_escape.html(l_url);
                    htp.p('<td colspan="'
                          || l_span
                          || '"><a href="'
                          || l_url
                          || '"> '
                          || y.rad
                          || '</a></td>');

                elsif y.datum = '01.01.2000' then
                    htp.p('<td colspan="'
                          || l_span
                          || '">'
                          || y.rad
                          || '</td>');
                elsif y.tip = -1 then
                    l_url := apex_page.get_url(
                        p_page   => 155,
                        p_items  => 'P155_RADNIK,P155_RADNIK_1,P155_RADNIK_2',
                        p_values => ''
                                    || y.radnik_id
                                    || ','
                                    || y.radnik_id
                                    || ','
                                    || y.radnik_id
                                    || ''
                    );

                    l_url := apex_escape.html(l_url);
                    htp.p('<td colspan="'
                          || l_span
                          || '"><a href="'
                          || l_url
                          || '"> '
                          || y.rad
                          || '</a></td>');

                end if;

            end loop;

            htp.tablerowclose;
        end loop;

        htp.tableclose;
    end generate_potvrdjivanje;

    procedure generate_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    ) as
        l_url        varchar2(1000);
        l_radnik_hed number;
        l_span       number;
        l_style      varchar2(64);
    begin
        htp.tableopen(
            cborder     => '1',
            cattributes => 'class="blueTable"'
        );
        htp.tablerowopen;
        htp.tableheader(
            cvalue   => 'Šiht lista za mjesec: ' || p_mjesec,
            ccolspan => '200'
        );
        htp.tablerowopen;
        -- HTP.TABLEDATA(  p_mjesec);

        select
            min(id)
        into l_radnik_hed
        from
            hr_radnici
        where
            id in (
                select
                    radnik_id
                from
                    hr_siht_lista
                where
                    to_char(datum, 'mm.yyyy') = p_mjesec
            )
            and zaposlen_do is null
            and rownum = 1;

        for x in (
            select
                *
            from
                (
                    select
                        to_char(datum, 'dd.mm')
                        || '-'
                        || initcap(substr(dan, 1, 3)) as dan,
                        to_char(datum, 'dd.mm.yyyy')
                        || ' - '
                        || initcap(dan)               as title,
                        2                             as rb,
                        datum,
                        9                             as treci
                    from
                        vw_siht_lista
                    where
                            to_char(datum, 'mm.yyyy') = p_mjesec
                        and radnik_id = l_radnik_hed
                    union
                    select
                        'Ime i Prezime'         as ime,
                        'Ime i prezime radnika' as title,
                        1                       as rb,
                        sysdate,
                        9                       as treci
                    from
                        dual
                    union
                    select
                        oznaka,
                        naziv as title,
                        3     as rb,
                        sysdate,
                        id    as treci
                    from
                        sif.hr_pvs_tipovi
                ) a
            order by
                rb,
                datum,
                treci
        ) loop
            if x.rb = 1 then
                l_span := 6;
                l_style := 'padding: 0px 25px';
            else
                l_span := 3;
                l_style := 'padding: 0px 3px';
            end if;

            htp.p('<th colspan="'
                  || l_span
                  || '" title="'
                  || x.title
                  || '" style="'
                  || l_style
                  || '">'
                  || x.dan
                  || '</th>');

        end loop;

        for z in (
            select
                id
            from
                vw_radnici
            where
--                zaposlen_do IS NULL
--                AND ooj_id_id = p_ooj_id
                ooj_id = p_ooj_id
        ) loop
            htp.tablerowopen;
            for y in (
                select
                    rad
                    || ' '
                    || prekovremeni_sati2 as rad,
                    rb,
                    datum,
                    radnik_id,
                    mjesec,
                    tip
                from
                    (
                        select
                            case
                                when evidencija_prisutnosti_id = 1 then
                                    to_char(broj_sati)
                                else
                                    oznaka
                            end      as rad,
                            2        as rb,
                            datum,
                            radnik_id,
                            p_mjesec as mjesec,
                            0        as tip,
                            prekovremeni_sati2
                        from
                            vw_siht_lista
                        where
                                to_char(datum, 'mm.yyyy') = p_mjesec
                            and radnik_id = z.id
                        union all
                        select
                            ime_prezime,
                            1   as rb,
                            datum,
                            radnik_id,
                            p_mjesec,
                            - 1 as tip,
                            ''
                        from
                            vw_siht_lista
                        where
                                to_char(datum, 'mm.yyyy') = p_mjesec
                            and radnik_id = z.id
                            and rownum = 1
                        union all
                        select
                            to_char(sum(ukupno)),
                            3 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            1 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 1
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            4 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            2 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 2
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            5 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            3 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 3
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            6 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            4 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 4
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            7 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            5 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 5
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                        union all
                        select
                            to_char(sum(ukupno)),
                            8 as rb,
                            to_date('01.01.2000', 'dd.mm.yyyy'),
                            radnik_id,
                            p_mjesec,
                            6 as tip,
                            ''
                        from
                            (
                                select
                                    nvl(
                                        sum(vs.pvs_kol),
                                        0
                                    ) ukupno,
                                    vs.radnik_id
                                from
                                    sif.hr_pvs_tipovi pt
                                    right join vw_siht_lista     vs on pt.id = vs.pvs_tip_id
                                where
                                    ( vs.radnik_id = z.id
                                      or vs.radnik_id is null )
                                    and ( vs.pvs_tip_id = 6
                                          or vs.pvs_tip_id is null )
                                    and to_char(datum, 'mm.yyyy') = p_mjesec
                                group by
                                    vs.radnik_id,
                                    to_char(vs.datum, 'mm.yyyy'),
                                    vs.prekovremeni_sati
                            )
                        group by
                            radnik_id
                    ) a
                order by
                    a.rb,
                    a.datum
            ) loop
                if y.rb = 1 then
                    l_span := 6;
                else
                    l_span := 3;
                end if;

                if (
                    y.datum != '01.01.2000'
                    and y.tip >= 0
                ) then
                    l_url := apex_page.get_url(
                        p_page   => 158,
                        p_items  => 'P158_RADNIK,P158_DATUM,P158_MJESEC,P158_PVS_TIP_ID',
                        p_values => y.radnik_id
                                    || ','
                                    || y.datum
                                    || ','
                                    || p_mjesec
                                    || ','
                                    || y.tip
                    );

                    l_url := apex_escape.html(l_url);
                    htp.p('<td colspan="'
                          || l_span
                          || '"><a href="'
                          || l_url
                          || '"> '
                          || y.rad
                          || '</a></td>');

                elsif y.datum = '01.01.2000' then
                    l_url := '#';
                    htp.p('<td colspan="'
                          || l_span
                          || '">'
                          || y.rad
                          || '</td>');

                elsif y.tip = -1 then
                    l_url := apex_page.get_url(
                        p_page   => 155,
                        p_items  => 'P155_RADNIK,P155_RADNIK_1,P155_RADNIK_2',
                        p_values => ''
                                    || y.radnik_id
                                    || ','
                                    || y.radnik_id
                                    || ','
                                    || y.radnik_id
                                    || ''
                    );

                    l_url := apex_escape.html(l_url);
                    htp.p('<td colspan="'
                          || l_span
                          || '"><a href="'
                          || l_url
                          || '"> '
                          || y.rad
                          || '</a></td>');

                end if;

                -- '1003,04.03.2023'
                -- HTP.TABLEDATA( cvalue => '<a href="'||l_url||'"> '||y.rad||'  </a>', ccolspan =>'3', cattributes => 'id='||y.radnik_id||' class="MojModal" datum = '||y.datum );
                -- HTP.TABLEDATA( cvalue => '<div><a href="https://www.exaple.com">'||y.rad||'</a></div>', ccolspan =>'3', cattributes => 'id='||y.radnik_id||' class="t-Report-cell" datum = '||y.datum );

            end loop;

            htp.tablerowclose;
        end loop;

        htp.tableclose;
    end generate_zakljucavanje;

    function show_legend_potvrdjivanje (
        p_mjesec        in varchar2,
        p_nadredjeni_id in number
    ) return clob is

        l_clob clob;
        cursor c_evidencije_prisutnosti is
        (
            select distinct
                oznaka,
                ev_color_code              as color_code,
                upper(evprisutnosti_naziv) as evprisutnosti_naziv
            from
                vw_siht_lista
            where
                    to_char(datum, 'MM.YYYY') = p_mjesec
                and nadredjeni_id = p_nadredjeni_id
        );

    begin
        l_clob := '<span style="font-size: 10pt;"><strong>Evidencija prisutnosti</strong></span></p>';
        l_clob := l_clob || '<p><span style="font-size: 8pt;">';
        for c1 in c_evidencije_prisutnosti loop
            l_clob := l_clob
                      || '<p style="margin-top: 0px; margin-bottom: 0px;"><span class="t-Badge t-Badge--basic '
                      || c1.color_code
                      || '">'
                      || c1.oznaka
                      || '</span> - '
                      || c1.evprisutnosti_naziv
                      || '</p><br>';
        end loop;

        l_clob := l_clob || '</span></p>';
        l_clob := l_clob || show_legend_prekovremeni_tipovi;
        return l_clob;
    end show_legend_potvrdjivanje;

    function show_legend_zakljucavanje (
        p_mjesec in varchar2,
        p_ooj_id in number
    ) return clob is

        l_clob clob;
        cursor c_evidencije_prisutnosti is
        (
            select distinct
                oznaka,
                ev_color_code              as color_code,
                upper(evprisutnosti_naziv) as evprisutnosti_naziv
            from
                vw_siht_lista
            where
                    to_char(datum, 'MM.YYYY') = p_mjesec
                and ooj_id = p_ooj_id
        );

    begin
        l_clob := '<span style="font-size: 10pt;"><strong>Evidencija prisutnosti</strong></span></p>';
        l_clob := l_clob || '<p><span style="font-size: 8pt;">';
        for c1 in c_evidencije_prisutnosti loop
            l_clob := l_clob
                      || '<p style="margin-top: 0px; margin-bottom: 0px;"><span class="t-Badge t-Badge--basic '
                      || c1.color_code
                      || '">'
                      || c1.oznaka
                      || '</span> - '
                      || c1.evprisutnosti_naziv
                      || '</p><br>';
        end loop;

        l_clob := l_clob || '</span></p>';
        l_clob := l_clob || show_legend_prekovremeni_tipovi;
        return l_clob;
    end show_legend_zakljucavanje;

    function show_legend_prekovremeni_tipovi return clob is
        l_clob clob;
        cursor c_pvs_tipovi is
        (
            select
                oznaka,
                naziv
            from
                sif.hr_pvs_tipovi
        );

    begin
        l_clob := '<span style="font-size: 10pt;"><strong>Prekovremeni sati</strong></span></p>';
        l_clob := l_clob || '<p><span style="font-size: 8pt;">';
        for c1 in c_pvs_tipovi loop
            l_clob := l_clob
                      || '<b>'
                      || c1.oznaka
                      || ' - </b>'
                      || c1.naziv
                      || '<br>';
        end loop;

        l_clob := l_clob || '</span></p>';
        return l_clob;
    end show_legend_prekovremeni_tipovi;

end siht_lista_html;
/

prompt
prompt Creating package body SIHT_LISTA_PKG
prompt ====================================
prompt
create or replace package body hrm.siht_lista_pkg is
    
    -- Helper
    function siht_get_prekovremeni_sum (
        p_radnik_id in number,
        p_first_day in date,
        p_tip_id    in number
    ) return varchar2 is
        l_output varchar2(32);
    begin
        select
            sum(pvs_kolicina)
        into l_output
        from
            hr_siht_lista
        where
                radnik_id = p_radnik_id
            and pvs_tip_id = p_tip_id
            and trunc(datum) between p_first_day and last_day(p_first_day);

        if l_output is null then
            l_output := 0;
        end if;
        return l_output;
    end siht_get_prekovremeni_sum;

    function siht_get_sati_output (
        p_radnik_id in number,
        p_date      in date
    ) return varchar2 is
        l_output varchar2(32);
    begin
        select
            dan_sati_output
        into l_output
        from
            vw_siht_lista_report
        where
                radnik_id = p_radnik_id
            and trunc(datum) = p_date;

        return l_output;
    end siht_get_sati_output;

    function get_siht_lista_count (
        p_radnik_id in number,
        p_datum     in date
    ) return number is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            hr_siht_lista
        where
                radnik_id = p_radnik_id
            and trunc(datum, 'MM') = trunc(p_datum, 'MM');

        return l_count;
    end get_siht_lista_count;

    -- Siht lista    
    procedure get_siht_lista (
        p_id                        in number,
        p_datum                     out date,
        p_radnik_id                 out number,
        p_evidencija_prisutnosti_id out number
    ) is
    begin
        for c1 in (
            select
                datum,
                radnik_id,
                evidencija_prisutnosti_id
            from
                hr_siht_lista
            where
                id = p_id
        ) loop
            p_datum := c1.datum;
            p_radnik_id := c1.radnik_id;
            p_evidencija_prisutnosti_id := c1.evidencija_prisutnosti_id;
        end loop;
    end get_siht_lista;

    procedure update_siht_lista (
        p_id        in number,
        p_status_id in number,
        p_broj_sati in number,
        p_napomena  in varchar2
    ) is
    begin
        update hr_siht_lista
        set
            status_id = p_status_id,
            broj_sati = p_broj_sati,
            napomena = p_napomena
        where
            id = p_id;

    end update_siht_lista;

    procedure update_siht_lista_dan (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number
    ) as
    begin
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = p_evidencija_prisutnosti_id
        where
            id = p_id;

    end update_siht_lista_dan;

    procedure update_siht_lista_status (
        p_radnik_id in number,
        p_datum     in date,
        p_status_id in number
    ) is
    begin
        update hr_siht_lista
        set
            status_id = p_status_id
        where
                radnik_id = p_radnik_id
            and to_char(datum, 'mm.yyyy') = to_char(p_datum, 'mm.yyyy');

    end update_siht_lista_status;

    procedure potvrda_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    ) as
        l_count number;
    begin
        -- Provjera zahtjeva za GO
        select
            count(*)
        into l_count
        from
            go_zahtjevi
        where
                radnik_id = p_radnik_id
            and status_id in ( 10, 50 )
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za godišnji odmor.');
        end if;

        -- Provjera zahtjeva za bolovanje
        select
            count(*)
        into l_count
        from
            b_zahtjevi
        where
                radnik_id = p_radnik_id
            and status_id = 1
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za bolovanje.');
        end if;

        -- Provjera zahtjeva za SP
        select
            count(*)
        into l_count
        from
            sp_zahtjevi
        where
                radnik_id = p_radnik_id
            and status_id in ( 10, 50 )
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za službeni put.');
        end if;

        -- Provjera zahtjeva za VP
        select
            count(*)
        into l_count
        from
            sp_zahtjevi
        where
                radnik_id = p_radnik_id
            and status_id = 1
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za vjerski praznik.');
        end if;
        update hr_siht_lista
        set
            status_id = 3
        where
                radnik_id = p_radnik_id
            and to_char(datum, 'mm.yyyy') = p_mjesec;

    end potvrda_siht_liste;

    procedure potvrda_siht_liste_zbirno (
        p_nadredjeni_id in number,
        p_mjesec        in varchar2
    ) as
        l_count number;
    begin
        -- Provjera zahtjeva za GO
        select
            count(*)
        into l_count
        from
            vw_go_zahtjevi
        where
                nadredjeni_id = p_nadredjeni_id
            and status_id in ( 10, 50 )
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za godišnji odmor.');
        end if;

        -- Provjera zahtjeva za bolovanje
        select
            count(*)
        into l_count
        from
            vw_b_zahtjevi
        where
                nadredjeni_id = p_nadredjeni_id
            and status_id = 1
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za bolovanje.');
        end if;

        -- Provjera zahtjeva za SP
        select
            count(*)
        into l_count
        from
            vw_sp_zahtjevi
        where
                nadredjeni_id = p_nadredjeni_id
            and status_id in ( 10, 50 )
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za službeni put.');
        end if;

        -- Provjera zahtjeva za VP
        select
            count(*)
        into l_count
        from
            vw_sp_zahtjevi
        where
                nadredjeni_id = p_nadredjeni_id
            and status_id = 1
            and ( to_char(datum_od, 'MM.YYYY') = p_mjesec
                  or to_char(datum_do, 'MM.YYYY') = p_mjesec );

        if l_count > 0 then
            raise_application_error(-20001, 'Ne možete potvrditi šiht listu sve dok postoji podnesen zahtjev za vjerski praznik.');
        end if;
        update hr_siht_lista
        set
            status_id = 3
        where
            radnik_id in (
                select
                    id
                from
                    hr_radnici
                where
                    nadredjeni_id = p_nadredjeni_id
            )
            and to_char(datum, 'mm.yyyy') = p_mjesec;

    end potvrda_siht_liste_zbirno;

    procedure zakljucavanje_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    ) as
    begin
        update hr_siht_lista
        set
            status_id = 4
        where
                radnik_id = p_radnik_id
            and to_char(datum, 'mm.yyyy') = p_mjesec;

    end zakljucavanje_siht_liste;

    procedure zakljucavanje_siht_liste_zbirno (
        p_ooj_id in number,
        p_mjesec in varchar2
    ) as
    begin
        update hr_siht_lista
        set
            status_id = 4
        where
            radnik_id in (
                select
                    id
                from
                    hr_radnici
                where
                    ooj_id = p_ooj_id
            )
            and to_char(datum, 'mm.yyyy') = p_mjesec;

    end zakljucavanje_siht_liste_zbirno;

    procedure otkljucavanje_siht_liste (
        p_radnik_id in number,
        p_mjesec    in varchar2
    ) is
    begin
        update hr_siht_lista
        set
            status_id = 3
        where
                radnik_id = p_radnik_id
            and to_char(datum, 'MM.YYYY') = p_mjesec;

    end otkljucavanje_siht_liste;

    procedure naknadni_insert_siht_lista (
        p_radnik_id   in number,
        p_zaposlen_od in date,
        p_mjesec_list in varchar2
    ) is
        cursor c_mjeseci is
        (
            select
                column_value as mjesec
            from
                apex_string.split(p_mjesec_list, ':')
        );

    begin
        for c1 in c_mjeseci loop
            naknadni_insert_siht_lista(
                p_radnik_id   => p_radnik_id,
                p_zaposlen_od => p_zaposlen_od,
                p_mjesec      => c1.mjesec
            );
        end loop;
    end naknadni_insert_siht_lista;

    procedure naknadni_insert_siht_lista (
        p_radnik_id   in number,
        p_zaposlen_od in date,
        p_mjesec      in date default null
    ) as
        today               date;
        last_day_of_month   date;
        first_date_of_month date;
        temp_date           date;
    begin
        if p_mjesec is null then
            today := sysdate;
        else
            today := p_mjesec;
        end if;

        last_day_of_month := last_day(today);
        first_date_of_month := add_months(last_day_of_month + 1, -1);
        temp_date := first_date_of_month;
        while ( temp_date <= last_day_of_month ) loop
            insert into hr_siht_lista (
                radnik_id,
                datum,
                evidencija_prisutnosti_id,
                radni_dan,
                dan,
                status_id,
                broj_sati
            ) values ( p_radnik_id,
                       temp_date,
                       case
                           when trim(to_char(temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                               16
                           else
                               1
                       end,
                       case
                           when trim(to_char(temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                               'N'
                           else
                               'Y'
                       end,
                       trim(to_char(temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')),
                       1,
                       case
                           when trim(to_char(temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                               0
                           else
                               8
                       end
            );

            temp_date := temp_date + 1;
        end loop;

        update hr_siht_lista
        set
            evidencija_prisutnosti_id = 16
        where
                radnik_id = p_radnik_id
            and datum < p_zaposlen_od;

    end naknadni_insert_siht_lista;

    procedure generate_siht_lista is

        l_today               date := sysdate;
        l_last_day_of_month   date := last_day(l_today);
        l_first_date_of_month date := add_months(l_last_day_of_month + 1, -1);
        l_temp_date           date := l_first_date_of_month;
    begin
        while ( l_temp_date <= l_last_day_of_month ) loop
            insert into hr_siht_lista (
                radnik_id,
                datum,
                evidencija_prisutnosti_id,
                radni_dan,
                dan,
                status_id,
                broj_sati
            )
                select
                    id,
                    l_temp_date,
                    case
                        when trim(to_char(l_temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                            16
                        else
                            1
                    end,
                    case
                        when trim(to_char(l_temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                            'N'
                        else
                            'Y'
                    end,
                    trim(to_char(l_temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')),
                    1,
                    case
                        when trim(to_char(l_temp_date, 'DAY', 'NLS_DATE_LANGUAGE = ''CROATIAN''')) in ( 'SUBOTA', 'NEDJELJA' ) then
                            0
                        else
                            8
                    end
                from
                    hr_radnici r
                where
                    zaposlen_do is null
                    and tip_ugovora_id in ( 1, 6 )
                    and (
                        select
                            count(*)
                        from
                            hr_siht_lista sh
                        where
                            sh.radnik_id = r.id
                            and trunc(sh.datum) = trunc(l_temp_date)
                    ) = 0;

            l_temp_date := l_temp_date + 1;
        end loop;

        -- Provjera za godisnje odmore
        update hr_siht_lista sh
        set
            sh.evidencija_prisutnosti_id = 5
        where
            exists (
                select
                    1
                from
                    go_zahtjevi z
                where
                        sh.radnik_id = z.radnik_id
                    and trunc(sh.datum) between z.datum_od and z.datum_do
                    and z.status_id = 20
            )
            and trunc(sh.datum) between trunc(l_first_date_of_month) and trunc(l_last_day_of_month)
            and radni_dan = 'Y';

        -- Provjera za sluzbena putovanja
        update hr_siht_lista sh
        set
            sh.evidencija_prisutnosti_id = 4
        where
            exists (
                select
                    1
                from
                    sp_zahtjevi z
                where
                        sh.radnik_id = z.radnik_id
                    and trunc(sh.datum) between z.datum_od and z.datum_do
                    and z.status_id = 20
            )
            and trunc(sh.datum) between trunc(l_first_date_of_month) and trunc(l_last_day_of_month);

        -- Sva bolovanja koja su otvorena azuriramo..
        for bolovanje in (
            select
                id
            from
                b_zahtjevi
            where
                status_id = 3
        ) loop
            bolovanje_pkg.update_bolovanje_siht_lista(
                p_id       => bolovanje.id,
                p_datum_do => l_last_day_of_month
            );
        end loop;

        -- Provjera za praznike
        for praznik in (
            select
                id
            from
                sif.hr_praznici
            where
                trunc(datum_od) between trunc(l_first_date_of_month) and trunc(l_last_day_of_month)
        ) loop
            update hr_siht_lista
            set
                evidencija_prisutnosti_id = 12
            where
                trunc(datum) between trunc(l_first_date_of_month) and trunc(l_last_day_of_month)
                and trunc(datum) between (
                    select
                        datum_od
                    from
                        sif.hr_praznici
                    where
                        id = praznik.id
                ) and (
                    select
                        datum_do
                    from
                        sif.hr_praznici
                    where
                        id = praznik.id
                );

        end loop;

        -- Dodjeljivanje smjena
        for smjena in (
            select
                id
            from
                smjena_siht_lista
            where
                trunc(datum) between trunc(l_first_date_of_month) and trunc(l_last_day_of_month)
        ) loop
            smjene_pkg.primjeni_smjenu(p_id => smjena.id);
        end loop;

    end generate_siht_lista;

    -- Prekovremeni na siht listi
    procedure get_pvs (
        p_id           in number,
        p_pvs_tip_id   out number,
        p_pvs_kolicina out number,
        p_pvs_napomena out varchar2,
        p_pvs_pocetak  out varchar2,
        p_pvs_kraj     out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_siht_lista
            where
                id = p_id
        ) loop
            p_pvs_tip_id := c1.pvs_tip_id;
            p_pvs_kolicina := c1.pvs_kolicina;
            p_pvs_napomena := c1.pvs_napomena;
            p_pvs_pocetak := c1.pvs_pocetak;
            p_pvs_kraj := c1.pvs_kraj;
        end loop;
    end get_pvs;

    procedure update_pvs (
        p_id           in number,
        p_pvs_tip_id   in number,
        p_pvs_kolicina in number,
        p_pvs_napomena in varchar2,
        p_pvs_pocetak  in varchar2,
        p_pvs_kraj     in varchar2
    ) as
    begin
        update hr_siht_lista
        set
            pvs_kolicina = p_pvs_kolicina,
            pvs_tip_id = p_pvs_tip_id,
            pvs_napomena = p_pvs_napomena,
            pvs_pocetak = p_pvs_pocetak,
            pvs_kraj = p_pvs_kraj
        where
            id = p_id;

    end update_pvs;

    -- OOJ PVS (iznosi procenata prekovremenih sati)
    procedure get_ooj_pvs (
        p_id          in number,
        p_ooj_id      out number,
        p_pvs_id      out number,
        p_procenat    out number,
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
                hr_ooj_pvs
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_pvs_id := c1.pvs_id;
            p_procenat := c1.procenat;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_ooj_pvs;

    procedure get_ooj_pvs_procenat (
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_ooj_pvs
            where
                    ooj_id = p_ooj_id
                and pvs_id = p_pvs_id
                and valid = 'Y'
        ) loop
            p_procenat := c1.procenat;
        end loop;

        if p_procenat is null then
            p_procenat := 30;
        end if;
    end get_ooj_pvs_procenat;

    procedure insert_ooj_pvs (
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat in number
    ) is
    begin
        insert into hr_ooj_pvs (
            ooj_id,
            pvs_id,
            procenat
        ) values ( p_ooj_id,
                   p_pvs_id,
                   p_procenat );

    end insert_ooj_pvs;

    procedure update_ooj_pvs (
        p_id       in number,
        p_ooj_id   in number,
        p_pvs_id   in number,
        p_procenat in number,
        p_valid    in varchar2
    ) is
    begin
        update hr_ooj_pvs
        set
            ooj_id = p_ooj_id,
            pvs_id = p_pvs_id,
            procenat = p_procenat,
            valid = p_valid
        where
            id = p_id;

    end update_ooj_pvs;

    -- OOJ prijave
    procedure get_ooj_prijava (
        p_id             in number,
        p_ooj_id         out number,
        p_tip_prijave_id out number,
        p_valid          out varchar2,
        p_row_version    out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_ooj_prijava
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_tip_prijave_id := c1.tip_prijave_id;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_ooj_prijava;

    procedure insert_ooj_prijava (
        p_ooj_id         in number default null,
        p_tip_prijave_id in number default null
    ) is
    begin
        insert into hr_ooj_prijava (
            ooj_id,
            tip_prijave_id
        ) values ( p_ooj_id,
                   p_tip_prijave_id );

    end insert_ooj_prijava;

    procedure update_ooj_prijava (
        p_id             in number default null,
        p_ooj_id         in number default null,
        p_tip_prijave_id in number default null,
        p_valid          in varchar2 default null
    ) is
    begin
        update hr_ooj_prijava
        set
            ooj_id = p_ooj_id,
            tip_prijave_id = p_tip_prijave_id,
            valid = p_valid
        where
            id = p_id;

    end update_ooj_prijava;

    -- Siht lista vrijeme
    procedure get_vrijeme (
        p_id            in number,
        p_siht_lista_id out number,
        p_valid         out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_siht_lista_vrijeme
            where
                id = p_id
        ) loop
            p_siht_lista_id := c1.siht_lista_id;
            p_valid := c1.valid;
        end loop;
    end get_vrijeme;

    procedure start_vrijeme (
        p_siht_lista_id  in number default null,
        p_tip_rada_id    in number default null,
        p_tip_prijave_id in number default null,
        p_start_time     in date default null,
        p_start_lat      in number default null,
        p_start_lng      in number default null,
        p_trajanje       in number default null
    ) is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            hr_siht_lista_vrijeme
        where
                siht_lista_id = p_siht_lista_id
            and end_time is null;

        if l_count > 0 then
            raise_application_error(-20001, 'Već ste započeli rad.');
        end if;
        insert into hr_siht_lista_vrijeme (
            siht_lista_id,
            tip_rada_id,
            tip_prijave_id,
            start_time,
            start_lat,
            start_lng,
            trajanje
        ) values ( p_siht_lista_id,
                   p_tip_rada_id,
                   p_tip_prijave_id,
                   p_start_time,
                   p_start_lat,
                   p_start_lng,
                   p_trajanje );

    end start_vrijeme;

    procedure end_vrijeme (
        p_id       in number default null,
        p_end_time in date default null,
        p_end_lat  in number default null,
        p_end_lng  in number default null
    ) is
        l_siht_lista_id number;
        l_broj_sati     number;
    begin
        -- Update trenutne prijave
        update hr_siht_lista_vrijeme
        set
            end_time = p_end_time,
            end_lat = p_end_lat,
            end_lng = p_end_lng
        where
            id = p_id;

        -- Sabiranje i updatovanje ukupnog vremena
        select
            siht_lista_id,
            round(sum((end_time - start_time) * 24))
        into
            l_siht_lista_id,
            l_broj_sati
        from
            hr_siht_lista_vrijeme
        where
            siht_lista_id = (
                select
                    siht_lista_id
                from
                    hr_siht_lista_vrijeme
                where
                        id = p_id
                    and valid = 'Y'
            )
        group by
            siht_lista_id;

        -- Updatujemo ukupan broj sati (i azuriramo siht listu)
        update hr_siht_lista
        set
            broj_sati = l_broj_sati
        where
            id = l_siht_lista_id;

    end end_vrijeme;

    -- Kodovi za prijavu
    procedure prijava (
        p_prijava_kod in varchar2,
        p_radnik_id   out number
    ) is
    begin
        select
            id
        into p_radnik_id
        from
            hr_radnici
        where
            prijava_kod = p_prijava_kod;

    exception
        when no_data_found then
            raise_application_error(-20001, 'Nepostojeći kod');
    end prijava;

    function get_siht_lista (
        p_radnik_id in number
    ) return number is
        l_siht_lista_id number;
    begin
        select
            id
        into l_siht_lista_id
        from
            hr_siht_lista
        where
                radnik_id = p_radnik_id
            and trunc(datum) = trunc(sysdate);

        return l_siht_lista_id;
    exception
        when no_data_found then
            raise_application_error(-20002, 'Radnik nema kreiranu šiht listu.');
    end get_siht_lista;

    procedure get_radnik (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_prijava_kod out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_radnici
            where
                id = p_id
        ) loop
            p_naziv := initcap(c1.ime)
                       || ' '
                       || initcap(c1.prezime);

            p_email := c1.email;
            p_prijava_kod := c1.prijava_kod;
        end loop;
    end get_radnik;

    function generate_unique_code return varchar2 is
        l_code  varchar2(7);
        l_count number;
    begin
        loop
            l_code := lpad(
                trunc(dbms_random.value(0, 999999)),
                6,
                '0'
            );

            select
                count(*)
            into l_count
            from
                hr_radnici
            where
                prijava_kod = l_code;

            exit when l_count = 0;
        end loop;

        return l_code;
    end generate_unique_code;

    procedure generate_ooj_unique_codes (
        p_ooj_id in number
    ) is

        cursor c_radnici is
        (
            select
                seq_id,
                c001 as radnik_naziv,
                c002 as email,
                c003 as prijava_kod
            from
                apex_collections
            where
                    collection_name = 'KODOVI_ZA_PRIJAVU'
                and c004 = 'Y'
        );

        l_code varchar2(6);
    begin
        for radnik in c_radnici loop
            l_code := generate_unique_code;
            apex_collection.update_member_attribute(
                p_collection_name => 'KODOVI_ZA_PRIJAVU',
                p_seq             => radnik.seq_id,
                p_attr_number     => 3,
                p_attr_value      => l_code
            );

        end loop;
    end generate_ooj_unique_codes;

    procedure update_radnik_prijava_kod (
        p_app_id      in number,
        p_id          in number,
        p_prijava_kod in varchar2
    ) is
        l_username varchar2(255);
        l_mail     varchar2(255);
        l_name     varchar2(255);
    begin
        update hr_radnici
        set
            prijava_kod = p_prijava_kod
        where
            id = p_id;

        select
            korisnicko_ime,
            email,
            ime
            || ' '
            || prezime
        into
            l_username,
            l_mail,
            l_name
        from
            vw_radnici
        where
            id = p_id;

        mail_pkg.posalji_prijava_kod(
            p_app_id      => p_app_id,
            p_username    => l_username,
            p_mail_to     => l_mail,
            p_name        => l_name,
            p_prijava_kod => p_prijava_kod
        );

    end update_radnik_prijava_kod;

    procedure update_ooj_prijava_kod (
        p_app_id in number
    ) is

        cursor c_radnici is
        (
            select
                c003 as prijava_kod,
                n001 as radnik_id
            from
                apex_collections
            where
                    collection_name = 'KODOVI_ZA_PRIJAVU'
                and c004 = 'Y'
        );

    begin
        for radnik in c_radnici loop
            update_radnik_prijava_kod(
                p_app_id      => p_app_id,
                p_id          => radnik.radnik_id,
                p_prijava_kod => radnik.prijava_kod
            );
        end loop;

        apex_mail.push_queue;
        apex_pwa.push_queue;
    end update_ooj_prijava_kod;

    function get_ukupno_vrijeme (
        p_siht_lista_id in number
    ) return varchar2 is
        l_output varchar2(16);
    begin
        select
            case
                when exist = 0 then
                    '-'
                else
                    total_time
            end
        into l_output
        from
            (
                select
                    count(*) as exist,
                    to_char(
                        trunc((sum(end_time - start_time)) * 24),
                        '9999'
                    )
                    || 'h '
                    || to_char(
                        trunc(mod((sum(end_time - start_time)) * 24 * 60,
                                  60)),
                        'FM00'
                    )
                    || 'm'   as total_time
                from
                    hr_siht_lista_vrijeme
                where
                        siht_lista_id = p_siht_lista_id
                    and end_time is not null
                    and valid = 'Y'
            );

        return l_output;
    end get_ukupno_vrijeme;

    function get_vrijeme (
        p_siht_lista_id in number,
        p_tip_rada_id   in number
    ) return varchar2 is
        l_output varchar2(16);
    begin
        select
            case
                when exist = 0 then
                    '-'
                else
                    total_time
            end
        into l_output
        from
            (
                select
                    count(*) as exist,
                    to_char(
                        trunc((sum(end_time - start_time)) * 24),
                        '9999'
                    )
                    || 'h '
                    || to_char(
                        trunc(mod((sum(end_time - start_time)) * 24 * 60,
                                  60)),
                        'FM00'
                    )
                    || 'm'   as total_time
                from
                    hr_siht_lista_vrijeme
                where
                        siht_lista_id = p_siht_lista_id
                    and end_time is not null
                    and valid = 'Y'
                    and tip_rada_id = p_tip_rada_id
            );

        return l_output;
    end get_vrijeme;

    function get_prvi_ulaz (
        p_siht_lista_id in number
    ) return varchar2 is
        l_output varchar2(16);
    begin
        select
            to_char(
                min(start_time),
                'HH24:MI'
            )
        into l_output
        from
            hr_siht_lista_vrijeme
        where
            siht_lista_id = p_siht_lista_id;

        return l_output;
    end get_prvi_ulaz;

    function get_zadnji_izlaz (
        p_siht_lista_id in number
    ) return varchar2 is
        l_output varchar2(16);
    begin
        select
            to_char(
                max(end_time),
                'HH24:MI'
            )
        into l_output
        from
            hr_siht_lista_vrijeme
        where
            siht_lista_id = p_siht_lista_id;

        return l_output;
    end get_zadnji_izlaz;

end siht_lista_pkg;
/

prompt
prompt Creating package body SMJENE_PKG
prompt ================================
prompt
create or replace package body hrm.smjene_pkg is

    -- Smjene
    procedure get_smjena (
        p_id         in number,
        p_ooj_id     out number,
        p_sifra      out varchar2,
        p_naziv      out varchar2,
        p_pocetak    out varchar2,
        p_kraj       out varchar2,
        p_color_code out varchar2,
        p_valid      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                smjene
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_pocetak := c1.pocetak;
            p_kraj := c1.kraj;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
        end loop;
    end get_smjena;

    procedure insert_smjena (
        p_ooj_id     in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_pocetak    in varchar2,
        p_kraj       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into smjene (
            ooj_id,
            sifra,
            naziv,
            pocetak,
            kraj,
            color_code
        ) values ( p_ooj_id,
                   p_sifra,
                   p_naziv,
                   p_pocetak,
                   p_kraj,
                   p_color_code );

    end insert_smjena;

    procedure update_smjena (
        p_id         in number,
        p_ooj_id     in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_pocetak    in varchar2,
        p_kraj       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update smjene
        set
            ooj_id = p_ooj_id,
            sifra = p_sifra,
            naziv = p_naziv,
            pocetak = p_pocetak,
            kraj = p_kraj,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_smjena;

    procedure delete_smjena (
        p_id in number
    ) is
    begin
        delete from smjene
        where
            id = p_id;

    end delete_smjena;

    -- Smjena sabloni
    procedure get_sablon (
        p_id     in number,
        p_ooj_id out number,
        p_naziv  out varchar2,
        p_valid  out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                smjena_sabloni
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
        end loop;
    end get_sablon;

    function insert_sablon (
        p_ooj_id in number,
        p_naziv  in varchar2
    ) return number is
        l_id number;
    begin
        insert into smjena_sabloni (
            ooj_id,
            naziv
        ) values ( p_ooj_id,
                   p_naziv ) returning id into l_id;

        return l_id;
    end insert_sablon;

    procedure update_sablon (
        p_id     in number,
        p_ooj_id in number,
        p_naziv  in varchar2,
        p_valid  in varchar2
    ) is
    begin
        update smjena_sabloni
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_sablon;

    procedure delete_sablon (
        p_id in number
    ) is
    begin
        delete from smjena_siht_lista
        where
            sablon_id = p_id;

        delete from smjena_sablon_dani
        where
            sablon_id = p_id;

        delete from smjena_sabloni
        where
            id = p_id;

    end delete_sablon;

    -- Smjena sabalon dani
    function get_smjena_from_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_dan       in varchar2
    ) return number is
    begin
        for c1 in (
            select
                smjena_id
            from
                smjena_sablon_dani
            where
                    smjena_id = p_sablon_id
                and radnik_id = p_radnik_id
                and dan = p_dan
        ) loop
            return c1.smjena_id;
        end loop;

        return null;
    end get_smjena_from_dan;

    procedure get_sablon_dan (
        p_id        in number,
        p_sablon_id out number,
        p_radnik_id out number,
        p_smjena_id out number,
        p_dan       out varchar2,
        p_valid     out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                smjena_sablon_dani
            where
                id = p_id
        ) loop
            p_sablon_id := c1.sablon_id;
            p_radnik_id := c1.radnik_id;
            p_smjena_id := c1.smjena_id;
            p_dan := c1.dan;
            p_valid := c1.valid;
        end loop;
    end get_sablon_dan;

    procedure insert_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_smjena_id in number,
        p_dan       in varchar2
    ) is
    begin
        insert into smjena_sablon_dani (
            sablon_id,
            radnik_id,
            smjena_id,
            dan
        ) values ( p_sablon_id,
                   p_radnik_id,
                   p_smjena_id,
                   p_dan );

    end insert_sablon_dan;

    procedure update_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number,
        p_smjena_id in number,
        p_dan       in varchar2
    ) is
    begin
        update smjena_sablon_dani
        set
            smjena_id = p_smjena_id
        where
                sablon_id = p_sablon_id
            and radnik_id = p_radnik_id
            and dan = p_dan;

    end update_sablon_dan;

    procedure delete_sablon_dan (
        p_sablon_id in number,
        p_radnik_id in number
    ) is
    begin
        delete from smjena_sablon_dani
        where
                sablon_id = p_sablon_id
            and radnik_id = p_radnik_id;

    end delete_sablon_dan;

    -- Smjena siht lista
    procedure get_smjena_siht_lista (
        p_id        in number,
        p_sablon_id out number,
        p_datum     out date
    ) is
    begin
        for c1 in (
            select
                *
            from
                smjena_siht_lista
            where
                id = p_id
        ) loop
            p_sablon_id := c1.sablon_id;
            p_datum := c1.datum;
        end loop;
    end get_smjena_siht_lista;

    procedure insert_smjena_siht_lista (
        p_ooj_id    in number,
        p_sablon_id in number,
        p_datum     in date
    ) is
        l_id number;
    begin
        insert into smjena_siht_lista (
            ooj_id,
            sablon_id,
            datum
        ) values ( p_ooj_id,
                   p_sablon_id,
                   p_datum ) returning id into l_id;

        primjeni_smjenu(p_id => l_id);
    end insert_smjena_siht_lista;

    procedure delete_smjena_siht_lista (
        p_id in number
    ) is
    begin
        delete from smjena_siht_lista
        where
            id = p_id;

    end delete_smjena_siht_lista;

    procedure primjeni_smjenu (
        p_id in number
    ) is

        l_sablon_id number;
        l_datum     date;
        l_dan       date;
        cursor c_radnici (
            p_sablon_id number
        ) is
        (
            select
                radnik_id,
                dan,
                smjena_id
            from
                smjena_sablon_dani
            where
                sablon_id = p_sablon_id
        );

    begin
        get_smjena_siht_lista(
            p_id        => p_id,
            p_sablon_id => l_sablon_id,
            p_datum     => l_datum
        );
        for c1 in c_radnici(l_sablon_id) loop
            case c1.dan
                when 'PONEDJELJAK' then
                    l_dan := l_datum;
                when 'UTORAK' then
                    l_dan := l_datum + 1;
                when 'SRIJEDA' then
                    l_dan := l_datum + 2;
                when 'ČETVRTAK' then
                    l_dan := l_datum + 3;
                when 'PETAK' then
                    l_dan := l_datum + 4;
                when 'SUBOTA' then
                    l_dan := l_datum + 5;
                when 'NEDJELJA' then
                    l_dan := l_datum + 6;
            end case;

            update hr_siht_lista
            set
                smjena_id = c1.smjena_id
            where
                    datum = l_dan
                and radnik_id = c1.radnik_id;

        end loop;

    end primjeni_smjenu;

end smjene_pkg;
/

prompt
prompt Creating package body SP_PKG
prompt ============================
prompt
create or replace package body hrm.sp_pkg as

    function get_relacija (
        p_ooj_id           in number,
        p_mjesto_putovanja in varchar2
    ) return varchar2 is
        l_relacija varchar2(255);
    begin
        select
            grad_naziv
            || ' - '
            || p_mjesto_putovanja
            || ' - '
            || grad_naziv
        into l_relacija
        from
            core.vw_ooj
        where
            id = p_ooj_id;

        return initcap(l_relacija);
    exception
        when no_data_found then
            return '-';
    end get_relacija;

    function f_broj_dana_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number as
        l_days number;
    begin
        l_days := floor(p_datum_do - p_datum_od);
        return l_days;
    end f_broj_dana_putovanja;

---------------------------------------------

    function f_broj_sati_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number as
        l_hours number;
        l_days  number;
    begin
        l_days := floor(p_datum_do - p_datum_od);
        l_hours := 24 * ( p_datum_do - p_datum_od ) - 24 * l_days;
        return floor(l_hours);
    end f_broj_sati_putovanja;

    function f_broj_minuta_putovanja (
        p_datum_od in date,
        p_datum_do in date
    ) return number as
        l_hours   number;
        l_days    number;
        l_minutes number;
    begin
        l_days := floor(p_datum_do - p_datum_od);
        l_hours := 24 * ( p_datum_do - p_datum_od ) - 24 * l_days;
        l_minutes := 24 * 60 * ( p_datum_do - p_datum_od ) - 24 * 60 * l_days - 60 * floor(l_hours);

        return floor(l_minutes);
    end f_broj_minuta_putovanja;

    function f_ukupno_trajanje_sp (
        p_datum_od in date,
        p_datum_do in date
    ) return varchar2 as

        l_rezultat varchar2(200);
        l_dani     number;
        l_sati     number;
        l_minute   number;
        l_datum_od date;
        l_datum_do date;
    begin
        l_datum_od := to_date ( p_datum_od, 'dd.mm.yyyy hh24:mi:ss' );
        l_datum_do := to_date ( p_datum_do, 'dd.mm.yyyy hh24:mi:ss' );
        l_dani := sp_pkg.f_broj_dana_putovanja(
            p_datum_od => l_datum_od,
            p_datum_do => l_datum_do
        );
        l_sati := sp_pkg.f_broj_sati_putovanja(
            p_datum_od => l_datum_od,
            p_datum_do => l_datum_do
        );
        l_minute := sp_pkg.f_broj_minuta_putovanja(
            p_datum_od => l_datum_od,
            p_datum_do => l_datum_do
        );
        l_rezultat := l_dani
                      || ' dan(a), '
                      || l_sati
                      || ' sat(i), '
                      || l_minute
                      || ' minut(a)';

        return l_rezultat;
    end f_ukupno_trajanje_sp;

    function sp_broj_zahtjeva (
        p_radnik_id in number,
        p_godina    in number
    ) return number as
        l_max_broj  number;
        l_novi_broj number;
        l_ooj_id    number;
    begin
        select
            ooj_id
        into l_ooj_id
        from
            hr_radnici
        where
            id = p_radnik_id;

        select
            max(broj_zahtjeva)
        into l_max_broj
        from
            sp_zahtjevi
        where
                godina = p_godina
            and radnik_id in (
                select
                    id
                from
                    hr_radnici
                where
                    ooj_id = l_ooj_id
            );

        if l_max_broj is null then
            l_max_broj := 0;
        end if;
        l_novi_broj := l_max_broj + 1;
        return l_novi_broj;
    end sp_broj_zahtjeva;

    -- Zahtjevi
    function get_zahtjev_status (
        p_id in number
    ) return number is
    begin
        for c1 in (
            select
                status_id
            from
                sp_zahtjevi
            where
                id = p_id
        ) loop
            return c1.status_id;
        end loop;

        return null;
    end get_zahtjev_status;

    function get_zahtjev_izvjestaj_id (
        p_id in number
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                sp_izvjestaj
            where
                zahtjev_id = p_id
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_zahtjev_izvjestaj_id;

    procedure get_zahtjev (
        p_id              in number,
        p_vrsta_vozila_id out number,
        p_rezervacija_id  out number
    ) is
    begin
        for c1 in (
            select
                vrsta_vozila_id
            from
                sp_zahtjevi
            where
                id = p_id
        ) loop
            p_vrsta_vozila_id := c1.vrsta_vozila_id;
        end loop;

        for c1 in (
            select
                id
            from
                fv_rezervacije_vozila
            where
                zahtjev_id = p_id
        ) loop
            p_rezervacija_id := c1.id;
        end loop;

    end get_zahtjev;

    procedure get_zahtjev (
        p_id            in number,
        p_status_id     out number,
        p_broj_zahtjeva out number,
        p_radnik_id     out number,
        p_datum_od      out date,
        p_datum_do      out date
    ) is
    begin
        for c1 in (
            select
                *
            from
                sp_zahtjevi
            where
                id = p_id
        ) loop
            p_status_id := c1.status_id;
            p_broj_zahtjeva := c1.broj_zahtjeva;
            p_radnik_id := c1.radnik_id;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
        end loop;
    end get_zahtjev;

    function insert_zahtjev (
        p_radnik_id        in number,
        p_vrsta_vozila_id  in number,
        p_vozilo_id        in number,
        p_datum_od         in date,
        p_datum_do         in date,
        p_mjesto_putovanja in varchar2,
        p_relacija         in varchar2,
        p_komentar         in varchar2,
        p_reg_oznaka       in varchar2,
        p_svrha_putovanja  in varchar2,
        p_teret_troskova   in varchar2,
        p_putnici          in varchar2
    ) return number is

        l_zahtjev_id    number;
        l_godina        number := extract(year from p_datum_od);
        l_broj_zahtjeva number := sp_broj_zahtjeva(p_radnik_id, l_godina);
        l_redni_broj    number := 1;
    begin
        if p_datum_do < p_datum_od then
            raise_application_error(-20025, '"Datum do" ne može biti stariji od "datuma od"');
        end if;
        insert into sp_zahtjevi (
            radnik_id,
            broj_zahtjeva,
            datum_od,
            datum_do,
            relacija,
            reg_oznaka,
            svrha_putovanja,
            komentar,
            status_id,
            godina,
            teret_troskova,
            vrsta_vozila_id,
            mjesto_putovanja
        ) values ( p_radnik_id,
                   l_broj_zahtjeva,
                   p_datum_od,
                   p_datum_do,
                   p_relacija,
                   p_reg_oznaka,
                   p_svrha_putovanja,
                   p_komentar,
                   g_sp_podnesen,
                   l_godina,
                   p_teret_troskova,
                   p_vrsta_vozila_id,
                   p_mjesto_putovanja ) return id into l_zahtjev_id;

        update_zahtjev_status(
            p_zahtjev_id => l_zahtjev_id,
            p_status_id  => g_sp_podnesen
        );

        -- Unosimo izvjestaj (kasnije cemo ga update)
        insert into sp_izvjestaj (
            zahtjev_id,
            vozilo_id
        ) values ( l_zahtjev_id,
                   p_vozilo_id );

        -- Unos putnika
        insert into sp_putnici (
            zahtjev_id,
            radnik_id,
            redni_broj
        ) values ( l_zahtjev_id,
                   p_radnik_id,
                   l_redni_broj );

        for c1 in (
            select
                column_value as radnik_id
            from
                apex_string.split(p_putnici, ':')
        ) loop
            if c1.radnik_id is null then
                exit;
            end if;
            l_redni_broj := l_redni_broj + 1;
            insert into sp_putnici (
                zahtjev_id,
                radnik_id,
                redni_broj
            ) values ( l_zahtjev_id,
                       c1.radnik_id,
                       l_redni_broj );

        end loop;

        return l_zahtjev_id;
    end insert_zahtjev;

    procedure delete_zahtjev (
        p_id in number
    ) is
    begin
        delete from sp_zahtjevi
        where
            id = p_id;

    end delete_zahtjev;

    procedure update_zahtjev_status (
        p_zahtjev_id        in number,
        p_status_id         in number,
        p_komentar_statusa  in varchar2,
        p_radnik_odobrio_id in number
    ) is
    begin
        update sp_zahtjevi
        set
            status_id = p_status_id,
            komentar_statusa = p_komentar_statusa,
            radnik_odobrio_id = p_radnik_odobrio_id
        where
            id = p_zahtjev_id;

        insert into sp_statusi_hist (
            zahtjev_id,
            datum,
            status_id
        ) values ( p_zahtjev_id,
                   sysdate,
                   p_status_id );

    end update_zahtjev_status;

    procedure update_zahtjev_status (
        p_zahtjev_id in number,
        p_status_id  in number
    ) is
    begin
        update sp_zahtjevi
        set
            status_id = p_status_id
        where
            id = p_zahtjev_id;

        insert into sp_statusi_hist (
            zahtjev_id,
            datum,
            status_id
        ) values ( p_zahtjev_id,
                   sysdate,
                   p_status_id );

    end update_zahtjev_status;

    -- Izvjestaj
    procedure insert_izvjestaj (
        p_zahtjev_id       in number,
        p_radnik_id        in number,
        p_opis             in varchar2,
        p_vrijeme_polaska  in date,
        p_vrijeme_povratka in date,
        p_broj_sati        in number,
        p_broj_dana        in number,
        p_broj_min         in number,
        p_akontacija       in number,
        p_drzava_id        in number,
        p_kurs             in number,
        p_valuta_id        in number
    ) as
        l_status       number := get_zahtjev_status(p_zahtjev_id);
        l_izvjestaj_id number := get_zahtjev_izvjestaj_id(p_zahtjev_id);
    begin
        if l_status = 20 then
            update sp_izvjestaj
            set
                opis = p_opis,
                vrijeme_polaska = p_vrijeme_polaska,
                vrijeme_povratka = p_vrijeme_povratka,
                broj_sati = p_broj_sati,
                broj_dana = p_broj_dana,
                broj_min = p_broj_min,
                akontacija = p_akontacija,
                drzava_id = p_drzava_id,
                kurs = p_kurs,
                valuta_id = p_valuta_id,
                vazi = 'Y'
            where
                id = l_izvjestaj_id;

        else
            raise_application_error(-20055, 'Nije dozvoljen unos izvještaja - neodgovarajući status naloga');
        end if;

        update sp_zahtjevi
        set
            status_id = g_sp_izvjestaj_unesen
        where
            id = p_zahtjev_id;

        -- Unos u hist
        insert into sp_statusi_hist (
            zahtjev_id,
            datum,
            status_id
        ) values ( p_zahtjev_id,
                   sysdate,
                   g_sp_izvjestaj_unesen );

        -- Update siht lista
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = 4
        where
                radnik_id = p_radnik_id
            and trunc(datum) between trunc(p_vrijeme_polaska) and trunc(p_vrijeme_povratka);

    end insert_izvjestaj;

    -- Troskovi
    procedure get_trosak (
        p_id         in number,
        p_zahtjev_id out number,
        p_tip_id     out number,
        p_opis       out varchar2,
        p_iznos      out number,
        p_valid      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sp_troskovi
            where
                id = p_id
        ) loop
            p_zahtjev_id := c1.zahtjev_id;
            p_tip_id := c1.tip_id;
            p_opis := c1.opis;
            p_iznos := c1.iznos;
            p_valid := c1.valid;
        end loop;
    end get_trosak;

    procedure insert_trosak (
        p_zahtjev_id in number,
        p_tip_id     in number,
        p_opis       in varchar2,
        p_iznos      in number,
        p_racun      in varchar2
    ) is

        l_blob      blob;
        l_filename  varchar2(255);
        l_mimetype  varchar2(255);
        l_izvjestaj number;
        l_status    number;
    begin
        select
            count(*)
        into l_izvjestaj
        from
            sp_izvjestaj
        where
                zahtjev_id = p_zahtjev_id
            and vrijeme_polaska is not null;

        if l_izvjestaj = 0 then
            raise_application_error(-20001, 'Nije dozvoljen unos troškova - nije unesen izvještaj');
        end if;
        select
            status_id
        into l_status
        from
            sp_zahtjevi
        where
            id = p_zahtjev_id;

        if l_status not in ( 80, 90 ) then
            raise_application_error(-20005, ' Nije dozvoljen unos troškova - neodgovarajući status');
        end if;

        if p_racun is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_racun,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );
        end if;

        insert into sp_troskovi (
            zahtjev_id,
            tip_id,
            opis,
            iznos,
            racun,
            racun_mimetype,
            racun_filename
        ) values ( p_zahtjev_id,
                   p_tip_id,
                   p_opis,
                   round(p_iznos, 2),
                   l_blob,
                   l_mimetype,
                   l_filename );

    end insert_trosak;

    procedure update_trosak (
        p_id         in number,
        p_zahtjev_id in number,
        p_tip_id     in number,
        p_opis       in varchar2,
        p_iznos      in number,
        p_racun      in varchar2,
        p_valid      in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_racun is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_racun,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update sp_troskovi
            set
                zahtjev_id = p_zahtjev_id,
                tip_id = p_tip_id,
                opis = p_opis,
                iznos = round(p_iznos, 2),
                racun = l_blob,
                racun_mimetype = l_mimetype,
                racun_filename = l_filename,
                valid = p_valid
            where
                id = p_id;

        else
            update sp_troskovi
            set
                zahtjev_id = p_zahtjev_id,
                tip_id = p_tip_id,
                opis = p_opis,
                iznos = p_iznos,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_trosak;

    procedure delete_trosak (
        p_id in number
    ) is
    begin
        delete from sp_troskovi
        where
            id = p_id;

    end delete_trosak;

    procedure insert_automatski_trosak (
        p_zahtjev_id          in number,
        p_drzava_id           in number,
        p_kurs                in number,
        p_broj_dana           in number,
        p_broj_sati           in number,
        p_vrsta_vozila_id     in number,
        p_tip_unosa           in varchar2,
        p_kilometraza_pocetak in number,
        p_kilometraza_kraj    in number,
        p_kilometraza         in number,
        p_cijena_goriva       in number
    ) is
        l_dnevnica        number := 20;
        l_drzava_dnevnica number;
        l_iznos           number;
        l_km              number;
    begin
        sif.sif_pkg.get_drzava(
            p_id       => p_drzava_id,
            p_dnevnica => l_drzava_dnevnica
        );
        l_dnevnica := l_drzava_dnevnica * p_kurs;

        -- Unos dnevnica
        l_iznos := p_broj_dana * l_dnevnica;
        if
            p_broj_sati >= 8
            and p_broj_sati < 12
        then
            l_iznos := l_iznos + l_dnevnica / 2;
        elsif p_broj_sati >= 12 then
            l_iznos := l_iznos + l_dnevnica;
        end if;

        insert_trosak(
            p_zahtjev_id => p_zahtjev_id,
            p_tip_id     => 3,
            p_opis       => 'Automatski unos dnevnice u odnosu na uneseni izvještaj. Dnevnica: '
                      || l_drzava_dnevnica
                      || ' | Kurs: '
                      || to_char(p_kurs, '999G999G999D00000')
                      || ' | Ukupna dnevnica: '
                      || to_char(l_dnevnica, '999G999G999D00')
                      || 'KM',
            p_iznos      => l_iznos,
            p_racun      => null
        );

        -- Unos goriva u troskove (kilometraza)
        if p_vrsta_vozila_id = 2 then
            if p_tip_unosa = 'PK' then
                l_km := p_kilometraza_kraj - p_kilometraza_pocetak;
            else
                l_km := p_kilometraza;
            end if;
            -- Racun za cijenu goriva..
            l_iznos := l_km * p_cijena_goriva * 0.2;
            insert_trosak(
                p_zahtjev_id => p_zahtjev_id,
                p_tip_id     => 2,
                p_opis       => 'Automatski unos goriva u odnosu na uneseni izvještaj. Pređeni kilometri: '
                          || l_km
                          || 'km. Cijena goriva: '
                          || to_char(p_cijena_goriva, '999G999G999G999G990D00')
                          || 'KM/l',
                p_iznos      => l_iznos,
                p_racun      => null
            );

        end if;

    end insert_automatski_trosak;

    -- Knjizenje
    function knjizi_sp_zahtjev_list (
        p_ooj_id      in number,
        p_sp_list     in varchar2,
        p_godina      in number,
        p_proknjizeno in varchar2
    ) return number is

        cursor c_zahtjevi is
        (
            select
                column_value as zahtjev_id
            from
                apex_string.split(p_sp_list, ':')
        );

        l_nalog_id number;
    begin
        for c1 in c_zahtjevi loop
            l_nalog_id := knjizi_sp_zahtjev_single(
                p_ooj_id      => p_ooj_id,
                p_zahtjev_id  => c1.zahtjev_id,
                p_godina      => p_godina,
                p_proknjizeno => p_proknjizeno
            );
        end loop;

        return l_nalog_id;
    end knjizi_sp_zahtjev_list;

    function knjizi_sp_zahtjev_single (
        p_zahtjev_id  in number,
        p_ooj_id      in number,
        p_godina      in number,
        p_proknjizeno in varchar2
    ) return number is
        l_nalog_id number;
    begin
        l_nalog_id := accounting.glavna_knjiga_pkg.knjizi_sp_zahtjev(
            p_zahtjev_id  => p_zahtjev_id,
            p_ooj_id      => p_ooj_id,
            p_godina      => p_godina,
            p_proknjizeno => p_proknjizeno
        );

        update sp_zahtjevi
        set
            glavna_knjiga_id = l_nalog_id
        where
            id = p_zahtjev_id;

        update_zahtjev_status(
            p_zahtjev_id => p_zahtjev_id,
            p_status_id  => g_sp_zakljuceno
        );
        return l_nalog_id;
    end knjizi_sp_zahtjev_single;

end sp_pkg;
/

prompt
prompt Creating package body VP_PKG
prompt ============================
prompt
create or replace package body hrm.vp_pkg is

    -- Zahtjevi
    function get_broj_zahtjeva (
        p_ooj_id in number
    ) return number is
        l_broj_zahtjeva number;
    begin
        select
            nvl(
                max(broj_zahtjeva),
                0
            ) + 1
        into l_broj_zahtjeva
        from
            vp_zahtjevi
        where
            ooj_id = p_ooj_id;

        return l_broj_zahtjeva;
    end get_broj_zahtjeva;

    procedure get_zahtjev (
        p_id        in number,
        p_radnik_id out number,
        p_status_id out number,
        p_datum_od  out date,
        p_datum_do  out date
    ) is
    begin
        for c1 in (
            select
                *
            from
                vp_zahtjevi
            where
                id = p_id
        ) loop
            p_status_id := c1.status_id;
            p_radnik_id := c1.radnik_id;
            p_datum_od := c1.datum_od;
            p_datum_do := c1.datum_do;
        end loop;
    end get_zahtjev;

    procedure insert_zahtjev (
        p_radnik_id     in number,
        p_datum_od      in date,
        p_datum_do      in date,
        p_napomena      in varchar2,
        p_broj_dana     in number,
        p_nadredjeni_id in number,
        p_ooj_id        in number
    ) is
        l_id            number;
        l_broj_zahtjeva number;
        l_godina        number;
        l_count         number;
    begin
        if p_broj_dana > 2 then
            raise_application_error(-20001, 'Maksimalan broj dana za vjerske praznike je 2.');
        end if;
        l_godina := extract(year from sysdate);
        l_broj_zahtjeva := get_broj_zahtjeva(p_ooj_id => p_ooj_id);
        select
            nvl(
                sum(broj_dana),
                0
            )
        into l_count
        from
            vp_zahtjevi
        where
                radnik_id = p_radnik_id
            and godina = l_godina
            and status_id in ( 1, 2 );

        if l_count + p_broj_dana > 2 then
            raise_application_error(-20001, 'Maksimalan broj dana za vjerske praznike u toku jedne godine je 2. Broj iskorištenih dana: '
                                            || l_count
                                            || '.');
        end if;

        insert into vp_zahtjevi (
            radnik_id,
            broj_zahtjeva,
            godina,
            datum_od,
            datum_do,
            napomena,
            broj_dana,
            nadredjeni_id,
            ooj_id
        ) values ( p_radnik_id,
                   l_broj_zahtjeva,
                   l_godina,
                   p_datum_od,
                   p_datum_do,
                   p_napomena,
                   p_broj_dana,
                   p_nadredjeni_id,
                   p_ooj_id ) returning id into l_id;

        insert_zahtjev_hist(
            p_zahtjev_id => l_id,
            p_status_id  => 1
        );
    end insert_zahtjev;

    procedure prihvati_zahtjev (
        p_id       in number,
        p_komentar in varchar2
    ) is
        l_datum_od  date;
        l_datum_do  date;
        l_radnik_id number;
    begin
        -- Prikupljanje informacija
        select
            radnik_id,
            datum_od,
            datum_do
        into
            l_radnik_id,
            l_datum_od,
            l_datum_do
        from
            vp_zahtjevi
        where
            id = p_id;

        -- Update zahtjeva
        update vp_zahtjevi
        set
            komentar = p_komentar
        where
            id = p_id;

        insert_zahtjev_hist(
            p_zahtjev_id => p_id,
            p_status_id  => 2
        );

        -- Update siht liste
        update hr_siht_lista
        set
            evidencija_prisutnosti_id = 7
        where
                radnik_id = l_radnik_id
            and trunc(datum) between trunc(l_datum_od) and trunc(l_datum_do)
            and radni_dan = 'Y';

    end prihvati_zahtjev;

    procedure odbij_zahtjev (
        p_id       in number,
        p_komentar in varchar2
    ) is
    begin
        update vp_zahtjevi
        set
            komentar = p_komentar
        where
            id = p_id;

        insert_zahtjev_hist(
            p_zahtjev_id => p_id,
            p_status_id  => 3
        );
    end odbij_zahtjev;

    procedure ponisti_zahtjev (
        p_id in number
    ) is
    begin
        insert_zahtjev_hist(
            p_zahtjev_id => p_id,
            p_status_id  => 4
        );
    end ponisti_zahtjev;

    -- History
    procedure insert_zahtjev_hist (
        p_zahtjev_id in number,
        p_status_id  in number
    ) is
    begin
        insert into vp_zahtjev_hist (
            zahtjev_id,
            status_id
        ) values ( p_zahtjev_id,
                   p_status_id );

        update vp_zahtjevi
        set
            status_id = p_status_id
        where
            id = p_zahtjev_id;

    end insert_zahtjev_hist;

end vp_pkg;
/

prompt
prompt Creating package body XML_PKG
prompt =============================
prompt
create or replace package body hrm.xml_pkg as

    function obrazac_1002_doprinos (
        p_ooj_id           in number,
        p_mjesec_godina    in varchar2,
        p_isplata_primanja in number,
        p_inspektor        in varchar2,
        o_filename         out varchar2
    ) return xmltype as

        l_mjesec             varchar2(2) := lpad(
            substr(p_mjesec_godina,
                   1,
                   instr(p_mjesec_godina, '.') - 1),
            2,
            '0'
        );
        l_godina             varchar2(4) := substr(p_mjesec_godina,
                                       instr(p_mjesec_godina, '.') + 1);
        xml_zaglavlje        xmltype;
        xml_obaveza          xmltype;
        xml_obaveza_1        xmltype;
        xml_obaveza_2        xmltype;
        xml_dl_1             xmltype;
        xml_dl_3             xmltype;
        xml_dl_5             xmltype;
        xml_data             xmltype;
        l_isplatni_period_od date := trunc(to_date(p_mjesec_godina, 'MM.YYYY'));
        l_isplatni_period_do date := last_day(l_isplatni_period_od);
        l_poreski_period_od  date := l_isplatni_period_od;
        l_poreski_period_do  date := l_isplatni_period_do;
        l_firma_naziv        varchar2(255);
        l_firma_jib          varchar2(16);
        l_firma_opstina      number;
        l_count              number;
    begin
        select
            naziv,
            jib,
            grad_sifra
        into
            l_firma_naziv,
            l_firma_jib,
            l_firma_opstina
        from
            core.vw_ooj
        where
            id = p_ooj_id;

        o_filename := l_firma_jib
                      || '-'
                      || to_char(to_date(p_mjesec_godina, 'MM.YYYY'), 'YYMM')
                      || '-Д';

        -- Kreiranje zaglavlja
        select
            xmlelement(
                zaglavlje,
                xmlforest('MPO1' as vrsta_prijave,
                'O' as tip_prijave,
                jib as jib,
                lpad(grad_sifra, 3, '0') as sifra_opstine,
                to_char(l_poreski_period_od, 'DD.MM.YYYY') as poreski_period_od,
                to_char(l_poreski_period_do, 'DD.MM.YYYY') as poreski_period_do,
                to_char(l_isplatni_period_od, 'DD.MM.YYYY') as isplatni_period_od,
                to_char(l_isplatni_period_do, 'DD.MM.YYYY') as isplatni_period_do,
                '' as poslodavac_kti,
                2 as namjena_prijave,
                p_isplata_primanja as isplata_primanja,
                '' as nacin_obavljanja_sdjelatnosti,
                    case
                        when p_inspektor is null then
                            ''
                        else
                            'X'
                    end
                as po_nalogu_inspektora)
            )
        into xml_zaglavlje
        from
            core.vw_ooj
        where
            id = p_ooj_id;

        -- Kreiranje obaveza (po opstinama) - Doprinosi na licna primanja, naknade i prihode osiguranika za obavezno osiguranje 
        select
            xmlelement(
                obaveza,
                xmlconcat(xmlagg(xmlelement(stavka,
                                            xmlforest('0000712199' as vrsta_prihoda,
                                            to_char(
                                                     sum(ukupno_dadzbina),
                                                     'FM9999990.00'
                                                 ) as iznos_obaveze,
                                            lpad(l_firma_opstina, 3, '0') as sifra_opstine))))
            )
        into xml_obaveza
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina
        group by
            1;

        -- Kreiranje obaveza (po opstinama) - Ostali doprinosi 
        select
            xmlagg(xmlelement(
                stavka,
                   xmlforest('0000712129' as vrsta_prihoda,
                   to_char(
                    sum(porez_dohodak),
                    'FM9999990.00'
                ) as iznos_obaveze,
                   lpad(g.sifra, 3, '0') as sifra_opstine)
            ))
        into xml_obaveza_2
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id in ( 3, 4, 5 )
            and p.mjesec = l_mjesec
            and p.godina = l_godina
        group by
            g.sifra; 

        -- Kreiranje DL1 (radnici)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina;

        if l_count > 0 then
            select
                xmlelement(
                    dl1,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(l_firma_opstina, 3, '0') as sifra_opstine,
                           p.broj_sati as radni_sati,
                           to_char(p.ukupno_troskova, 'FM9999990.00') as bruto,
                           to_char(p.pio_poslodavac, 'FM9999990.00') as doprinos_pio,
                           to_char(p.zdravstvo_poslodavac, 'FM9999990.00') as doprinos_zo,
                           to_char(p.doprinos_solidarnost, 'FM9999990.00') as doprinos_dz,
                           to_char(p.nezaposlesnost_poslodavac, 'FM9999990.00') as doprinos_zn,
                           to_char(p.ukupno_dadzbina, 'FM9999990.00') as ukupni_doprinosi,
                           to_char(p.osnovica_porez, 'FM9999990.00') as dohodak,
                           '0.00' as licni_odbitak,
                           '0.00' as porez_lo,
                           '0.00' as umanjenje,
                           '0.00' as povrat_poreza,
                           '0.00' as osnovica_porez,
                           '0.00' as porez,
                           to_char(p.neto_poslije_poreza, 'FM9999990.00') as isplaceno_primanje,
                           '0.00' as neoporezivo_primanje)
                    ))
                )
            into xml_dl_1
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
            where
                    ooj_id = p_ooj_id
                and p.tip_ugovora_id = 1
                and p.mjesec = l_mjesec
                and p.godina = l_godina;

        end if;

        -- Kreiranje DL3 (ostali tipovi ugovora)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id in ( 3, 4, 5 )
            and p.mjesec = l_mjesec
            and p.godina = l_godina;

        if l_count > 0 then
            select
                xmlelement(
                    dl3,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(l_firma_opstina, 3, '0') as sifra_opstine,
                           to_char(p.ukupno_troskova, 'FM9999990.00') as bruto,
                           to_char(p.pio_poslodavac, 'FM9999990.00') as doprinos_pio,
                           to_char(p.zdravstvo_poslodavac, 'FM9999990.00') as doprinos_zo,
                           to_char(p.doprinos_solidarnost, 'FM9999990.00') as doprinos_dz,
                           to_char(p.nezaposlesnost_poslodavac, 'FM9999990.00') as doprinos_zn,
                           to_char(p.ukupno_dadzbina, 'FM9999990.00') as ukupni_doprinosi,
                           to_char(p.osnovica_porez, 'FM9999990.00') as dohodak,
                           '0.00' as umanjenje,
                           '0.00' as povrat_poreza,
                           '0.00' as osnovica_porez,
                           '0.00' as porez,
                           to_char(p.neto_poslije_poreza, 'FM9999990.00') as isplaceno_primanje)
                    ))
                )
            into xml_dl_3
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
            where
                    ooj_id = p_ooj_id
                and p.tip_ugovora_id in ( 3, 4, 5 )
                and p.mjesec = l_mjesec
                and p.godina = l_godina;

        end if;

        -- Kreiranje DL5 (Bolovanje)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
            left join pl_bolovanja    b on b.plata_id = p.id
        where
                ooj_id = p_ooj_id
--            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina
            and b.neto_iznos is not null;

        if l_count > 0 then
            select
                xmlelement(
                    dl5,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(l_firma_opstina, 3, '0') as sifra_opstine,
                           b.broj_sati as radni_sati,
                           neto_iznos as neto_bolovanje,
                           (neto_iznos_full - neto_iznos) as neto_razlika_bol)
                    ))
                )
            into xml_dl_5
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
                left join pl_bolovanja    b on b.plata_id = p.id
            where
                    ooj_id = p_ooj_id
    --            and p.tip_ugovora_id = 1
                and p.mjesec = l_mjesec
                and p.godina = l_godina
                and b.neto_iznos is not null;

        end if;

        -- Spajanje
        select
            xmlelement(
                prijava_1002,
                xmlconcat(xml_zaglavlje,
                          xml_obaveza,
                          nvl(xml_dl_1, ''),
                          nvl(xml_dl_3, ''),
                          nvl(xml_dl_5, ''))
            )
        into xml_data
        from
            dual;

        return xml_data;
        dbms_output.put_line(xml_data.getstringval());
    end obrazac_1002_doprinos;

    function obrazac_1002_porez (
        p_ooj_id        in number,
        p_mjesec_godina in varchar2,
        p_inspektor     in varchar2,
        o_filename      out varchar2
    ) return xmltype as

        l_dop_inv_rs         number := plate_pkg.fn_koeficijent(plate_pkg.c_dop_inv_rs, 1);
        l_mjesec             varchar2(2) := lpad(
            substr(p_mjesec_godina,
                   1,
                   instr(p_mjesec_godina, '.') - 1),
            2,
            '0'
        );
        l_godina             varchar2(4) := substr(p_mjesec_godina,
                                       instr(p_mjesec_godina, '.') + 1);
        xml_zaglavlje        xmltype;
        xml_obaveza          xmltype;
        xml_obaveza_1        xmltype;
        xml_obaveza_2        xmltype;
        xml_obaveza_3        xmltype;
        xml_dl_1             xmltype;
        xml_dl_3             xmltype;
        xml_dl_5             xmltype;
        xml_dl_6             xmltype;
        xml_data             xmltype;
        l_isplatni_period_od date := trunc(to_date(p_mjesec_godina, 'MM.YYYY'));
        l_isplatni_period_do date := last_day(l_isplatni_period_od);
        l_poreski_period_od  date := add_months(l_isplatni_period_od, 1);
        l_poreski_period_do  date := last_day(l_poreski_period_od);
        l_firma_naziv        varchar2(255);
        l_firma_jib          varchar2(16);
        l_firma_opstina      number;
        l_count              number;
    begin
        select
            naziv,
            jib,
            grad_sifra
        into
            l_firma_naziv,
            l_firma_jib,
            l_firma_opstina
        from
            core.vw_ooj
        where
            id = p_ooj_id;

        o_filename := l_firma_jib
                      || '-'
                      || to_char(to_date(p_mjesec_godina, 'MM.YYYY'), 'YYMM')
                      || '-П';

        -- Kreiranje zaglavlja
        select
            xmlelement(
                zaglavlje,
                xmlforest('MPO1' as vrsta_prijave,
                'O' as tip_prijave,
                jib as jib,
                lpad(grad_sifra, 3, '0') as sifra_opstine,
                to_char(l_poreski_period_od, 'DD.MM.YYYY') as poreski_period_od,
                to_char(l_poreski_period_do, 'DD.MM.YYYY') as poreski_period_do,
                to_char(l_isplatni_period_od, 'DD.MM.YYYY') as isplatni_period_od,
                to_char(l_isplatni_period_do, 'DD.MM.YYYY') as isplatni_period_do,
                '' as poslodavac_kti,
                1 as namjena_prijave,
                '' as isplata_primanja,
                '' as nacin_obavljanja_sdjelatnosti,
                    case
                        when p_inspektor is null then
                            ''
                        else
                            'X'
                    end
                as po_nalogu_inspektora)
            )
        into xml_zaglavlje
        from
            core.vw_ooj
        where
            id = p_ooj_id;

        -- Kreiranje obaveza (po opstinama) - Porez na licna primanja 
        select
            xmlagg(xmlelement(
                stavka,
                   xmlforest('0000713113' as vrsta_prihoda,
                   to_char(
                    sum(porez_dohodak),
                    'FM9999990.00'
                ) as iznos_obaveze,
                   lpad(g.sifra, 3, '0') as sifra_opstine)
            ))
        into xml_obaveza_1
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina
        group by
            g.sifra; 

        -- Kreiranje obaveza (po opstinama) - Porez na ostali dohodak 
        select
            xmlagg(xmlelement(
                stavka,
                   xmlforest('0000711118' as vrsta_prihoda,
                   to_char(
                    sum(porez_dohodak),
                    'FM9999990.00'
                ) as iznos_obaveze,
                   lpad(g.sifra, 3, '0') as sifra_opstine)
            ))
        into xml_obaveza_2
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id in ( 3, 4, 5 )
            and p.mjesec = l_mjesec
            and p.godina = l_godina
        group by
            g.sifra; 

        -- Rehabilitacija (ukupno_bruto * 0.001)
        select
            xmlagg(xmlelement(
                stavka,
                   xmlforest('0000712171' as vrsta_prihoda,
                   to_char((sum(ukupno_troskova) * l_dop_inv_rs),
                           'FM9999990.00') as iznos_obaveze,
                   lpad(l_firma_opstina, 3, '0') as sifra_opstine)
            ))
        into xml_obaveza_3
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina
        group by
            1;  

        -- Spajanje obaveza
        select
            xmlelement(
                obaveza,
                xmlconcat(xml_obaveza_1, xml_obaveza_2, xml_obaveza_3)
            )
        into xml_obaveza
        from
            dual;

        -- Kreiranje DL1 (radnici) porez
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina;

        if l_count > 0 then
            select
                xmlelement(
                    dl1,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(g.sifra, 3, '0') as sifra_opstine,
                           '0' as radni_sati,
                           to_char(p.ukupno_troskova, 'FM9999990.00') as bruto,
                           '0.00' as doprinos_pio,
                           '0.00' as doprinos_zo,
                           '0.00' as doprinos_dz,
                           '0.00' as doprinos_zn,
                           to_char(p.ukupno_dadzbina, 'FM9999990.00') as ukupni_doprinosi,
                           to_char(p.osnovica_porez, 'FM9999990.00') as dohodak,
                           to_char(p.osnovni_licni_odb, 'FM9999990.00') as licni_odbitak,
                           '0.00' as porez_lo,
                           to_char(p.poreska_umanjenje, 'FM9999990.00') as umanjenje,
                           '0.00' as povrat_poreza,
                           to_char(p.osnovica_porez, 'FM9999990.00') as osnovica_porez,
                           to_char(p.porez_dohodak, 'FM9999990.00') as porez,
                           to_char(p.neto_poslije_poreza, 'FM9999990.00') as isplaceno_primanje,
                           to_char(p.prevoz, 'FM9999990.00') as neoporezivo_primanje)
                    ))
                )
            into xml_dl_1
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
            where
                    ooj_id = p_ooj_id
                and p.tip_ugovora_id = 1
                and p.mjesec = l_mjesec
                and p.godina = l_godina;

        end if;

        -- Kreiranje DL3 (ostali tipovi ugovora)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id in ( 3, 4, 5 )
            and p.mjesec = l_mjesec
            and p.godina = l_godina;

        if l_count > 0 then
            select
                xmlelement(
                    dl3,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(g.sifra, 3, '0') as sifra_opstine,
                           to_char(p.ukupno_troskova, 'FM9999990.00') as bruto,
                           '0.00' as doprinos_pio,
                           '0.00' as doprinos_zo,
                           '0.00' as doprinos_dz,
                           '0.00' as doprinos_zn,
                           to_char(p.ukupno_dadzbina, 'FM9999990.00') as ukupni_doprinosi,
                           to_char(p.osnovica_porez, 'FM9999990.00') as dohodak,
                           to_char(p.poreska_umanjenje, 'FM9999990.00') as umanjenje,
                           '0.00' as povrat_poreza,
                           to_char(p.osnovica_porez, 'FM9999990.00') as osnovica_porez,
                           to_char(p.porez_dohodak, 'FM9999990.00') as porez,
                           to_char(p.neto_poslije_poreza, 'FM9999990.00') as isplaceno_primanje)
                    ))
                )
            into xml_dl_3
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
            where
                    ooj_id = p_ooj_id
                and p.tip_ugovora_id in ( 3, 4, 5 )
                and p.mjesec = l_mjesec
                and p.godina = l_godina;

        end if;

        -- Kreiranje DL5 (Bolovanje)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
            left join pl_bolovanja    b on b.plata_id = p.id
        where
                ooj_id = p_ooj_id
--            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina
            and b.neto_iznos is not null;

        if l_count > 0 then
            select
                xmlelement(
                    dl5,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(r.ime
                                     || ' '
                                     || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(g.sifra, 3, '0') as sifra_opstine,
                           b.broj_sati as radni_sati,
                           neto_iznos as neto_bolovanje,
                           (neto_iznos_full - neto_iznos) as neto_razlika_bol)
                    ))
                )
            into xml_dl_5
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
                left join pl_bolovanja    b on b.plata_id = p.id
            where
                    ooj_id = p_ooj_id
    --            and p.tip_ugovora_id = 1
                and p.mjesec = l_mjesec
                and p.godina = l_godina
                and b.neto_iznos is not null;

        end if;

        -- Kreiranje DL6 - Posebne uplate doprinosa (ovo ide samo u 1002 - porez)
        select
            count(*)
        into l_count
        from
            pl_plate        p
            left join hr_radnici      r on p.radnik_id = r.id
            left join sif.sif_gradovi g on r.grad_id = g.id
        where
                ooj_id = p_ooj_id
            and p.tip_ugovora_id = 1
            and p.mjesec = l_mjesec
            and p.godina = l_godina;

        if l_count > 0 then
          
             /*select
                xmlelement(
                    dl6,
                    xmlagg(xmlelement(
                        stavka,
                           xmlforest(l_firma_naziv as ime_prezime,
                           l_firma_jib as jmbg,
                           lpad(l_firma_opstina, 3, '0') as sifra_opstine,
                           0 as radni_sati,
                           to_char(
                            sum(ukupno_troskova),
                            'FM9999990.00'
                        ) as osnovica_za_vi6,
                           to_char((sum(ukupno_troskova) * l_dop_inv_rs),
                                   'FM9999990.00') as doprinos_pio,
                           null as doprinos_zo,
                           null as doprinos_dz,
                           null as doprinos_zn,
                           to_char(
                            sum(ukupno_troskova),
                            'FM9999990.00'
                        ) as ukupni_doprinosi,
                           18 as tip_posebne_isplate)
                    ))
                )
            into xml_dl_6
            from
                pl_plate        p
                left join hr_radnici      r on p.radnik_id = r.id
                left join sif.sif_gradovi g on r.grad_id = g.id
            where
                    ooj_id = p_ooj_id
                and p.tip_ugovora_id = 1
                and p.mjesec = l_mjesec
                and p.godina = l_godina
            group by
                1;*/
                
                
            ----djordjije 16.09.2026---    
           select xmlelement(dl6,
                     xmlagg(
                       xmlelement(stavka,
                         xmlforest(
                           ime_prezime,
                           jmbg,
                           sifra_opstine,
                           radni_sati,
                           osnovica_za_vi6,
                           doprinos_pio,
                           doprinos_zo,
                           doprinos_dz,
                           doprinos_zn,
                           ukupni_doprinosi,
                           tip_posebne_isplate
                         )
                       )
                     )
                   )
            into xml_dl_6
            from (select   l_firma_naziv as ime_prezime,
                           l_firma_jib as jmbg,
                           lpad(l_firma_opstina, 3, '0') as sifra_opstine,
                           0 as radni_sati,
                           to_char(sum(ukupno_troskova),'FM9999990.00') as osnovica_za_vi6,
                           to_char((sum(ukupno_troskova) * l_dop_inv_rs),'FM9999990.00') as doprinos_pio,
                           null as doprinos_zo,
                           null as doprinos_dz,
                           null as doprinos_zn,
                           to_char(sum(ukupno_troskova),'FM9999990.00') as ukupni_doprinosi,
                           18 as tip_posebne_isplate
                           from
                              pl_plate        p
                              left join hr_radnici      r on p.radnik_id = r.id
                              left join sif.sif_gradovi g on r.grad_id = g.id
                          where
                                  ooj_id = p_ooj_id
                              and p.tip_ugovora_id = 1
                              and p.mjesec = l_mjesec
                              and p.godina = l_godina
                          group by
                              1
                   union all
                   select  r.ime || ' ' || r.prezime as ime_prezime,
                           r.jmbg as jmbg,
                           lpad(g.sifra, 3, '0') as sifra_opstine,
                           0 as radni_sati,
                           to_char(p.prevoz, 'FM9999990.00')                  as osnovica_za_vi6,
                           to_char(0, 'FM9999990.00')                         as doprinos_pio,
                           null                                                as doprinos_zo,
                           null                                                as doprinos_dz,
                           null                                                as doprinos_zn,
                           to_char(0, 'FM9999990.00')                          as ukupni_doprinosi,
                           110 as tip_posebne_isplate         
                          from pl_plate p
                          join hr_radnici r on p.radnik_id = r.id
                          join sif.sif_gradovi g on r.grad_id = g.id
                          where ooj_id = p_ooj_id
                          and p.tip_ugovora_id = 1
                          and p.mjesec = l_mjesec
                          and p.godina = l_godina
                         

                 );

        end if;

        -- Spajanje
        select
            xmlelement(
                prijava_1002,
                xmlconcat(xml_zaglavlje,
                          xml_obaveza,
                          nvl(xml_dl_1, ''),
                          nvl(xml_dl_3, ''),
                          nvl(xml_dl_5, ''),
                          nvl(xml_dl_6, ''))
            )
        into xml_data
        from
            dual;

        return xml_data;
        dbms_output.put_line(xml_data.getstringval());
    end obrazac_1002_porez;

end xml_pkg;
/

prompt
prompt Creating package body ZAPOSLJAVANJE_PKG
prompt =======================================
prompt
create or replace package body hrm.zaposljavanje_pkg is
	
	-- Tagovi
    procedure insert_tags (
        p_tags in varchar2
    ) is
        l_tag_id number;
    begin
        for x in (
            select
                regexp_substr(p_tags, '[^:]+', 1, level) tag_value
            from
                dual
            connect by
                level <= length(p_tags) - length(replace(p_tags, ':')) + 1
        ) loop
            l_tag_id := insert_tag(p_naziv => x.tag_value);
        end loop;
    end insert_tags;

    function insert_tag (
        p_naziv in varchar2
    ) return number is
        l_count number;
        l_id    number;
    begin
        select
            count(*)
        into l_count
        from
            i_tagovi
        where
            lower(naziv) = lower(p_naziv);

        if l_count > 0 then
            select
                id
            into l_id
            from
                i_tagovi
            where
                naziv = p_naziv;

            return l_id;
        end if;

        insert into i_tagovi ( naziv ) values ( lower(p_naziv) ) returning id into l_id;

        return l_id;
    end insert_tag;

    procedure delete_tag (
        p_id in number
    ) is
    begin
        delete from i_tagovi
        where
            id = p_id;

    end delete_tag;

	-- Kandidati
    procedure get_kandidat (
        p_id          in number,
        p_ooj_id      out number,
        p_status_id   out number,
        p_ime         out varchar2,
        p_prezime     out varchar2,
        p_entitet_id  out number,
        p_kanton_id   out number,
        p_grad_id     out number,
        p_adresa      out varchar2,
        p_telefon     out varchar2,
        p_mobitel     out varchar2,
        p_email       out varchar2,
        p_tags        out varchar2,
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
                ooj_id,
                status_id,
                ime,
                prezime,
                entitet_id,
                kanton_id,
                grad_id,
                adresa,
                telefon,
                mobitel,
                email,
                valid,
                row_version,
                created,
                created_by,
                updated,
                updated_by,
                (
                    select
                        listagg(t.naziv, ':') within group(
                        order by
                            t.naziv
                        ) as tags_list
                    from
                             i_tagovi t
                        join i_kandidat_tagovi kt on kt.tag_id = t.id
                    where
                        kt.kandidat_id = i_kandidati.id
                ) as tags
            from
                i_kandidati
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_status_id := c1.status_id;
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_entitet_id := c1.entitet_id;
            p_kanton_id := c1.kanton_id;
            p_grad_id := c1.grad_id;
            p_adresa := c1.adresa;
            p_telefon := c1.telefon;
            p_mobitel := c1.mobitel;
            p_email := c1.email;
            p_tags := c1.tags;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_kandidat;

    procedure get_kandidat (
        p_id      in number,
        p_ime     out varchar2,
        p_prezime out varchar2,
        p_telefon out varchar2,
        p_mobitel out varchar2,
        p_email   out varchar2
    ) is
    begin
        for c1 in (
            select
                ime,
                prezime,
                telefon,
                mobitel,
                email
            from
                i_kandidati
            where
                id = p_id
        ) loop
            p_ime := c1.ime;
            p_prezime := c1.prezime;
            p_telefon := c1.telefon;
            p_mobitel := c1.mobitel;
            p_email := c1.email;
        end loop;
    end get_kandidat;

    function insert_kandidat (
        p_ooj_id     in number,
        p_ime        in varchar2,
        p_prezime    in varchar2,
        p_entitet_id in number,
        p_kanton_id  in number,
        p_grad_id    in number,
        p_adresa     in varchar2,
        p_telefon    in varchar2,
        p_mobitel    in varchar2,
        p_email      in varchar2,
        p_tags       in varchar2,
        p_komentar   in varchar2,
        p_u_procesu  in varchar2
    ) return number is
        l_id        number;
        l_status_id number;
    begin
        insert into i_kandidati (
            ooj_id,
            ime,
            prezime,
            entitet_id,
            kanton_id,
            grad_id,
            adresa,
            telefon,
            mobitel,
            email
        ) values ( p_ooj_id,
                   p_ime,
                   p_prezime,
                   p_entitet_id,
                   p_kanton_id,
                   p_grad_id,
                   p_adresa,
                   p_telefon,
                   p_mobitel,
                   p_email ) returning id into l_id;

        -- Inserting tags
        insert_kandidat_tags(
            p_kandidat_id => l_id,
            p_tags        => p_tags
        );
        if p_u_procesu = 'Y' then
            l_status_id := 2;
        else
            l_status_id := 1;
        end if;

        insert_kandidat_hist(
            p_kandidat_id => l_id,
            p_status_id   => l_status_id,
            p_komentar    => p_komentar
        );
        return l_id;
    end insert_kandidat;

    procedure update_kandidat (
        p_id         in number,
        p_ooj_id     in number,
        p_ime        in varchar2,
        p_prezime    in varchar2,
        p_entitet_id in number,
        p_kanton_id  in number,
        p_grad_id    in number,
        p_adresa     in varchar2,
        p_telefon    in varchar2,
        p_mobitel    in varchar2,
        p_email      in varchar2,
        p_tags       in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update i_kandidati
        set
            ooj_id = p_ooj_id,
            ime = p_ime,
            prezime = p_prezime,
            entitet_id = p_entitet_id,
            kanton_id = p_kanton_id,
            grad_id = p_grad_id,
            adresa = p_adresa,
            telefon = p_telefon,
            mobitel = p_mobitel,
            email = p_email,
            valid = p_valid
        where
            id = p_id;

        insert_kandidat_tags(
            p_kandidat_id => p_id,
            p_tags        => p_tags
        );
    end update_kandidat;

	-- Kandidat dokumenti
    procedure insert_kandidat_docs (
        p_kandidat_id      in number,
        p_tip_dokumenta_id in number,
        p_documents        in varchar2
    ) is
    begin
        for x in (
            select
                regexp_substr(p_documents, '[^:]+', 1, level) document
            from
                dual
            connect by
                level <= length(p_documents) - length(replace(p_documents, ':')) + 1
        ) loop
            insert_kandidat_dokument(
                p_kandidat_id      => p_kandidat_id,
                p_tip_dokumenta_id => p_tip_dokumenta_id,
                p_dokument         => x.document
            );
        end loop;
    end insert_kandidat_docs;

    procedure insert_kandidat_dokument (
        p_kandidat_id      in number default null,
        p_tip_dokumenta_id in number default null,
        p_dokument         in varchar2 default null
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_dokument,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into i_kandidat_dokumenti (
            kandidat_id,
            tip_dokumenta_id,
            dokument,
            dokument_mimetype,
            dokument_filename
        ) values ( p_kandidat_id,
                   p_tip_dokumenta_id,
                   l_blob,
                   l_mimetype,
                   l_filename );

    end insert_kandidat_dokument;

    procedure delete_kandidat_dokument (
        p_id in number
    ) is
    begin
        delete from i_kandidat_dokumenti
        where
            id = p_id;

    end delete_kandidat_dokument;

	-- Kandidat tagovi
    procedure insert_kandidat_tags (
        p_kandidat_id in number,
        p_tags        in varchar2
    ) is
        l_count  number;
        l_tag_id number;
    begin
        -- Deleting tags if exists
        select
            count(*)
        into l_count
        from
            i_kandidat_tagovi
        where
            kandidat_id = p_kandidat_id;

        if l_count > 0 then
            delete from i_kandidat_tagovi
            where
                kandidat_id = p_kandidat_id;

        end if;

        -- Inserting new tags
        for x in (
            select
                regexp_substr(p_tags, '[^:]+', 1, level) tag_value
            from
                dual
            connect by
                level <= length(p_tags) - length(replace(p_tags, ':')) + 1
        ) loop
            if x.tag_value is not null then
                l_tag_id := insert_tag(p_naziv => x.tag_value);
                insert_kandidat_tag(
                    p_kandidat_id => p_kandidat_id,
                    p_tag_id      => l_tag_id
                );
            end if;
        end loop;

    end insert_kandidat_tags;

    procedure insert_kandidat_tag (
        p_kandidat_id in number default null,
        p_tag_id      in number default null
    ) is
    begin
        insert into i_kandidat_tagovi (
            kandidat_id,
            tag_id
        ) values ( p_kandidat_id,
                   p_tag_id );

    end insert_kandidat_tag;

    procedure delete_kandidat_tag (
        p_id in number
    ) is
    begin
        delete from i_kandidat_tagovi
        where
            id = p_id;

    end delete_kandidat_tag;

	-- Kandidat history
    procedure insert_kandidat_hist (
        p_kandidat_id in number,
        p_status_id   in number,
        p_komentar    in varchar2
    ) is
    begin
        update i_kandidati
        set
            status_id = p_status_id
        where
            id = p_kandidat_id;

        insert into i_kandidat_hist (
            kandidat_id,
            status_id,
            komentar
        ) values ( p_kandidat_id,
                   p_status_id,
                   p_komentar );

    end insert_kandidat_hist;

end zaposljavanje_pkg;
/

prompt
prompt Creating trigger A_ANKETA_KORISNICI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."A_ANKETA_KORISNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_anketa_korisnici
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

END a_anketa_korisnici_biu;
/

prompt
prompt Creating trigger A_ANKETE_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER HRM."A_ANKETE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_ankete
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

END a_ankete_biu;
/

prompt
prompt Creating trigger A_OBAVJESTENJA_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER HRM."A_OBAVJESTENJA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_obavjestenja
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

END a_obavjestenja_biu;
/

prompt
prompt Creating trigger A_PITANJA_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER HRM."A_PITANJA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_pitanja
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

END a_pitanja_biu;
/

prompt
prompt Creating trigger A_PITANJA_ODGOVORI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."A_PITANJA_ODGOVORI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_pitanja_odgovori
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

END a_pitanja_odgovori_biu;
/

prompt
prompt Creating trigger A_PORUKE_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER HRM."A_PORUKE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.a_poruke
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

END a_poruke_biu;
/

prompt
prompt Creating trigger B_DOKUMENTI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."B_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.b_dokumenti
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

END b_dokumenti_biu;
/

prompt
prompt Creating trigger B_ZAHTJEVI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."B_ZAHTJEVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.b_zahtjevi
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

END b_zahtjevi_biu;
/

prompt
prompt Creating trigger B_ZAHTJEV_HIST_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER HRM."B_ZAHTJEV_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.b_zahtjev_hist
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

END b_zahtjev_hist_biu;
/

prompt
prompt Creating trigger FV_REZERVACIJE_VOZILA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER HRM."FV_REZERVACIJE_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.fv_rezervacije_vozila
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

END fv_rezervacije_vozila_biu;
/

prompt
prompt Creating trigger FV_SERVISI_VOZILA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."FV_SERVISI_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.fv_servisi_vozila
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

END fv_servisi_vozila_biu;
/

prompt
prompt Creating trigger FV_TOCENJE_VOZILA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."FV_TOCENJE_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.fv_tocenje_vozila
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

END fv_tocenje_vozila_biu;
/

prompt
prompt Creating trigger FV_VOZILA_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER HRM."FV_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.fv_vozila
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

END fv_vozila_biu;
/

prompt
prompt Creating trigger GO_PLAN_DANA_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER HRM."GO_PLAN_DANA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.go_plan_dana
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

END go_plan_dana_biu;
/

prompt
prompt Creating trigger GO_PLAN_DANA_DETALJI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER HRM."GO_PLAN_DANA_DETALJI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.go_plan_dana_detalji
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

END go_plan_dana_detalji_biu;
/

prompt
prompt Creating trigger GO_STATUSI_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."GO_STATUSI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.go_statusi_hist
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

END go_statusi_hist_biu;
/

prompt
prompt Creating trigger GO_ZAHTJEVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."GO_ZAHTJEVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.go_zahtjevi
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

END go_zahtjevi_biu;
/

prompt
prompt Creating trigger HR_OBRAZOVANJE_CJENOVNIK_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_OBRAZOVANJE_CJENOVNIK_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_obrazovanje_cjenovnik
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

END hr_obrazovanje_cjenovnik_biu;
/

prompt
prompt Creating trigger HR_OOJ_PRIJAVA_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_OOJ_PRIJAVA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_ooj_prijava
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

END hr_ooj_prijava_biu;
/

prompt
prompt Creating trigger HR_OOJ_PVS_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_OOJ_PVS_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_ooj_pvs
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

END hr_ooj_pvs_biu;
/

prompt
prompt Creating trigger HR_POTVRDE_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_POTVRDE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_potvrde
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

END hr_potvrde_biu;
/

prompt
prompt Creating trigger HR_RADNICI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_radnici
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

END hr_radnici_biu;
/

prompt
prompt Creating trigger HR_RADNICI_DJECA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_RADNICI_DJECA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_radnici_djeca
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

END hr_radnici_djeca_biu;
/

prompt
prompt Creating trigger HR_RADNICI_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_RADNICI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_radnici_hist
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

END hr_radnici_hist_biu;
/

prompt
prompt Creating trigger HR_SIHT_LISTA_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_SIHT_LISTA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_siht_lista
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

END hr_siht_lista_biu;
/

prompt
prompt Creating trigger HR_SIHT_LISTA_VRIJEME_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_SIHT_LISTA_VRIJEME_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_siht_lista_vrijeme
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

END hr_siht_lista_vrijeme_biu;
/

prompt
prompt Creating trigger HR_ZAHTJEVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."HR_ZAHTJEVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_zahtjevi
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

END hr_zahtjevi_biu;
/

prompt
prompt Creating trigger I_KANDIDATI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."I_KANDIDATI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.i_kandidati
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

END i_kandidati_biu;
/

prompt
prompt Creating trigger I_KANDIDAT_DOKUMENTI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER HRM."I_KANDIDAT_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.i_kandidat_dokumenti
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

END i_kandidat_dokumenti_biu;
/

prompt
prompt Creating trigger I_KANDIDAT_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."I_KANDIDAT_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.i_kandidat_hist
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

END i_kandidat_hist_biu;
/

prompt
prompt Creating trigger I_KANDIDAT_TAGOVI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."I_KANDIDAT_TAGOVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.i_kandidat_tagovi
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

END i_kandidat_tagovi_biu;
/

prompt
prompt Creating trigger I_TAGOVI_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER HRM."I_TAGOVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.i_tagovi
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

END i_tagovi_biu;
/

prompt
prompt Creating trigger LOKI_BEFORE_DDL_TGR
prompt ====================================
prompt
create or replace trigger hrm.loki_before_ddl_tgr
    before ddl on hrm.schema begin
        execute immediate 'begin LOKI.loki_lock.handle_ddl_event(); end;';
    end loki_before_ddl_tgr;
/

prompt
prompt Creating trigger LPR_OBLASTI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."LPR_OBLASTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.lpr_oblasti
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

END lpr_oblasti_biu;
/

prompt
prompt Creating trigger LPR_RADNICI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."LPR_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.lpr_radnici
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

END lpr_radnici_biu;
/

prompt
prompt Creating trigger LPR_RADNICI_HIST_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."LPR_RADNICI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.lpr_radnici_hist
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

END lpr_radnici_hist_biu;
/

prompt
prompt Creating trigger LPR_RADNICI_IZVJESTAJI_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER HRM."LPR_RADNICI_IZVJESTAJI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.lpr_radnici_izvjestaji
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

END lpr_radnici_izvjestaji_biu;
/

prompt
prompt Creating trigger MIDDLEWARE_LOG_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER HRM."MIDDLEWARE_LOG_BIU" BEFORE
    INSERT OR UPDATE ON hrm.middleware_log
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

END middleware_log_biu;
/

prompt
prompt Creating trigger OBRASCI_BIU
prompt ============================
prompt
CREATE OR REPLACE TRIGGER HRM."OBRASCI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.obrasci
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

END obrasci_biu;
/

prompt
prompt Creating trigger OBRAZAC_POLJA_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER HRM."OBRAZAC_POLJA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.obrazac_polja
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

END obrazac_polja_biu;
/

prompt
prompt Creating trigger PL_BOLOVANJA_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_BOLOVANJA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_bolovanja
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

END pl_bolovanja_biu;
/

prompt
prompt Creating trigger PL_DETALJI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_DETALJI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_detalji
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

END pl_detalji_biu;
/

prompt
prompt Creating trigger PL_OBUSTAVE_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_OBUSTAVE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_obustave
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

END pl_obustave_biu;
/

prompt
prompt Creating trigger PL_OBUSTAVE_HIST_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_OBUSTAVE_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_obustave_hist
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

END pl_obustave_hist_biu;
/

prompt
prompt Creating trigger PL_PLATE_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_PLATE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_plate
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

END pl_plate_biu;
/

prompt
prompt Creating trigger PL_PLATE_TROSKOVI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_PLATE_TROSKOVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_plate_troskovi
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

END pl_plate_troskovi_biu;
/

prompt
prompt Creating trigger PL_PLATE_UPLATNICE_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_PLATE_UPLATNICE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_plate_uplatnice
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

END pl_plate_uplatnice_biu;
/

prompt
prompt Creating trigger PL_PORESKI_ODBICI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_PORESKI_ODBICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_poreski_odbici
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

END pl_poreski_odbici_biu;
/

prompt
prompt Creating trigger PL_PREKOVREMENI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_PREKOVREMENI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_prekovremeni
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

END pl_prekovremeni_biu;
/

prompt
prompt Creating trigger PL_RADNICI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."PL_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pl_radnici
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

END pl_radnici_biu;
/

prompt
prompt Creating trigger PRU_OOJ_INTERVALI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_OOJ_INTERVALI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_ooj_intervali
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

END pru_ooj_intervali_biu;
/

prompt
prompt Creating trigger PRU_RADNICI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_radnici
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

END pru_radnici_biu;
/

prompt
prompt Creating trigger PRU_RADNICI_HIST_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_RADNICI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_radnici_hist
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

END pru_radnici_hist_biu;
/

prompt
prompt Creating trigger PRU_RADNICI_OCJENE_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_RADNICI_OCJENE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_radnici_ocjene
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

END pru_radnici_ocjene_biu;
/

prompt
prompt Creating trigger PRU_VREMENSKI_ROKOVI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_VREMENSKI_ROKOVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_vremenski_rokovi
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

END pru_vremenski_rokovi_biu;
/

prompt
prompt Creating trigger PRU_VREMENSKI_ROKOVI_HIST_BIU
prompt ==============================================
prompt
CREATE OR REPLACE TRIGGER HRM."PRU_VREMENSKI_ROKOVI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.pru_vremenski_rokovi_hist
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

END pru_vremenski_rokovi_hist_biu;
/

prompt
prompt Creating trigger P_CHECKLIST_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_CHECKLIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_checklist
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

END p_checklist_biu;
/

prompt
prompt Creating trigger P_CHECKLIST_RADNICI_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_CHECKLIST_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_checklist_korisnici
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

END p_checklist_radnici_biu;
/

prompt
prompt Creating trigger P_CHECKLIST_STAVKE_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_CHECKLIST_STAVKE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_checklist_stavke
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

END p_checklist_stavke_biu;
/

prompt
prompt Creating trigger P_KARTICA_DOKUMENTI_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_KARTICA_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_kartica_dokumenti
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

END p_kartica_dokumenti_biu;
/

prompt
prompt Creating trigger P_KARTICA_LABELI_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_KARTICA_LABELI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_kartica_labeli
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

END p_kartica_labeli_biu;
/

prompt
prompt Creating trigger P_KARTICA_RADNICI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_KARTICA_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_kartica_korisnici
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

END p_kartica_radnici_biu;
/

prompt
prompt Creating trigger P_KARTICE_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER HRM."P_KARTICE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_kartice
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

END p_kartice_biu;
/

prompt
prompt Creating trigger P_OOJ_LABELI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_OOJ_LABELI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_ooj_labeli
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

END p_ooj_labeli_biu;
/

prompt
prompt Creating trigger P_PROJEKAT_DOKUMENTI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_PROJEKAT_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_projekat_dokumenti
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

END p_projekat_dokumenti_biu;
/

prompt
prompt Creating trigger P_PROJEKAT_KOMENTARI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_PROJEKAT_KOMENTARI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_projekat_komentari
    FOR EACH ROW
BEGIN
    :new.vrijeme := current_date;

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

END p_projekat_komentari_biu;
/

prompt
prompt Creating trigger P_PROJEKAT_LISTE_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_PROJEKAT_LISTE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_projekat_liste
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

END p_projekat_liste_biu;
/

prompt
prompt Creating trigger P_PROJEKAT_RADNICI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."P_PROJEKAT_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_projekat_korisnici
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

END p_projekat_radnici_biu;
/

prompt
prompt Creating trigger P_PROJEKTI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."P_PROJEKTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.p_projekti
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

END p_projekti_biu;
/

prompt
prompt Creating trigger RADNIK_DOKUMENTI_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."RADNIK_DOKUMENTI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.hr_radnik_dokumenti
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

END radnik_dokumenti_biu;
/

prompt
prompt Creating trigger SMJENA_SABLONI_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER HRM."SMJENA_SABLONI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.smjena_sabloni
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

END smjena_sabloni_biu;
/

prompt
prompt Creating trigger SMJENA_SABLON_DANI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."SMJENA_SABLON_DANI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.smjena_sablon_dani
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

END smjena_sablon_dani_biu;
/

prompt
prompt Creating trigger SMJENA_SIHT_LISTA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER HRM."SMJENA_SIHT_LISTA_BIU" BEFORE
    INSERT OR UPDATE ON hrm.smjena_siht_lista
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

END smjena_siht_lista_biu;
/

prompt
prompt Creating trigger SMJENE_BIU
prompt ===========================
prompt
CREATE OR REPLACE TRIGGER HRM."SMJENE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.smjene
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

END smjene_biu;
/

prompt
prompt Creating trigger SP_IZVJESTAJ_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER HRM."SP_IZVJESTAJ_BIU" BEFORE
    INSERT OR UPDATE ON hrm.sp_izvjestaj
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

END sp_izvjestaj_biu;
/

prompt
prompt Creating trigger SP_PUTNICI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER HRM."SP_PUTNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.sp_putnici
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

END sp_putnici_biu;
/

prompt
prompt Creating trigger SP_STATUSI_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."SP_STATUSI_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.sp_statusi_hist
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

END sp_statusi_hist_biu;
/

prompt
prompt Creating trigger SP_TROSKOVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."SP_TROSKOVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.sp_troskovi
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

END sp_troskovi_biu;
/

prompt
prompt Creating trigger SP_ZAHTJEVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."SP_ZAHTJEVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.sp_zahtjevi
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

END sp_zahtjevi_biu;
/

prompt
prompt Creating trigger S_OOJ_PROSTORIJE_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER HRM."S_OOJ_PROSTORIJE_BIU" BEFORE
    INSERT OR UPDATE ON hrm.s_ooj_prostorije
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

END s_ooj_prostorije_biu;
/

prompt
prompt Creating trigger S_SASTANACI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."S_SASTANACI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.s_sastanci
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

END s_sastanaci_biu;
/

prompt
prompt Creating trigger S_SASTANAK_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."S_SASTANAK_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.s_sastanak_hist
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

END s_sastanak_hist_biu;
/

prompt
prompt Creating trigger S_SASTANAK_RADNICI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER HRM."S_SASTANAK_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.s_sastanak_radnici
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

END s_sastanak_radnici_biu;
/

prompt
prompt Creating trigger VP_ZAHTJEVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER HRM."VP_ZAHTJEVI_BIU" BEFORE
    INSERT OR UPDATE ON hrm.vp_zahtjevi
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

END vp_zahtjevi_biu;
/

prompt
prompt Creating trigger VP_ZAHTJEV_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER HRM."VP_ZAHTJEV_HIST_BIU" BEFORE
    INSERT OR UPDATE ON hrm.vp_zahtjev_hist
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

END vp_zahtjev_hist_biu;
/


prompt Done
spool off
set define on
