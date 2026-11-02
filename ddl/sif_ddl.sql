prompt PL/SQL Developer Export User Objects for user SIF@ESSCOMDEV_HIGH
prompt Created by Djordjije.Ristanovic on Thursday, October 29, 2026
set define off
spool sif_ddl.log

prompt
prompt Creating sequence ACC_AMORTIZACIONE_GRUPE_SEQ
prompt =============================================
prompt
create sequence SIF.ACC_AMORTIZACIONE_GRUPE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_AOP_GRUPE_SEQ
prompt ===================================
prompt
create sequence SIF.ACC_AOP_GRUPE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2601
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_AOP_KONTA_SEQ
prompt ===================================
prompt
create sequence SIF.ACC_AOP_KONTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2761
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_AUTOMATSKA_KNJIZENJA_SEQ
prompt ==============================================
prompt
create sequence SIF.ACC_AUTOMATSKA_KNJIZENJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 461
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_CHART_KONTA_SEQ
prompt =====================================
prompt
create sequence SIF.ACC_CHART_KONTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_CHART_SEQ
prompt ===============================
prompt
create sequence SIF.ACC_CHART_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_GRUPE_STAVKI_KONTA_SEQ
prompt ============================================
prompt
create sequence SIF.ACC_GRUPE_STAVKI_KONTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_GRUPE_STAVKI_SEQ
prompt ======================================
prompt
create sequence SIF.ACC_GRUPE_STAVKI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_IZVJESTAJI_AOP_SEQ
prompt ========================================
prompt
create sequence SIF.ACC_IZVJESTAJI_AOP_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2921
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_IZVJESTAJI_SEQ
prompt ====================================
prompt
create sequence SIF.ACC_IZVJESTAJI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 241
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_IZVJESTAJ_PREDUZETNICI_SEQ
prompt ================================================
prompt
create sequence SIF.ACC_IZVJESTAJ_PREDUZETNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 381
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_JEDINICE_MJERE_SEQ
prompt ========================================
prompt
create sequence SIF.ACC_JEDINICE_MJERE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 49
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_KLASE_OS_KONTA_SEQ
prompt ========================================
prompt
create sequence SIF.ACC_KLASE_OS_KONTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1721
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_KLASE_OS_SEQ
prompt ==================================
prompt
create sequence SIF.ACC_KLASE_OS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 401
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_KONTNI_OKVIR_KLASE_SEQ
prompt ============================================
prompt
create sequence SIF.ACC_KONTNI_OKVIR_KLASE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 44614
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_OBRASCI_FAKTURA_SEQ
prompt =========================================
prompt
create sequence SIF.ACC_OBRASCI_FAKTURA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_PDV_INDIKATORI_SEQ
prompt ========================================
prompt
create sequence SIF.ACC_PDV_INDIKATORI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 601
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_STATUSI_SEQ
prompt =================================
prompt
create sequence SIF.ACC_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_CIJENA_SEQ
prompt =======================================
prompt
create sequence SIF.ACC_TIPOVI_CIJENA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_KLIJENATA_SEQ
prompt ==========================================
prompt
create sequence SIF.ACC_TIPOVI_KLIJENATA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 44
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_KRETANJA_ROBE_SEQ
prompt ==============================================
prompt
create sequence SIF.ACC_TIPOVI_KRETANJA_ROBE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_PLACANJA_SEQ
prompt =========================================
prompt
create sequence SIF.ACC_TIPOVI_PLACANJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 66
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_SKLADISTA_SEQ
prompt ==========================================
prompt
create sequence SIF.ACC_TIPOVI_SKLADISTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TIPOVI_STAVKI_SEQ
prompt =======================================
prompt
create sequence SIF.ACC_TIPOVI_STAVKI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 104
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_TRANSAKCIJE_OS_SEQ
prompt ========================================
prompt
create sequence SIF.ACC_TRANSAKCIJE_OS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 181
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_UIO_TIP_DOKUMENTA_SEQ
prompt ===========================================
prompt
create sequence SIF.ACC_UIO_TIP_DOKUMENTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 63
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VALUTA_SEQ
prompt ================================
prompt
create sequence SIF.ACC_VALUTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 45
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VALUTE_HIST_SEQ
prompt =====================================
prompt
create sequence SIF.ACC_VALUTE_HIST_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 4181
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VRSTE_FAKTURA_SEQ
prompt =======================================
prompt
create sequence SIF.ACC_VRSTE_FAKTURA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VRSTE_NALOGA_SEQ
prompt ======================================
prompt
create sequence SIF.ACC_VRSTE_NALOGA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 4965
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VRSTE_PRIHODA_SEQ
prompt =======================================
prompt
create sequence SIF.ACC_VRSTE_PRIHODA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_VRSTE_RASHODA_SEQ
prompt =======================================
prompt
create sequence SIF.ACC_VRSTE_RASHODA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence ACC_ZAVISNI_TROSKOVI_SEQ
prompt ==========================================
prompt
create sequence SIF.ACC_ZAVISNI_TROSKOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence A_SIF_STATUSI_SEQ
prompt ===================================
prompt
create sequence SIF.A_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 23
increment by 1
cache 20;

prompt
prompt Creating sequence A_SIF_TIPOVI_OBAVJESTENJA_SEQ
prompt ===============================================
prompt
create sequence SIF.A_SIF_TIPOVI_OBAVJESTENJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence BUDZET_STATUSI_SEQ
prompt ====================================
prompt
create sequence SIF.BUDZET_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence B_SIF_PRISUTNOSTI_SEQ
prompt =======================================
prompt
create sequence SIF.B_SIF_PRISUTNOSTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence B_SIF_STATUSI_SEQ
prompt ===================================
prompt
create sequence SIF.B_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 26
increment by 1
cache 20;

prompt
prompt Creating sequence B_SIF_TIPOVI_SEQ
prompt ==================================
prompt
create sequence SIF.B_SIF_TIPOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 23
increment by 1
cache 20;

prompt
prompt Creating sequence CMS_ALATI_SEQ
prompt ===============================
prompt
create sequence SIF.CMS_ALATI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence CMS_REGISTRARI_SEQ
prompt ====================================
prompt
create sequence SIF.CMS_REGISTRARI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 141
increment by 1
cache 20;

prompt
prompt Creating sequence CMS_REGISTRAR_TLD_SEQ
prompt =======================================
prompt
create sequence SIF.CMS_REGISTRAR_TLD_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 121
increment by 1
cache 20;

prompt
prompt Creating sequence CMS_STATUSI_SEQ
prompt =================================
prompt
create sequence SIF.CMS_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence CMS_TLD_SEQ
prompt =============================
prompt
create sequence SIF.CMS_TLD_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence CS_KATEGORIJA_VOZILA_SEQ
prompt ==========================================
prompt
create sequence SIF.CS_KATEGORIJA_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 180
increment by 1
cache 20;

prompt
prompt Creating sequence CS_MODELI_VOZILA_SEQ
prompt ======================================
prompt
create sequence SIF.CS_MODELI_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 3109
increment by 1
cache 20;

prompt
prompt Creating sequence CS_PROIZVODJACI_SEQ
prompt =====================================
prompt
create sequence SIF.CS_PROIZVODJACI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 321
increment by 1
cache 20;

prompt
prompt Creating sequence CS_PROIZVODJACI_VOZILA_SEQ
prompt ============================================
prompt
create sequence SIF.CS_PROIZVODJACI_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 521
increment by 1
cache 20;

prompt
prompt Creating sequence CS_STATUSI_SEQ
prompt ================================
prompt
create sequence SIF.CS_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 181
increment by 1
cache 20;

prompt
prompt Creating sequence CS_TIPOVI_GORIVA_SEQ
prompt ======================================
prompt
create sequence SIF.CS_TIPOVI_GORIVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence CS_TIPOVI_MJENJACA_SEQ
prompt ========================================
prompt
create sequence SIF.CS_TIPOVI_MJENJACA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence CS_TIPOVI_POGONA_SEQ
prompt ======================================
prompt
create sequence SIF.CS_TIPOVI_POGONA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence CS_TIPOVI_RADA_SEQ
prompt ====================================
prompt
create sequence SIF.CS_TIPOVI_RADA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 161
increment by 1
cache 20;

prompt
prompt Creating sequence DMS_PRISTUPI_SEQ
prompt ==================================
prompt
create sequence SIF.DMS_PRISTUPI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 201
increment by 1
cache 20;

prompt
prompt Creating sequence ER_IZVJESTAJI_SEQ
prompt ===================================
prompt
create sequence SIF.ER_IZVJESTAJI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence ER_KATEGORIJE_RIBOLOVACA_SEQ
prompt ==============================================
prompt
create sequence SIF.ER_KATEGORIJE_RIBOLOVACA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_RIBLJE_VRSTE_SEQ
prompt =====================================
prompt
create sequence SIF.ER_RIBLJE_VRSTE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_SABLONI_SEQ
prompt ================================
prompt
create sequence SIF.ER_SABLONI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_CIJENA_SEQ
prompt ======================================
prompt
create sequence SIF.ER_TIPOVI_CIJENA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_CLANSKIH_KARTI_SEQ
prompt ==============================================
prompt
create sequence SIF.ER_TIPOVI_CLANSKIH_KARTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_DOZVOLA_SEQ
prompt =======================================
prompt
create sequence SIF.ER_TIPOVI_DOZVOLA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_PRIVREMENIH_DOZVOLA_SEQ
prompt ===================================================
prompt
create sequence SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_RIBOLOVA_SEQ
prompt ========================================
prompt
create sequence SIF.ER_TIPOVI_RIBOLOVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_VODA_SEQ
prompt ====================================
prompt
create sequence SIF.ER_TIPOVI_VODA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence ER_TIPOVI_ZABRANA_SEQ
prompt =======================================
prompt
create sequence SIF.ER_TIPOVI_ZABRANA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence FV_TIPOVI_REZERVACIJA_SEQ
prompt ===========================================
prompt
create sequence SIF.FV_TIPOVI_REZERVACIJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 23
increment by 1
cache 20;

prompt
prompt Creating sequence FV_VRSTE_SERVISA_SEQ
prompt ======================================
prompt
create sequence SIF.FV_VRSTE_SERVISA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 53
increment by 1
cache 20;

prompt
prompt Creating sequence FV_VRSTE_VOZILA_SEQ
prompt =====================================
prompt
create sequence SIF.FV_VRSTE_VOZILA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 27
increment by 1
cache 20;

prompt
prompt Creating sequence GO_PARAMETRI_SEQ
prompt ==================================
prompt
create sequence SIF.GO_PARAMETRI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 53
increment by 1
cache 20;

prompt
prompt Creating sequence GO_STATUSI_SEQ
prompt ================================
prompt
create sequence SIF.GO_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 141
increment by 1
cache 20;

prompt
prompt Creating sequence GO_TIPOVI_PARAMETARA_SEQ
prompt ==========================================
prompt
create sequence SIF.GO_TIPOVI_PARAMETARA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 28
increment by 1
cache 20;

prompt
prompt Creating sequence GO_TIPOVI_ZAHTJEVA_SEQ
prompt ========================================
prompt
create sequence SIF.GO_TIPOVI_ZAHTJEVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 51
increment by 1
cache 20;

prompt
prompt Creating sequence GR_TIPOVI_MJESTA_SEQ
prompt ======================================
prompt
create sequence SIF.GR_TIPOVI_MJESTA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence HD_STATUSI_SEQ
prompt ================================
prompt
create sequence SIF.HD_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence HD_TIPOVI_LOGA_SEQ
prompt ====================================
prompt
create sequence SIF.HD_TIPOVI_LOGA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence HR_OBRASCI_MEMORANDUMA_SEQ
prompt ============================================
prompt
create sequence SIF.HR_OBRASCI_MEMORANDUMA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence HR_PRAZNICI_SEQ
prompt =================================
prompt
create sequence SIF.HR_PRAZNICI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 268
increment by 1
cache 20;

prompt
prompt Creating sequence HR_PVS_TIPOVI_SEQ
prompt ===================================
prompt
create sequence SIF.HR_PVS_TIPOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 27
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_EV_PRISUTNOSTI_SEQ
prompt ===========================================
prompt
create sequence SIF.HR_SIF_EV_PRISUTNOSTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 60
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_OBRAZOVANJA_SEQ
prompt ========================================
prompt
create sequence SIF.HR_SIF_OBRAZOVANJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_SIHTL_STATUSI_SEQ
prompt ==========================================
prompt
create sequence SIF.HR_SIF_SIHTL_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_DOKUMENATA_SEQ
prompt ==============================================
prompt
create sequence SIF.HR_SIF_TIPOVI_DOKUMENATA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 27
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_PRIJAVA_SEQ
prompt ===========================================
prompt
create sequence SIF.HR_SIF_TIPOVI_PRIJAVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_RADA_SEQ
prompt ========================================
prompt
create sequence SIF.HR_SIF_TIPOVI_RADA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 26
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_RADNOG_ODNOSA_SEQ
prompt =================================================
prompt
create sequence SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_RADNOG_VREMENA_SEQ
prompt ==================================================
prompt
create sequence SIF.HR_SIF_TIPOVI_RADNOG_VREMENA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence HR_SIF_TIPOVI_UGOVORA_SEQ
prompt ===========================================
prompt
create sequence SIF.HR_SIF_TIPOVI_UGOVORA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 67
increment by 1
cache 20;

prompt
prompt Creating sequence HR_TIPOVI_POTVRDA_SEQ
prompt =======================================
prompt
create sequence SIF.HR_TIPOVI_POTVRDA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence HR_TIPOVI_ZAHTJEVA_SEQ
prompt ========================================
prompt
create sequence SIF.HR_TIPOVI_ZAHTJEVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence I_SIF_STATUSI_SEQ
prompt ===================================
prompt
create sequence SIF.I_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 28
increment by 1
cache 20;

prompt
prompt Creating sequence I_SIF_TIPOVI_DOKUMENATA_SEQ
prompt =============================================
prompt
create sequence SIF.I_SIF_TIPOVI_DOKUMENATA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_KATEGORIJE_SEQ
prompt ====================================
prompt
create sequence SIF.LMS_KATEGORIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_STATUSI_SEQ
prompt =================================
prompt
create sequence SIF.LMS_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_TIPOVI_ISPITA_SEQ
prompt =======================================
prompt
create sequence SIF.LMS_TIPOVI_ISPITA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_TIPOVI_KURSEVA_SEQ
prompt ========================================
prompt
create sequence SIF.LMS_TIPOVI_KURSEVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_TIPOVI_LEKCIJA_SEQ
prompt ========================================
prompt
create sequence SIF.LMS_TIPOVI_LEKCIJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence LMS_TIPOVI_PUBLIKE_SEQ
prompt ========================================
prompt
create sequence SIF.LMS_TIPOVI_PUBLIKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_SIF_PRIORITETI_SEQ
prompt ========================================
prompt
create sequence SIF.LPR_SIF_PRIORITETI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence LPR_SIF_STATUSI_SEQ
prompt =====================================
prompt
create sequence SIF.LPR_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 27
increment by 1
cache 20;

prompt
prompt Creating sequence PL_KOEFICIJENTI_SEQ
prompt =====================================
prompt
create sequence SIF.PL_KOEFICIJENTI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 305
increment by 1
cache 20;

prompt
prompt Creating sequence PL_TIPOVI_EI_SEQ
prompt ==================================
prompt
create sequence SIF.PL_TIPOVI_EI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_INTERVALI_SEQ
prompt =======================================
prompt
create sequence SIF.PRU_SIF_INTERVALI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_KOMPETENCIJE_SEQ
prompt ==========================================
prompt
create sequence SIF.PRU_SIF_KOMPETENCIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 250
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_OCJENE_SEQ
prompt ====================================
prompt
create sequence SIF.PRU_SIF_OCJENE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 625
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_RAZLOZI_NEOCJENIVANJA_SEQ
prompt ===================================================
prompt
create sequence SIF.PRU_SIF_RAZLOZI_NEOCJENIVANJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_STATUSI_SEQ
prompt =====================================
prompt
create sequence SIF.PRU_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 64
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_TIPOVI_KOMPETENCIJA_SEQ
prompt =================================================
prompt
create sequence SIF.PRU_SIF_TIPOVI_KOMPETENCIJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence PRU_SIF_TIPOVI_OCJENA_SEQ
prompt ===========================================
prompt
create sequence SIF.PRU_SIF_TIPOVI_OCJENA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence P_SIF_NIVOI_PRISTUPA_SEQ
prompt ==========================================
prompt
create sequence SIF.P_SIF_NIVOI_PRISTUPA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence P_SIF_POZADINE_SEQ
prompt ====================================
prompt
create sequence SIF.P_SIF_POZADINE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 63
increment by 1
cache 20;

prompt
prompt Creating sequence P_SIF_STATUSI_SEQ
prompt ===================================
prompt
create sequence SIF.P_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 46
increment by 1
cache 20;

prompt
prompt Creating sequence P_SIF_TIPOVI_KOMENTARA_SEQ
prompt ============================================
prompt
create sequence SIF.P_SIF_TIPOVI_KOMENTARA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 323
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_APLIKACIJA_ROLE_SEQ
prompt =========================================
prompt
create sequence SIF.SIF_APLIKACIJA_ROLE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2713
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_APLIKACIJE_SEQ
prompt ====================================
prompt
create sequence SIF.SIF_APLIKACIJE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 302
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_BANKE_SEQ
prompt ===============================
prompt
create sequence SIF.SIF_BANKE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_BROWSERS_SEQ
prompt ==================================
prompt
create sequence SIF.SIF_BROWSERS_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_DRZAVE_SEQ
prompt ================================
prompt
create sequence SIF.SIF_DRZAVE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2471
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_ENTITETI_SEQ
prompt ==================================
prompt
create sequence SIF.SIF_ENTITETI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_GRADOVI_SEQ
prompt =================================
prompt
create sequence SIF.SIF_GRADOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 16478
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_GUIDE_SEQ
prompt ===============================
prompt
create sequence SIF.SIF_GUIDE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_INTERVALI_SEQ
prompt ===================================
prompt
create sequence SIF.SIF_INTERVALI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 62
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_KANTONI_SEQ
prompt =================================
prompt
create sequence SIF.SIF_KANTONI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 2050
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_MODULI_CIJENE_SEQ
prompt =======================================
prompt
create sequence SIF.SIF_MODULI_CIJENE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 283
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_MODULI_ROLE_SEQ
prompt =====================================
prompt
create sequence SIF.SIF_MODULI_ROLE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 1413
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_MODULI_SEQ
prompt ================================
prompt
create sequence SIF.SIF_MODULI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 322
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_ROLE_SEQ
prompt ==============================
prompt
create sequence SIF.SIF_ROLE_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 529
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_STATUSI_SEQ
prompt =================================
prompt
create sequence SIF.SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_TIPOVI_EI_SEQ
prompt ===================================
prompt
create sequence SIF.SIF_TIPOVI_EI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_TIPOVI_NOTIFIKACIJA_SEQ
prompt =============================================
prompt
create sequence SIF.SIF_TIPOVI_NOTIFIKACIJA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 506
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_TIPOVI_PREDUZETNIKA_SEQ
prompt =============================================
prompt
create sequence SIF.SIF_TIPOVI_PREDUZETNIKA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence SIF_UPUTSTVA_SEQ
prompt ==================================
prompt
create sequence SIF.SIF_UPUTSTVA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 23
increment by 1
cache 20;

prompt
prompt Creating sequence SP_TROSKOVI_TIPOVI_SEQ
prompt ========================================
prompt
create sequence SIF.SP_TROSKOVI_TIPOVI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating sequence S_SIF_STATUSI_SEQ
prompt ===================================
prompt
create sequence SIF.S_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 24
increment by 1
cache 20;

prompt
prompt Creating sequence S_SIF_TIPOVI_SASTANAKA_SEQ
prompt ============================================
prompt
create sequence SIF.S_SIF_TIPOVI_SASTANAKA_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 62
increment by 1
cache 20;

prompt
prompt Creating sequence VP_SIF_STATUSI_SEQ
prompt ====================================
prompt
create sequence SIF.VP_SIF_STATUSI_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 25
increment by 1
cache 20;

prompt
prompt Creating table ACC_AMORTIZACIONE_GRUPE
prompt ======================================
prompt
create table SIF.ACC_AMORTIZACIONE_GRUPE
(
  id          NUMBER default on null sif.acc_amortizacione_grupe_seq.nextval not null,
  ooj_id      NUMBER,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  procenat    NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_AMORTIZACIONE_GRUPE_I1 on SIF.ACC_AMORTIZACIONE_GRUPE (OOJ_ID);
alter table SIF.ACC_AMORTIZACIONE_GRUPE
  add constraint ACC_AMORTIZACIONE_GRUPE_ID_PK primary key (ID);
alter table SIF.ACC_AMORTIZACIONE_GRUPE
  add constraint ACC_AMORTIZACIONE_GRUPE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table SIF.ACC_AMORTIZACIONE_GRUPE
  add constraint ACC_AMORTIZACIONE_GRUPE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_IZVJESTAJI
prompt =============================
prompt
create table SIF.ACC_IZVJESTAJI
(
  id          NUMBER default on null sif.acc_izvjestaji_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  apif        VARCHAR2(1 CHAR) default 'N' not null,
  sequence    NUMBER,
  icon        VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  tip         VARCHAR2(16 CHAR)
)
;
alter table SIF.ACC_IZVJESTAJI
  add constraint ACC_IZVJESTAJI_ID_PK primary key (ID);
alter table SIF.ACC_IZVJESTAJI
  add constraint ACC_IZVJESTAJI_APIF_CK
  check ( apif in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_IZVJESTAJI
  add constraint ACC_IZVJESTAJI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_IZVJESTAJI_AOP
prompt =================================
prompt
create table SIF.ACC_IZVJESTAJI_AOP
(
  id           NUMBER default on null sif.acc_izvjestaji_aop_seq.nextval not null,
  izvjestaj_id NUMBER,
  naziv        VARCHAR2(255 CHAR),
  aop          VARCHAR2(16 CHAR),
  tip          VARCHAR2(1 CHAR) not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_IZVJESTAJI_AOP_I1 on SIF.ACC_IZVJESTAJI_AOP (IZVJESTAJ_ID);
alter table SIF.ACC_IZVJESTAJI_AOP
  add constraint ACC_IZVJESTAJI_AOP_ID_PK primary key (ID);
alter table SIF.ACC_IZVJESTAJI_AOP
  add constraint ACC_IZVJESTAJI_AOP_IZVJESTAJ_ID_FK foreign key (IZVJESTAJ_ID)
  references SIF.ACC_IZVJESTAJI (ID)
  disable
  novalidate;
alter table SIF.ACC_IZVJESTAJI_AOP
  add constraint ACC_IZVJESTAJI_AOP_TIP_CK
  check ( tip in ( 'K', 'G' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_AOP_GRUPE
prompt ============================
prompt
create table SIF.ACC_AOP_GRUPE
(
  id          NUMBER default on null sif.acc_aop_grupe_seq.nextval not null,
  aop_id      NUMBER,
  sum_id      NUMBER,
  sum_tip     VARCHAR2(1 CHAR),
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_AOP_GRUPE_I1 on SIF.ACC_AOP_GRUPE (AOP_ID);
create index SIF.ACC_AOP_GRUPE_I2 on SIF.ACC_AOP_GRUPE (SUM_ID);
alter table SIF.ACC_AOP_GRUPE
  add constraint ACC_AOP_GRUPE_ID_PK primary key (ID);
alter table SIF.ACC_AOP_GRUPE
  add constraint ACC_AOP_GRUPE_AOP_ID_FK foreign key (AOP_ID)
  references SIF.ACC_IZVJESTAJI_AOP (ID)
  disable
  novalidate;
alter table SIF.ACC_AOP_GRUPE
  add constraint ACC_AOP_GRUPE_SUM_ID_FK foreign key (SUM_ID)
  references SIF.ACC_IZVJESTAJI_AOP (ID)
  disable
  novalidate;
alter table SIF.ACC_AOP_GRUPE
  add constraint ACC_AOP_GRUPE_TIP_CK
  check ( sum_tip = 'P'
                or sum_tip = 'M' )
  disable
  novalidate;

prompt
prompt Creating table ACC_PDV_INDIKATORI
prompt =================================
prompt
create table SIF.ACC_PDV_INDIKATORI
(
  id                  NUMBER default on null sif.acc_pdv_indikatori_seq.nextval not null,
  sifra               VARCHAR2(2 CHAR) not null,
  naziv               VARCHAR2(255 CHAR) not null,
  opis                VARCHAR2(255),
  vrijednost          NUMBER,
  ui                  VARCHAR2(1 CHAR),
  kontna_klasa_prefix VARCHAR2(32 CHAR),
  valid               VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null
)
;
comment on column SIF.ACC_PDV_INDIKATORI.vrijednost
  is '17,0,itd';
alter table SIF.ACC_PDV_INDIKATORI
  add constraint ACC_PDV_INDIKATORI_ID_PK primary key (ID);
alter table SIF.ACC_PDV_INDIKATORI
  add constraint ACC_PDV_INDIKATORI_UI_CK
  check ( ui in ( 'U', 'I', 'O' ) )
  disable
  novalidate;
alter table SIF.ACC_PDV_INDIKATORI
  add constraint ACC_PDV_INDIKATORI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_ENTITETI
prompt ===========================
prompt
create table SIF.SIF_ENTITETI
(
  id          NUMBER default on null sif.sif_entiteti_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(32 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_ENTITETI
  add constraint SIF_ENTITETI_ID_PK primary key (ID);
alter table SIF.SIF_ENTITETI
  add constraint SIF_ENTITETI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_KONTNI_OKVIR_KLASE
prompt =====================================
prompt
create table SIF.ACC_KONTNI_OKVIR_KLASE
(
  id                  NUMBER default on null sif.acc_kontni_okvir_klase_seq.nextval not null,
  entitet_id          NUMBER,
  kontna_klasa_id     NUMBER,
  ooj_id              NUMBER,
  code                VARCHAR2(32 CHAR),
  naziv               VARCHAR2(255),
  os                  VARCHAR2(1 CHAR) default 'Y',
  klijent             VARCHAR2(1 CHAR),
  oj                  VARCHAR2(1 CHAR),
  radnik              VARCHAR2(1 CHAR),
  pdv_indikator       VARCHAR2(1 CHAR),
  pdv_indikator_sifra NUMBER,
  valid               VARCHAR2(1) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255) not null,
  otvorene_stavke     VARCHAR2(1) default 'N'
)
;
comment on column SIF.ACC_KONTNI_OKVIR_KLASE.pdv_indikator_sifra
  is 'FK ka sif.acc_pdv_indikatori - šifra PDV indikatora za konta koja se odnose na PDV';
comment on column SIF.ACC_KONTNI_OKVIR_KLASE.otvorene_stavke
  is 'za konto se prate otvorene stavke';
create index SIF.ACC_KOK_PDV_INDIKATOR_SIFRA_IDX on SIF.ACC_KONTNI_OKVIR_KLASE (PDV_INDIKATOR_SIFRA);
create index SIF.ACC_KONTNI_OKVIR_KLASE_I1 on SIF.ACC_KONTNI_OKVIR_KLASE (KONTNA_KLASA_ID);
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_ID_PK primary key (ID);
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KOK_PDV_INDIKATOR_FK foreign key (PDV_INDIKATOR_SIFRA)
  references SIF.ACC_PDV_INDIKATORI (ID);
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_ENTITET_ID_FK foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_KLIJENT_CK
  check ( klijent in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_OJ_CK
  check ( oj in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_OS_CK
  check ( os in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_OTVORENE_STAVKE_CK
  check (OTVORENE_STAVKE IN ('Y','N'));
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_PDV_INDIKATOR_CK
  check ( pdv_indikator in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_RADNIK_CK
  check ( radnik in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_KONTNI_OKVIR_KLASE
  add constraint ACC_KONTNI_OKVIR_KLASE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_AOP_KONTA
prompt ============================
prompt
create table SIF.ACC_AOP_KONTA
(
  id              NUMBER default on null sif.acc_aop_konta_seq.nextval not null,
  aop_id          NUMBER,
  kontna_klasa_id NUMBER,
  tip             VARCHAR2(1 CHAR),
  polje           VARCHAR2(2 CHAR),
  sum_tip         VARCHAR2(1 CHAR) default 'P' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_AOP_KONTA_I1 on SIF.ACC_AOP_KONTA (AOP_ID);
create index SIF.ACC_AOP_KONTA_I2 on SIF.ACC_AOP_KONTA (KONTNA_KLASA_ID);
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_ID_PK primary key (ID);
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_AOP_ID_FK foreign key (AOP_ID)
  references SIF.ACC_IZVJESTAJI_AOP (ID)
  disable
  novalidate;
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_POLJE_CK
  check ( polje in ( 'B', 'I' ) )
  disable
  novalidate;
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_SUM_TIP_CK
  check ( sum_tip in ( 'P', 'M' ) )
  disable
  novalidate;
alter table SIF.ACC_AOP_KONTA
  add constraint ACC_AOP_KONTA_TIP_CK
  check ( tip in ( 'I', 'E' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_MODULI
prompt =========================
prompt
create table SIF.ACC_MODULI
(
  id          NUMBER generated always as identity,
  sifra       VARCHAR2(10) not null,
  opis        VARCHAR2(200) not null,
  valid       VARCHAR2(1) default 'Y' not null,
  row_version NUMBER not null,
  created     DATE not null,
  created_by  VARCHAR2(50) not null,
  updated     DATE,
  updated_by  VARCHAR2(50)
)
;
alter table SIF.ACC_MODULI
  add constraint ACC_MODULI_ID_PK primary key (ID);
alter table SIF.ACC_MODULI
  add constraint ACC_PODULI_SIFRA_UQ unique (SIFRA);

prompt
prompt Creating table SIF_VRSTE_NALOGA
prompt ===============================
prompt
create table SIF.SIF_VRSTE_NALOGA
(
  id           NUMBER default on null sif.acc_vrste_naloga_seq.nextval not null,
  sifra        VARCHAR2(64),
  naziv        VARCHAR2(255),
  opis         VARCHAR2(1000),
  app          VARCHAR2(32 CHAR),
  valid        VARCHAR2(1) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255) not null,
  ooj_id       NUMBER,
  acc_modul_id NUMBER
)
;
comment on column SIF.SIF_VRSTE_NALOGA.sifra
  is 'sifra naloga';
comment on column SIF.SIF_VRSTE_NALOGA.naziv
  is 'naziv naloga';
comment on column SIF.SIF_VRSTE_NALOGA.opis
  is 'opis namjene naloga';
comment on column SIF.SIF_VRSTE_NALOGA.app
  is 'kojoj aplikaciji nalog pripada';
comment on column SIF.SIF_VRSTE_NALOGA.ooj_id
  is 'kojoj firmi pripada vrsta naloga';
comment on column SIF.SIF_VRSTE_NALOGA.acc_modul_id
  is 'kom modulu finansija prirpada nalog';
create index SIF.SIF_VRSTE_NALOGA_OOJ_IX on SIF.SIF_VRSTE_NALOGA (OOJ_ID, VALID);
alter table SIF.SIF_VRSTE_NALOGA
  add constraint ACC_VRSTE_NALOGA_ID_PK primary key (ID);
alter table SIF.SIF_VRSTE_NALOGA
  add constraint SIF_VRSTE_NALOGA_OOJ_SIFRA_UK unique (OOJ_ID, SIFRA);
alter table SIF.SIF_VRSTE_NALOGA
  add constraint SIF_VRSTE_NALOGA_ACC_MODUL_FK foreign key (ACC_MODUL_ID)
  references SIF.ACC_MODULI (ID);
alter table SIF.SIF_VRSTE_NALOGA
  add constraint SIF_VRSTE_NALOGA_OOJ_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID);
alter table SIF.SIF_VRSTE_NALOGA
  add constraint ACC_VRSTE_NALOGA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_VRSTE_FAKTURA
prompt ================================
prompt
create table SIF.ACC_VRSTE_FAKTURA
(
  id              NUMBER default on null sif.acc_vrste_faktura_seq.nextval not null,
  vrsta_naloga_id NUMBER,
  naziv           VARCHAR2(255 CHAR),
  sifra           VARCHAR2(64 CHAR),
  fiskalizacija   VARCHAR2(1 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
comment on column SIF.ACC_VRSTE_FAKTURA.sifra
  is 'Koristi se za fiskalizaciju..';
comment on column SIF.ACC_VRSTE_FAKTURA.fiskalizacija
  is 'Da li je moguca fiskalizacija ovog tipa racuna..';
create index SIF.ACC_VRSTE_FAKTURA_I1 on SIF.ACC_VRSTE_FAKTURA (VRSTA_NALOGA_ID);
alter table SIF.ACC_VRSTE_FAKTURA
  add constraint ACC_VRSTE_FAKTURA_ID_PK primary key (ID);
alter table SIF.ACC_VRSTE_FAKTURA
  add constraint ACC_VRSTE_FAKTURA_VRSTA_NALOGA_ID_FK foreign key (VRSTA_NALOGA_ID)
  references SIF.SIF_VRSTE_NALOGA (ID)
  disable
  novalidate;
alter table SIF.ACC_VRSTE_FAKTURA
  add constraint ACC_VRSTE_FAKTURA_FISKALIZACIJA_CK
  check ( fiskalizacija in ( 'Y', 'N' ) )
  disable
  novalidate;
alter table SIF.ACC_VRSTE_FAKTURA
  add constraint ACC_VRSTE_FAKTURA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_AUTOMATSKA_KNJIZENJA
prompt =======================================
prompt
create table SIF.ACC_AUTOMATSKA_KNJIZENJA
(
  id               NUMBER default on null sif.acc_automatska_knjizenja_seq.nextval not null,
  vrsta_fakture_id NUMBER,
  naziv            VARCHAR2(255 CHAR),
  sifra            VARCHAR2(64 CHAR),
  valid            VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version      INTEGER not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_AUTOMATSKA_KNJIZENJA_I1 on SIF.ACC_AUTOMATSKA_KNJIZENJA (VRSTA_FAKTURE_ID);
alter table SIF.ACC_AUTOMATSKA_KNJIZENJA
  add constraint ACC_AUTOMATSKA_KNJIZENJA_ID_PK primary key (ID);
alter table SIF.ACC_AUTOMATSKA_KNJIZENJA
  add constraint ACC_AUTOMATSKA_KNJIZENJA_VRSTA_FAKTURE_ID_FK foreign key (VRSTA_FAKTURE_ID)
  references SIF.ACC_VRSTE_FAKTURA (ID)
  disable
  novalidate;
alter table SIF.ACC_AUTOMATSKA_KNJIZENJA
  add constraint ACC_AUTOMATSKA_KNJIZENJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_CHART
prompt ========================
prompt
create table SIF.ACC_CHART
(
  id          NUMBER default on null sif.acc_chart_seq.nextval not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_CHART
  add constraint ACC_CHART_ID_PK primary key (ID);
alter table SIF.ACC_CHART
  add constraint ACC_CHART_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_CHART_KONTA
prompt ==============================
prompt
create table SIF.ACC_CHART_KONTA
(
  id              NUMBER default on null sif.acc_chart_konta_seq.nextval not null,
  chart_id        NUMBER,
  kontna_klasa_id NUMBER,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_CHART_KONTA_I1 on SIF.ACC_CHART_KONTA (CHART_ID);
create index SIF.ACC_CHART_KONTA_I2 on SIF.ACC_CHART_KONTA (KONTNA_KLASA_ID);
alter table SIF.ACC_CHART_KONTA
  add constraint ACC_CHART_KONTA_ID_PK primary key (ID);
alter table SIF.ACC_CHART_KONTA
  add constraint ACC_CHART_KONTA_CHART_ID_FK foreign key (CHART_ID)
  references SIF.ACC_CHART (ID)
  disable
  novalidate;
alter table SIF.ACC_CHART_KONTA
  add constraint ACC_CHART_KONTA_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;

prompt
prompt Creating table ACC_GRUPE_STAVKI
prompt ===============================
prompt
create table SIF.ACC_GRUPE_STAVKI
(
  id          NUMBER default on null sif.acc_grupe_stavki_seq.nextval not null,
  ooj_id      NUMBER,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_GRUPE_STAVKI_I1 on SIF.ACC_GRUPE_STAVKI (OOJ_ID);
alter table SIF.ACC_GRUPE_STAVKI
  add constraint ACC_GRUPE_STAVKI_ID_PK primary key (ID);
alter table SIF.ACC_GRUPE_STAVKI
  add constraint ACC_GRUPE_STAVKI_OOJ_ID_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table SIF.ACC_GRUPE_STAVKI
  add constraint ACC_GRUPE_STAVKI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_KRETANJA_ROBE
prompt =======================================
prompt
create table SIF.ACC_TIPOVI_KRETANJA_ROBE
(
  id              NUMBER default on null sif.acc_tipovi_kretanja_robe_seq.nextval not null,
  vrsta_naloga_id NUMBER,
  sifra           VARCHAR2(64 CHAR),
  naziv           VARCHAR2(255 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null,
  tip_kretanja    VARCHAR2(1 CHAR),
  skracenica      VARCHAR2(32 CHAR)
)
;
create index SIF.ACC_TIPOVI_KRETANJA_ROBE_I1 on SIF.ACC_TIPOVI_KRETANJA_ROBE (VRSTA_NALOGA_ID);
alter table SIF.ACC_TIPOVI_KRETANJA_ROBE
  add constraint ACC_TIPOVI_KRETANJA_ROBE_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_KRETANJA_ROBE
  add constraint ACC_TIPOVI_KRETANJA_ROBE_VRSTA_NALOGA_ID_FK foreign key (VRSTA_NALOGA_ID)
  references SIF.SIF_VRSTE_NALOGA (ID)
  disable
  novalidate;
alter table SIF.ACC_TIPOVI_KRETANJA_ROBE
  add constraint ACC_TIPOVI_KRETANJA_ROBE_TIP_KRETANJA_CK
  check ( tip_kretanja in ( 'U', 'I', 'M', 'P' ) )
  disable
  novalidate;
alter table SIF.ACC_TIPOVI_KRETANJA_ROBE
  add constraint ACC_TIPOVI_KRETANJA_ROBE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_GRUPE_STAVKI_KONTA
prompt =====================================
prompt
create table SIF.ACC_GRUPE_STAVKI_KONTA
(
  id              NUMBER default on null sif.acc_grupe_stavki_konta_seq.nextval not null,
  grupa_stavke_id NUMBER,
  kontna_klasa_id NUMBER,
  tip_kretanja_id NUMBER,
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null,
  tip_stavke      VARCHAR2(1 CHAR)
)
;
create index SIF.ACC_GRUPE_STAVKI_KONTA_I1 on SIF.ACC_GRUPE_STAVKI_KONTA (GRUPA_STAVKE_ID);
create index SIF.ACC_GRUPE_STAVKI_KONTA_I2 on SIF.ACC_GRUPE_STAVKI_KONTA (KONTNA_KLASA_ID);
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_ID_PK primary key (ID);
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_GRUPA_STAVKE_ID_FK foreign key (GRUPA_STAVKE_ID)
  references SIF.ACC_GRUPE_STAVKI (ID)
  disable
  novalidate;
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_TIP_KRETANJA_ID_FK foreign key (TIP_KRETANJA_ID)
  references SIF.ACC_TIPOVI_KRETANJA_ROBE (ID)
  disable
  novalidate;
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_TIP_STAVKE_CK
  check ( tip_stavke in ( 'D', 'P' ) )
  disable
  novalidate;
alter table SIF.ACC_GRUPE_STAVKI_KONTA
  add constraint ACC_GRUPE_STAVKI_KONTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_TIPOVI_PREDUZETNIKA
prompt ======================================
prompt
create table SIF.SIF_TIPOVI_PREDUZETNIKA
(
  id          NUMBER default on null sif.sif_tipovi_preduzetnika_seq.nextval not null,
  sifra       VARCHAR2(32 CHAR),
  naziv       VARCHAR2(255 CHAR),
  visible     VARCHAR2(1 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_TIPOVI_PREDUZETNIKA
  add constraint SIF_TIPOVI_PREDUZETNIKA_ID_PK primary key (ID);
alter table SIF.SIF_TIPOVI_PREDUZETNIKA
  add constraint SIF_TIPOVI_PREDUZETNIKA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_IZVJESTAJ_PREDUZETNICI
prompt =========================================
prompt
create table SIF.ACC_IZVJESTAJ_PREDUZETNICI
(
  id                  NUMBER default on null sif.acc_izvjestaj_preduzetnici_seq.nextval not null,
  izvjestaj_id        NUMBER,
  tip_preduzetnika_id NUMBER,
  valid               VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_IZVJESTAJ_PREDUZETNICI_I1 on SIF.ACC_IZVJESTAJ_PREDUZETNICI (IZVJESTAJ_ID);
create index SIF.ACC_IZVJESTAJ_PREDUZETNICI_I2 on SIF.ACC_IZVJESTAJ_PREDUZETNICI (TIP_PREDUZETNIKA_ID);
alter table SIF.ACC_IZVJESTAJ_PREDUZETNICI
  add constraint ACC_IZVJESTAJ_PREDUZETNICI_ID_PK primary key (ID);
alter table SIF.ACC_IZVJESTAJ_PREDUZETNICI
  add constraint ACC_IZVJESTAJ_PREDUZETNICI_IZVJESTAJ_ID_FK foreign key (IZVJESTAJ_ID)
  references SIF.ACC_IZVJESTAJI (ID)
  disable
  novalidate;
alter table SIF.ACC_IZVJESTAJ_PREDUZETNICI
  add constraint ACC_IZVJESTAJ_PREDUZETNICI_TIP_PREDUZETNIKA_ID_FK foreign key (TIP_PREDUZETNIKA_ID)
  references SIF.SIF_TIPOVI_PREDUZETNIKA (ID)
  disable
  novalidate;
alter table SIF.ACC_IZVJESTAJ_PREDUZETNICI
  add constraint ACC_IZVJESTAJ_PREDUZETNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_JEDINICE_MJERE
prompt =================================
prompt
create table SIF.ACC_JEDINICE_MJERE
(
  id          NUMBER default on null sif.acc_jedinice_mjere_seq.nextval not null,
  naziv       VARCHAR2(255),
  opis        VARCHAR2(1000),
  valid       VARCHAR2(1) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
alter table SIF.ACC_JEDINICE_MJERE
  add constraint ACC_JEDINICE_MJERE_ID_PK primary key (ID);
alter table SIF.ACC_JEDINICE_MJERE
  add constraint ACC_JEDINICE_MJERE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_KLASE_OS
prompt ===========================
prompt
create table SIF.ACC_KLASE_OS
(
  id             NUMBER default on null sif.acc_klase_os_seq.nextval not null,
  ooj_id         NUMBER,
  parent_id      NUMBER,
  sifra          VARCHAR2(64 CHAR),
  naziv          VARCHAR2(255 CHAR),
  procenat       NUMBER,
  vijek_trajanja NUMBER,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_KLASE_OS_I1 on SIF.ACC_KLASE_OS (PARENT_ID);
alter table SIF.ACC_KLASE_OS
  add constraint ACC_KLASE_OS_ID_PK primary key (ID);
alter table SIF.ACC_KLASE_OS
  add constraint ACC_KLASE_OS_UQ unique (OOJ_ID, SIFRA);
alter table SIF.ACC_KLASE_OS
  add constraint ACC_KLASE_OS_OOJ_ID foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table SIF.ACC_KLASE_OS
  add constraint ACC_KLASE_OS_PARENT_ID_FK foreign key (PARENT_ID)
  references SIF.ACC_KLASE_OS (ID)
  disable
  novalidate;
alter table SIF.ACC_KLASE_OS
  add constraint ACC_KLASE_OS_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TRANSAKCIJE_OS
prompt =================================
prompt
create table SIF.ACC_TRANSAKCIJE_OS
(
  id          NUMBER default on null sif.acc_transakcije_os_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default 'Y',
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_TRANSAKCIJE_OS
  add constraint ACC_TRANSAKCIJE_OS_ID_PK primary key (ID);
alter table SIF.ACC_TRANSAKCIJE_OS
  add constraint ACC_TRANSAKCIJE_OS_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_KLASE_OS_KONTA
prompt =================================
prompt
create table SIF.ACC_KLASE_OS_KONTA
(
  id              NUMBER default on null sif.acc_klase_os_konta_seq.nextval not null,
  transakcija_id  NUMBER not null,
  klasa_id        NUMBER not null,
  kontna_klasa_id NUMBER not null,
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_KLASE_OS_KONTA_I1 on SIF.ACC_KLASE_OS_KONTA (KLASA_ID);
create index SIF.ACC_KLASE_OS_KONTA_I2 on SIF.ACC_KLASE_OS_KONTA (KONTNA_KLASA_ID);
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_ID_PK primary key (ID);
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_UK unique (KLASA_ID, TRANSAKCIJA_ID);
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_KLASA_ID foreign key (KLASA_ID)
  references SIF.ACC_KLASE_OS (ID)
  disable
  novalidate;
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_TRANSAKCIJE_ID_FK foreign key (TRANSAKCIJA_ID)
  references SIF.ACC_TRANSAKCIJE_OS (ID)
  disable
  novalidate;
alter table SIF.ACC_KLASE_OS_KONTA
  add constraint ACC_KLASE_OS_KONTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_RADNICI
prompt ==========================
prompt
create table SIF.ACC_RADNICI
(
  id           NUMBER generated by default on null as identity,
  ooj_id       NUMBER,
  interni_broj VARCHAR2(20),
  ime          VARCHAR2(100) not null,
  prezime      VARCHAR2(100) not null,
  email        VARCHAR2(255),
  oj_id        NUMBER,
  valid        VARCHAR2(1) default 'Y' not null,
  row_version  NUMBER default 1 not null,
  created      DATE default SYSDATE not null,
  created_by   VARCHAR2(255) not null,
  updated      DATE default SYSDATE not null,
  updated_by   VARCHAR2(255) not null
)
;
comment on table SIF.ACC_RADNICI
  is 'Šifarnik radnika za modul finansija';
comment on column SIF.ACC_RADNICI.id
  is 'Primarni kljuc (identity)';
comment on column SIF.ACC_RADNICI.ooj_id
  is 'ID osnovne organizacione jedinice';
comment on column SIF.ACC_RADNICI.interni_broj
  is 'Interni broj radnika';
comment on column SIF.ACC_RADNICI.ime
  is 'Ime';
comment on column SIF.ACC_RADNICI.prezime
  is 'Prezime';
comment on column SIF.ACC_RADNICI.email
  is 'Email adresa';
comment on column SIF.ACC_RADNICI.oj_id
  is 'ID organizacione jedinice';
comment on column SIF.ACC_RADNICI.valid
  is 'Da li je zapis validan/aktivan (Y/N)';
create index SIF.ACC_RADNICI_OJ_ID_IDX on SIF.ACC_RADNICI (OJ_ID);
create index SIF.ACC_RADNICI_OOJ_ID_IDX on SIF.ACC_RADNICI (OOJ_ID);
alter table SIF.ACC_RADNICI
  add constraint ACC_RADNICI_ID_PK primary key (ID);
alter table SIF.ACC_RADNICI
  add constraint ACC_RADNICI_OJ_FK foreign key (OJ_ID)
  references CORE.OJ (ID);
alter table SIF.ACC_RADNICI
  add constraint ACC_RADNICI_OOJ_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID);
alter table SIF.ACC_RADNICI
  add constraint ACC_RADNICI_VALID_CHK
  check (valid IN ('Y', 'N'));

prompt
prompt Creating table ACC_MJESTA_TROSKA
prompt ================================
prompt
create table SIF.ACC_MJESTA_TROSKA
(
  id          NUMBER generated always as identity,
  ooj_id      NUMBER not null,
  sifra       VARCHAR2(20) not null,
  naziv       VARCHAR2(200) not null,
  nad_id      NUMBER,
  oj_id       NUMBER,
  valid       VARCHAR2(1) default 'Y' not null,
  radnik_id   NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
comment on table SIF.ACC_MJESTA_TROSKA
  is 'Tabela služi za detaljnije praćenje troškova/prihoda (nova dimenzija knjiženja)';
comment on column SIF.ACC_MJESTA_TROSKA.ooj_id
  is 'osnovna organizaciona jedinica kojoj mjesto troška pripada';
comment on column SIF.ACC_MJESTA_TROSKA.sifra
  is 'sifra MT - radi lakšeg pamćenja i prepoznavanja';
comment on column SIF.ACC_MJESTA_TROSKA.naziv
  is 'naziv MT';
comment on column SIF.ACC_MJESTA_TROSKA.nad_id
  is 'nadređeno mjesto troška radi hijerarhijskog praćnje ';
comment on column SIF.ACC_MJESTA_TROSKA.oj_id
  is 'opciono- ako mjesto troška pripada konkretnoj organizacionoj jedinici kompanije';
create index SIF.MJESTO_TROSKA_NAD_IDX on SIF.ACC_MJESTA_TROSKA (NAD_ID);
create index SIF.MJESTO_TROSKA_OJ_IDX on SIF.ACC_MJESTA_TROSKA (OJ_ID);
create index SIF.MJESTO_TROSKA_OOJ_IDX on SIF.ACC_MJESTA_TROSKA (OOJ_ID);
create index SIF.MJESTO_TROSKA_RADNIK_IDX on SIF.ACC_MJESTA_TROSKA (RADNIK_ID);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint PK_MJESTO_TROSKA_ID primary key (ID);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint UQ_MJESTO_TROSKA_OOJ_SIFRA unique (OOJ_ID, SIFRA);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint FK_MJESTO_TROSKA_NAD_ID foreign key (NAD_ID)
  references SIF.ACC_MJESTA_TROSKA (ID);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint FK_MJESTO_TROSKA_OJ_ID foreign key (OJ_ID)
  references CORE.OJ (ID);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint FK_MJESTO_TROSKA_OOJ_ID foreign key (OOJ_ID)
  references CORE.OOJ (ID);
alter table SIF.ACC_MJESTA_TROSKA
  add constraint FK_MJESTO_TROSKA_RADNIK_ID foreign key (RADNIK_ID)
  references SIF.ACC_RADNICI (ID);
alter table SIF.ACC_MJESTA_TROSKA
  add check (VALID IN ('Y','N'));

prompt
prompt Creating table ACC_OBRASCI_FAKTURA
prompt ==================================
prompt
create table SIF.ACC_OBRASCI_FAKTURA
(
  id                NUMBER default on null sif.acc_obrasci_faktura_seq.nextval not null,
  naziv             VARCHAR2(255 CHAR),
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  path              VARCHAR2(255 CHAR),
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_OBRASCI_FAKTURA
  add constraint ACC_OBRASCI_FAKTURA_ID_PK primary key (ID);
alter table SIF.ACC_OBRASCI_FAKTURA
  add constraint ACC_OBRASCI_FAKTURA_NAZIV_UNQ unique (NAZIV);
alter table SIF.ACC_OBRASCI_FAKTURA
  add constraint ACC_OBRASCI_FAKTURA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_STATUSI
prompt ==========================
prompt
create table SIF.ACC_STATUSI
(
  id          NUMBER default on null "SIF"."ACC_STATUSI_SEQ"."NEXTVAL" not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  color_code  VARCHAR2(64 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_STATUSI
  add constraint ACC_STATUSI_ID_PK primary key (ID);
alter table SIF.ACC_STATUSI
  add constraint ACC_STATUSI_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_CIJENA
prompt ================================
prompt
create table SIF.ACC_TIPOVI_CIJENA
(
  id          NUMBER default on null "SIF"."ACC_TIPOVI_CIJENA_SEQ"."NEXTVAL" not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_TIPOVI_CIJENA
  add constraint ACC_TIPOVI_CIJENA_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_CIJENA
  add constraint ACC_TIPOVI_CIJENA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_KLIJENATA
prompt ===================================
prompt
create table SIF.ACC_TIPOVI_KLIJENATA
(
  id          NUMBER default on null sif.acc_tipovi_klijenata_seq.nextval not null,
  naziv       VARCHAR2(255),
  sifra       VARCHAR2(64 CHAR),
  valid       VARCHAR2(1) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
alter table SIF.ACC_TIPOVI_KLIJENATA
  add constraint ACC_TIPOVI_KLIJENATA_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_KLIJENATA
  add constraint ACC_TIPOVI_KLIJENATA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_PLACANJA
prompt ==================================
prompt
create table SIF.ACC_TIPOVI_PLACANJA
(
  id          NUMBER default on null sif.acc_tipovi_placanja_seq.nextval not null,
  naziv       VARCHAR2(255),
  opis        VARCHAR2(1000),
  sifra       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255),
  updated     DATE,
  updated_by  VARCHAR2(255)
)
;
alter table SIF.ACC_TIPOVI_PLACANJA
  add constraint ACC_TIPOVI_PLACANJA_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_PLACANJA
  add constraint ACC_TIPOVI_PLACANJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_SKLADISTA
prompt ===================================
prompt
create table SIF.ACC_TIPOVI_SKLADISTA
(
  id          NUMBER default on null "SIF"."ACC_TIPOVI_SKLADISTA_SEQ"."NEXTVAL" not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_TIPOVI_SKLADISTA
  add constraint ACC_TIPOVI_SKLADISTA_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_SKLADISTA
  add constraint ACC_TIPOVI_SKLADISTA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_TIPOVI_STAVKI
prompt ================================
prompt
create table SIF.ACC_TIPOVI_STAVKI
(
  id          NUMBER default on null sif.acc_tipovi_stavki_seq.nextval not null,
  naziv       VARCHAR2(255),
  opis        VARCHAR2(1000),
  valid       VARCHAR2(1) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
alter table SIF.ACC_TIPOVI_STAVKI
  add constraint ACC_TIPOVI_STAVKI_ID_PK primary key (ID);
alter table SIF.ACC_TIPOVI_STAVKI
  add constraint ACC_TIPOVI_STAVKI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_UIO_TIPOVI_DOKUMENATA
prompt ========================================
prompt
create table SIF.ACC_UIO_TIPOVI_DOKUMENATA
(
  id          NUMBER default on null sif.acc_uio_tip_dokumenta_seq.nextval not null,
  code        VARCHAR2(2) not null,
  naziv       VARCHAR2(255) not null,
  ui          VARCHAR2(1) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
comment on column SIF.ACC_UIO_TIPOVI_DOKUMENATA.ui
  is 'U=KUF, I=KIF';
alter table SIF.ACC_UIO_TIPOVI_DOKUMENATA
  add constraint ACC_UIO_TIP_DOKUMENTA_ID_PK primary key (ID);
alter table SIF.ACC_UIO_TIPOVI_DOKUMENATA
  add constraint ACC_UIO_TIP_DOKUMENTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_VALUTE
prompt =========================
prompt
create table SIF.ACC_VALUTE
(
  id          NUMBER default on null sif.acc_valuta_seq.nextval not null,
  naziv       VARCHAR2(255),
  kurs        NUMBER,
  sifra       VARCHAR2(16 CHAR),
  valid       VARCHAR2(1) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
;
alter table SIF.ACC_VALUTE
  add constraint ACC_VALUTA_ID_PK primary key (ID);
alter table SIF.ACC_VALUTE
  add constraint ACC_VALUTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_VALUTA_KURSEVI
prompt =================================
prompt
create table SIF.ACC_VALUTA_KURSEVI
(
  id          NUMBER generated always as identity,
  valuta_id   NUMBER not null,
  ooj_id      NUMBER not null,
  datum       DATE not null,
  kurs        NUMBER not null,
  row_version NUMBER not null,
  created     DATE not null,
  created_by  VARCHAR2(50) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(50) not null
)
;
create index SIF.ACC_VALUTA_KURSEVI_OOJ_I on SIF.ACC_VALUTA_KURSEVI (OOJ_ID);
create index SIF.ACC_VALUTA_KURSEVI_VALUTA_I on SIF.ACC_VALUTA_KURSEVI (VALUTA_ID);
alter table SIF.ACC_VALUTA_KURSEVI
  add constraint ACC_VALUTA_KURSEVI_ID_PK primary key (ID);
alter table SIF.ACC_VALUTA_KURSEVI
  add constraint ACC_VALUTA_KURSEVI_OOJ_VALUTA_DATUM_UQ unique (VALUTA_ID, OOJ_ID, DATUM);
alter table SIF.ACC_VALUTA_KURSEVI
  add constraint ACC_VALUTA_KURSEVI_OOJ_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID);
alter table SIF.ACC_VALUTA_KURSEVI
  add constraint ACC_VALUTA_KURSEVI_VALUTA_FK foreign key (VALUTA_ID)
  references SIF.ACC_VALUTE (ID);

prompt
prompt Creating table ACC_VALUTE_HIST
prompt ==============================
prompt
create table SIF.ACC_VALUTE_HIST
(
  id          NUMBER default on null sif.acc_valute_hist_seq.nextval not null,
  valuta_id   NUMBER,
  datum       DATE,
  kurs        NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_VALUTE_HIST_I1 on SIF.ACC_VALUTE_HIST (VALUTA_ID);
alter table SIF.ACC_VALUTE_HIST
  add constraint ACC_VALUTE_HIST_ID_PK primary key (ID);
alter table SIF.ACC_VALUTE_HIST
  add constraint ACC_VALUTE_HIST_VALUTA_ID_FK foreign key (VALUTA_ID)
  references SIF.ACC_VALUTE (ID)
  disable
  novalidate;

prompt
prompt Creating table ACC_VRSTE_PRIHODA
prompt ================================
prompt
create table SIF.ACC_VRSTE_PRIHODA
(
  id          NUMBER default on null sif.acc_vrste_prihoda_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_VRSTE_PRIHODA
  add constraint ACC_VRSTE_PRIHODA_ID_PK primary key (ID);
alter table SIF.ACC_VRSTE_PRIHODA
  add constraint ACC_VRSTE_PRIHODA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_VRSTE_RASHODA
prompt ================================
prompt
create table SIF.ACC_VRSTE_RASHODA
(
  id          NUMBER default on null sif.acc_vrste_rashoda_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ACC_VRSTE_RASHODA
  add constraint ACC_VRSTE_RASHODA_ID_PK primary key (ID);
alter table SIF.ACC_VRSTE_RASHODA
  add constraint ACC_VRSTE_RASHODA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ACC_VRSTE_UGOVORA
prompt ================================
prompt
create table SIF.ACC_VRSTE_UGOVORA
(
  id          NUMBER generated always as identity,
  sifra       VARCHAR2(20 CHAR) not null,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  redoslijed  NUMBER,
  valid       VARCHAR2(1 CHAR) default 'Y' not null,
  row_version NUMBER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
comment on table SIF.ACC_VRSTE_UGOVORA
  is 'Šifarnik vrsta ugovora (zajednički za sve firme)';
comment on column SIF.ACC_VRSTE_UGOVORA.id
  is 'Primarni ključ tabele';
comment on column SIF.ACC_VRSTE_UGOVORA.sifra
  is 'Kratka šifra vrste ugovora';
comment on column SIF.ACC_VRSTE_UGOVORA.naziv
  is 'Naziv vrste ugovora';
comment on column SIF.ACC_VRSTE_UGOVORA.opis
  is 'Opis vrste ugovora';
comment on column SIF.ACC_VRSTE_UGOVORA.redoslijed
  is 'Redoslijed prikaza u izboru vrste ugovora';
comment on column SIF.ACC_VRSTE_UGOVORA.valid
  is 'Y = vrsta se može birati na novom ugovoru';
alter table SIF.ACC_VRSTE_UGOVORA
  add constraint ACC_VRSTE_UGOVORA_PK primary key (ID);
alter table SIF.ACC_VRSTE_UGOVORA
  add constraint ACC_VRSTE_UGOVORA_SIFRA_UQ unique (SIFRA);
alter table SIF.ACC_VRSTE_UGOVORA
  add constraint ACC_VRSTE_UGOVORA_VALID_CK
  check (valid IN ('Y', 'N'));

prompt
prompt Creating table ACC_ZAVISNI_TROSKOVI
prompt ===================================
prompt
create table SIF.ACC_ZAVISNI_TROSKOVI
(
  id              NUMBER default on null sif.acc_zavisni_troskovi_seq.nextval not null,
  kontna_klasa_id NUMBER,
  sifra           VARCHAR2(64 CHAR),
  naziv           VARCHAR2(255 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index SIF.ACC_ZAVISNI_TROSKOVI_I1 on SIF.ACC_ZAVISNI_TROSKOVI (KONTNA_KLASA_ID);
alter table SIF.ACC_ZAVISNI_TROSKOVI
  add constraint ACC_ZAVISNI_TROSKOVI_ID_PK primary key (ID);
alter table SIF.ACC_ZAVISNI_TROSKOVI
  add constraint ACC_ZAVISNI_TROSKOVI_KONTNA_KLASA_ID_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.ACC_ZAVISNI_TROSKOVI
  add constraint ACC_ZAVISNI_TROSKOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_SIF_STATUSI
prompt ============================
prompt
create table SIF.A_SIF_STATUSI
(
  id          NUMBER default on null sif.a_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  sifra       VARCHAR2(16 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.A_SIF_STATUSI
  add constraint A_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.A_SIF_STATUSI
  add constraint A_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table A_SIF_TIPOVI_OBAVJESTENJA
prompt ========================================
prompt
create table SIF.A_SIF_TIPOVI_OBAVJESTENJA
(
  id          NUMBER default on null sif.a_sif_tipovi_obavjestenja_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  color_code  VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.A_SIF_TIPOVI_OBAVJESTENJA
  add constraint A_SIF_TIPOVI_OBAVJESTENJA_ID_PK primary key (ID);
alter table SIF.A_SIF_TIPOVI_OBAVJESTENJA
  add constraint A_SIF_TIPOVI_OBAVJESTENJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table BUDZET_STATUSI
prompt =============================
prompt
create table SIF.BUDZET_STATUSI
(
  id          NUMBER default on null sif.budzet_statusi_seq.nextval not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  color_code  VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.BUDZET_STATUSI
  add constraint BUDZET_STATUSI_ID_PK primary key (ID);
alter table SIF.BUDZET_STATUSI
  add constraint BUDZET_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_EV_PRISUTNOSTI
prompt ====================================
prompt
create table SIF.HR_SIF_EV_PRISUTNOSTI
(
  id          NUMBER default on null sif.hr_sif_ev_prisutnosti_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  oznaka      VARCHAR2(64 CHAR),
  koeficijent NUMBER,
  icon        VARCHAR2(255 CHAR),
  color_code  VARCHAR2(255 CHAR),
  visible     VARCHAR2(1 CHAR),
  sequence    NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_EV_PRISUTNOSTI
  add constraint HR_SIF_EV_PRISUTNOSTI_ID_PK primary key (ID);
alter table SIF.HR_SIF_EV_PRISUTNOSTI
  add constraint HR_SIF_EV_PRISUTNOSTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table B_SIF_PRISUTNOSTI
prompt ================================
prompt
create table SIF.B_SIF_PRISUTNOSTI
(
  id                        NUMBER default on null sif.b_sif_prisutnosti_seq.nextval not null,
  evidencija_prisutnosti_id NUMBER,
  naziv                     VARCHAR2(255 CHAR),
  code                      VARCHAR2(64 CHAR),
  valid                     VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version               INTEGER not null,
  created                   DATE not null,
  created_by                VARCHAR2(255 CHAR) not null,
  updated                   DATE not null,
  updated_by                VARCHAR2(255 CHAR) not null
)
;
create index SIF.B_SIF_PRISUTNOSTI_I1 on SIF.B_SIF_PRISUTNOSTI (EVIDENCIJA_PRISUTNOSTI_ID);
alter table SIF.B_SIF_PRISUTNOSTI
  add constraint B_SIF_PRISUTNOSTI_ID_PK primary key (ID);
alter table SIF.B_SIF_PRISUTNOSTI
  add constraint B_SIF_PRISUTNOSTI_EVIDENCIJA_PRISUTNOSTI_ID_FK foreign key (EVIDENCIJA_PRISUTNOSTI_ID)
  references SIF.HR_SIF_EV_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table SIF.B_SIF_PRISUTNOSTI
  add constraint B_SIF_PRISUTNOSTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table B_SIF_STATUSI
prompt ============================
prompt
create table SIF.B_SIF_STATUSI
(
  id          NUMBER default on null sif.b_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(16 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.B_SIF_STATUSI
  add constraint B_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.B_SIF_STATUSI
  add constraint B_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table B_SIF_TIPOVI
prompt ===========================
prompt
create table SIF.B_SIF_TIPOVI
(
  id          NUMBER default on null sif.b_sif_tipovi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(16 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.B_SIF_TIPOVI
  add constraint B_SIF_TIPOVI_ID_PK primary key (ID);
alter table SIF.B_SIF_TIPOVI
  add constraint B_SIF_TIPOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CMS_ALATI
prompt ========================
prompt
create table SIF.CMS_ALATI
(
  id            NUMBER default on null sif.cms_alati_seq.nextval not null,
  naziv         VARCHAR2(255 CHAR),
  support_email VARCHAR2(255 CHAR),
  link_alati    VARCHAR2(255 CHAR),
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CMS_ALATI
  add constraint CMS_ALATI_ID_PK primary key (ID);
alter table SIF.CMS_ALATI
  add constraint CMS_ALATI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CMS_REGISTRARI
prompt =============================
prompt
create table SIF.CMS_REGISTRARI
(
  id          NUMBER default on null sif.cms_registrari_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  email       VARCHAR2(255 CHAR) not null,
  web         VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CMS_REGISTRARI
  add constraint CMS_REGISTRARI_ID_PK primary key (ID);
alter table SIF.CMS_REGISTRARI
  add constraint CMS_REGISTRARI_EMAIL_UNQ unique (EMAIL);
alter table SIF.CMS_REGISTRARI
  add constraint CMS_REGISTRARI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CMS_TLD
prompt ======================
prompt
create table SIF.CMS_TLD
(
  id          NUMBER default on null sif.cms_tld_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CMS_TLD
  add constraint CMS_TLD_ID_PK primary key (ID);
alter table SIF.CMS_TLD
  add constraint CMS_TLD_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CMS_REGISTRAR_TLD
prompt ================================
prompt
create table SIF.CMS_REGISTRAR_TLD
(
  id           NUMBER default on null sif.cms_registrar_tld_seq.nextval not null,
  registrar_id NUMBER,
  tld_id       NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index SIF.CMS_REGISTRAR_TLD_I1 on SIF.CMS_REGISTRAR_TLD (REGISTRAR_ID);
create index SIF.CMS_REGISTRAR_TLD_I2 on SIF.CMS_REGISTRAR_TLD (TLD_ID);
alter table SIF.CMS_REGISTRAR_TLD
  add constraint CMS_REGISTRAR_TLD_ID_PK primary key (ID);
alter table SIF.CMS_REGISTRAR_TLD
  add constraint CMS_REGISTRAR_TLD_REGISTRAR_ID_FK foreign key (REGISTRAR_ID)
  references SIF.CMS_REGISTRARI (ID)
  disable
  novalidate;
alter table SIF.CMS_REGISTRAR_TLD
  add constraint CMS_REGISTRAR_TLD_TLD_ID_FK foreign key (TLD_ID)
  references SIF.CMS_TLD (ID)
  disable
  novalidate;
alter table SIF.CMS_REGISTRAR_TLD
  add constraint CMS_REGISTRAR_TLD_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CMS_STATUSI
prompt ==========================
prompt
create table SIF.CMS_STATUSI
(
  id          NUMBER default on null sif.cms_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  icon        VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CMS_STATUSI
  add constraint CMS_STATUSI_ID_PK primary key (ID);
alter table SIF.CMS_STATUSI
  add constraint CMS_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table CS_KATEGORIJA_VOZILA
prompt ===================================
prompt
create table SIF.CS_KATEGORIJA_VOZILA
(
  id          NUMBER default on null "SIF"."CS_KATEGORIJA_VOZILA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_KATEGORIJA_VOZILA
  add constraint CS_KATEGORIJA_VOZILA_ID_PK primary key (ID);
alter table SIF.CS_KATEGORIJA_VOZILA
  add constraint CS_KATEGORIJA_VOZILA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_PROIZVODJACI_VOZILA
prompt =====================================
prompt
create table SIF.CS_PROIZVODJACI_VOZILA
(
  id            NUMBER default on null "SIF"."CS_PROIZVODJACI_VOZILA_SEQ"."NEXTVAL" not null,
  sifra         VARCHAR2(16 CHAR),
  naziv         VARCHAR2(255 CHAR),
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null,
  kategorija_id NUMBER
)
;
alter table SIF.CS_PROIZVODJACI_VOZILA
  add constraint CS_PROIZVODJACI_VOZILA_ID_PK primary key (ID);
alter table SIF.CS_PROIZVODJACI_VOZILA
  add constraint CS_PROIZVODJACI_VOZILA_KATEGORIJA_ID_FK foreign key (KATEGORIJA_ID)
  references SIF.CS_KATEGORIJA_VOZILA (ID)
  disable
  novalidate;
alter table SIF.CS_PROIZVODJACI_VOZILA
  add constraint CS_PROIZVODJACI_VOZILA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_MODELI_VOZILA
prompt ===============================
prompt
create table SIF.CS_MODELI_VOZILA
(
  id             NUMBER default on null "SIF"."CS_MODELI_VOZILA_SEQ"."NEXTVAL" not null,
  proizvodjac_id NUMBER,
  sifra          VARCHAR2(16 CHAR),
  naziv          VARCHAR2(255 CHAR),
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index SIF.CS_MODELI_VOZILA_I1 on SIF.CS_MODELI_VOZILA (PROIZVODJAC_ID);
alter table SIF.CS_MODELI_VOZILA
  add constraint CS_MODELI_VOZILA_ID_PK primary key (ID);
alter table SIF.CS_MODELI_VOZILA
  add constraint CS_MODELI_VOZILA_PROIZVODJAC_ID_FK foreign key (PROIZVODJAC_ID)
  references SIF.CS_PROIZVODJACI_VOZILA (ID)
  disable
  novalidate;
alter table SIF.CS_MODELI_VOZILA
  add constraint CS_MODELI_VOZILA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_PROIZVODJACI
prompt ==============================
prompt
create table SIF.CS_PROIZVODJACI
(
  id          NUMBER default on null "SIF"."CS_PROIZVODJACI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_PROIZVODJACI
  add constraint CS_PROIZVODJACI_ID_PK primary key (ID);
alter table SIF.CS_PROIZVODJACI
  add constraint CS_PROIZVODJACI_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_STATUSI
prompt =========================
prompt
create table SIF.CS_STATUSI
(
  id          NUMBER default on null "SIF"."CS_STATUSI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  color_code  VARCHAR2(64 CHAR),
  icon        VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_STATUSI
  add constraint CS_STATUSI_ID_PK primary key (ID);
alter table SIF.CS_STATUSI
  add constraint CS_STATUSI_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_TIPOVI_GORIVA
prompt ===============================
prompt
create table SIF.CS_TIPOVI_GORIVA
(
  id          NUMBER default on null "SIF"."CS_TIPOVI_GORIVA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(4000 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_TIPOVI_GORIVA
  add constraint CS_TIPOVI_GORIVA_ID_PK primary key (ID);
alter table SIF.CS_TIPOVI_GORIVA
  add constraint CS_TIPOVI_GORIVA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_TIPOVI_MJENJACA
prompt =================================
prompt
create table SIF.CS_TIPOVI_MJENJACA
(
  id          NUMBER default on null "SIF"."CS_TIPOVI_MJENJACA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_TIPOVI_MJENJACA
  add constraint CS_TIPOVI_MJENJACA_ID_PK primary key (ID);
alter table SIF.CS_TIPOVI_MJENJACA
  add constraint CS_TIPOVI_MJENJACA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_TIPOVI_POGONA
prompt ===============================
prompt
create table SIF.CS_TIPOVI_POGONA
(
  id          NUMBER default on null "SIF"."CS_TIPOVI_POGONA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_TIPOVI_POGONA
  add constraint CS_TIPOVI_POGONA_ID_PK primary key (ID);
alter table SIF.CS_TIPOVI_POGONA
  add constraint CS_TIPOVI_POGONA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table CS_TIPOVI_RADA
prompt =============================
prompt
create table SIF.CS_TIPOVI_RADA
(
  id          NUMBER default on null "SIF"."CS_TIPOVI_RADA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.CS_TIPOVI_RADA
  add constraint CS_TIPOVI_RADA_ID_PK primary key (ID);
alter table SIF.CS_TIPOVI_RADA
  add constraint CS_TIPOVI_RADA_VALID_CK
  check (valid in ('Y','N'))
  disable
  novalidate;

prompt
prompt Creating table DMS_PRISTUPI
prompt ===========================
prompt
create table SIF.DMS_PRISTUPI
(
  id          NUMBER default on null sif.dms_pristupi_seq.nextval not null,
  naziv       VARCHAR2(255) not null,
  sifra       VARCHAR2(32) not null,
  opis        VARCHAR2(1000),
  sequence    NUMBER,
  valid       VARCHAR2(1) default on null 'Y' not null,
  ooj_id      NUMBER,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.DMS_PRISTUPI
  add constraint DMS_PRISTUPI_PK primary key (ID);
alter table SIF.DMS_PRISTUPI
  add unique (SIFRA);
alter table SIF.DMS_PRISTUPI
  add constraint DMS_PRISTUPI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_IZVJESTAJI
prompt ============================
prompt
create table SIF.ER_IZVJESTAJI
(
  id          NUMBER default on null "SIF"."ER_IZVJESTAJI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  sequence    NUMBER,
  opis        CLOB,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_IZVJESTAJI
  add constraint ER_IZVJESTAJI_ID_PK primary key (ID);
alter table SIF.ER_IZVJESTAJI
  add constraint ER_IZVJESTAJI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_KATEGORIJE_RIBOLOVACA
prompt =======================================
prompt
create table SIF.ER_KATEGORIJE_RIBOLOVACA
(
  id          NUMBER default on null "SIF"."ER_KATEGORIJE_RIBOLOVACA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(32 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_KATEGORIJE_RIBOLOVACA
  add constraint ER_KATEGORIJE_RIBOLOVACA_ID_PK primary key (ID);
alter table SIF.ER_KATEGORIJE_RIBOLOVACA
  add constraint ER_KATEGORIJE_RIBOLOVACA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_RIBLJE_VRSTE
prompt ==============================
prompt
create table SIF.ER_RIBLJE_VRSTE
(
  id          NUMBER default on null "SIF"."ER_RIBLJE_VRSTE_SEQ"."NEXTVAL" not null,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_RIBLJE_VRSTE
  add constraint ER_RIBLJE_VRSTE_ID_PK primary key (ID);
alter table SIF.ER_RIBLJE_VRSTE
  add constraint ER_RIBLJE_VRSTE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_SABLONI
prompt =========================
prompt
create table SIF.ER_SABLONI
(
  id             NUMBER default on null "SIF"."ER_SABLONI_SEQ"."NEXTVAL" not null,
  sifra          VARCHAR2(16 CHAR),
  slika          BLOB,
  slika_filename VARCHAR2(255 CHAR),
  slika_mimetype VARCHAR2(255 CHAR),
  slika_charset  VARCHAR2(255 CHAR),
  slika_lastupd  DATE,
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null,
  naziv          VARCHAR2(255 CHAR)
)
;
alter table SIF.ER_SABLONI
  add constraint ER_SABLONI_ID_PK primary key (ID);
alter table SIF.ER_SABLONI
  add constraint ER_SABLONI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_CIJENA
prompt ===============================
prompt
create table SIF.ER_TIPOVI_CIJENA
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_CIJENA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_CIJENA
  add constraint ER_TIPOVI_CIJENA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_CIJENA
  add constraint ER_TIPOVI_CIJENA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_CLANSKIH_KARTI
prompt =======================================
prompt
create table SIF.ER_TIPOVI_CLANSKIH_KARTI
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_CLANSKIH_KARTI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_CLANSKIH_KARTI
  add constraint ER_TIPOVI_CLANSKIH_KARTI_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_CLANSKIH_KARTI
  add constraint ER_TIPOVI_CLANSKIH_KARTI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_DOZVOLA
prompt ================================
prompt
create table SIF.ER_TIPOVI_DOZVOLA
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_DOZVOLA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_DOZVOLA
  add constraint ER_TIPOVI_DOZVOLA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_DOZVOLA
  add constraint ER_TIPOVI_DOZVOLA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_PRIVREMENIH_DOZVOLA
prompt ============================================
prompt
create table SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA
(
  id             NUMBER default on null "SIF"."ER_TIPOVI_PRIVREMENIH_DOZVOLA_SEQ"."NEXTVAL" not null,
  tip_dozvole_id NUMBER,
  sifra          VARCHAR2(16 CHAR),
  naziv          VARCHAR2(255 CHAR),
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA_I1 on SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA (TIP_DOZVOLE_ID);
alter table SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA
  add constraint ER_TIPOVI_PRIVREMENIH_DOZVOLA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA
  add constraint ER_TIPOVI_PRIVREMENIH_DOZVOLA_TIP_DOZVOLE_ID_FK foreign key (TIP_DOZVOLE_ID)
  references SIF.ER_TIPOVI_DOZVOLA (ID)
  disable
  novalidate;
alter table SIF.ER_TIPOVI_PRIVREMENIH_DOZVOLA
  add constraint ER_TIPOVI_PRIVREMENIH_DOZVOLA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_RIBOLOVA
prompt =================================
prompt
create table SIF.ER_TIPOVI_RIBOLOVA
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_RIBOLOVA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_RIBOLOVA
  add constraint ER_TIPOVI_RIBOLOVA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_RIBOLOVA
  add constraint ER_TIPOVI_RIBOLOVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_VODA
prompt =============================
prompt
create table SIF.ER_TIPOVI_VODA
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_VODA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  revir       VARCHAR2(1 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_VODA
  add constraint ER_TIPOVI_VODA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_VODA
  add constraint ER_TIPOVI_VODA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table ER_TIPOVI_ZABRANA
prompt ================================
prompt
create table SIF.ER_TIPOVI_ZABRANA
(
  id          NUMBER default on null "SIF"."ER_TIPOVI_ZABRANA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(16 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.ER_TIPOVI_ZABRANA
  add constraint ER_TIPOVI_ZABRANA_ID_PK primary key (ID);
alter table SIF.ER_TIPOVI_ZABRANA
  add constraint ER_TIPOVI_ZABRANA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FV_TIPOVI_REZERVACIJA
prompt ====================================
prompt
create table SIF.FV_TIPOVI_REZERVACIJA
(
  id          NUMBER default on null sif.fv_tipovi_rezervacija_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.FV_TIPOVI_REZERVACIJA
  add constraint FV_TIPOVI_REZERVACIJA_ID_PK primary key (ID);
alter table SIF.FV_TIPOVI_REZERVACIJA
  add constraint FV_TIPOVI_REZERVACIJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FV_VRSTE_SERVISA
prompt ===============================
prompt
create table SIF.FV_VRSTE_SERVISA
(
  id          NUMBER default on null sif.fv_vrste_servisa_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.FV_VRSTE_SERVISA
  add constraint FV_VRSTE_SERVISA_ID_PK primary key (ID);
alter table SIF.FV_VRSTE_SERVISA
  add constraint FV_VRSTE_SERVISA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table FV_VRSTE_VOZILA
prompt ==============================
prompt
create table SIF.FV_VRSTE_VOZILA
(
  id          NUMBER default on null sif.fv_vrste_vozila_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.FV_VRSTE_VOZILA
  add constraint FV_VRSTE_VOZILA_ID_PK primary key (ID);
alter table SIF.FV_VRSTE_VOZILA
  add constraint FV_VRSTE_VOZILA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_TIPOVI_PARAMETARA
prompt ===================================
prompt
create table SIF.GO_TIPOVI_PARAMETARA
(
  id          NUMBER default on null sif.go_tipovi_parametara_seq.nextval not null,
  naziv       VARCHAR2(100 CHAR),
  opis        VARCHAR2(500 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.GO_TIPOVI_PARAMETARA
  add constraint GO_TIPOVI_PARAMETARA_ID_PK primary key (ID);
alter table SIF.GO_TIPOVI_PARAMETARA
  add constraint GO_TIPOVI_PARAMETARA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_PARAMETRI
prompt ===========================
prompt
create table SIF.GO_PARAMETRI
(
  id               NUMBER default on null sif.go_parametri_seq.nextval not null,
  tip_parametra_id NUMBER,
  naziv            VARCHAR2(100 CHAR),
  param_od         NUMBER,
  param_do         NUMBER,
  vrijednost       NUMBER,
  valid            VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version      INTEGER not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null
)
;
create index SIF.GO_PARAMETRI_I1 on SIF.GO_PARAMETRI (TIP_PARAMETRA_ID);
alter table SIF.GO_PARAMETRI
  add constraint GO_PARAMETRI_ID_PK primary key (ID);
alter table SIF.GO_PARAMETRI
  add constraint GO_PARAMETRI_TIP_PARAMETRA_FK foreign key (TIP_PARAMETRA_ID)
  references SIF.GO_TIPOVI_PARAMETARA (ID)
  disable
  novalidate;
alter table SIF.GO_PARAMETRI
  add constraint GO_PARAMETRI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_STATUSI
prompt =========================
prompt
create table SIF.GO_STATUSI
(
  id          NUMBER default on null sif.go_statusi_seq.nextval not null,
  naziv       VARCHAR2(100 CHAR),
  opis        VARCHAR2(150 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.GO_STATUSI
  add constraint GO_STATUSI_ID_PK primary key (ID);
alter table SIF.GO_STATUSI
  add constraint GO_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GO_TIPOVI_ZAHTJEVA
prompt =================================
prompt
create table SIF.GO_TIPOVI_ZAHTJEVA
(
  id           NUMBER default on null sif.go_tipovi_zahtjeva_seq.nextval not null,
  parent_id    NUMBER,
  naziv        VARCHAR2(100 CHAR),
  parent_naziv VARCHAR2(100 CHAR),
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
create index SIF.GO_TIPOVI_ZAHTJEVA_I1 on SIF.GO_TIPOVI_ZAHTJEVA (PARENT_ID);
alter table SIF.GO_TIPOVI_ZAHTJEVA
  add constraint GO_TIPOVI_ZAHTJEVA_ID_PK primary key (ID);
alter table SIF.GO_TIPOVI_ZAHTJEVA
  add constraint GO_TIPOVI_ZAHTJEVA_PARENT_ID_FK foreign key (PARENT_ID)
  references SIF.GO_TIPOVI_ZAHTJEVA (ID)
  disable
  novalidate;
alter table SIF.GO_TIPOVI_ZAHTJEVA
  add constraint GO_TIPOVI_ZAHTJEVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table GR_TIPOVI_MJESTA
prompt ===============================
prompt
create table SIF.GR_TIPOVI_MJESTA
(
  id          NUMBER default on null sif.gr_tipovi_mjesta_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.GR_TIPOVI_MJESTA
  add constraint GR_TIPOVI_MJESTA_ID_PK primary key (ID);
alter table SIF.GR_TIPOVI_MJESTA
  add constraint GR_TIPOVI_MJESTA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HD_STATUSI
prompt =========================
prompt
create table SIF.HD_STATUSI
(
  id          NUMBER default on null "SIF"."HD_STATUSI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  icon        VARCHAR2(64 CHAR),
  color_code  VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HD_STATUSI
  add constraint HD_STATUSI_ID_PK primary key (ID);
alter table SIF.HD_STATUSI
  add constraint HD_STATUSI_NAZIV_UNQ unique (NAZIV);
alter table SIF.HD_STATUSI
  add constraint HD_STATUSI_SIFRA_UNQ unique (SIFRA);
alter table SIF.HD_STATUSI
  add constraint HD_STATUSI_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HD_TIPOVI_LOGA
prompt =============================
prompt
create table SIF.HD_TIPOVI_LOGA
(
  id          NUMBER default on null "SIF"."HD_TIPOVI_LOGA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HD_TIPOVI_LOGA
  add constraint HD_TIPOVI_LOGA_ID_PK primary key (ID);
alter table SIF.HD_TIPOVI_LOGA
  add constraint HD_TIPOVI_LOGA_NAZIV_UNQ unique (NAZIV);
alter table SIF.HD_TIPOVI_LOGA
  add constraint HD_TIPOVI_LOGA_SIFRA_UNQ unique (SIFRA);
alter table SIF.HD_TIPOVI_LOGA
  add constraint HD_TIPOVI_LOGA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_OBRASCI_MEMORANDUMA
prompt =====================================
prompt
create table SIF.HR_OBRASCI_MEMORANDUMA
(
  id                NUMBER default on null sif.hr_obrasci_memoranduma_seq.nextval not null,
  naziv             VARCHAR2(255 CHAR),
  dokument          BLOB,
  dokument_filename VARCHAR2(255 CHAR),
  dokument_mimetype VARCHAR2(255 CHAR),
  dokument_charset  VARCHAR2(255 CHAR),
  dokument_lastupd  DATE,
  path              VARCHAR2(255 CHAR),
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_OBRASCI_MEMORANDUMA
  add constraint HR_OBRASCI_MEMORANDUMA_ID_PK primary key (ID);
alter table SIF.HR_OBRASCI_MEMORANDUMA
  add constraint HR_OBRASCI_MEMORANDUMA_NAZIV_UNQ unique (NAZIV);
alter table SIF.HR_OBRASCI_MEMORANDUMA
  add constraint HR_OBRASCI_MEMORANDUMA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_PRAZNICI
prompt ==========================
prompt
create table SIF.HR_PRAZNICI
(
  id          NUMBER default on null sif.hr_praznici_seq.nextval not null,
  entitet_id  NUMBER,
  naziv       VARCHAR2(100 CHAR),
  datum_od    DATE,
  datum_do    DATE,
  constant    VARCHAR2(1 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.HR_PRAZNICI_I1 on SIF.HR_PRAZNICI (ENTITET_ID);
alter table SIF.HR_PRAZNICI
  add constraint HR_PRAZNICI_ID_PK primary key (ID);
alter table SIF.HR_PRAZNICI
  add constraint HR_PRAZNICI_ENTITET_FK foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table SIF.HR_PRAZNICI
  add constraint HR_PRAZNICI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_PVS_TIPOVI
prompt ============================
prompt
create table SIF.HR_PVS_TIPOVI
(
  id          NUMBER default on null sif.hr_pvs_tipovi_seq.nextval not null,
  naziv       VARCHAR2(100 CHAR),
  vazi        VARCHAR2(1 CHAR),
  cijena      NUMBER,
  oznaka      VARCHAR2(20 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_PVS_TIPOVI
  add constraint HR_PVS_TIPOVI_ID_PK primary key (ID);
alter table SIF.HR_PVS_TIPOVI
  add constraint HR_PVS_TIPOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_OBRAZOVANJA
prompt =================================
prompt
create table SIF.HR_SIF_OBRAZOVANJA
(
  id          NUMBER default on null sif.hr_sif_obrazovanja_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  sequence    NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_OBRAZOVANJA
  add constraint HR_SIF_OBRAZOVANJA_ID_PK primary key (ID);
alter table SIF.HR_SIF_OBRAZOVANJA
  add constraint HR_SIF_OBRAZOVANJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_SIHTL_STATUSI
prompt ===================================
prompt
create table SIF.HR_SIF_SIHTL_STATUSI
(
  id          NUMBER default on null sif.hr_sif_sihtl_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_SIHTL_STATUSI
  add constraint HR_SIF_SIHTL_STATUSI_ID_PK primary key (ID);
alter table SIF.HR_SIF_SIHTL_STATUSI
  add constraint HR_SIF_SIHTL_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_DOKUMENATA
prompt =======================================
prompt
create table SIF.HR_SIF_TIPOVI_DOKUMENATA
(
  id            NUMBER default on null sif.hr_sif_tipovi_dokumenata_seq.nextval not null,
  tip_dokumenta VARCHAR2(1 CHAR),
  naziv         VARCHAR2(255 CHAR),
  opis          VARCHAR2(1000 CHAR),
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_TIPOVI_DOKUMENATA
  add constraint HR_SIF_TIPOVI_DOKUMENATA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_DOKUMENATA
  add constraint HR_SIF_TIPOVI_DOKUMENATA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_PRIJAVA
prompt ====================================
prompt
create table SIF.HR_SIF_TIPOVI_PRIJAVA
(
  id          NUMBER default on null sif.hr_sif_tipovi_prijava_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_TIPOVI_PRIJAVA
  add constraint HR_SIF_TIPOVI_PRIJAVA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_PRIJAVA
  add constraint HR_SIF_TIPOVI_PRIJAVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_RADA
prompt =================================
prompt
create table SIF.HR_SIF_TIPOVI_RADA
(
  id          NUMBER default on null sif.hr_sif_tipovi_rada_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  icon        VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_TIPOVI_RADA
  add constraint HR_SIF_TIPOVI_RADA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_RADA
  add constraint HR_SIF_TIPOVI_RADA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_RADNOG_ODNOSA
prompt ==========================================
prompt
create table SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA
(
  id          NUMBER default on null sif.hr_sif_tipovi_radnog_odnosa_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA
  add constraint HR_SIF_TIPOVI_RADNOG_ODNOSA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_RADNOG_ODNOSA
  add constraint HR_SIF_TIPOVI_RADNOG_ODNOSA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_RADNOG_VREMENA
prompt ===========================================
prompt
create table SIF.HR_SIF_TIPOVI_RADNOG_VREMENA
(
  id          NUMBER default on null sif.hr_sif_tipovi_radnog_vremena_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_SIF_TIPOVI_RADNOG_VREMENA
  add constraint HR_SIF_TIPOVI_RADNOG_VREMENA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_RADNOG_VREMENA
  add constraint HR_SIF_TIPOVI_RADNOG_VREMENA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_SIF_TIPOVI_UGOVORA
prompt ====================================
prompt
create table SIF.HR_SIF_TIPOVI_UGOVORA
(
  id          NUMBER default on null sif.hr_sif_tipovi_ugovora_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null,
  color_code  VARCHAR2(64 CHAR)
)
;
alter table SIF.HR_SIF_TIPOVI_UGOVORA
  add constraint HR_SIF_TIPOVI_UGOVORA_ID_PK primary key (ID);
alter table SIF.HR_SIF_TIPOVI_UGOVORA
  add constraint HR_SIF_TIPOVI_UGOVORA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_TIPOVI_POTVRDA
prompt ================================
prompt
create table SIF.HR_TIPOVI_POTVRDA
(
  id          NUMBER default on null sif.hr_tipovi_potvrda_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.HR_TIPOVI_POTVRDA
  add constraint HR_TIPOVI_POTVRDA_ID_PK primary key (ID);
alter table SIF.HR_TIPOVI_POTVRDA
  add constraint HR_TIPOVI_POTVRDA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table HR_TIPOVI_ZAHTJEVA
prompt =================================
prompt
create table SIF.HR_TIPOVI_ZAHTJEVA
(
  id                        NUMBER default on null sif.hr_tipovi_zahtjeva_seq.nextval not null,
  naziv                     VARCHAR2(255 CHAR),
  opis                      VARCHAR2(1000 CHAR),
  valid                     VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version               INTEGER not null,
  created                   DATE not null,
  created_by                VARCHAR2(255 CHAR) not null,
  updated                   DATE not null,
  updated_by                VARCHAR2(255 CHAR) not null,
  evidencija_prisutnosti_id NUMBER
)
;
alter table SIF.HR_TIPOVI_ZAHTJEVA
  add constraint HR_TIPOVI_ZAHTJEVA_ID_PK primary key (ID);
alter table SIF.HR_TIPOVI_ZAHTJEVA
  add constraint HR_TIPOVI_ZAHTJEVA_EVIDENCIJA_PRISUTNOSTI_ID_FK foreign key (EVIDENCIJA_PRISUTNOSTI_ID)
  references SIF.HR_SIF_EV_PRISUTNOSTI (ID)
  disable
  novalidate;
alter table SIF.HR_TIPOVI_ZAHTJEVA
  add constraint HR_TIPOVI_ZAHTJEVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_SIF_STATUSI
prompt ============================
prompt
create table SIF.I_SIF_STATUSI
(
  id          NUMBER default on null sif.i_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  sifra       VARCHAR2(16 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.I_SIF_STATUSI
  add constraint I_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.I_SIF_STATUSI
  add constraint I_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table I_SIF_TIPOVI_DOKUMENATA
prompt ======================================
prompt
create table SIF.I_SIF_TIPOVI_DOKUMENATA
(
  id          NUMBER default on null sif.i_sif_tipovi_dokumenata_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.I_SIF_TIPOVI_DOKUMENATA
  add constraint I_SIF_TIPOVI_DOKUMENATA_ID_PK primary key (ID);
alter table SIF.I_SIF_TIPOVI_DOKUMENATA
  add constraint I_SIF_TIPOVI_DOKUMENATA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_KATEGORIJE
prompt =============================
prompt
create table SIF.LMS_KATEGORIJE
(
  id          NUMBER default on null "SIF"."LMS_KATEGORIJE_SEQ"."NEXTVAL" not null,
  parent_id   NUMBER,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  icon        VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.LMS_KATEGORIJE_I1 on SIF.LMS_KATEGORIJE (PARENT_ID);
alter table SIF.LMS_KATEGORIJE
  add constraint LMS_KATEGORIJE_ID_PK primary key (ID);
alter table SIF.LMS_KATEGORIJE
  add constraint LMS_KATEGORIJE_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_KATEGORIJE
  add constraint LMS_KATEGORIJE_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_KATEGORIJE
  add constraint LMS_KATEGORIJE_PARENT_ID_FK foreign key (PARENT_ID)
  references SIF.LMS_KATEGORIJE (ID)
  disable
  novalidate;
alter table SIF.LMS_KATEGORIJE
  add constraint LMS_KATEGORIJE_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_STATUSI
prompt ==========================
prompt
create table SIF.LMS_STATUSI
(
  id          NUMBER default on null "SIF"."LMS_STATUSI_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  icon        VARCHAR2(64 CHAR),
  color_code  VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LMS_STATUSI
  add constraint LMS_STATUSI_ID_PK primary key (ID);
alter table SIF.LMS_STATUSI
  add constraint LMS_STATUSI_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_STATUSI
  add constraint LMS_STATUSI_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_STATUSI
  add constraint LMS_STATUSI_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_TIPOVI_ISPITA
prompt ================================
prompt
create table SIF.LMS_TIPOVI_ISPITA
(
  id          NUMBER default on null "SIF"."LMS_TIPOVI_ISPITA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LMS_TIPOVI_ISPITA
  add constraint LMS_TIPOVI_ISPITA_ID_PK primary key (ID);
alter table SIF.LMS_TIPOVI_ISPITA
  add constraint LMS_TIPOVI_ISPITA_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_TIPOVI_ISPITA
  add constraint LMS_TIPOVI_ISPITA_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_TIPOVI_ISPITA
  add constraint LMS_TIPOVI_ISPITA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_TIPOVI_KURSEVA
prompt =================================
prompt
create table SIF.LMS_TIPOVI_KURSEVA
(
  id          NUMBER default on null "SIF"."LMS_TIPOVI_KURSEVA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  icon        VARCHAR2(64 CHAR),
  color_code  VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LMS_TIPOVI_KURSEVA
  add constraint LMS_TIPOVI_KURSEVA_ID_PK primary key (ID);
alter table SIF.LMS_TIPOVI_KURSEVA
  add constraint LMS_TIPOVI_KURSEVA_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_TIPOVI_KURSEVA
  add constraint LMS_TIPOVI_KURSEVA_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_TIPOVI_KURSEVA
  add constraint LMS_TIPOVI_KURSEVA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_TIPOVI_LEKCIJA
prompt =================================
prompt
create table SIF.LMS_TIPOVI_LEKCIJA
(
  id          NUMBER default on null "SIF"."LMS_TIPOVI_LEKCIJA_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  color_code  VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LMS_TIPOVI_LEKCIJA
  add constraint LMS_TIPOVI_LEKCIJA_ID_PK primary key (ID);
alter table SIF.LMS_TIPOVI_LEKCIJA
  add constraint LMS_TIPOVI_LEKCIJA_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_TIPOVI_LEKCIJA
  add constraint LMS_TIPOVI_LEKCIJA_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_TIPOVI_LEKCIJA
  add constraint LMS_TIPOVI_LEKCIJA_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LMS_TIPOVI_PUBLIKE
prompt =================================
prompt
create table SIF.LMS_TIPOVI_PUBLIKE
(
  id          NUMBER default on null "SIF"."LMS_TIPOVI_PUBLIKE_SEQ"."NEXTVAL" not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LMS_TIPOVI_PUBLIKE
  add constraint LMS_TIPOVI_PUBLIKE_ID_PK primary key (ID);
alter table SIF.LMS_TIPOVI_PUBLIKE
  add constraint LMS_TIPOVI_PUBLIKE_NAZIV_UNQ unique (NAZIV);
alter table SIF.LMS_TIPOVI_PUBLIKE
  add constraint LMS_TIPOVI_PUBLIKE_SIFRA_UNQ unique (SIFRA);
alter table SIF.LMS_TIPOVI_PUBLIKE
  add constraint LMS_TIPOVI_PUBLIKE_VALID_CK
  check ( valid IN ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_SIF_PRIORITETI
prompt =================================
prompt
create table SIF.LPR_SIF_PRIORITETI
(
  id          NUMBER default on null sif.lpr_sif_prioriteti_seq.nextval not null,
  naziv       VARCHAR2(64 CHAR),
  opis        VARCHAR2(255 CHAR),
  vrijednost  NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LPR_SIF_PRIORITETI
  add constraint LPR_SIF_PRIORITETI_ID_PK primary key (ID);
alter table SIF.LPR_SIF_PRIORITETI
  add constraint LPR_SIF_PRIORITETI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table LPR_SIF_STATUSI
prompt ==============================
prompt
create table SIF.LPR_SIF_STATUSI
(
  id          NUMBER default on null sif.lpr_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.LPR_SIF_STATUSI
  add constraint LPR_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.LPR_SIF_STATUSI
  add constraint LPR_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table MIG_BKP_GLAVNA_KNJIGA
prompt ====================================
prompt
create table SIF.MIG_BKP_GLAVNA_KNJIGA
(
  id              NUMBER not null,
  ooj_id          NUMBER,
  vrsta_naloga_id NUMBER
)
;

prompt
prompt Creating table MIG_BKP_PROTOKOLI
prompt ================================
prompt
create table SIF.MIG_BKP_PROTOKOLI
(
  id              NUMBER not null,
  ooj_id          NUMBER,
  vrsta_naloga_id NUMBER
)
;

prompt
prompt Creating table MIG_BKP_VRSTE_NALOGA
prompt ===================================
prompt
create table SIF.MIG_BKP_VRSTE_NALOGA
(
  id           NUMBER not null,
  sifra        VARCHAR2(64),
  naziv        VARCHAR2(255),
  opis         VARCHAR2(1000),
  app          VARCHAR2(32 CHAR),
  valid        VARCHAR2(1) not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255) not null,
  ooj_id       NUMBER,
  acc_modul_id NUMBER
)
;

prompt
prompt Creating table MIG_BKP_ZIRO_RACUNI
prompt ==================================
prompt
create table SIF.MIG_BKP_ZIRO_RACUNI
(
  id              NUMBER not null,
  ooj_id          NUMBER not null,
  vrsta_naloga_id NUMBER
)
;

prompt
prompt Creating table MIG_VRSTE_NALOGA_MAP
prompt ===================================
prompt
create table SIF.MIG_VRSTE_NALOGA_MAP
(
  stari_id NUMBER not null,
  ooj_id   NUMBER not null,
  novi_id  NUMBER not null,
  sifra    VARCHAR2(64)
)
;
alter table SIF.MIG_VRSTE_NALOGA_MAP
  add constraint MIG_VRSTE_NALOGA_MAP_PK primary key (STARI_ID, OOJ_ID);

prompt
prompt Creating table PL_KOEFICIJENTI
prompt ==============================
prompt
create table SIF.PL_KOEFICIJENTI
(
  id             NUMBER default on null sif.pl_koeficijenti_seq.nextval not null,
  entitet_id     NUMBER,
  tip_ugovora_id NUMBER,
  naziv          VARCHAR2(255 CHAR),
  drzava         NUMBER,
  vazi_od        DATE,
  vazi_do        DATE,
  komentar       VARCHAR2(4000 CHAR),
  vrijednost     NUMBER,
  sifra          VARCHAR2(16 CHAR),
  vazi           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
create index SIF.PL_KOEFICIJENTI_I1 on SIF.PL_KOEFICIJENTI (ENTITET_ID);
create index SIF.PL_KOEFICIJENTI_I2 on SIF.PL_KOEFICIJENTI (TIP_UGOVORA_ID);
alter table SIF.PL_KOEFICIJENTI
  add constraint PL_KOEFICIJENTI_ID_PK primary key (ID);
alter table SIF.PL_KOEFICIJENTI
  add constraint PL_KOEFICIJENTI_ENTITET_FK foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table SIF.PL_KOEFICIJENTI
  add constraint PL_KOEFICIJENTI_TIP_UGOVORA_ID foreign key (TIP_UGOVORA_ID)
  references SIF.HR_SIF_TIPOVI_UGOVORA (ID)
  disable
  novalidate;
alter table SIF.PL_KOEFICIJENTI
  add constraint PL_KOEFICIJENTI_VAZI_CK
  check ( vazi in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PL_TIPOVI_EI
prompt ===========================
prompt
create table SIF.PL_TIPOVI_EI
(
  id          NUMBER default on null sif.pl_tipovi_ei_seq.nextval not null,
  ei          VARCHAR2(1 CHAR),
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PL_TIPOVI_EI
  add constraint PL_TIPOVI_EI_ID_PK primary key (ID);
alter table SIF.PL_TIPOVI_EI
  add constraint PL_TIPOVI_EI_EI_CK
  check ( ei in ( 'E', 'I' ) )
  disable
  novalidate;
alter table SIF.PL_TIPOVI_EI
  add constraint PL_TIPOVI_EI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_INTERVALI
prompt ================================
prompt
create table SIF.PRU_SIF_INTERVALI
(
  id           NUMBER default on null sif.pru_sif_intervali_seq.nextval not null,
  naziv        VARCHAR2(255 CHAR),
  opis         VARCHAR2(1000 CHAR),
  broj_mjeseci NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PRU_SIF_INTERVALI
  add constraint PRU_SIF_INTERVALI_ID_PK primary key (ID);
alter table SIF.PRU_SIF_INTERVALI
  add constraint PRU_SIF_INTERVALI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_TIPOVI_KOMPETENCIJA
prompt ==========================================
prompt
create table SIF.PRU_SIF_TIPOVI_KOMPETENCIJA
(
  id          NUMBER default on null sif.pru_sif_tipovi_kompetencija_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PRU_SIF_TIPOVI_KOMPETENCIJA
  add constraint PRU_SIF_TIPOVI_KOMPETENCIJA_ID_PK primary key (ID);
alter table SIF.PRU_SIF_TIPOVI_KOMPETENCIJA
  add constraint PRU_SIF_TIPOVI_KOMPETENCIJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_KOMPETENCIJE
prompt ===================================
prompt
create table SIF.PRU_SIF_KOMPETENCIJE
(
  id                  NUMBER default on null sif.pru_sif_kompetencije_seq.nextval not null,
  tip_kompetencije_id NUMBER,
  naziv               VARCHAR2(64 CHAR),
  opis                VARCHAR2(255 CHAR),
  valid               VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null
)
;
create index SIF.PRU_SIF_KOMPETENCIJE_I1 on SIF.PRU_SIF_KOMPETENCIJE (TIP_KOMPETENCIJE_ID);
alter table SIF.PRU_SIF_KOMPETENCIJE
  add constraint PRU_SIF_KOMPETENCIJE_ID_PK primary key (ID);
alter table SIF.PRU_SIF_KOMPETENCIJE
  add constraint PRU_SIF_KOMPETENCIJE_TIP_KOMPETENCIJE_ID_FK foreign key (TIP_KOMPETENCIJE_ID)
  references SIF.PRU_SIF_TIPOVI_KOMPETENCIJA (ID)
  disable
  novalidate;
alter table SIF.PRU_SIF_KOMPETENCIJE
  add constraint PRU_SIF_KOMPETENCIJE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_TIPOVI_OCJENA
prompt ====================================
prompt
create table SIF.PRU_SIF_TIPOVI_OCJENA
(
  id          NUMBER default on null sif.pru_sif_tipovi_ocjena_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  vrijednost  NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PRU_SIF_TIPOVI_OCJENA
  add constraint PRU_SIF_TIPOVI_OCJENA_ID_PK primary key (ID);
alter table SIF.PRU_SIF_TIPOVI_OCJENA
  add constraint PRU_SIF_TIPOVI_OCJENA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_OCJENE
prompt =============================
prompt
create table SIF.PRU_SIF_OCJENE
(
  id              NUMBER default on null sif.pru_sif_ocjene_seq.nextval not null,
  kompetencija_id NUMBER,
  tip_ocjene_id   NUMBER,
  opis            VARCHAR2(4000 CHAR),
  valid           VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version     INTEGER not null,
  created         DATE not null,
  created_by      VARCHAR2(255 CHAR) not null,
  updated         DATE not null,
  updated_by      VARCHAR2(255 CHAR) not null
)
;
create index SIF.PRU_SIF_OCJENE_I1 on SIF.PRU_SIF_OCJENE (KOMPETENCIJA_ID);
create index SIF.PRU_SIF_OCJENE_I2 on SIF.PRU_SIF_OCJENE (TIP_OCJENE_ID);
alter table SIF.PRU_SIF_OCJENE
  add constraint PRU_SIF_OCJENE_ID_PK primary key (ID);
alter table SIF.PRU_SIF_OCJENE
  add constraint PRU_SIF_OCJENE_KOMPETENCIJA_ID_FK foreign key (KOMPETENCIJA_ID)
  references SIF.PRU_SIF_KOMPETENCIJE (ID)
  disable
  novalidate;
alter table SIF.PRU_SIF_OCJENE
  add constraint PRU_SIF_OCJENE_TIP_OCJENE_ID_FK foreign key (TIP_OCJENE_ID)
  references SIF.PRU_SIF_TIPOVI_OCJENA (ID)
  disable
  novalidate;
alter table SIF.PRU_SIF_OCJENE
  add constraint PRU_SIF_OCJENE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_RAZLOZI_NEOCJENIVANJA
prompt ============================================
prompt
create table SIF.PRU_SIF_RAZLOZI_NEOCJENIVANJA
(
  id          NUMBER default on null sif.pru_sif_razlozi_neocjenivanja_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PRU_SIF_RAZLOZI_NEOCJENIVANJA
  add constraint PRU_SIF_RAZLOZI_NEOCJENIVANJA_ID_PK primary key (ID);
alter table SIF.PRU_SIF_RAZLOZI_NEOCJENIVANJA
  add constraint PRU_SIF_RAZLOZI_NEOCJENIVANJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table PRU_SIF_STATUSI
prompt ==============================
prompt
create table SIF.PRU_SIF_STATUSI
(
  id          NUMBER default on null sif.pru_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.PRU_SIF_STATUSI
  add constraint PRU_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.PRU_SIF_STATUSI
  add constraint PRU_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_SIF_NIVOI_PRISTUPA
prompt ===================================
prompt
create table SIF.P_SIF_NIVOI_PRISTUPA
(
  id          NUMBER default on null sif.p_sif_nivoi_pristupa_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(32 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.P_SIF_NIVOI_PRISTUPA
  add constraint P_SIF_NIVOI_PRISTUPA_ID_PK primary key (ID);
alter table SIF.P_SIF_NIVOI_PRISTUPA
  add constraint P_SIF_NIVOI_PRISTUPA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_SIF_POZADINE
prompt =============================
prompt
create table SIF.P_SIF_POZADINE
(
  id               NUMBER default on null sif.p_sif_pozadine_seq.nextval not null,
  naziv            VARCHAR2(255 CHAR),
  file_name        VARCHAR2(255 CHAR),
  osnovna_pozadina VARCHAR2(1 CHAR),
  valid            VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version      INTEGER not null,
  created          DATE not null,
  created_by       VARCHAR2(255 CHAR) not null,
  updated          DATE not null,
  updated_by       VARCHAR2(255 CHAR) not null
)
;
alter table SIF.P_SIF_POZADINE
  add constraint P_SIF_POZADINE_ID_PK primary key (ID);
alter table SIF.P_SIF_POZADINE
  add constraint P_SIF_POZADINE_FILE_NAME_UNQ unique (FILE_NAME);
alter table SIF.P_SIF_POZADINE
  add constraint P_SIF_POZADINE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_SIF_STATUSI
prompt ============================
prompt
create table SIF.P_SIF_STATUSI
(
  id          NUMBER default on null sif.p_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(32 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.P_SIF_STATUSI
  add constraint P_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.P_SIF_STATUSI
  add constraint P_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table P_SIF_TIPOVI_KOMENTARA
prompt =====================================
prompt
create table SIF.P_SIF_TIPOVI_KOMENTARA
(
  id          NUMBER default on null sif.p_sif_tipovi_komentara_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(32 CHAR),
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.P_SIF_TIPOVI_KOMENTARA
  add constraint P_SIF_TIPOVI_KOMENTARA_ID_PK primary key (ID);
alter table SIF.P_SIF_TIPOVI_KOMENTARA
  add constraint P_SIF_TIPOVI_KOMENTARA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_MODULI
prompt =========================
prompt
create table SIF.SIF_MODULI
(
  id          NUMBER default on null sif.sif_moduli_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  icon        VARCHAR2(64 CHAR),
  sequence    NUMBER,
  solo        VARCHAR2(1) default 'N' not null,
  parent_id   NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_MODULI
  add constraint SIF_MODULI_ID_PK primary key (ID);
alter table SIF.SIF_MODULI
  add constraint SIF_MODULI_PARENT_ID_FK foreign key (PARENT_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI
  add constraint SIF_MODULI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_APLIKACIJE
prompt =============================
prompt
create table SIF.SIF_APLIKACIJE
(
  id                NUMBER default on null sif.sif_aplikacije_seq.nextval not null,
  required_modul_id NUMBER,
  naziv             VARCHAR2(255 CHAR),
  opis              VARCHAR2(1000 CHAR),
  icon              VARCHAR2(64 CHAR),
  sequence          NUMBER,
  color_code        VARCHAR2(255 CHAR),
  application_id    NUMBER,
  hub               VARCHAR2(1 CHAR),
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null,
  grupa             VARCHAR2(16 CHAR)
)
;
create index SIF.SIF_APLIKACIJE_I1 on SIF.SIF_APLIKACIJE (REQUIRED_MODUL_ID);
alter table SIF.SIF_APLIKACIJE
  add constraint SIF_APLIKACIJE_ID_PK primary key (ID);
alter table SIF.SIF_APLIKACIJE
  add constraint SIF_APLIKACIJE_REQUIRED_MODUL_ID_FK foreign key (REQUIRED_MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table SIF.SIF_APLIKACIJE
  add constraint SIF_APLIKACIJE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_ROLE
prompt =======================
prompt
create table SIF.SIF_ROLE
(
  id          NUMBER default on null sif.sif_role_seq.nextval not null,
  naziv       VARCHAR2(200 CHAR),
  opis        VARCHAR2(2000 CHAR),
  name        VARCHAR2(200 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_ROLE
  add constraint SIF_ROLE_ID_PK primary key (ID);
alter table SIF.SIF_ROLE
  add constraint SIF_ROLE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_APLIKACIJA_ROLE
prompt ==================================
prompt
create table SIF.SIF_APLIKACIJA_ROLE
(
  id                 NUMBER default on null sif.sif_aplikacija_role_seq.nextval not null,
  sif_application_id NUMBER,
  rola_id            NUMBER,
  valid              VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version        INTEGER not null,
  created            DATE not null,
  created_by         VARCHAR2(255 CHAR) not null,
  updated            DATE not null,
  updated_by         VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_APLIKACIJA_ROLE_I1 on SIF.SIF_APLIKACIJA_ROLE (SIF_APPLICATION_ID);
create index SIF.SIF_APLIKACIJA_ROLE_I2 on SIF.SIF_APLIKACIJA_ROLE (ROLA_ID);
alter table SIF.SIF_APLIKACIJA_ROLE
  add constraint SIF_APLIKACIJA_ROLE_ID_PK primary key (ID);
alter table SIF.SIF_APLIKACIJA_ROLE
  add constraint SIF_APLIKACIJA_ROLE_ROLA_ID_FK foreign key (ROLA_ID)
  references SIF.SIF_ROLE (ID)
  disable
  novalidate;
alter table SIF.SIF_APLIKACIJA_ROLE
  add constraint SIF_APLIKACIJA_ROLE_SIF_APPLICATION_ID_FK foreign key (SIF_APPLICATION_ID)
  references SIF.SIF_APLIKACIJE (ID)
  disable
  novalidate;
alter table SIF.SIF_APLIKACIJA_ROLE
  add constraint SIF_APLIKACIJA_ROLE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_BANKE
prompt ========================
prompt
create table SIF.SIF_BANKE
(
  id          NUMBER default on null sif.sif_banke_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  email       VARCHAR2(255 CHAR),
  www         VARCHAR2(255 CHAR),
  sifra       VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_BANKE
  add constraint SIF_BANKE_ID_PK primary key (ID);
alter table SIF.SIF_BANKE
  add constraint SIF_BANKE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_BROWSERS
prompt ===========================
prompt
create table SIF.SIF_BROWSERS
(
  id            NUMBER default on null sif.sif_browsers_seq.nextval not null,
  name          VARCHAR2(255 CHAR),
  url           VARCHAR2(255 CHAR),
  logo          BLOB,
  logo_filename VARCHAR2(255 CHAR),
  logo_mimetype VARCHAR2(255 CHAR),
  logo_charset  VARCHAR2(255 CHAR),
  logo_lastupd  DATE,
  valid         VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version   INTEGER not null,
  created       DATE not null,
  created_by    VARCHAR2(255 CHAR) not null,
  updated       DATE not null,
  updated_by    VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_BROWSERS
  add constraint SIF_BROWSERS_ID_PK primary key (ID);
alter table SIF.SIF_BROWSERS
  add constraint SIF_BROWSERS_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_DRZAVE
prompt =========================
prompt
create table SIF.SIF_DRZAVE
(
  id           NUMBER default on null sif.sif_drzave_seq.nextval not null,
  name         VARCHAR2(255 CHAR),
  a2_iso       VARCHAR2(2 CHAR),
  a3_un        VARCHAR2(3 CHAR),
  num_un       VARCHAR2(4000 CHAR),
  dialing_code NUMBER,
  dnevnica     NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_DRZAVE
  add constraint SIF_DRZAVE_ID_PK primary key (ID);
alter table SIF.SIF_DRZAVE
  add constraint SIF_DRZAVE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_GRADOVI
prompt ==========================
prompt
create table SIF.SIF_GRADOVI
(
  id          NUMBER default on null sif.sif_gradovi_seq.nextval not null,
  entitet_id  NUMBER,
  drzava_id   NUMBER,
  naziv       VARCHAR2(255 CHAR),
  pozbroj     VARCHAR2(16 CHAR),
  posbroj     VARCHAR2(16 CHAR),
  sifra       NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_GRADOVI_I1 on SIF.SIF_GRADOVI (ENTITET_ID);
create index SIF.SIF_GRADOVI_I2 on SIF.SIF_GRADOVI (DRZAVA_ID);
alter table SIF.SIF_GRADOVI
  add constraint SIF_GRADOVI_ID_PK primary key (ID);
alter table SIF.SIF_GRADOVI
  add constraint SIF_GRADOVI_DRZAVA_ID_FK foreign key (DRZAVA_ID)
  references SIF.SIF_DRZAVE (ID)
  disable
  novalidate;
alter table SIF.SIF_GRADOVI
  add constraint SIF_GRADOVI_ENTITET_FK foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table SIF.SIF_GRADOVI
  add constraint SIF_GRADOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_GUIDE
prompt ========================
prompt
create table SIF.SIF_GUIDE
(
  id             NUMBER default on null sif.sif_guide_seq.nextval not null,
  application_id NUMBER,
  page_id        NUMBER,
  sequence       NUMBER,
  type           VARCHAR2(1 CHAR),
  item_id        VARCHAR2(64 CHAR),
  region_id      VARCHAR2(64 CHAR),
  element        VARCHAR2(255 CHAR),
  title          VARCHAR2(255 CHAR),
  description    VARCHAR2(1000 CHAR),
  side           VARCHAR2(64 CHAR),
  align          VARCHAR2(64 CHAR),
  valid          VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version    INTEGER not null,
  created        DATE not null,
  created_by     VARCHAR2(255 CHAR) not null,
  updated        DATE not null,
  updated_by     VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_GUIDE
  add constraint SIF_GUIDE_ID_PK primary key (ID);
alter table SIF.SIF_GUIDE
  add constraint SIF_GUIDE_TYPE_CK
  check ( type in ( 'R', 'I', 'C' ) )
  disable
  novalidate;
alter table SIF.SIF_GUIDE
  add constraint SIF_GUIDE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_INTERVALI
prompt ============================
prompt
create table SIF.SIF_INTERVALI
(
  id           NUMBER default on null sif.sif_intervali_seq.nextval not null,
  naziv        VARCHAR2(255 CHAR),
  broj_mjeseci NUMBER,
  sifra        VARCHAR2(32 CHAR),
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_INTERVALI
  add constraint SIF_INTERVALI_ID_PK primary key (ID);
alter table SIF.SIF_INTERVALI
  add constraint SIF_INTERVALI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_KANTONI
prompt ==========================
prompt
create table SIF.SIF_KANTONI
(
  id          NUMBER default on null sif.sif_kantoni_seq.nextval not null,
  entitet_id  NUMBER,
  naziv       VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_KANTONI_I1 on SIF.SIF_KANTONI (ENTITET_ID);
alter table SIF.SIF_KANTONI
  add constraint SIF_KANTONI_ID_PK primary key (ID);
alter table SIF.SIF_KANTONI
  add constraint SIF_KANTONI_ENTITET_FK foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID)
  disable
  novalidate;
alter table SIF.SIF_KANTONI
  add constraint SIF_KANTONI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_MODULI_CIJENE
prompt ================================
prompt
create table SIF.SIF_MODULI_CIJENE
(
  id           NUMBER default on null sif.sif_moduli_cijene_seq.nextval not null,
  modul_id     NUMBER,
  interval_id  NUMBER,
  cijena       NUMBER,
  stavka_id    NUMBER,
  valid        VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version  INTEGER not null,
  created      DATE not null,
  created_by   VARCHAR2(255 CHAR) not null,
  updated      DATE not null,
  updated_by   VARCHAR2(255 CHAR) not null,
  korisnika_od NUMBER,
  korisnika_do NUMBER
)
;
create index SIF.SIF_MODULI_CIJENE_I1 on SIF.SIF_MODULI_CIJENE (MODUL_ID);
create index SIF.SIF_MODULI_CIJENE_I2 on SIF.SIF_MODULI_CIJENE (INTERVAL_ID);
alter table SIF.SIF_MODULI_CIJENE
  add constraint SIF_MODULI_CIJENE_ID_PK primary key (ID);
alter table SIF.SIF_MODULI_CIJENE
  add constraint SIF_MODULI_CIJENE_INTERVAL_ID_FK foreign key (INTERVAL_ID)
  references SIF.SIF_INTERVALI (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI_CIJENE
  add constraint SIF_MODULI_CIJENE_MODUL_ID_FK foreign key (MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI_CIJENE
  add constraint SIF_MODULI_CIJENE_STAVKA_ID foreign key (STAVKA_ID)
  references ACCOUNTING.SEC_STAVKE (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI_CIJENE
  add constraint SIF_MODULI_CIJENE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_MODULI_ROLE
prompt ==============================
prompt
create table SIF.SIF_MODULI_ROLE
(
  id          NUMBER default on null sif.sif_moduli_role_seq.nextval not null,
  modul_id    NUMBER,
  rola_id     NUMBER,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_MODULI_ROLE_I1 on SIF.SIF_MODULI_ROLE (MODUL_ID);
create index SIF.SIF_MODULI_ROLE_I2 on SIF.SIF_MODULI_ROLE (ROLA_ID);
alter table SIF.SIF_MODULI_ROLE
  add constraint SIF_MODULI_ROLE_ID_PK primary key (ID);
alter table SIF.SIF_MODULI_ROLE
  add constraint SIF_MODULI_ROLE_MODUL_ID_FK foreign key (MODUL_ID)
  references SIF.SIF_MODULI (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI_ROLE
  add constraint SIF_MODULI_ROLE_ROLA_ID_FK foreign key (ROLA_ID)
  references SIF.SIF_ROLE (ID)
  disable
  novalidate;
alter table SIF.SIF_MODULI_ROLE
  add constraint SIF_MODULI_ROLE_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_STATUSI
prompt ==========================
prompt
create table SIF.SIF_STATUSI
(
  id          NUMBER default on null sif.sif_statusi_seq.nextval not null,
  sifra       VARCHAR2(64 CHAR),
  naziv       VARCHAR2(255 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  icon        VARCHAR2(64 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SIF_STATUSI
  add constraint SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.SIF_STATUSI
  add constraint SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_TIPOVI_EI
prompt ============================
prompt
create table SIF.SIF_TIPOVI_EI
(
  id                  NUMBER default on null sif.sif_tipovi_ei_seq.nextval not null,
  rola_id             NUMBER,
  ei                  VARCHAR2(1 CHAR),
  data_load_static_id VARCHAR2(255 CHAR),
  sifra               VARCHAR2(64 CHAR),
  naziv               VARCHAR2(255 CHAR),
  opis                VARCHAR2(1000 CHAR),
  valid               VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version         INTEGER not null,
  created             DATE not null,
  created_by          VARCHAR2(255 CHAR) not null,
  updated             DATE not null,
  updated_by          VARCHAR2(255 CHAR) not null,
  sql_query           CLOB,
  file_type           VARCHAR2(64 CHAR)
)
;
create index SIF.SIF_TIPOVI_EI_I1 on SIF.SIF_TIPOVI_EI (ROLA_ID);
alter table SIF.SIF_TIPOVI_EI
  add constraint SIF_TIPOVI_EI_ID_PK primary key (ID);
alter table SIF.SIF_TIPOVI_EI
  add constraint SIF_TIPOVI_EI_ROLA_ID_FK foreign key (ROLA_ID)
  references SIF.SIF_ROLE (ID)
  disable
  novalidate;
alter table SIF.SIF_TIPOVI_EI
  add constraint SIF_TIPOVI_EI_EI_CK
  check ( ei in ( 'E', 'I' ) )
  disable
  novalidate;
alter table SIF.SIF_TIPOVI_EI
  add constraint SIF_TIPOVI_EI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_TIPOVI_NOTIFIKACIJA
prompt ======================================
prompt
create table SIF.SIF_TIPOVI_NOTIFIKACIJA
(
  id                 NUMBER default on null sif.sif_tipovi_notifikacija_seq.nextval not null,
  sif_application_id NUMBER,
  naziv              VARCHAR2(255 CHAR) not null,
  sifra              VARCHAR2(32 CHAR) not null,
  note_icon          VARCHAR2(255 CHAR) not null,
  note_icon_color    VARCHAR2(255 CHAR) not null,
  note_color         VARCHAR2(255 CHAR) not null,
  note_page          NUMBER,
  page_item          VARCHAR2(255 CHAR),
  valid              VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version        INTEGER not null,
  created            DATE not null,
  created_by         VARCHAR2(255 CHAR) not null,
  updated            DATE not null,
  updated_by         VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_TIPOVI_NOTIFIKACIJA_I1 on SIF.SIF_TIPOVI_NOTIFIKACIJA (SIF_APPLICATION_ID);
alter table SIF.SIF_TIPOVI_NOTIFIKACIJA
  add constraint SIF_TIPOVI_NOTIFIKACIJA_ID_PK primary key (ID);
alter table SIF.SIF_TIPOVI_NOTIFIKACIJA
  add constraint SIF_TIPOVI_NOTIFIKACIJA_NAZIV_UNQ unique (NAZIV);
alter table SIF.SIF_TIPOVI_NOTIFIKACIJA
  add constraint SIF_TIPOVI_NOTIFIKACIJA_SIFRA_UNQ unique (SIFRA);
alter table SIF.SIF_TIPOVI_NOTIFIKACIJA
  add constraint SIF_TIPOVI_NOTIFIKACIJA_SIF_APPLICATION_ID_FK foreign key (SIF_APPLICATION_ID)
  references SIF.SIF_APLIKACIJE (ID)
  disable
  novalidate;
alter table SIF.SIF_TIPOVI_NOTIFIKACIJA
  add constraint SIF_TIPOVI_NOTIFIKACIJA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_UPUTSTVA
prompt ===========================
prompt
create table SIF.SIF_UPUTSTVA
(
  id                NUMBER default on null sif.sif_uputstva_seq.nextval not null,
  rola_id           NUMBER,
  naziv             VARCHAR2(255 CHAR),
  uputstvo          BLOB,
  uputstvo_filename VARCHAR2(255 CHAR),
  uputstvo_mimetype VARCHAR2(255 CHAR),
  uputstvo_charset  VARCHAR2(255 CHAR),
  uputstvo_lastupd  DATE,
  valid             VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version       INTEGER not null,
  created           DATE not null,
  created_by        VARCHAR2(255 CHAR) not null,
  updated           DATE not null,
  updated_by        VARCHAR2(255 CHAR) not null
)
;
create index SIF.SIF_UPUTSTVA_I1 on SIF.SIF_UPUTSTVA (ROLA_ID);
alter table SIF.SIF_UPUTSTVA
  add constraint SIF_UPUTSTVA_ID_PK primary key (ID);
alter table SIF.SIF_UPUTSTVA
  add constraint SIF_UPUTSTVA_ROLA_ID_FK foreign key (ROLA_ID)
  references SIF.SIF_ROLE (ID)
  disable
  novalidate;
alter table SIF.SIF_UPUTSTVA
  add constraint SIF_UPUTSTVA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table SIF_ZIRO_RACUNI
prompt ==============================
prompt
create table SIF.SIF_ZIRO_RACUNI
(
  id              NUMBER generated always as identity,
  ooj_id          NUMBER not null,
  banka_id        NUMBER not null,
  sifra           VARCHAR2(20) not null,
  broj            VARCHAR2(50) not null,
  opis            VARCHAR2(200) not null,
  valuta_id       NUMBER not null,
  kontna_klasa_id NUMBER,
  vrsta_naloga_id NUMBER,
  row_version     NUMBER not null,
  created         DATE not null,
  created_by      VARCHAR2(255) not null,
  updated         DATE,
  updated_by      VARCHAR2(255),
  valid           VARCHAR2(1) default 'Y'
)
;
comment on column SIF.SIF_ZIRO_RACUNI.id
  is 'primarni ključ tabele';
comment on column SIF.SIF_ZIRO_RACUNI.ooj_id
  is 'firmi kojoj žiro račun pripada';
comment on column SIF.SIF_ZIRO_RACUNI.banka_id
  is 'banka u  kojoj je žiro račun otvoren';
comment on column SIF.SIF_ZIRO_RACUNI.sifra
  is 'sifra računa, odnosono vrsta dokumenta za izvod ';
comment on column SIF.SIF_ZIRO_RACUNI.broj
  is 'broj računa';
comment on column SIF.SIF_ZIRO_RACUNI.opis
  is 'Opis namjene računa';
comment on column SIF.SIF_ZIRO_RACUNI.valuta_id
  is 'Valuta u kojoj je žiro račun otvoren';
comment on column SIF.SIF_ZIRO_RACUNI.kontna_klasa_id
  is 'konto računa na koji se knjiži prilivi i odliv';
comment on column SIF.SIF_ZIRO_RACUNI.vrsta_naloga_id
  is 'vrsta naloga kroz koji se knjiži izvod';
comment on column SIF.SIF_ZIRO_RACUNI.created
  is 'datum kreiranja';
comment on column SIF.SIF_ZIRO_RACUNI.created_by
  is 'kreirao';
comment on column SIF.SIF_ZIRO_RACUNI.updated
  is 'datum izmjene ';
comment on column SIF.SIF_ZIRO_RACUNI.updated_by
  is 'izmjenio';
comment on column SIF.SIF_ZIRO_RACUNI.valid
  is 'da li je žiro račun aktivan';
create index SIF.SIF_ZIRO_RACUNI_BANKA_I on SIF.SIF_ZIRO_RACUNI (BANKA_ID);
create index SIF.SIF_ZIRO_RACUNI_KONTNA_KLASA_I on SIF.SIF_ZIRO_RACUNI (KONTNA_KLASA_ID);
create index SIF.SIF_ZIRO_RACUNI_OOJ_I on SIF.SIF_ZIRO_RACUNI (OOJ_ID);
create index SIF.SIF_ZIRO_RACUNI_VALUTA_I on SIF.SIF_ZIRO_RACUNI (VALUTA_ID);
create index SIF.SIF_ZIRO_RACUNI_VRSTA_NALOGA_I on SIF.SIF_ZIRO_RACUNI (VRSTA_NALOGA_ID);
create unique index SIF.ZIRO_RACUNI_PK on SIF.SIF_ZIRO_RACUNI (ID);
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_PK primary key (ID);
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_BANKA_FK foreign key (BANKA_ID)
  references SIF.SIF_BANKE (ID)
  disable
  novalidate;
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_KONTNA_KLASA_FK foreign key (KONTNA_KLASA_ID)
  references SIF.ACC_KONTNI_OKVIR_KLASE (ID)
  disable
  novalidate;
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_OOJ_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID)
  disable
  novalidate;
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_VALUTA_FK foreign key (VALUTA_ID)
  references SIF.ACC_VALUTE (ID)
  disable
  novalidate;
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_VRSTA_NALOGA_GK_FK foreign key (VRSTA_NALOGA_ID)
  references SIF.SIF_VRSTE_NALOGA (ID)
  disable
  novalidate;
alter table SIF.SIF_ZIRO_RACUNI
  add constraint SIF_ZIRO_RACUNI_VALID_CK
  check (valid in ('Y','N'));

prompt
prompt Creating table SP_TROSKOVI_TIPOVI
prompt =================================
prompt
create table SIF.SP_TROSKOVI_TIPOVI
(
  id          NUMBER default on null sif.sp_troskovi_tipovi_seq.nextval not null,
  naziv       VARCHAR2(128 CHAR),
  opis        VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.SP_TROSKOVI_TIPOVI
  add constraint SP_TROSKOVI_TIPOVI_ID_PK primary key (ID);
alter table SIF.SP_TROSKOVI_TIPOVI
  add constraint SP_TROSKOVI_TIPOVI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table S_SIF_STATUSI
prompt ============================
prompt
create table SIF.S_SIF_STATUSI
(
  id          NUMBER default on null sif.s_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  sifra       VARCHAR2(16 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR) not null,
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.S_SIF_STATUSI
  add constraint S_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.S_SIF_STATUSI
  add constraint S_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table S_SIF_TIPOVI_SASTANAKA
prompt =====================================
prompt
create table SIF.S_SIF_TIPOVI_SASTANAKA
(
  id          NUMBER default on null sif.s_sif_tipovi_sastanaka_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR) not null,
  opis        VARCHAR2(1000 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.S_SIF_TIPOVI_SASTANAKA
  add constraint S_SIF_TIPOVI_SASTANAKA_ID_PK primary key (ID);
alter table SIF.S_SIF_TIPOVI_SASTANAKA
  add constraint S_SIF_TIPOVI_SASTANAKA_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table UIO_TIP_DOKUMENTA_PDV_INDIKATORI
prompt ===============================================
prompt
create table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
(
  id                   NUMBER generated always as identity,
  uio_tip_dokumenta_id NUMBER not null,
  pdv_indikator_id     NUMBER not null,
  entitet_id           NUMBER,
  valid                VARCHAR2(1) default 'Y' not null,
  row_version          NUMBER not null,
  created              DATE not null,
  created_by           VARCHAR2(100) not null,
  updated              DATE,
  updated_by           VARCHAR2(100)
)
;
comment on table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  is 'Veza između tipa UIO dokumenta, PDV indikatora i entiteta - određuje koji PDV indikator se primjenjuje za dati tip dokumenta kod konkretnog entiteta';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.id
  is 'Jedinstveni identifikator zapisa (PK)';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.uio_tip_dokumenta_id
  is 'FK - sif.acc_uio_tipovi_dokumenata.id - tip UIO dokumenta';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.pdv_indikator_id
  is 'FK - sif.acc_pdv_indikatori.id - PDV indikator koji se vezuje za tip dokumenta';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.entitet_id
  is 'FK - sif.sif_entiteti.id - entitet (pravno lice) za koji vrijedi veza';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.valid
  is 'Status zapisa: Y - aktivan, N - neaktivan (obrisan)';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.row_version
  is 'Verzija reda (optimističko zaključavanje)';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.created
  is 'Datum kreiranja zapisa';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.created_by
  is 'Korisnik koji je kreirao zapis';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.updated
  is 'Datum posljednje izmjene zapisa';
comment on column SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI.updated_by
  is 'Korisnik koji je posljednji izmijenio zapis';
create index SIF.IX_UIO_TDPI_ENTITET on SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI (ENTITET_ID);
create index SIF.IX_UIO_TDPI_PDV_IND on SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI (PDV_INDIKATOR_ID);
create index SIF.IX_UIO_TDPI_TIP_DOK on SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI (UIO_TIP_DOKUMENTA_ID);
create unique index SIF.UK_UIO_TDPI_COMBO on SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI (UIO_TIP_DOKUMENTA_ID, PDV_INDIKATOR_ID, ENTITET_ID);
alter table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  add constraint PK_UIO_TDPI primary key (ID);
alter table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  add constraint FK_UIO_TDPI_ENTITET foreign key (ENTITET_ID)
  references SIF.SIF_ENTITETI (ID);
alter table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  add constraint FK_UIO_TDPI_PDV_IND foreign key (PDV_INDIKATOR_ID)
  references SIF.ACC_PDV_INDIKATORI (ID);
alter table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  add constraint FK_UIO_TDPI_TIP_DOK foreign key (UIO_TIP_DOKUMENTA_ID)
  references SIF.ACC_UIO_TIPOVI_DOKUMENATA (ID);
alter table SIF.UIO_TIP_DOKUMENTA_PDV_INDIKATORI
  add constraint CK_UIO_TDPI_VALID
  check (valid in ('Y','N'));

prompt
prompt Creating table VP_SIF_STATUSI
prompt =============================
prompt
create table SIF.VP_SIF_STATUSI
(
  id          NUMBER default on null sif.vp_sif_statusi_seq.nextval not null,
  naziv       VARCHAR2(255 CHAR),
  sifra       VARCHAR2(16 CHAR),
  opis        VARCHAR2(1000 CHAR),
  color_code  VARCHAR2(255 CHAR),
  valid       VARCHAR2(1 CHAR) default on null 'Y' not null,
  row_version INTEGER not null,
  created     DATE not null,
  created_by  VARCHAR2(255 CHAR) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255 CHAR) not null
)
;
alter table SIF.VP_SIF_STATUSI
  add constraint VP_SIF_STATUSI_ID_PK primary key (ID);
alter table SIF.VP_SIF_STATUSI
  add constraint VP_SIF_STATUSI_VALID_CK
  check ( valid in ( 'Y', 'N' ) )
  disable
  novalidate;

prompt
prompt Creating table VRSTE_DOKUMENATA
prompt ===============================
prompt
create table SIF.VRSTE_DOKUMENATA
(
  id              NUMBER generated always as identity,
  app_id          NUMBER not null,
  acc_modul_id    NUMBER not null,
  ooj_id          NUMBER,
  sifra           VARCHAR2(20) not null,
  naziv           VARCHAR2(100) not null,
  opis            VARCHAR2(500),
  vrsta_naloga_id NUMBER,
  fiskalna_sifra  VARCHAR2(20),
  tip_kretanja    VARCHAR2(2),
  valid           VARCHAR2(1) default 'Y' not null,
  row_version     NUMBER,
  created         DATE not null,
  created_by      VARCHAR2(100) not null,
  updated         DATE,
  updated_by      VARCHAR2(100)
)
;
comment on table SIF.VRSTE_DOKUMENATA
  is 'Šifarnik vrsta dokumenata';
comment on column SIF.VRSTE_DOKUMENATA.app_id
  is 'FK - aplikacija kojoj vrsta dokumenta pripada';
comment on column SIF.VRSTE_DOKUMENATA.acc_modul_id
  is 'FK - modul kome vrsta dokumenta pripada';
comment on column SIF.VRSTE_DOKUMENATA.ooj_id
  is 'FK - organizaciona jedinica; NULL = defoltna/opšta vrsta dokumenta';
comment on column SIF.VRSTE_DOKUMENATA.opis
  is 'Slobodan opis/napomena o vrsti dokumenta';
comment on column SIF.VRSTE_DOKUMENATA.vrsta_naloga_id
  is 'FK - vrsta naloga koja se generiše za ovu vrstu dokumenta';
comment on column SIF.VRSTE_DOKUMENATA.fiskalna_sifra
  is 'Fiskalna šifra vrste dokumenta (za fiskalizaciju)';
comment on column SIF.VRSTE_DOKUMENATA.tip_kretanja
  is 'Tip kretanja: U = ulaz, I = izlaz, UI = i ulaz i izlaz';
create index SIF.VRSTE_DOK_APP_IDX on SIF.VRSTE_DOKUMENATA (APP_ID);
create index SIF.VRSTE_DOK_MODUL_IDX on SIF.VRSTE_DOKUMENATA (ACC_MODUL_ID);
create index SIF.VRSTE_DOK_NALOGA_IDX on SIF.VRSTE_DOKUMENATA (VRSTA_NALOGA_ID);
create index SIF.VRSTE_DOK_OOJ_IDX on SIF.VRSTE_DOKUMENATA (OOJ_ID);
create unique index SIF.VRSTE_DOK_SIFRA_UK on SIF.VRSTE_DOKUMENATA (OOJ_ID, ACC_MODUL_ID, SIFRA);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOKUMENATA_PK primary key (ID);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_APP_FK foreign key (APP_ID)
  references SIF.SIF_APLIKACIJE (ID);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_MODUL_FK foreign key (ACC_MODUL_ID)
  references SIF.ACC_MODULI (ID);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_NALOGA_FK foreign key (VRSTA_NALOGA_ID)
  references SIF.SIF_VRSTE_NALOGA (ID);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_OOJ_FK foreign key (OOJ_ID)
  references CORE.OOJ (ID);
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_TIP_KRETANJA_CK
  check (tip_kretanja in ('U','I','UI'));
alter table SIF.VRSTE_DOKUMENATA
  add constraint VRSTE_DOK_VALID_CK
  check (valid in ('Y','N'));

prompt
prompt Creating view VW_ACC_RADNICI
prompt ============================
prompt
create or replace force view sif.vw_acc_radnici as
select r.id, r.ooj_id,oj.naziv as naziv_ooj,  r.interni_broj, r.ime, r.prezime, r.email,r.valid,  r.oj_id, o.naziv naziv_oj
from sif.acc_radnici r
left join core.oj o on r.oj_id=o.id
left join core.ooj oj on oj.id=r.ooj_id;

prompt
prompt Creating view VW_ACC_VALUTA_KURSEVI
prompt ===================================
prompt
create or replace force view sif.vw_acc_valuta_kursevi as
select v.id as valuta_id,v.sifra as valuta, v.naziv,k.datum, k.kurs, k.ooj_id, k.id
from sif.acc_valuta_kursevi k
join sif.acc_valute v on v.id=k.valuta_id;

prompt
prompt Creating view VW_APLIKACIJA_ROLE
prompt ================================
prompt
CREATE OR REPLACE FORCE VIEW SIF.VW_APLIKACIJA_ROLE AS
SELECT
	ar.id,
	ar.sif_application_id,
	a.naziv AS sif_application_naziv,
    a.application_id AS application_id,
    a.sequence AS sif_application_sequence,
	ar.rola_id,
	r.name AS naziv,
	ar.valid,
	ar.row_version,
	ar.created,
	ar.created_by,
	ar.updated,
	ar.updated_by
FROM
	sif_aplikacija_role ar
	LEFT JOIN sif_aplikacije a ON ar.sif_application_id = a.id
	LEFT JOIN sif_role r ON ar.rola_id = r.id;

prompt
prompt Creating view VW_AUTOMATSKA_KNJIZENJA
prompt =====================================
prompt
create or replace force view sif.vw_automatska_knjizenja as
select
        ak.id,
        ak.vrsta_fakture_id,
        vf.naziv as vrsta_fakture_naziv,
        vf.sifra as vrsta_fakture_sifra,
        vf.vrsta_naloga_id,
        vn.naziv as vrsta_naloga_naziv,
        vn.sifra as vrsta_naloga_sifra,
        ak.naziv,
        ak.sifra,
        ak.valid,
        ak.row_version,
        ak.created,
        ak.created_by,
        ak.updated,
        ak.updated_by
    from
        acc_automatska_knjizenja ak
        left join acc_vrste_faktura        vf on ak.vrsta_fakture_id = vf.id
        left join sif_vrste_naloga         vn on vf.vrsta_naloga_id = vn.id;

prompt
prompt Creating view VW_B_SIF_PRISUTNOSTI
prompt ==================================
prompt
create or replace force view sif.vw_b_sif_prisutnosti as
select
        p.id,
        p.evidencija_prisutnosti_id,
        ev.naziv as evidencija_prisutnosti_naziv,
        ev.icon  as evidencija_prisutnosti_icon,
        p.naziv,
        p.code,
        p.valid,
        p.row_version,
        p.created,
        p.created_by,
        p.updated,
        p.updated_by
    from
        b_sif_prisutnosti     p
        left join hr_sif_ev_prisutnosti ev on p.evidencija_prisutnosti_id = ev.id;

prompt
prompt Creating view VW_CS_PROIZVODJACI_MODELI
prompt =======================================
prompt
CREATE OR REPLACE FORCE VIEW SIF.VW_CS_PROIZVODJACI_MODELI
(proizvodjac_id, proizvodjac_sifra, proizvodjac_naziv, proizvodjac_valid, row_version, created, created_by, updated, updated_by, model_id, model_sifra, model_naziv, model_valid)
AS
SELECT
    p.id            AS PROIZVODJAC_ID,
    p.sifra         AS PROIZVODJAC_SIFRA,
    p.naziv         AS PROIZVODJAC_NAZIV,
    p.valid         AS PROIZVODJAC_VALID,
    p.row_version,
    p.created,
    p.created_by,
    p.updated,
    p.updated_by,
    m.id            AS MODEL_ID,
    m.sifra         AS MODEL_SIFRA,
    m.naziv         AS MODEL_NAZIV,
    m.valid         AS VALID
FROM SIF.CS_PROIZVODJACI_VOZILA p
JOIN SIF.CS_MODELI_VOZILA m
    ON m.proizvodjac_id = p.id;

prompt
prompt Creating view VW_GUIDE
prompt ======================
prompt
create or replace force view sif.vw_guide as
select
        g.id,
        g.application_id,
        a.application_name,
        g.page_id,
        p.page_name,
        g.sequence,
        g.type,
        g.item_id,
        i.item_name,
        g.region_id,
        r.region_name,
        r.static_id as region_static_id,
        g.element,
        g.title,
        g.description,
        g.side,
        g.align,
        g.valid,
        g.row_version,
        g.created,
        g.created_by,
        g.updated,
        g.updated_by
    from
        sif_guide                     g
        left join apex_applications             a on g.application_id = a.application_id
        left join apex_application_pages        p on g.page_id = p.page_id
                                              and g.application_id = p.application_id
        left join apex_application_page_items   i on g.item_id = i.item_id
                                                   and g.application_id = i.application_id
        left join apex_application_page_regions r on g.region_id = r.region_id
                                                     and g.application_id = r.application_id;

prompt
prompt Creating view VW_IZVJESTAJ_PREDUZETNICI
prompt =======================================
prompt
create or replace force view sif.vw_izvjestaj_preduzetnici as
select
        ip.id,
        ip.izvjestaj_id,
        i.sifra  as izvjestaj_sifra,
        i.naziv  as izvjestaj_naziv,
        ip.tip_preduzetnika_id,
        tp.sifra as tip_preduzetnika_sifra,
        tp.naziv as tip_preduzetnika_naziv,
        ip.valid,
        ip.row_version,
        ip.created,
        ip.created_by,
        ip.updated,
        ip.updated_by
    from
        acc_izvjestaj_preduzetnici ip
        left join acc_izvjestaji             i on ip.izvjestaj_id = i.id
        left join sif_tipovi_preduzetnika    tp on ip.tip_preduzetnika_id = tp.id;

prompt
prompt Creating view VW_KLASE_OS_KONTA
prompt ===============================
prompt
create or replace force view sif.vw_klase_os_konta as
select
        kosk.id,
        kosk.transakcija_id,
        t.sifra            as transakcija_sifra,
        t.naziv            as transakcija_naziv,
        kosk.klasa_id,
        kos.naziv          as klasa_naziv,
        kos.procenat       as klasa_procenat,
        kos.vijek_trajanja as klasa_vijek_trajanja,
        kosk.kontna_klasa_id,
        k.code             as kontna_klasa_code,
        k.naziv            as kontna_klasa_naziv,
        kosk.valid,
        kosk.row_version,
        kosk.created,
        kosk.created_by,
        kosk.updated,
        kosk.updated_by
    from
        acc_klase_os_konta     kosk
        left join acc_klase_os           kos on kosk.klasa_id = kos.id
        left join acc_kontni_okvir_klase k on kosk.kontna_klasa_id = k.id
        left join acc_transakcije_os     t on kosk.transakcija_id = t.id;

prompt
prompt Creating view VW_KONTNI_OKVIR_KLASE
prompt ===================================
prompt
create or replace force view sif.vw_kontni_okvir_klase as
select
        k.id,
        k.entitet_id,
        e.naziv           as entitet_naziv,
        k.kontna_klasa_id as nadredjena_id,
        p.naziv           as nadredjena_naziv,
        p.code            as nadredjena_code,
        k.ooj_id,
        ooj.naziv         as ooj_naziv,
        k.code            as code,
        k.naziv,
        k.os,
        k.klijent,
        k.oj,
        k.radnik,
        case
            when k.kontna_klasa_id is null then
                'Y'
            else
                'N'
        end               as parent_klasa,
        k.valid,
        k.row_version,
        k.created,
        k.created_by,
        k.updated,
        k.updated_by,
        k.otvorene_stavke
    from
        sif.acc_kontni_okvir_klase k
        left join sif.sif_entiteti           e on k.entitet_id = e.id
        left join sif.acc_kontni_okvir_klase p on k.kontna_klasa_id = p.id
        left join core.ooj on k.ooj_id = ooj.id;

prompt
prompt Creating view VW_LMS_KATEGORIJE
prompt ===============================
prompt
CREATE OR REPLACE FORCE VIEW SIF.VW_LMS_KATEGORIJE AS
SELECT
	k.id,
	k.parent_id,
	p.sifra AS parent_sifra,
	p.naziv AS parent_naziv,
	k.sifra,
	k.naziv,
	k.icon,
	k.valid,
	k.row_version,
	k.created,
	k.created_by,
	k.updated,
	k.updated_by
FROM
	lms_kategorije k
	LEFT JOIN lms_kategorije p ON k.parent_id = p.id;

prompt
prompt Creating view VW_MJESTA_TROSKA
prompt ==============================
prompt
create or replace force view sif.vw_mjesta_troska as
select mt.id, mt.ooj_id, mt.sifra, mt.naziv, mt1.id as nad_id, mt1.sifra as nad_sifra, mt1.naziv as nad_naziv,
       mt.radnik_id, r.ime||' '||r.prezime odgovorna_osoba, mt.valid
from sif.acc_mjesta_troska mt
left join sif.acc_mjesta_troska mt1 on mt.nad_id=mt1.id
left join core.oj o on o.id=mt.oj_id
left join sif.acc_radnici r on r.id=mt.radnik_id;

prompt
prompt Creating view VW_MODULI_CIJENE
prompt ==============================
prompt
create or replace force view sif.vw_moduli_cijene as
select
        mc.id,
        mc.modul_id,
        m.naziv                    as modul_naziv,
        m.opis,
        mc.interval_id,
        i.naziv                    as interval_naziv,
        i.broj_mjeseci,
        mc.cijena,
        i.broj_mjeseci * mc.cijena as cijena_ukupno,
        mc.stavka_id,
        s.naziv                    as stavka_naziv,
        mc.korisnika_od,
        mc.korisnika_do,
        mc.valid
    from
        sif_moduli_cijene     mc
        left join sif_moduli            m on mc.modul_id = m.id
        left join sif_intervali         i on mc.interval_id = i.id
        left join accounting.sec_stavke s on mc.stavka_id = s.id
    order by
        m.id,
        i.id;

prompt
prompt Creating view VW_MODULI_ROLE
prompt ============================
prompt
create or replace force view sif.vw_moduli_role as
select
        mr.id,
        mr.modul_id,
        m.naziv as modul_naziv,
        m.sequence as modul_sequence,
        mr.rola_id,
        r.name  as rola_naziv,
        r.naziv as rola_sifra,
        mr.valid,
        mr.row_version,
        mr.created,
        mr.created_by,
        mr.updated,
        mr.updated_by
    from
        sif_moduli_role mr
        left join sif_moduli      m on mr.modul_id = m.id
        left join sif_role        r on mr.rola_id = r.id;

prompt
prompt Creating view VW_TIPOVI_KRETANJA_ROBE
prompt =====================================
prompt
create or replace force view sif.vw_tipovi_kretanja_robe as
select
        t.id,
        t.vrsta_naloga_id,
        vn.sifra as vrsta_naloga_sifra,
        vn.naziv as vrsta_naloga_naziv,
        t.sifra,
        t.naziv,
        t.valid,
        t.row_version,
        t.created,
        t.created_by,
        t.updated,
        t.updated_by
    from
        acc_tipovi_kretanja_robe t
        left join sif_vrste_naloga         vn on t.vrsta_naloga_id = vn.id;

prompt
prompt Creating view VW_TIPOVI_PRIVREMENIH_DOZVOLA
prompt ===========================================
prompt
create or replace force view sif.vw_tipovi_privremenih_dozvola as
select
        pd.id,
        pd.tip_dozvole_id,
        d.sifra as tip_dozvole_sifra,
        d.naziv as tip_dozvole_naziv,
        pd.sifra,
        pd.naziv,
        pd.valid,
        pd.row_version,
        pd.created,
        pd.created_by,
        pd.updated,
        pd.updated_by
    from
        sif.er_tipovi_privremenih_dozvola pd
        left join sif.er_tipovi_dozvola             d on pd.tip_dozvole_id = d.id;

prompt
prompt Creating view VW_UIO_TIP_DOKUMENTA_PDV_INDIKATORI
prompt =================================================
prompt
create or replace force view sif.vw_uio_tip_dokumenta_pdv_indikatori as
select tp.id, tp.uio_tip_dokumenta_id,t.code tp_code,tp.entitet_id,si.sifra entitet_sifra,t.naziv tp_naziv, tp.pdv_indikator_id, p.sifra pdv_indikator_sifra, p.naziv pdv_indikator_naziv,p.ui, tp.valid
from sif.uio_tip_dokumenta_pdv_indikatori tp
join sif.acc_uio_tipovi_dokumenata t on t.id=tp.uio_tip_dokumenta_id
join sif.acc_pdv_indikatori p on p.id=tp.pdv_indikator_id
left join sif.sif_entiteti si on si.id=tp.entitet_id
order by t.id,p.sifra;

prompt
prompt Creating view VW_UPUTSTVA
prompt =========================
prompt
create or replace force view sif.vw_uputstva as
select
        u.id,
        u.rola_id,
        r.name as rola_sifra,
        u.naziv,
        u.uputstvo,
        u.uputstvo_filename,
        u.uputstvo_mimetype,
        u.uputstvo_charset,
        u.uputstvo_lastupd,
        u.valid,
        u.row_version,
        u.created,
        u.created_by,
        u.updated,
        u.updated_by
    from
        sif_uputstva u
        left join sif_role     r on u.rola_id = r.id;

prompt
prompt Creating view VW_VRSTE_DOKUMENATA
prompt =================================
prompt
create or replace force view sif.vw_vrste_dokumenata as
select vd.id,
       vd.app_id,
       a.naziv                    as aplikacija,
       a.grupa                    as aplikacija_grupa,
       vd.acc_modul_id,
       m.sifra || ' - ' || m.opis as modul,
       vd.ooj_id,
       -- Razvrstava red: DEFAULT = šablon, KOPIJA = kopija šablona kod firme, VLASTITI = firma ga sama dodala
       case
           when vd.ooj_id is null then 'DEFAULT'
           when exists (select 1
                        from   sif.vrste_dokumenata d
                        where  d.ooj_id is null
                        and    d.app_id = vd.app_id
                        and    d.sifra  = vd.sifra) then 'KOPIJA'
           else 'VLASTITI'
       end                        as tip_zapisa,
       vd.sifra,
       vd.naziv,
       vd.opis,
       vd.vrsta_naloga_id,
       vn.sifra || ' - ' || vn.naziv as vrsta_naloga,
       vd.fiskalna_sifra,
       vd.tip_kretanja,
       -- Prevodi kod tipa kretanja u tekst za prikaz
       decode(vd.tip_kretanja, 'U', 'Ulaz', 'I', 'Izlaz', 'UI', 'Ulaz i izlaz') as tip_kretanja_naziv,
       vd.valid,
       vd.row_version,
       vd.created,
       vd.created_by,
       vd.updated,
       vd.updated_by
from       sif.vrste_dokumenata vd
join       sif.sif_aplikacije   a  on a.id  = vd.app_id
join       sif.acc_moduli       m  on m.id  = vd.acc_modul_id
left join  sif.sif_vrste_naloga vn on vn.id = vd.vrsta_naloga_id
;

prompt
prompt Creating view VW_VRSTE_FAKTURA
prompt ==============================
prompt
create or replace force view sif.vw_vrste_faktura as
select
        f.id,
        f.vrsta_naloga_id,
        n.naziv as vrsta_naloga_naziv,
        n.sifra as vrsta_naloga_sifra,
        f.naziv,
        f.sifra,
        f.fiskalizacija,
        f.valid,
        f.row_version,
        f.created,
        f.created_by,
        f.updated,
        f.updated_by
    from
        acc_vrste_faktura    f
        left join sif.sif_vrste_naloga n on f.vrsta_naloga_id = n.id;

prompt
prompt Creating package ACC_PKG
prompt ========================
prompt
create or replace package sif.acc_pkg as

    --------------------------------------------------------------
    -- procedures for table ACC_JEDINICE_MJERE
    --------------------------------------------------------------
    procedure get_jedinica_mjere (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_jedinica_mjere (
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure update_jedinica_mjere (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure delete_jedinica_mjere (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_VALUTA
    --------------------------------------------------------------

    function get_valuta_id (
        p_sifra in varchar2
    ) return number;

    procedure get_valuta (
        p_id          in number,
        p_naziv       out varchar2,
        p_kurs        out number,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure get_valuta (
        p_id   in number,
        p_kurs out number
    );

    procedure insert_valuta (
        p_naziv in varchar2,
        p_kurs  in number,
        p_sifra in varchar2
    );

    procedure update_valuta (
        p_id    in number,
        p_naziv in varchar2,
        p_kurs  in number,
        p_sifra in varchar2,
        p_valid in varchar2
    );

    procedure delete_valuta (
        p_id in number
    );

    function convert_bam (
        p_valuta_id in number,
        p_bam       in number,
        p_datum     in date default sysdate,
        p_kurs      in number default null
    ) return number;

    function convert_to_bam (
        p_valuta_id  in number,
        p_vrijednost in number,
        p_datum      in date default sysdate,
        p_kurs       in number default null
    ) return number;

    procedure get_valuta_history (
        p_valuta_id in number,
        p_datum     in date,
        p_kurs      out number
    );

    procedure insert_valuta_history (
        p_valuta_id in number,
        p_datum     in date,
        p_kurs      in number
    );
    
    --------------------------------------------------------------
    -- procedures for table ACC_VALUTA_KURSEVI
    --------------------------------------------------------------
    
   function get_kurs_na_dan (
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date
    ) return number;
    
    function convert_valuta_to_bam(
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date,
        p_iznos     in number
     ) return number;
     
    function convert_valuta_from_bam(
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date,
        p_iznos     in number
     ) return number;
    
    
   procedure get_acc_valuta_kursevi (
        p_id        in  number,
        p_valuta_id out number,
        p_ooj_id    out number,
        p_datum     out date,
        p_kurs      out number
    );

    procedure insert_acc_valuta_kursevi (
        p_valuta_id in  number,
        p_ooj_id    in  number,
        p_datum     in  date,
        p_kurs      in  number,
        p_id        out number
    );

    procedure update_acc_valuta_kursevi (
        p_id        in number,
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date,
        p_kurs      in number
    );

    procedure delete_acc_valuta_kursevi (
        p_id in number
    );
    
    
    
    

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_STAVKI
    --------------------------------------------------------------

    procedure get_tip_stavke (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_stavke (
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure update_tip_stavke (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure delete_tip_stavke (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_PLACANJA
    --------------------------------------------------------------

    procedure get_tip_placanja (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_placanja (
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_sifra in varchar2
    );

    procedure update_tip_placanja (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_placanja (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_KLIJENATA
    --------------------------------------------------------------

    procedure get_tip_klijenta (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_klijenta (
        p_naziv in varchar2 default null,
        p_sifra in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure update_tip_klijenta (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_sifra in varchar2 default null,
        p_valid in varchar2 default 'Y'
    );

    procedure delete_tip_klijenta (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_KONTNI_OKVIR_KLASE
    --------------------------------------------------------------
  
    --provjera da li OOJ ima definisan kontni plan-- djordjije 17.09.2026
    function get_kontni_plan_postoji (  
           p_ooj_id     in number
         ) return number;
    --

    function get_id_with_code_klasa (
        p_entitet_id in number,
        p_code       in varchar2
    ) return number;

    function get_id_with_code_klasa (
        p_ooj_id in number,
        p_code   in varchar2
    ) return number;

    function get_parent_id_with_code (
        p_entitet_id in number,
        p_ooj_id     in number,
        p_code       in varchar2,
        p_step       in number default 1
    ) return number;

    procedure get_kontni_okvir_klasa (
        p_id            in number,
        p_code          out varchar2,
        p_pdv_indikator out varchar2
    );

    procedure get_kontni_okvir_klasa (
        p_id                  in  number,
        p_entitet_id          out number,
        p_kontna_klasa_id     out number,
        p_code                out varchar2,
        p_naziv               out varchar2,
        p_os                  out varchar2,
        p_klijent             out varchar2,
        p_oj                  out varchar2,
        p_radnik              out varchar2,
        p_pdv_indikator       out varchar2,
        p_pdv_indikator_sifra out number,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2,
        p_otvorene_stavke     out varchar2
    );

    function get_kontni_okvir_klasa (
        p_id in number
    ) return varchar2;

    procedure insert_kontni_okvir_klasa (
        p_entitet_id          in number,
        p_kontna_klasa_id     in number,
        p_ooj_id              in number,
        p_code                in varchar2,
        p_naziv               in varchar2,
        p_os                  in varchar2,
        p_klijent             in varchar2,
        p_oj                  in varchar2,
        p_radnik              in varchar2,
        p_pdv_indikator       in varchar2,
        p_pdv_indikator_sifra in number,
        p_otvorene_stavke     in varchar2
    );

    procedure update_kontni_okvir_klasa (
        p_id                  in number,
        p_entitet_id          in number,
        p_kontna_klasa_id     in number,
        p_ooj_id              in number,
        p_code                in varchar2,
        p_naziv               in varchar2,
        p_os                  in varchar2,
        p_klijent             in varchar2,
        p_oj                  in varchar2,
        p_radnik              in varchar2,
        p_pdv_indikator       in varchar2,
        p_pdv_indikator_sifra in number,
        p_valid               in varchar2,
        p_otvorene_stavke     in varchar2
    );

    procedure delete_kontni_okvir_klasa (
        p_id in number
    );


    ---provjera unijetih podataka za konto--- 30.07.2026 djordjije
    function validate_konto_obavezna_polja (
        p_kontna_klasa_id     in number,
        p_ooj_id                 in number,
        p_klijent_id          in number,
        p_oj_id               in number,
        p_radnik_id           in number,
        p_pdv_indikator_id    in number,
        p_osnovno_sredstvo_id in number
    ) return varchar2;
    
    --- da li se za konto prate otvorene stavke --30.07.2026 djordjije
    function get_konto_otvorene_stavke (
             p_kontna_klasa_id in number
    ) return varchar2;
    
    --preuzimanje podrazumijevanog kontnog plana-- djordjije 17.09.2026
    procedure copy_defoult_kontni_plan (  
           p_ooj_id     in number
         );
    --
    --------------------------------------------------------------
    -- procedures for table ACC_OBRASCI_FAKTURA
    --------------------------------------------------------------

    procedure get_obrazac_fakture (
        p_id          in number,
        p_naziv       out varchar2,
        p_path        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_obrazac_fakture (
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2
    );

    procedure update_obrazac_fakture (
        p_id       in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2,
        p_valid    in varchar2
    );

    procedure delete_obrazac_fakture (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_UIO_TIP_DOKUMENTA
    --------------------------------------------------------------

    function get_uio_tip_dokumenta_id (
        p_ui   in varchar2,
        p_code in varchar2
    ) return number;

    procedure get_uio_tip_dokumenta (
        p_id          in number,
        p_code        out varchar2,
        p_naziv       out varchar2,
        p_ui          out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    -- Za automatski nalog za knjizenje u UIO
    procedure get_uio_tip_dokumenta (
        p_id   in number,
        p_code out varchar2
    );

    procedure insert_uio_tip_dokumenta (
        p_code  in varchar2,
        p_naziv in varchar2,
        p_ui    in varchar2
    );

    procedure update_uio_tip_dokumenta (
        p_id    in number,
        p_code  in varchar2,
        p_naziv in varchar2,
        p_ui    in varchar2,
        p_valid in varchar2
    );

    procedure delete_uio_tip_dokumenta (
        p_id in number
    );
    
    

    --------------------------------------------------------------
    -- procedures for table uio_tip_dokumenta_pdv_indikatori
    --------------------------------------------------------------    
    
    procedure get_uio_tip_dokumenta_pdv_indikatori (
        p_id                   in  number,
        p_uio_tip_dokumenta_id out number,
        p_pdv_indikator_id     out number,
        p_entitet_id           out number,
        p_valid                out varchar2
    );

    procedure insert_uio_tip_dokumenta_pdv_indikatori (
        p_id                   out number,
        p_uio_tip_dokumenta_id in  number,
        p_pdv_indikator_id     in  number,
        p_entitet_id           in  number
    );

    procedure update_uio_tip_dokumenta_pdv_indikatori (
        p_id                   in number,
        p_uio_tip_dokumenta_id in number,
        p_pdv_indikator_id     in number,
        p_entitet_id           in number
    );

    procedure delete_uio_tip_dokumenta_pdv_indikatori (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_AMORTIZACIONE_GRUPE
    --------------------------------------------------------------

    procedure get_amortizaciona_grupa (
        p_id          in number,
        p_ooj_id      out number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_procenat    out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_amortizaciona_grupa (
        p_ooj_id   in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_procenat in number
    );

    procedure update_amortizaciona_grupa (
        p_id       in number,
        p_ooj_id   in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_procenat in number,
        p_valid    in varchar2
    );

    procedure delete_amortizaciona_grupa (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_PRIHODA
    --------------------------------------------------------------

    procedure get_vrsta_prihoda (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_vrsta_prihoda (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_vrsta_prihoda (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_vrsta_prihoda (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_RASHODA
    --------------------------------------------------------------

    procedure get_vrsta_rashoda (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_vrsta_rashoda (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_vrsta_rashoda (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_vrsta_rashoda (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_IZVJESTAJI
    --------------------------------------------------------------

    procedure get_izvjestaj (
        p_id                  in number,
        p_tipovi_preduzetnika out varchar2,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_apif                out varchar2,
        p_sequence            out number,
        p_icon                out varchar2,
        p_tip                 out varchar2,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    );

    procedure get_izvjestaj (
        p_id    in number,
        p_sifra out varchar2,
        p_naziv out varchar2
    );

    procedure insert_izvjestaj (
        p_tipovi_preduzetnika in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_apif                in varchar2,
        p_sequence            in number,
        p_icon                in varchar2,
        p_tip                 in varchar2
    );

    procedure update_izvjestaj (
        p_id                  in number,
        p_tipovi_preduzetnika in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_apif                in varchar2,
        p_sequence            in number,
        p_icon                in varchar2,
        p_tip                 in varchar2,
        p_valid               in varchar2
    );

    procedure delete_izvjestaj (
        p_id in number
    );

    procedure insert_izvjestaj_preduzetnici (
        p_izvjestaj_id        in number,
        p_tipovi_preduzetnika in varchar2
    );

    procedure insert_izvjestaj_preduzetnik (
        p_izvjestaj_id        in number,
        p_tip_preduzetnika_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_FAKTURA
    --------------------------------------------------------------

    procedure get_vrsta_fakture (
        p_id              in number,
        p_vrsta_naloga_id out number,
        p_naziv           out varchar2,
        p_sifra           out varchar2,
        p_fiskalizacija   out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    );

    procedure get_vrsta_fakture (
        p_id                 in number,
        p_vrsta_naloga_sifra out varchar2
    );

    procedure insert_vrsta_fakture (
        p_vrsta_naloga_id in number,
        p_naziv           in varchar2,
        p_sifra           in varchar2,
        p_fiskalizacija   in varchar2
    );

    procedure update_vrsta_fakture (
        p_id              in number,
        p_vrsta_naloga_id in number,
        p_naziv           in varchar2,
        p_sifra           in varchar2,
        p_fiskalizacija   in varchar2,
        p_valid           in varchar2
    );

    procedure delete_vrsta_fakture (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_GRUPE_STAVKI
    --------------------------------------------------------------

    procedure get_grupa_stavke (
        p_id          in number,
        p_ooj_id      out number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    function insert_grupa_stavke (
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2
    ) return number;

    procedure update_grupa_stavke (
        p_id     in number,
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_valid  in varchar2
    );

    procedure delete_grupa_stavke (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_GRUPE_STAVKI_KONTA
    --------------------------------------------------------------

    procedure get_grupa_stavke_konta (
        p_grupa_stavke_id in number,
        p_tip_kretanja_id in number,
        p_kontna_klasa_id out number,
        p_tip_stavke      out varchar2
    );

    procedure insert_grupa_stavke_konta (
        p_grupa_stavke_id in number,
        p_kontna_klasa_id in number,
        p_tip_kretanja_id in number,
        p_tip_stavke      in varchar2
    );

    procedure update_grupa_stavke_konta (
        p_id              in number,
        p_grupa_stavke_id in number,
        p_kontna_klasa_id in number,
        p_tip_kretanja_id in number,
        p_tip_stavke      in varchar2
    );

    procedure delete_grupa_stavke_konta (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_ZAVISNI_TROSKOVI
    --------------------------------------------------------------

    procedure get_zavisan_trosak (
        p_id              in number,
        p_kontna_klasa_id out number,
        p_sifra           out varchar2,
        p_naziv           out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    );

    procedure insert_zavisan_trosak (
        p_kontna_klasa_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2
    );

    procedure update_zavisan_trosak (
        p_id              in number,
        p_kontna_klasa_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_valid           in varchar2
    );

    procedure delete_zavisan_trosak (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_KRETANJA_ROBE
    --------------------------------------------------------------

    function get_tip_kretanja_robe_id (
        p_sifra in varchar2
    ) return number;

    procedure get_tip_kretanja_robe (
        p_id    in number,
        p_sifra out varchar2
    );

    procedure get_tip_kretanja_robe (
        p_id              in number,
        p_vrsta_naloga_id out number,
        p_sifra           out varchar2,
        p_naziv           out varchar2,
        p_tip_kretanja    out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    );

    procedure insert_tip_kretanja_robe (
        p_vrsta_naloga_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_tip_kretanja    in varchar2
    );

    procedure update_tip_kretanja_robe (
        p_id              in number,
        p_vrsta_naloga_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_tip_kretanja    in varchar2,
        p_valid           in varchar2
    );

    procedure delete_tip_kretanja_robe (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_KLASE_OS
    --------------------------------------------------------------

    procedure copy_klase_os (
        p_new_ooj_id in number
    );

    procedure get_klasa_os (
        p_id             in number,
        p_ooj_id         out number,
        p_parent_id      out number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
        p_procenat       out number,
        p_vijek_trajanja out number,
        p_valid          out varchar2,
        p_row_version    out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2
    );

    procedure get_klasa_os (
        p_id             in number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
        p_procenat       out number,
        p_vijek_trajanja out number
    );

    procedure get_klasa_os (
        p_id             in number,
        p_procenat       out number,
        p_vijek_trajanja out number
    );

    procedure get_klasa_os (
        p_id    in number,
        p_naziv out varchar2
    );

    function insert_klasa_os (
        p_ooj_id         in number,
        p_parent_id      in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_procenat       in number,
        p_vijek_trajanja in number
    ) return number;

    procedure update_klasa_os (
        p_id             in number,
        p_ooj_id         in number,
        p_parent_id      in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_procenat       in number,
        p_vijek_trajanja in number,
        p_valid          in varchar2
    );

    procedure delete_klasa_os (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_KLASE_OS_KONTA
    --------------------------------------------------------------

    function get_klasa_os_kontna_klasa_id (
        p_klasa_id in number,
        p_sifra    in varchar2
    ) return number;

    procedure insert_klasa_os_konta (
        p_transakcija_id  in number,
        p_klasa_id        in number,
        p_kontna_klasa_id in number
    );

    procedure update_klasa_os_konta (
        p_id              in number,
        p_transakcija_id  in number,
        p_klasa_id        in number,
        p_kontna_klasa_id in number
    );

    procedure delete_klasa_os_konta (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_TRANSAKCIJE_OS
    --------------------------------------------------------------

    function get_transakcija_id (
        p_sifra in varchar2
    ) return number;

    procedure get_transakcija_os (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_transakcija_os (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_transakcija_os (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_transakcija_os (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_PDV_INDIKATORI
    --------------------------------------------------------------

    function get_pdv_indikator_id (
        p_ui    in varchar2,
        p_sifra in varchar2
    ) return number;

    procedure get_pdv_indikator (
        p_id                  in number,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_opis                out varchar2,
        p_vrijednost          out number,
        p_ui                  out varchar2,
        p_kontna_klasa_prefix out varchar2,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    );

    procedure get_pdv_indikator (
        p_id         in number,
        p_vrijednost out number
    );

    procedure get_pdv_indikator (
        p_id                  in number,
        p_sifra               out varchar2,
        p_kontna_klasa_prefix out varchar2
    );

    procedure insert_pdv_indikator (
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_vrijednost          in number,
        p_ui                  in varchar2,
        p_kontna_klasa_prefix in varchar2
    );

    procedure update_pdv_indikator (
        p_id                  in number,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_vrijednost          in number,
        p_ui                  in varchar2,
        p_kontna_klasa_prefix in varchar2,
        p_valid               in varchar2
    );

    procedure delete_pdv_indikator (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_IZVJESTAJI_AOP
    --------------------------------------------------------------

    procedure insert_izvjestaj_aop (
        p_izvjestaj_id in number,
        p_naziv        in varchar2,
        p_aop          in varchar2,
        p_tip          in varchar2
    );

    procedure update_izvjestaj_aop (
        p_id           in number,
        p_izvjestaj_id in number,
        p_naziv        in varchar2,
        p_aop          in varchar2,
        p_tip          in varchar2
    );

    procedure delete_izvjestaj_aop (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_AOP_KONTA
    --------------------------------------------------------------

    procedure insert_aop_konto (
        p_aop_id          in number,
        p_kontna_klasa_id in number,
        p_tip             in varchar2,
        p_polje           in varchar2,
        p_sum_tip         in varchar2
    );

    procedure update_aop_konto (
        p_id              in number,
        p_aop_id          in number,
        p_kontna_klasa_id in number,
        p_tip             in varchar2,
        p_polje           in varchar2,
        p_sum_tip         in varchar2
    );

    procedure delete_aop_konto (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_AOP_GRUPE
    --------------------------------------------------------------

    procedure insert_aop_grupa (
        p_aop_id  in number,
        p_sum_id  in number,
        p_sum_tip in varchar2
    );

    procedure update_aop_grupa (
        p_id      in number,
        p_aop_id  in number,
        p_sum_id  in number,
        p_sum_tip in varchar2
    );

    procedure delete_aop_grupa (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_AUTOMATSKA_KNJIZENJA
    --------------------------------------------------------------

    procedure get_automatsko_knjizenje (
        p_id               in number,
        p_vrsta_fakture_id out number,
        p_naziv            out varchar2,
        p_sifra            out varchar2,
        p_valid            out varchar2,
        p_row_version      out number,
        p_created          out date,
        p_created_by       out varchar2,
        p_updated          out date,
        p_updated_by       out varchar2
    );

    procedure insert_automatsko_knjizenje (
        p_vrsta_fakture_id in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2
    );

    procedure update_automatsko_knjizenje (
        p_id               in number,
        p_vrsta_fakture_id in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_valid            in varchar2
    );

    procedure delete_automatsko_knjizenje (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_CHART
    --------------------------------------------------------------

    procedure get_chart (
        p_id           in number,
        p_sifra        out varchar2,
        p_naziv        out varchar2,
        p_valid        out varchar2,
        p_kontna_klasa out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    );

    procedure get_chart (
        p_id    in number,
        p_sifra out varchar2,
        p_naziv out varchar2
    );

    function insert_chart (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) return number;

    procedure update_chart (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_chart (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table ACC_CHART_KONTA
    --------------------------------------------------------------

    procedure insert_chart_konto (
        p_chart_id     in number,
        p_kontna_klasa in varchar2
    );
    
    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_SKLADISTA
    --------------------------------------------------------------

    procedure get_tip_skladista (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_skladista (
        p_naziv in varchar2,
        p_sifra in varchar2
    );

    procedure update_tip_skladista (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_skladista (
        p_id in number
    );
    
    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_CIJENA
    --------------------------------------------------------------

    procedure get_tip_cijena (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_cijena (
        p_naziv in varchar2,
        p_sifra in varchar2
    );

    procedure update_tip_cijena (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_cijena (
        p_id in number
    );
    
    --------------------------------------------------------------
    -- procedures for table ACC_STATUSI
    --------------------------------------------------------------

    function get_status_id (
        p_sifra in varchar2
    ) return number;

    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_color_code  out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_color_code in varchar2,
        p_opis       in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_color_code in varchar2,
        p_opis       in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );
    
    
    --------------------------------
    -- procedures for table ACC_MODULI
    --------------------------------
    procedure get_acc_moduli (
        p_id     in  number,
        p_sifra  out varchar2,
        p_opis   out varchar2,
        p_valid  out varchar2
    );

    procedure insert_acc_moduli (
        p_sifra  in  varchar2,
        p_opis   in  varchar2,
        p_id     out number
    );

    procedure update_acc_moduli (
        p_id     in number,
        p_sifra  in number,
        p_opis   in varchar2,
        p_valid  in varchar2
    );

    procedure delete_acc_moduli (
        p_id in number
    );
    --------------------------------
    -- procedures for table ACC_MJESTA_TROSKA
    --------------------------------
    
    procedure get_acc_mjesta_troska (
        p_id        in  number,
        p_ooj_id    out number,
        p_sifra     out varchar2,
        p_naziv     out varchar2,
        p_nad_id    out number,
        p_oj_id     out number,
        p_valid     out varchar2,
        p_radnik_id out number 
    );
    
    procedure insert_acc_mjesta_troska (
        p_ooj_id    in  number,
        p_sifra     in  varchar2,
        p_naziv     in  varchar2,
        p_nad_id    in  number   default null,
        p_oj_id     in  number   default null,
        p_valid     in  varchar2 default 'Y',
        p_radnik_id in  number   default null,
        p_id        out number
    );
    procedure update_acc_mjesta_troska (
        p_id        in number,
        p_ooj_id    in number,
        p_sifra     in varchar2,
        p_naziv     in varchar2,
        p_nad_id    in number,
        p_oj_id     in number,
        p_valid     in varchar2,
        p_radnik_id in number
    );
    procedure delete_acc_mjesta_troska (
        p_id in number
    );
    
    --------------------------------
    -- procedures for table ACC_RADNICI
    --------------------------------
 
    procedure get_acc_radnici (
        p_id            in  number,
        p_ooj_id        out number,
        p_interni_broj  out varchar2,
        p_ime           out varchar2,
        p_prezime       out varchar2,
        p_email         out varchar2,
        p_oj_id         out number,
        p_valid         out varchar2
    );
 
    procedure insert_acc_radnici (
        p_ooj_id        in  number,
        p_interni_broj  in  varchar2 default null,
        p_ime           in  varchar2,
        p_prezime       in  varchar2,
        p_email         in  varchar2 default null,
        p_oj_id         in  number   default null,
        p_valid         in  varchar2 default 'Y',
        p_id            out number
    );
 
    procedure update_acc_radnici (
        p_id            in number,
        p_ooj_id        in number,
        p_interni_broj  in varchar2,
        p_ime           in varchar2,
        p_prezime       in varchar2,
        p_email         in varchar2,
        p_oj_id         in number,
        p_valid         in varchar2
    );
 
    procedure delete_acc_radnici (
        p_id in number
    );
    
    
   --------------------------------
    -- procedures for table VRSTE_DOKUMENATA
   --------------------------------
     
    procedure get_vrste_dokumenata (
    p_id              in  number,
    p_app_id          out number,
    p_acc_modul_id    out number,
    p_ooj_id          out number,
    p_sifra           out varchar2,
    p_naziv           out varchar2,
    p_opis            out varchar2,
    p_vrsta_naloga_id out number,
    p_fiskalna_sifra  out varchar2,
    p_tip_kretanja    out varchar2,
    p_valid           out varchar2
    );

    function get_vd_sifra (
        p_id in number
    ) return varchar2;

    procedure insert_vrste_dokumenata (
        p_app_id          in number,
        p_acc_modul_id    in number,
        p_ooj_id          in number default null,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_opis            in varchar2 default null,
        p_vrsta_naloga_id in number default null,
        p_fiskalna_sifra  in varchar2 default null,
        p_tip_kretanja    in varchar2 default null,
        p_valid           in varchar2 default 'Y',
        p_id              out number
    );

    procedure update_vrste_dokumenata (
        p_id              in number,
        p_app_id          in number,
        p_acc_modul_id    in number,
        p_ooj_id          in number default null,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_opis            in varchar2 default null,
        p_vrsta_naloga_id in number default null,
        p_fiskalna_sifra  in varchar2 default null,
        p_tip_kretanja    in varchar2 default null,
        p_valid           in varchar2 default 'Y'
    );

    procedure delete_vrste_dokumenata (
        p_id in number
    );
 
end acc_pkg;
/

prompt
prompt Creating package ANKETE_PKG
prompt ===========================
prompt
create or replace package sif.ankete_pkg is

    -- Tipovi obavjestenja
    procedure get_tip_obavjestenja (
        p_id          in number,
        p_naziv       out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_obavjestenja (
        p_naziv      in varchar2,
        p_color_code in varchar2
    );

    procedure update_tip_obavjestenja (
        p_id         in number,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_tip_obavjestenja (
        p_id in number
    );

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

end ankete_pkg;
/

prompt
prompt Creating package BOLOVANJE_PKG
prompt ==============================
prompt
create or replace package sif.bolovanje_pkg is

    -- Status
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    -- Tip
    procedure get_tip (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    -- Prisutnosti
    procedure get_prisutnost (
        p_id                        in number,
        p_evidencija_prisutnosti_id out number,
        p_naziv                     out varchar2,
        p_code                      out varchar2,
        p_valid                     out varchar2,
        p_row_version               out number,
        p_created                   out date,
        p_created_by                out varchar2,
        p_updated                   out date,
        p_updated_by                out varchar2
    );

    procedure insert_prisutnost (
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_code                      in varchar2
    );

    procedure update_prisutnost (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_code                      in varchar2,
        p_valid                     in varchar2
    );

    procedure delete_prisutnost (
        p_id in number
    );

end bolovanje_pkg;
/

prompt
prompt Creating package BUDZET_PKG
prompt ===========================
prompt
create or replace package sif.budzet_pkg is

    -- Statusi
    function get_status_with_sifra (
        p_sifra in varchar2
    ) return number;

    procedure get_status (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

end budzet_pkg;
/

prompt
prompt Creating package CMS_PKG
prompt ========================
prompt
create or replace package sif.cms_pkg is

    --SIF_STATUS

    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

    --SIF_ALATI

    procedure get_alat (
        p_id            in number,
        p_naziv         out varchar2,
        p_support_email out varchar2,
        p_link_alati    out varchar2,
        p_valid         out varchar2,
        p_row_version   out number,
        p_created       out date,
        p_created_by    out varchar2,
        p_updated       out date,
        p_updated_by    out varchar2
    );

    procedure insert_alat (
        p_naziv         in varchar2,
        p_support_email in varchar2,
        p_link_alati    in varchar2
    );

    procedure update_alat (
        p_id            in number,
        p_naziv         in varchar2,
        p_support_email in varchar2,
        p_link_alati    in varchar2,
        p_valid         in varchar2
    );

    procedure delete_alat (
        p_id in number
    );

    --SIF_TLD

    procedure get_tld (
        p_id          in number,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tld (
        p_naziv in varchar2
    );

    procedure update_tld (
        p_id    in number,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tld (
        p_id in number
    );

    --SIF_REGISTRARI

    procedure get_registrar (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_web         out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_registrar (
        p_naziv in varchar2,
        p_email in varchar2,
        p_web   in varchar2
    );

    procedure update_registrar (
        p_id    in number,
        p_naziv in varchar2,
        p_email in varchar2,
        p_web   in varchar2,
        p_valid in varchar2
    );

    procedure delete_registrar (
        p_id in number
    );

    --SIF_REGISTRAR_TLD

    procedure get_registrar_tld (
        p_id           in number,
        p_registrar_id out number,
        p_tld_id       out number,
        p_valid        out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    );

    procedure insert_registrar_tld (
        p_registrar_id in number,
        p_tld_id       in number
    );

    procedure update_registrar_tld (
        p_id           in number,
        p_registrar_id in number,
        p_tld_id       in number,
        p_valid        in varchar2
    );

    procedure delete_registrar_tld (
        p_id in number
    );

end cms_pkg;
/

prompt
prompt Creating package CS_PKG
prompt =======================
prompt
CREATE OR REPLACE PACKAGE SIF.cs_pkg IS

    -- Kategorija vozila
    PROCEDURE get_kategorija_vozila (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    );

    PROCEDURE insert_kategorija_vozila (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_kategorija_vozila (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_kategorija_vozila (
        p_id IN NUMBER
    );

    -- Proizvodjaci vozila
    PROCEDURE get_proizvodjac_vozila (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    );

    PROCEDURE insert_proizvodjac_vozila (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_proizvodjac_vozila (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_proizvodjac_vozila (
        p_id IN NUMBER
    );


    -- Modeli vozila
    PROCEDURE get_model_vozila (
        p_id             IN NUMBER,
        p_proizvodjac_id OUT NUMBER,
        p_sifra          OUT VARCHAR2,
        p_naziv          OUT VARCHAR2,
        p_valid          OUT VARCHAR2,
        p_row_version    OUT NUMBER,
        p_created        OUT DATE,
        p_created_by     OUT VARCHAR2,
        p_updated        OUT DATE,
        p_updated_by     OUT VARCHAR
    );

    PROCEDURE insert_model_vozila (
        p_proizvodjac_id IN NUMBER,
        p_sifra          IN VARCHAR2,
        p_naziv          IN VARCHAR2
    );

    PROCEDURE update_model_vozila (
        p_id             IN NUMBER,
        p_proizvodjac_id IN NUMBER,
        p_sifra          IN VARCHAR2,
        p_naziv          IN VARCHAR2,
        p_valid          IN VARCHAR2
    );

    PROCEDURE delete_model_vozila (
        p_id IN NUMBER
    );

    -- Tipovi goriva
    PROCEDURE get_tip_goriva (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_goriva (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_goriva (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_goriva (
        p_id IN NUMBER
    );

    -- Tipovi mjenjaca
    PROCEDURE get_tip_mjenjaca (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    );

    PROCEDURE insert_tip_mjenjaca (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_mjenjaca (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_mjenjaca (
        p_id IN NUMBER
    );


    -- Tipovi pogona
    PROCEDURE get_tip_pogona (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    );

    PROCEDURE insert_tip_pogona (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_pogona (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_pogona (
        p_id IN NUMBER
    );

    -- Proizvodjaci
    PROCEDURE get_proizvodjac (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    );

    PROCEDURE insert_proizvodjac (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_proizvodjac (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_proizvodjac (
        p_id IN NUMBER
    );

    -- Tipovi rada
    PROCEDURE get_tip_rada (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
        
    );
    PROCEDURE insert_tip_rada (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_rada (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_rada (
        p_id IN NUMBER
    );

    -- Statusi
    PROCEDURE get_status (
        p_id         IN NUMBER,
        p_sifra      OUT VARCHAR2,
        p_naziv      OUT VARCHAR2,
        p_color_code OUT VARCHAR2,
        p_icon       OUT VARCHAR2,
        p_valid      OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
        
    );

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_icon       IN VARCHAR2
    );

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_valid      IN VARCHAR2
    );

    PROCEDURE delete_status (
        p_id IN NUMBER
    );

END cs_pkg;
/

prompt
prompt Creating package DMS_PKG
prompt ========================
prompt
create or replace package sif.dms_pkg as

  --SIF_PRISTUP

    procedure get_pristup (
        p_id          in number,
        p_ooj_id      out number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_sequence    out number,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_pristup (
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_sifra    in varchar2,
        p_sequence in number,
        p_opis     in varchar2
    );

    procedure update_pristup (
        p_id       in number,
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_sifra    in varchar2,
        p_sequence in number,
        p_opis     in varchar2,
        p_valid    in varchar2
    );

    procedure delete_pristup (
        p_id in number
    );

end dms_pkg;
/

prompt
prompt Creating package DYNAMIC_PKG
prompt ============================
prompt
create or replace package sif.dynamic_pkg as

    /*
    
        c001 - item_name
        c002 - label
        c003 - item_type
        c004 - idx
        c005 - value
        c006 - options_display (separated by :)
        c007 - options_return (separated by :)
        c008 - required
    
    */

    function generate_item_name (
        p_page_id in number,
        p_code    in varchar2
    ) return varchar2;

    function generate_hidden_items (
        p_collection_name in varchar2
    ) return varchar2;

    function generate_dynamic_items (
        p_collection_name in varchar2
    ) return clob;

    procedure handle_dynamic_items (
        p_collection_name in varchar2
    );

end dynamic_pkg;
/

prompt
prompt Creating package EI_PKG
prompt =======================
prompt
create or replace package sif.ei_pkg is
    function get_tip_sql_query (
        p_id in number
    ) return clob;

    function get_tip_opis (
        p_id in number
    ) return varchar2;

    function get_tip_file_type (
        p_id in number
    ) return varchar2;

    procedure get_tip_ei (
        p_id        in number,
        p_sifra     out varchar2,
        p_sql_query out clob
    );

    procedure get_tip_ei (
        p_id                  in number,
        p_rola_id             out number,
        p_ei                  out varchar2,
        p_data_load_static_id out varchar2,
        p_file_type           out varchar2,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_opis                out varchar2,
        p_sql_query           out clob,
        p_valid               out varchar2,
        p_row_version         out number,
        p_created             out date,
        p_created_by          out varchar2,
        p_updated             out date,
        p_updated_by          out varchar2
    );

    procedure insert_tip_ei (
        p_rola_id             in number,
        p_ei                  in varchar2,
        p_data_load_static_id in varchar2,
        p_file_type           in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_sql_query           in clob
    );

    procedure update_tip_ei (
        p_id                  in number,
        p_rola_id             in number,
        p_ei                  in varchar2,
        p_data_load_static_id in varchar2,
        p_file_type           in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_sql_query           in clob,
        p_valid               in varchar2
    );

    procedure delete_tip_ei (
        p_id in number
    );

end ei_pkg;
/

prompt
prompt Creating package ER_PKG
prompt =======================
prompt
create or replace package sif.er_pkg is

    -- Tipovi ribolova
    procedure get_tip_ribolova (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_ribolova (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_ribolova (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_ribolova (
        p_id in number
    );

    -- Kategorije ribolovaca
    procedure get_kategorija_ribolovca (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_kategorija_ribolovca (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_kategorija_ribolovca (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_kategorija_ribolovca (
        p_id in number
    );

    -- Tipovi dozvola
    function get_tip_dozvole_sifra (
        p_id in number
    ) return varchar2;

    procedure get_tip_dozvole (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_dozvole (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_dozvole (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_dozvole (
        p_id in number
    );

    -- Tipovi voda
    procedure get_tip_vode (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_revir       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_vode (
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_revir in varchar2
    );

    procedure update_tip_vode (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_revir in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_vode (
        p_id in number
    );

    -- Riblje vrste
    procedure get_riblja_vrsta (
        p_id          in number,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_riblja_vrsta (
        p_naziv in varchar2
    );

    procedure update_riblja_vrsta (
        p_id    in number,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_riblja_vrsta (
        p_id in number
    );

    -- Sabloni
    function get_sablon_sifra (
        p_id in number
    ) return varchar2;

    procedure get_sablon (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_sablon (
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_slika in varchar2
    );

    procedure update_sablon (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_slika in varchar2,
        p_valid in varchar2
    );

    procedure delete_sablon (
        p_id in number
    );

    -- Tipovi privremenih dozvola
    function get_tip_privremene_dozvole_sifra (
        p_id in number
    ) return varchar2;

    procedure get_tip_privremene_dozvole (
        p_id             in number,
        p_tip_dozvole_id out number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
        p_valid          out varchar2,
        p_row_version    out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2
    );

    procedure insert_tip_privremene_dozvole (
        p_tip_dozvole_id in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2
    );

    procedure update_tip_privremene_dozvole (
        p_id             in number,
        p_tip_dozvole_id in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_valid          in varchar2
    );

    procedure delete_tip_privremene_dozvole (
        p_id in number
    );

    -- Tipovi zabrana
    procedure get_tip_zabrane (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_zabrane (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_zabrane (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_zabrane (
        p_id in number
    );

    -- Tipovi clanskih karti
    procedure get_tip_clanske_karte (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_clanske_karte (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_clanske_karte (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_clanske_karte (
        p_id in number
    );

    -- Tipovi cijena
    procedure get_tip_cijene (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure get_tip_cijene (
        p_id    in number,
        p_sifra out varchar2
    );

    procedure insert_tip_cijene (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_cijene (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_cijene (
        p_id in number
    );

    -- Izvjestaji
    procedure get_izvjestaj (
        p_id    in number,
        p_sifra out varchar2
    );

    function get_izvjestaj (
        p_id in number
    ) return clob;

    procedure get_izvjestaj (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_sequence    out number,
        p_opis        out clob,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_izvjestaj (
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_opis     in clob
    );

    procedure update_izvjestaj (
        p_id       in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_opis     in clob,
        p_valid    in varchar2
    );

    procedure delete_izvjestaj (
        p_id in number
    );

end er_pkg;
/

prompt
prompt Creating package FV_PKG
prompt =======================
prompt
create or replace package sif.fv_pkg is
    -- vrste vozila
    procedure get_vrsta_vozila (
        p_id    in number,
        p_naziv out varchar2,
        p_opis  out varchar2,
        p_valid out varchar2
    );

    procedure ce_vrsta_vozila (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure obrisi_vrstu_vozila (
        p_id in number
    );

    -- vrste servisa
    procedure get_vrsta_servisa (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    );

    procedure ce_vrsta_servisa (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure obrisi_vrstu_servisa (
        p_id in number
    );

    -- tipovi rezervacije
    procedure get_tip_rezervacije (
        p_id    in number,
        p_naziv out varchar2,
        p_opis  out varchar2,
        p_valid out varchar2
    );

    procedure ce_tip_rezervacije (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure obrisi_tip_rezervacije (
        p_id in number
    );

end fv_pkg;
/

prompt
prompt Creating package GO_PKG
prompt =======================
prompt
create or replace package sif.go_pkg is

    -- Tipovi parametara
    procedure unos_tip_param_go (
        p_opis  in varchar2,
        p_naziv in varchar2
    );

    procedure izmjena_tip_param_go (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2
    );

    -- Parametri
    procedure unos_parametara (
        p_naziv            in varchar2,
        p_tip_parametra_id in number,
        p_param_od         in varchar2,
        p_param_do         in varchar2,
        p_vrijednost       in varchar2
    );

    procedure izmjena_parametara (
        p_id               in number,
        p_naziv            in varchar2,
        p_tip_parametra_id in number,
        p_param_od         in varchar2,
        p_param_do         in varchar2,
        p_vrijednost       in varchar2,
        p_vazi             in varchar2
    );

end go_pkg;
/

prompt
prompt Creating package GROBLJE_PKG
prompt ============================
prompt
create or replace package sif.groblje_pkg as
    procedure get_gr_tip_mjesta (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure get_gr_tip_mjesta (
        p_id    in number,
        p_sifra out varchar2
    );

    procedure insert_gr_tip_mjesta (
        p_naziv in varchar2,
        p_sifra in varchar2
    );

    procedure update_gr_tip_mjesta (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    );

    procedure delete_gr_tip_mjesta (
        p_id in number
    );

end groblje_pkg;
/

prompt
prompt Creating package HD_PKG
prompt =======================
prompt
CREATE OR REPLACE PACKAGE SIF.hd_pkg IS

    -- Statusi
    FUNCTION get_status (
        p_sifra IN VARCHAR2
    ) RETURN NUMBER;
    
    PROCEDURE get_status (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    );

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    );

    PROCEDURE delete_status (
        p_id IN NUMBER
    );

    -- Tipovi loga
    FUNCTION get_tip_loga (
        p_sifra IN VARCHAR2
    ) RETURN NUMBER;
    
    PROCEDURE get_tip_loga (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_loga (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_loga (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_loga (
        p_id IN NUMBER
    );

END hd_pkg;
/

prompt
prompt Creating package HR_PKG
prompt =======================
prompt
create or replace package sif.hr_pkg is

    -- Praznici
    procedure unos_praznika (
        p_naziv      in varchar2,
        p_datum_od   in date,
        p_datum_do   in date,
        p_entitet_id in number,
        p_constant   in varchar2
    );

    procedure izmjena_praznika (
        p_id         in number,
        p_naziv      in varchar2,
        p_datum_od   in date,
        p_datum_do   in date,
        p_entitet_id in number,
        p_constant   in varchar2
    );

    procedure izbrisi_praznik (
        p_id in number
    );

    -- PVS tipovi

    -- Evidencija prisutnosti
    procedure get_ev_prisutnosti (
        p_id          in number,
        p_naziv       out varchar2,
        p_oznaka      out varchar2,
        p_koeficijent out number,
        p_icon        out varchar2,
        p_color_code  out varchar2,
        p_visible     out varchar2,
        p_sequence    out number,
        p_valid       out varchar2
    );

    procedure insert_ev_prisutnosti (
        p_naziv       in varchar2,
        p_oznaka      in varchar2,
        p_koeficijent in number,
        p_icon        in varchar2,
        p_color_code  in varchar2,
        p_visible     in varchar2,
        p_sequence    in number
    );

    procedure update_ev_prisutnosti (
        p_id          in number,
        p_naziv       in varchar2,
        p_oznaka      in varchar2,
        p_koeficijent in number,
        p_icon        in varchar2,
        p_color_code  in varchar2,
        p_visible     in varchar2,
        p_sequence    in number,
        p_valid       in varchar2
    );

    -- Sihtlista statusi

    -- Tipovi dokumenata
    procedure get_tip_dokumenta (
        p_id            in number,
        p_tip_dokumenta out varchar2,
        p_naziv         out varchar2,
        p_opis          out varchar2,
        p_valid         out varchar2,
        p_row_version   out number,
        p_created       out date,
        p_created_by    out varchar2,
        p_updated       out date,
        p_updated_by    out varchar2
    );

    procedure insert_tip_dokumenta (
        p_tip_dokumenta in varchar2,
        p_naziv         in varchar2,
        p_opis          in varchar2
    );

    procedure update_tip_dokumenta (
        p_id            in number,
        p_tip_dokumenta in varchar2,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_valid         in varchar2
    );

    -- Tipovi prijava
    procedure get_tip_prijave (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_prijave (
        p_naziv in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_prijave (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_prijave (
        p_id in number
    );

    -- Tipovi rada
    procedure get_tip_rada (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_rada (
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    );

    procedure update_tip_rada (
        p_id         in number,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    );

    procedure delete_tip_rada (
        p_id in number
    );

    -- Tipovi ugovora

    -- Obrazovanje
    procedure get_obrazovanje (
        p_id    in number,
        p_sifra out varchar2
    );
    
    procedure get_obrazovanje (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_sequence    out number,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_obrazovanje (
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number
    );

    procedure update_obrazovanje (
        p_id       in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_valid    in varchar2
    );

    procedure delete_obrazovanje (
        p_id in number
    );

    -- Tipovi radnog vremena
    procedure get_tip_radnog_vremena (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_radnog_vremena (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_radnog_vremena (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_radnog_vremena (
        p_id in number
    );

    -- Tipovi radnog odnosa
    procedure get_tip_radnog_odnosa (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_radnog_odnosa (
        p_sifra in varchar2,
        p_naziv in varchar2
    );

    procedure update_tip_radnog_odnosa (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_radnog_odnosa (
        p_id in number
    );

    -- Obrasci memoranduma
    procedure get_obrazac_memoranduma (
        p_id          in number,
        p_naziv       out varchar2,
        p_path        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_obrazac_memoranduma (
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2
    );

    procedure update_obrazac_memoranduma (
        p_id       in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2,
        p_valid    in varchar2
    );

    procedure delete_obrazac_memoranduma (
        p_id in number
    );

    -- Tipovi zahtjeva
    procedure get_tip_zahtjeva (
        p_id                        in number,
        p_evidencija_prisutnosti_id out number,
        p_naziv                     out varchar2,
        p_opis                      out varchar2,
        p_valid                     out varchar2,
        p_row_version               out number,
        p_created                   out date,
        p_created_by                out varchar2,
        p_updated                   out date,
        p_updated_by                out varchar2
    );

    procedure insert_tip_zahtjeva (
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_opis                      in varchar2
    );

    procedure update_tip_zahtjeva (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_opis                      in varchar2,
        p_valid                     in varchar2
    );

    procedure delete_tip_zahtjeva (
        p_id in number
    );

    -- Tipovi potvrda
    procedure get_tip_potvrde (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_potvrde (
        p_naziv in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_potvrde (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_potvrde (
        p_id in number
    );

    -- Tipovi ugovora
    procedure get_tip_ugovora (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_ugovora (
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_tip_ugovora (
        p_id         in number,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_tip_ugovora (
        p_id in number
    );

end hr_pkg;
/

prompt
prompt Creating package LMS_PKG
prompt ========================
prompt
CREATE OR REPLACE PACKAGE SIF.lms_pkg IS

    -- Tipovi kurseva
    FUNCTION get_tip_kursa (
        p_id IN NUMBER
    ) RETURN VARCHAR2;
    
    PROCEDURE get_tip_kursa (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_kursa (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    );

    PROCEDURE update_tip_kursa (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    );

    PROCEDURE delete_tip_kursa (
        p_id IN NUMBER
    );

    -- Tipovi lekcija
    FUNCTION get_tip_lekcije (
        p_id IN NUMBER
    ) RETURN VARCHAR2;
    
    PROCEDURE get_tip_lekcije (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_lekcije (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2
    );

    PROCEDURE update_tip_lekcije (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    );

    PROCEDURE delete_tip_lekcije (
        p_id IN NUMBER
    );

    -- Tipovi publike
    PROCEDURE get_tip_publike (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_publike (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_publike (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_publike (
        p_id IN NUMBER
    );

    -- Tipovi ispita
    PROCEDURE get_tip_ispita (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_tip_ispita (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    );

    PROCEDURE update_tip_ispita (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    );

    PROCEDURE delete_tip_ispita (
        p_id IN NUMBER
    );

    -- Kategorije
    PROCEDURE get_kategorija (
        p_id          IN NUMBER,
        p_parent_id   OUT NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_kategorija (
        p_parent_id IN NUMBER,
        p_sifra     IN VARCHAR2,
        p_naziv     IN VARCHAR2,
        p_icon      IN VARCHAR2
    );

    PROCEDURE update_kategorija (
        p_id        IN NUMBER,
        p_parent_id IN NUMBER,
        p_sifra     IN VARCHAR2,
        p_naziv     IN VARCHAR2,
        p_icon      IN VARCHAR2,
        p_valid     IN VARCHAR2
    );

    PROCEDURE delete_kategorija (
        p_id IN NUMBER
    );

    -- Statusi
    PROCEDURE get_status (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    );

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    );

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    );

    PROCEDURE delete_status (
        p_id IN NUMBER
    );

END lms_pkg;
/

prompt
prompt Creating package LPR_PKG
prompt ========================
prompt
create or replace package sif.lpr_pkg as
    
    -- statusi
    procedure get_status (
        p_id          in lpr_sif_statusi.id%type,
        p_naziv       out lpr_sif_statusi.naziv%type,
        p_valid       out lpr_sif_statusi.valid%type,
        p_created     out lpr_sif_statusi.created%type,
        p_created_by  out lpr_sif_statusi.created_by%type,
        p_updated     out lpr_sif_statusi.updated%type,
        p_updated_by  out lpr_sif_statusi.updated_by%type,
        p_row_version out lpr_sif_statusi.row_version%type
    );

    procedure insert_status (
        p_naziv in lpr_sif_statusi.naziv%type
    );

    procedure update_status (
        p_id    in lpr_sif_statusi.id%type,
        p_naziv in lpr_sif_statusi.naziv%type,
        p_valid in lpr_sif_statusi.valid%type
    );

    -- prioriteti
    procedure get_prioritet (
        p_id          in lpr_sif_prioriteti.id%type,
        p_naziv       out lpr_sif_prioriteti.naziv%type,
        p_opis        out lpr_sif_prioriteti.opis%type,
        p_vrijednost  out lpr_sif_prioriteti.vrijednost%type,
        p_valid       out lpr_sif_prioriteti.valid%type,
        p_created     out lpr_sif_prioriteti.created%type,
        p_created_by  out lpr_sif_prioriteti.created_by%type,
        p_updated     out lpr_sif_prioriteti.updated%type,
        p_updated_by  out lpr_sif_prioriteti.updated_by%type,
        p_row_version out lpr_sif_prioriteti.row_version%type
    );

    procedure insert_prioritet (
        p_naziv      in lpr_sif_prioriteti.naziv%type,
        p_opis       in lpr_sif_prioriteti.opis%type,
        p_vrijednost in lpr_sif_prioriteti.vrijednost%type
    );

    procedure update_prioritet (
        p_id         in lpr_sif_prioriteti.id%type,
        p_naziv      in lpr_sif_prioriteti.naziv%type,
        p_opis       in lpr_sif_prioriteti.opis%type,
        p_vrijednost in lpr_sif_prioriteti.vrijednost%type,
        p_valid      in lpr_sif_prioriteti.valid%type
    );

end lpr_pkg;
/

prompt
prompt Creating package MODULI_PKG
prompt ===========================
prompt
create or replace package sif.moduli_pkg as

    -- moduli
    procedure get_modul (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_icon        out varchar2,
        p_sequence    out varchar2,
        p_solo        out varchar2,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    );

    procedure insert_modul (
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_icon     in varchar2,
        p_sequence in varchar2,
        p_solo     in varchar2
    );

    procedure update_modul (
        p_id       in number,
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_icon     in varchar2,
        p_sequence in varchar2,
        p_solo     in varchar2,
        p_valid    in varchar2
    );

    procedure delete_modul (
        p_id in number
    );

    -- moduli role
    procedure get_modul_rola (
        p_id          in number,
        p_modul_id    out number,
        p_rola_id     out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    );

    procedure insert_modul_role (
        p_modul_id in number,
        p_role     in varchar2
    );

    procedure delete_modul_rola (
        p_modul_id in number,
        p_rola_id  in number
    );

    -- moduli cijene
    function get_modul_cijena_stavka_id (
        p_modul_id       in number,
        p_interval_id    in number,
        p_broj_korisnika in number
    ) return number;

    function get_modul_cijena (
        p_modul_id       in number,
        p_interval_id    in number,
        p_broj_korisnika in number
    ) return number;

    procedure get_modul_cijena (
        p_id           in number,
        p_modul_id     out number,
        p_interval_id  out number,
        p_cijena       out number,
        p_stavka_id    out number,
        p_korisnika_od out number,
        p_korisnika_do out number,
        p_valid        out varchar2,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2,
        p_row_version  out number
    );

    procedure insert_modul_cijena (
        p_modul_id     in number,
        p_interval_id  in number,
        p_cijena       in number,
        p_stavka_id    in number,
        p_korisnika_od in number,
        p_korisnika_do in number
    );

    procedure update_modul_cijena (
        p_id           in number,
        p_modul_id     in number,
        p_interval_id  in number,
        p_cijena       in number,
        p_stavka_id    in number,
        p_korisnika_od in number,
        p_korisnika_do in number
    );

    procedure delete_modul_cijena (
        p_id in number
    );

    -- Aplikacije
    procedure get_aplikacija (
        p_id                in number,
        p_required_modul_id out number,
        p_naziv             out varchar2,
        p_opis              out varchar2,
        p_icon              out varchar2,
        p_sequence          out varchar2,
        p_color_code        out varchar2,
        p_application_id    out number,
        p_hub               out varchar2,
        p_grupa             out varchar2,
        p_role              out varchar2,
        p_valid             out varchar2,
        p_created           out date,
        p_created_by        out varchar2,
        p_updated           out date,
        p_updated_by        out varchar2,
        p_row_version       out number
    );

    procedure get_aplikacija (
        p_id             in number,
        p_required_modul out varchar2,
        p_naziv          out varchar2,
        p_opis           out varchar2,
        p_icon           out varchar2,
        p_color_code     out varchar2
    );

    procedure insert_aplikacija (
        p_required_modul_id in number,
        p_naziv             in varchar2,
        p_opis              in varchar2,
        p_icon              in varchar2,
        p_sequence          in varchar2,
        p_color_code        in varchar2,
        p_application_id    in number,
        p_hub               in varchar2,
        p_grupa             in varchar2,
        p_role              in varchar2
    );

    procedure update_aplikacija (
        p_id                in number,
        p_required_modul_id in number,
        p_naziv             in varchar2,
        p_opis              in varchar2,
        p_icon              in varchar2,
        p_sequence          in varchar2,
        p_color_code        in varchar2,
        p_application_id    in number,
        p_hub               in varchar2,
        p_grupa             in varchar2,
        p_role              in varchar2,
        p_valid             in varchar2
    );

    procedure delete_aplikacija (
        p_id in number
    );

    -- Aplikacija role
    procedure insert_aplikacija_rola (
        p_sif_application_id in number,
        p_rola_id            in number
    );

    procedure insert_aplikacija_role (
        p_sif_application_id in number,
        p_role               in varchar2
    );

end moduli_pkg;
/

prompt
prompt Creating package OCI_PKG
prompt ========================
prompt
create or replace package sif.oci_pkg as
    procedure list_objects (
        p_collection_name in varchar2,
        p_bucket_name     in varchar2
    );

    procedure create_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    );

    procedure get_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    );

    procedure rename_object (
        p_bucket_name in varchar2,
        p_old_name    in varchar2,
        p_new_name    in varchar2
    );

    procedure delete_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    );

end oci_pkg;
/

prompt
prompt Creating package PL_PKG
prompt =======================
prompt
create or replace package sif.pl_pkg is
    procedure get_tip_ei (
        p_id          in number,
        p_ei          out varchar2,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_ei (
        p_ei    in varchar2,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_ei (
        p_id    in number,
        p_ei    in varchar2,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_ei (
        p_id in number
    );

end pl_pkg;
/

prompt
prompt Creating package PROJEKTI_PKG
prompt =============================
prompt
create or replace package sif.projekti_pkg is

    -- Nivo pristupa
    procedure get_nivo_pristupa (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_nivo_pristupa (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    );

    procedure update_nivo_pristupa (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_nivo_pristupa (
        p_id in number
    );

    -- Tip komentara
    function get_id_tip_komentara_with_sifra (
        p_sifra in varchar2
    ) return number;

    procedure get_tip_komentara (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_komentara (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_komentara (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_komentara (
        p_id in number
    );

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

    -- Pozadine
    procedure get_pozadina (
        p_id               in number,
        p_naziv            out varchar2,
        p_file_name        out varchar2,
        p_osnovna_pozadina out varchar2,
        p_valid            out varchar2,
        p_row_version      out number,
        p_created          out date,
        p_created_by       out varchar2,
        p_updated          out date,
        p_updated_by       out varchar2
    );

    procedure insert_pozadina (
        p_naziv            in varchar2,
        p_file_name        in varchar2,
        p_osnovna_pozadina in varchar2
    );

    procedure update_pozadina (
        p_id               in number,
        p_naziv            in varchar2,
        p_file_name        in varchar2,
        p_osnovna_pozadina in varchar2,
        p_valid            in varchar2
    );

    procedure delete_pozadina (
        p_id in number
    );

end projekti_pkg;
/

prompt
prompt Creating package PRU_PKG
prompt ========================
prompt
create or replace package sif.pru_pkg as
    
    -- razlozi neocijenivanja    
    procedure get_razlog_neocijenivanja (
        p_id          in pru_sif_razlozi_neocjenivanja.id%type,
        p_naziv       out pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis        out pru_sif_razlozi_neocjenivanja.opis%type,
        p_valid       out pru_sif_razlozi_neocjenivanja.valid%type,
        p_created     out pru_sif_razlozi_neocjenivanja.created%type,
        p_created_by  out pru_sif_razlozi_neocjenivanja.created_by%type,
        p_updated     out pru_sif_razlozi_neocjenivanja.updated%type,
        p_updated_by  out pru_sif_razlozi_neocjenivanja.updated_by%type,
        p_row_version out pru_sif_razlozi_neocjenivanja.row_version%type
    );

    procedure insert_razlog_neocijenivanja (
        p_naziv in pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis  in pru_sif_razlozi_neocjenivanja.opis%type
    );

    procedure update_razlog_neocijenivanja (
        p_id    in pru_sif_razlozi_neocjenivanja.id%type,
        p_naziv in pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis  in pru_sif_razlozi_neocjenivanja.opis%type,
        p_valid in pru_sif_razlozi_neocjenivanja.valid%type
    );

    -- statusi
    procedure get_status (
        p_id          in pru_sif_statusi.id%type,
        p_naziv       out pru_sif_statusi.naziv%type,
        p_opis        out pru_sif_statusi.opis%type,
        p_valid       out pru_sif_statusi.valid%type,
        p_created     out pru_sif_statusi.created%type,
        p_created_by  out pru_sif_statusi.created_by%type,
        p_updated     out pru_sif_statusi.updated%type,
        p_updated_by  out pru_sif_statusi.updated_by%type,
        p_row_version out pru_sif_statusi.row_version%type
    );

    procedure insert_status (
        p_naziv in pru_sif_statusi.naziv%type,
        p_opis  in pru_sif_statusi.opis%type
    );

    procedure update_status (
        p_id    in pru_sif_statusi.id%type,
        p_naziv in pru_sif_statusi.naziv%type,
        p_opis  in pru_sif_statusi.opis%type,
        p_valid in pru_sif_statusi.valid%type
    );

    -- intervali
    procedure get_interval (
        p_id           in pru_sif_intervali.id%type,
        p_naziv        out pru_sif_intervali.naziv%type,
        p_opis         out pru_sif_intervali.opis%type,
        p_broj_mjeseci out pru_sif_intervali.broj_mjeseci%type,
        p_valid        out pru_sif_intervali.valid%type,
        p_created      out pru_sif_intervali.created%type,
        p_created_by   out pru_sif_intervali.created_by%type,
        p_updated      out pru_sif_intervali.updated%type,
        p_updated_by   out pru_sif_intervali.updated_by%type,
        p_row_version  out pru_sif_intervali.row_version%type
    );

    procedure insert_interval (
        p_naziv        in pru_sif_intervali.naziv%type,
        p_opis         in pru_sif_intervali.opis%type,
        p_broj_mjeseci in pru_sif_intervali.broj_mjeseci%type
    );

    procedure update_interval (
        p_id           in pru_sif_intervali.id%type,
        p_naziv        in pru_sif_intervali.naziv%type,
        p_opis         in pru_sif_intervali.opis%type,
        p_broj_mjeseci in pru_sif_intervali.broj_mjeseci%type,
        p_valid        in pru_sif_intervali.valid%type
    );

    -- tipovi kompetencija
    procedure get_tip_kompetencije (
        p_id          in pru_sif_tipovi_kompetencija.id%type,
        p_naziv       out pru_sif_tipovi_kompetencija.naziv%type,
        p_opis        out pru_sif_tipovi_kompetencija.opis%type,
        p_valid       out pru_sif_tipovi_kompetencija.valid%type,
        p_created     out pru_sif_tipovi_kompetencija.created%type,
        p_created_by  out pru_sif_tipovi_kompetencija.created_by%type,
        p_updated     out pru_sif_tipovi_kompetencija.updated%type,
        p_updated_by  out pru_sif_tipovi_kompetencija.updated_by%type,
        p_row_version out pru_sif_tipovi_kompetencija.row_version%type
    );

    procedure insert_tip_kompetencije (
        p_naziv in pru_sif_tipovi_kompetencija.naziv%type,
        p_opis  in pru_sif_tipovi_kompetencija.opis%type
    );

    procedure update_tip_kompetencije (
        p_id    in pru_sif_tipovi_kompetencija.id%type,
        p_naziv in pru_sif_tipovi_kompetencija.naziv%type,
        p_opis  in pru_sif_tipovi_kompetencija.opis%type,
        p_valid in pru_sif_tipovi_kompetencija.valid%type
    );

    -- tipovi ocjena
    procedure get_tip_ocjene (
        p_id          in pru_sif_tipovi_ocjena.id%type,
        p_naziv       out pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost  out pru_sif_tipovi_ocjena.vrijednost%type,
        p_valid       out pru_sif_tipovi_ocjena.valid%type,
        p_created     out pru_sif_tipovi_ocjena.created%type,
        p_created_by  out pru_sif_tipovi_ocjena.created_by%type,
        p_updated     out pru_sif_tipovi_ocjena.updated%type,
        p_updated_by  out pru_sif_tipovi_ocjena.updated_by%type,
        p_row_version out pru_sif_tipovi_ocjena.row_version%type
    );

    procedure insert_tip_ocjene (
        p_naziv      in pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost in pru_sif_tipovi_ocjena.vrijednost%type
    );

    procedure update_tip_ocjene (
        p_id         in pru_sif_tipovi_ocjena.id%type,
        p_naziv      in pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost in pru_sif_tipovi_ocjena.vrijednost%type,
        p_valid      in pru_sif_tipovi_ocjena.valid%type
    );

    -- kompetencije
    procedure get_kompetencija (
        p_id                  in pru_sif_kompetencije.id%type,
        p_tip_kompetencije_id out pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               out pru_sif_kompetencije.naziv%type,
        p_opis                out pru_sif_kompetencije.opis%type,
        p_valid               out pru_sif_kompetencije.valid%type,
        p_created             out pru_sif_kompetencije.created%type,
        p_created_by          out pru_sif_kompetencije.created_by%type,
        p_updated             out pru_sif_kompetencije.updated%type,
        p_updated_by          out pru_sif_kompetencije.updated_by%type,
        p_row_version         out pru_sif_kompetencije.row_version%type
    );

    procedure insert_kompetencija (
        p_tip_kompetencije_id in pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               in pru_sif_kompetencije.naziv%type,
        p_opis                in pru_sif_kompetencije.opis%type
    );

    procedure update_kompetencija (
        p_id                  in pru_sif_kompetencije.id%type,
        p_tip_kompetencije_id in pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               in pru_sif_kompetencije.naziv%type,
        p_opis                in pru_sif_kompetencije.opis%type,
        p_valid               in pru_sif_kompetencije.valid%type
    );

    -- ocjene
    procedure get_ocjena (
        p_id              in pru_sif_ocjene.id%type,
        p_kompetencija_id out pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   out pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            out pru_sif_ocjene.opis%type,
        p_valid           out pru_sif_ocjene.valid%type,
        p_created         out pru_sif_ocjene.created%type,
        p_created_by      out pru_sif_ocjene.created_by%type,
        p_updated         out pru_sif_ocjene.updated%type,
        p_updated_by      out pru_sif_ocjene.updated_by%type,
        p_row_version     out pru_sif_ocjene.row_version%type
    );

    procedure insert_ocjena (
        p_kompetencija_id in pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   in pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            in pru_sif_ocjene.opis%type
    );

    procedure update_ocjena (
        p_id              in pru_sif_ocjene.id%type,
        p_kompetencija_id in pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   in pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            in pru_sif_ocjene.opis%type,
        p_valid           in pru_sif_ocjene.valid%type
    );

end pru_pkg;
/

prompt
prompt Creating package SASTANCI_PKG
prompt =============================
prompt
create or replace package sif.sastanci_pkg is

    -- Tipovi sastanaka
    procedure get_tip_sastanka (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_sastanka (
        p_naziv in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_sastanka (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_sastanka (
        p_id in number
    );

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

end sastanci_pkg;
/

prompt
prompt Creating package SIF_PKG
prompt ========================
prompt
create or replace package sif.sif_pkg is

    -- Drzave
    procedure get_drzava (
        p_id       in number,
        p_dnevnica out number
    );

    procedure get_drzava (
        p_id           in number,
        p_name         out varchar2,
        p_a2_iso       out varchar2,
        p_a3_un        out varchar2,
        p_num_un       out number,
        p_dialing_code out number,
        p_dnevnica     out number,
        p_valid        out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    );

    procedure insert_drzava (
        p_name         in varchar2,
        p_a2_iso       in varchar2,
        p_a3_un        in varchar2,
        p_num_un       in number,
        p_dialing_code in number,
        p_dnevnica     in number
    );

    procedure update_drzava (
        p_id           in number,
        p_name         in varchar2,
        p_a2_iso       in varchar2,
        p_a3_un        in varchar2,
        p_num_un       in number,
        p_dialing_code in number,
        p_dnevnica     in number,
        p_valid        in varchar2
    );

    -- Entiteti
    procedure get_entitet (
        p_id    in sif_entiteti.id%type,
        p_naziv out sif_entiteti.naziv%type,
        p_sifra out sif_entiteti.sifra%type,
        p_valid out sif_entiteti.valid%type
    );

    procedure ce_entitet (
        p_id    in sif_entiteti.id%type,
        p_naziv in sif_entiteti.naziv%type,
        p_sifra in sif_entiteti.sifra%type,
        p_valid in sif_entiteti.valid%type default null
    );

    -- Gradovi
    procedure get_grad (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_grad_id    out number,
        p_entitet_id out number
    );

    procedure ce_gradovi (
        p_naziv      in sif_gradovi.naziv%type,
        p_id         in sif_gradovi.id%type,
        p_valid      in sif_gradovi.valid%type default null,
        p_entitet_id in sif_gradovi.entitet_id%type default null,
        p_pozbroj    in sif_gradovi.pozbroj%type default null,
        p_posbroj    in sif_gradovi.posbroj%type default null,
        p_drzava_id  in sif_gradovi.drzava_id%type default null
    );

    -- Intervali
    procedure get_interval (
        p_id           in sif_intervali.id%type,
        p_naziv        out sif_intervali.naziv%type,
        p_broj_mjeseci out sif_intervali.broj_mjeseci%type,
        p_sifra        out sif_intervali.sifra%type,
        p_valid        out sif_intervali.valid%type,
        p_created      out sif_intervali.created%type,
        p_created_by   out sif_intervali.created_by%type,
        p_updated      out sif_intervali.updated%type,
        p_updated_by   out sif_intervali.updated_by%type,
        p_row_version  out sif_intervali.row_version%type
    );

    procedure insert_interval (
        p_naziv        in sif_intervali.naziv%type,
        p_broj_mjeseci in sif_intervali.broj_mjeseci%type,
        p_sifra        in sif_intervali.sifra%type
    );

    procedure update_interval (
        p_id           in sif_intervali.id%type,
        p_naziv        in sif_intervali.naziv%type,
        p_broj_mjeseci in sif_intervali.broj_mjeseci%type,
        p_sifra        in sif_intervali.sifra%type,
        p_valid        in sif_intervali.valid%type
    );

    -- Kantoni
    procedure ce_kantoni (
        p_naziv in sif_kantoni.naziv%type,
        p_id    in sif_kantoni.id%type,
        p_valid in sif_kantoni.valid%type default null
    );

    -- Role
    function get_rola_id (
        p_sifra in varchar2
    ) return number;

    procedure ce_role (
        p_id        in sif_role.id%type,
        p_role      in sif_role.naziv%type,
        p_role_desc in sif_role.opis%type default null,
        p_name      in sif_role.name%type default null,
        p_valid     in sif_role.valid%type default null
    );

    -- Tipovi notifikacija
    procedure get_tip_notifikacije (
        p_id                 in number,
        p_naziv              out varchar2,
        p_note_icon          out varchar2,
        p_note_icon_color    out varchar2,
        p_note_color         out varchar2,
        p_note_page          out number,
        p_page_item          out varchar2,
        p_sifra              out varchar2,
        p_sif_application_id out number,
        p_valid              out varchar2,
        p_row_version        out number,
        p_created            out date,
        p_created_by         out varchar2,
        p_updated            out date,
        p_updated_by         out varchar2
    );

    procedure insert_tip_notifikacije (
        p_naziv              in varchar2,
        p_note_icon          in varchar2,
        p_note_icon_color    in varchar2,
        p_note_color         in varchar2,
        p_note_page          in number,
        p_page_item          in varchar2,
        p_sifra              in varchar2,
        p_sif_application_id in number
    );

    procedure update_tip_notifikacije (
        p_id                 in number,
        p_naziv              in varchar2,
        p_note_icon          in varchar2,
        p_note_icon_color    in varchar2,
        p_note_color         in varchar2,
        p_note_page          in number,
        p_page_item          in varchar2,
        p_sifra              in varchar2,
        p_sif_application_id in number,
        p_valid              in varchar2
    );

    procedure delete_tip_notifikacije (
        p_id in number
    );

    -- Uputstva
    procedure get_uputstvo (
        p_id                in number,
        p_row_version       out integer,
        p_naziv             out varchar2,
        p_uputstvo          out number,
        p_uputstvo_mimetype out varchar2,
        p_uputstvo_filename out varchar2,
        p_rola_id           out number,
        p_valid             out varchar2,
        p_created           out date,
        p_created_by        out varchar2,
        p_updated           out date,
        p_updated_by        out varchar2
    );

    procedure insert_uputstvo (
        p_naziv    in varchar2,
        p_uputstvo in varchar2,
        p_rola_id  in number
    );

    procedure update_uputstvo (
        p_id       in number,
        p_naziv    in varchar2,
        p_uputstvo in varchar2,
        p_valid    in varchar2,
        p_rola_id  in number
    );

    procedure delete_upustvo (
        p_id in number
    );

    -- Plata koeficijenti
    procedure ce_koeficijenti (
        p_naziv          in varchar2,
        p_entitet_id     in varchar2,
        p_vazi           in varchar2,
        p_id             in varchar2,
        p_komentar       in varchar2,
        p_vrijednost     in number,
        p_sifra          in varchar2,
        p_tip_ugovora_id in number
    );

    --------------------------------------------------------------
    -- procedures for table SIF_VRSTE_NALOGA
    --------------------------------------------------------------

    function get_id_with_sifra_vrsta_naloga (
        p_sifra in varchar2
    ) return number;

    procedure get_vrsta_naloga (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_app         out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2, 
        p_ooj_id      out number, 
        p_acc_modul_id out number
    );

    procedure insert_vrsta_naloga (
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_app   in varchar2, 
        p_ooj_id      in number, 
        p_acc_modul_id in number
        
    );

    procedure update_vrsta_naloga (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_app   in varchar2,
        p_valid in varchar2, 
        p_ooj_id      in number, 
        p_acc_modul_id in number
    );

    procedure delete_vrsta_naloga (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table SIF_TIPOVI_PREDUZETNIKA
    --------------------------------------------------------------

    procedure get_tip_preduzetnika (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_visible     out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_preduzetnika (
        p_sifra   in varchar2,
        p_naziv   in varchar2,
        p_visible in varchar2
    );

    procedure update_tip_preduzetnika (
        p_id      in number,
        p_sifra   in varchar2,
        p_naziv   in varchar2,
        p_visible in varchar2,
        p_valid   in varchar2
    );

    procedure delete_tip_preduzetnika (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table SIF_BANKE
    --------------------------------------------------------------

    procedure get_banka (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_www         out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_banka (
        p_naziv in varchar2,
        p_email in varchar2,
        p_www   in varchar2
    );

    procedure update_banka (
        p_id    in number,
        p_naziv in varchar2,
        p_email in varchar2,
        p_www   in varchar2,
        p_valid in varchar2
    );

    procedure delete_banka (
        p_id in number
    );

    --------------------------------------------------------------
    -- procedures for table SIF_STATUSI
    --------------------------------------------------------------

    function get_status_id (
        p_sifra in varchar2
    ) return number;

    procedure get_status (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

    -- Guide
    function get_region_selector (
        p_region_id in varchar2
    ) return varchar2;

    function get_item_selector (
        p_item_id in varchar2
    ) return varchar2;

    function get_guide_steps (
        p_application_id in number,
        p_page_id        in number
    ) return varchar2;

    function get_next_sequence (
        p_application_id in number,
        p_page_id        in number
    ) return number;

    procedure get_guide (
        p_id             in number,
        p_application_id out number,
        p_page_id        out number,
        p_sequence       out number,
        p_type           out varchar2,
        p_item_id        out varchar2,
        p_region_id      out varchar2,
        p_element        out varchar2,
        p_title          out varchar2,
        p_description    out varchar2,
        p_side           out varchar2,
        p_align          out varchar2,
        p_valid          out varchar2,
        p_row_version    out number,
        p_created        out date,
        p_created_by     out varchar2,
        p_updated        out date,
        p_updated_by     out varchar2
    );

    procedure insert_guide (
        p_application_id in number,
        p_page_id        in number,
        p_sequence       in number,
        p_type           in varchar2,
        p_item_id        in varchar2,
        p_region_id      in varchar2,
        p_element        in varchar2,
        p_title          in varchar2,
        p_description    in varchar2,
        p_side           in varchar2,
        p_align          in varchar2
    );

    procedure update_guide (
        p_id             in number,
        p_application_id in number,
        p_page_id        in number,
        p_sequence       in number,
        p_type           in varchar2,
        p_item_id        in varchar2,
        p_region_id      in varchar2,
        p_element        in varchar2,
        p_title          in varchar2,
        p_description    in varchar2,
        p_side           in varchar2,
        p_align          in varchar2,
        p_valid          in varchar2
    );

    procedure delete_guide (
        p_id in number
    );

    -- Browsers
    procedure get_browser (
        p_id          in number,
        p_name        out varchar2,
        p_url         out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_browser (
        p_name in varchar2,
        p_url  in varchar2,
        p_logo in varchar2
    );

    procedure update_browser (
        p_id    in number,
        p_name  in varchar2,
        p_url   in varchar2,
        p_logo  in varchar2,
        p_valid in varchar2
    );

    procedure delete_browser (
        p_id in number
    );
    
    function get_id_with_sifra_vrsta_naloga (
        p_sifra  in varchar2,
        p_ooj_id in number
    ) return number;

end sif_pkg;
/

prompt
prompt Creating package SPELL_PKG
prompt ==========================
prompt
create or replace package sif.spell_pkg as
    procedure spell_extension (
        p_number    in number,
        p_extension out varchar2
    );

    procedure spell_helper (
        p_number     in number,
        p_units_tens in varchar2,
        p_result     out varchar2
    );

    procedure spell_serbian_number (
        p_number     in number,
        p_first      in varchar2 default 'N',
        p_units_tens in varchar2 default 'J',
        p_valuta     in varchar2 default 'KM',
        p_result     out varchar2
    );

    function spell_serbian_number (
        p_number     in number,
        p_first      in varchar2 default 'N',
        p_units_tens in varchar2 default 'J',
        p_valuta     in varchar2 default 'KM'
    ) return varchar2;

end spell_pkg;
/

prompt
prompt Creating package UTILS_PKG
prompt ==========================
prompt
create or replace package sif.utils_pkg as
        
    -- Theme
    procedure update_theme_accross_applications (
        p_application_id in number,
        p_theme_style_id in number
    );

    function is_authorized_wrapper (
        p_authorization_name in varchar2
    ) return number;

    procedure get_apex_file_upload (
        p_apex_filename in varchar2,
        p_blob          out blob,
        p_filename      out varchar2,
        p_mimetype      out varchar2
    );

    procedure setup_enviroment (
        p_workspace_name in varchar2
    );

    procedure setup_workspace_to_production_enviroment (
        p_workspace_name in varchar2
    );

    procedure setup_workspace_to_development_enviroment (
        p_workspace_name in varchar2
    );

    procedure disable_workspace_applications (
        p_workspace_name in varchar2
    );

    procedure enable_workspace_applications (
        p_workspace_name in varchar2
    );

    procedure enable_workspace_automations (
        p_workspace_name in varchar2
    );

    procedure disable_workspace_automations (
        p_workspace_name in varchar2
    );

    function format_size (
        p_size in number
    ) return varchar2;

    function base64encode (
        p_blob in blob
    ) return clob;

end utils_pkg;
/

prompt
prompt Creating package VP_PKG
prompt =======================
prompt
create or replace package sif.vp_pkg is

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

end vp_pkg;
/

prompt
prompt Creating package ZAPOSLJAVANJE_PKG
prompt ==================================
prompt
create or replace package sif.zaposljavanje_pkg is
    
    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    );

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    );

    procedure delete_status (
        p_id in number
    );

    -- Tipovi dokumenta
    procedure get_tip_dokumenta (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    );

    procedure insert_tip_dokumenta (
        p_naziv in varchar2,
        p_opis  in varchar2
    );

    procedure update_tip_dokumenta (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    );

    procedure delete_tip_dokumenta (
        p_id in number
    );

end zaposljavanje_pkg;
/

prompt
prompt Creating procedure GET_VALUTE_FROM_API
prompt ======================================
prompt
create or replace procedure sif.get_valute_from_api as

    l_symbols       varchar2(255);
    l_url           varchar2(4000);
    l_response      clob;
    l_json_obj      json_object_t;
    l_rates_obj     json_object_t;
    l_currency_list json_key_list;
    l_currency      varchar2(10);
    l_rate          number;
    l_valuta_id     number;
    l_eur_to_bam    number := 1.95583;
begin
    select
        listagg(sifra, ',')
    into l_symbols
    from
        acc_valute
    where
            valid = 'Y'
        and sifra is not null
        and sifra not in ( 'BAM', 'EUR' );

    dbms_output.put_line(l_symbols);

    -- Construct URL with parameters
    l_url := 'https://api.exchangeratesapi.io/v1/latest'
             || '&base=EUR'
             || '&symbols='
             || l_symbols;

    -- Make REST API call
    l_response := apex_web_service.make_rest_request(
        p_url                  => l_url,
        p_http_method          => 'GET',
        p_credential_static_id => 'exchangeratesapi'
    );

    -- Parse JSON input
    l_json_obj := json_object_t.parse(l_response);

    -- Check if API call was successful
    if l_json_obj.get_boolean('success') then
        -- Get rates object
        l_rates_obj := treat(l_json_obj.get_object('rates') as json_object_t);

        -- Get list of currency codes
        l_currency_list := l_rates_obj.get_keys();

        -- Loop through all currencies
        for i in 1..l_currency_list.count loop
            l_currency := l_currency_list(i);
            l_rate := l_rates_obj.get_number(l_currency);
            l_rate := l_eur_to_bam / l_rate;
            l_valuta_id := acc_pkg.get_valuta_id(p_sifra => l_currency);
            acc_pkg.insert_valuta_history(
                p_valuta_id => l_valuta_id,
                p_datum     => sysdate,
                p_kurs      => round(l_rate, 5)
            );

        end loop;

    else
        dbms_output.put_line('API request failed');
    end if;

exception
    when others then
        dbms_output.put_line('Error: ' || sqlerrm);
        dbms_output.put_line('Response: ' || l_response);
end get_valute_from_api;
/

prompt
prompt Creating package body ACC_PKG
prompt =============================
prompt
create or replace package body sif.acc_pkg as

    --------------------------------------------------------------
    -- procedures for table ACC_JEDINICE_MJERE
    --------------------------------------------------------------
    procedure get_jedinica_mjere (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_jedinice_mjere
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_jedinica_mjere;

    procedure insert_jedinica_mjere (
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        insert into acc_jedinice_mjere (
            naziv,
            opis,
            valid
        ) values ( p_naziv,
                   p_opis,
                   p_valid );

    end insert_jedinica_mjere;

    procedure update_jedinica_mjere (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        update acc_jedinice_mjere
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_jedinica_mjere;

    procedure delete_jedinica_mjere (
        p_id in number
    ) as
    begin
        delete from acc_jedinice_mjere
        where
            id = p_id;

    end delete_jedinica_mjere;

    --------------------------------------------------------------
    -- procedures for table ACC_VALUTA
    --------------------------------------------------------------

    function get_valuta_id (
        p_sifra in varchar2
    ) return number as
    begin
        for c1 in (
            select
                *
            from
                acc_valute
            where
                lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_valuta_id;

    procedure get_valuta (
        p_id          in number,
        p_naziv       out varchar2,
        p_kurs        out number,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_valute
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_kurs := c1.kurs;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_valuta;

    procedure get_valuta (
        p_id   in number,
        p_kurs out number
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_valute
            where
                id = p_id
        ) loop
            p_kurs := c1.kurs;
        end loop;
    end get_valuta;

    procedure insert_valuta (
        p_naziv in varchar2,
        p_kurs  in number,
        p_sifra in varchar2
    ) as
    begin
        insert into acc_valute (
            naziv,
            kurs,
            sifra
        ) values ( p_naziv,
                   p_kurs,
                   p_sifra );

    end insert_valuta;

    procedure update_valuta (
        p_id    in number,
        p_naziv in varchar2,
        p_kurs  in number,
        p_sifra in varchar2,
        p_valid in varchar2
    ) as
    begin
        update acc_valute
        set
            naziv = p_naziv,
            kurs = p_kurs,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_valuta;

    procedure delete_valuta (
        p_id in number
    ) as
    begin
        delete from acc_valute
        where
            id = p_id;

    end delete_valuta;

    function convert_bam (
        p_valuta_id in number,
        p_bam       in number,
        p_datum     in date default sysdate,
        p_kurs      in number default null
    ) return number as
        l_kurs number := p_kurs;
    begin
        if p_kurs is null then
            get_valuta_history(
                p_valuta_id => p_valuta_id,
                p_datum     => p_datum,
                p_kurs      => l_kurs
            );
        end if;

        return round(p_bam / l_kurs, 2);
    end convert_bam;

    function convert_to_bam (
        p_valuta_id  in number,
        p_vrijednost in number,
        p_datum      in date default sysdate,
        p_kurs       in number default null
    ) return number as
        l_kurs number := p_kurs;
    begin
        if p_kurs is null then
            get_valuta_history(
                p_valuta_id => p_valuta_id,
                p_datum     => p_datum,
                p_kurs      => l_kurs
            );
        end if;

        return round(p_vrijednost * l_kurs, 2);
    end convert_to_bam;

    procedure get_valuta_history (
        p_valuta_id in number,
        p_datum     in date,
        p_kurs      out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_valute_hist
            where
                    valuta_id = p_valuta_id
                and trunc(datum) = trunc(p_datum)
        ) loop
            p_kurs := c1.kurs;
            return;
        end loop;

        get_valuta(
            p_id   => p_valuta_id,
            p_kurs => p_kurs
        );
    end get_valuta_history;

    procedure insert_valuta_history (
        p_valuta_id in number,
        p_datum     in date,
        p_kurs      in number
    ) is
    begin
        insert into acc_valute_hist (
            valuta_id,
            datum,
            kurs
        ) values ( p_valuta_id,
                   p_datum,
                   p_kurs );

        if trunc(p_datum) = trunc(sysdate) then
            update acc_valute
            set
                kurs = p_kurs
            where
                id = p_valuta_id;

        end if;

    end insert_valuta_history;
    
    --------------------------------------------------------------
    -- procedures for table ACC_VALUTA_KURSEVI
    --------------------------------------------------------------
    function get_kurs_na_dan (
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date
    ) return number is
        v_kurs number;
        v_valuta_sifra varchar2(20);
        
    begin
      
        select v.sifra
        into  v_valuta_sifra
        from sif.acc_valute v 
        where v.id=p_valuta_id;
        
        if v_valuta_sifra='BAM' then 
          
           v_kurs:=1.000000;
          
        elsif v_valuta_sifra='EUR' then 
          
           v_kurs:=1.955830;
        
        else
          
           select kurs
           into v_kurs
           from acc_valuta_kursevi
           where valuta_id = p_valuta_id
           and ooj_id    = p_ooj_id
           and datum     = p_datum;
          
        end if;
    
    
   
        return v_kurs;
    exception
        when others then
            return null;
    end get_kurs_na_dan;
    
    function convert_valuta_to_bam(
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date, 
        p_iznos     in number
     ) return number is
           l_kurs number;
     begin 

       
       l_kurs:=get_kurs_na_dan (p_valuta_id,p_ooj_id,p_datum);
       
       return p_iznos*l_kurs;
       
     exception when others then 
        
       return null;

     end;
     
    function convert_valuta_from_bam(
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date, 
        p_iznos     in number
     ) return number is
           l_kurs number;
     begin 

       
       l_kurs:=get_kurs_na_dan (p_valuta_id,p_ooj_id,p_datum);
       
       return p_iznos/l_kurs;
       
     exception when others then 
        
       return null;

     end;
    

    
    procedure get_acc_valuta_kursevi (
        p_id        in  number,
        p_valuta_id out number,
        p_ooj_id    out number,
        p_datum     out date,
        p_kurs      out number
    ) is
    begin
        select valuta_id,
               ooj_id,
               datum,
               kurs
          into p_valuta_id,
               p_ooj_id,
               p_datum,
               p_kurs
          from acc_valuta_kursevi
         where id = p_id;
    exception
        when no_data_found then
            p_valuta_id := null;
            p_ooj_id    := null;
            p_datum     := null;
            p_kurs      := null;
    end get_acc_valuta_kursevi;


    procedure insert_acc_valuta_kursevi (
        p_valuta_id in  number,
        p_ooj_id    in  number,
        p_datum     in  date,
        p_kurs      in  number,
        p_id        out number
    ) is
    begin
        insert into acc_valuta_kursevi (
            valuta_id,
            ooj_id,
            datum,
            kurs
        ) values (
            p_valuta_id,
            p_ooj_id,
            p_datum,
            p_kurs
        )
        returning id into p_id;
    end insert_acc_valuta_kursevi;


    procedure update_acc_valuta_kursevi (
        p_id        in number,
        p_valuta_id in number,
        p_ooj_id    in number,
        p_datum     in date,
        p_kurs      in number
    ) is
    begin
        update acc_valuta_kursevi
           set valuta_id = p_valuta_id,
               ooj_id    = p_ooj_id,
               datum     = p_datum,
               kurs      = p_kurs
         where id = p_id;
    end update_acc_valuta_kursevi;


    procedure delete_acc_valuta_kursevi (
        p_id in number
    ) is
    begin
        delete from acc_valuta_kursevi
         where id = p_id;
    end delete_acc_valuta_kursevi;

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_STAVKI
    --------------------------------------------------------------

    procedure get_tip_stavke (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_tipovi_stavki
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_stavke;

    procedure insert_tip_stavke (
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        insert into acc_tipovi_stavki (
            naziv,
            opis,
            valid
        ) values ( p_naziv,
                   p_opis,
                   p_valid );

    end insert_tip_stavke;

    procedure update_tip_stavke (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_opis  in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        update acc_tipovi_stavki
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_stavke;

    procedure delete_tip_stavke (
        p_id in number
    ) as
    begin
        delete from acc_tipovi_stavki
        where
            id = p_id;

    end delete_tip_stavke;

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_PLACANJA
    --------------------------------------------------------------

    procedure get_tip_placanja (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_tipovi_placanja
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_placanja;

    procedure insert_tip_placanja (
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_sifra in varchar2
    ) as
    begin
        insert into acc_tipovi_placanja (
            naziv,
            opis,
            sifra
        ) values ( p_naziv,
                   p_opis,
                   p_sifra );

    end insert_tip_placanja;

    procedure update_tip_placanja (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    ) as
    begin
        update acc_tipovi_placanja
        set
            naziv = p_naziv,
            opis = p_opis,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_tip_placanja;

    procedure delete_tip_placanja (
        p_id in number
    ) as
    begin
        delete from acc_tipovi_placanja
        where
            id = p_id;

    end delete_tip_placanja;

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_KLIJENATA
    --------------------------------------------------------------

    procedure get_tip_klijenta (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_tipovi_klijenata
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_klijenta;

    procedure insert_tip_klijenta (
        p_naziv in varchar2 default null,
        p_sifra in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        insert into acc_tipovi_klijenata (
            naziv,
            sifra,
            valid
        ) values ( p_naziv,
                   p_sifra,
                   p_valid );

    end insert_tip_klijenta;

    procedure update_tip_klijenta (
        p_id    in number,
        p_naziv in varchar2 default null,
        p_sifra in varchar2 default null,
        p_valid in varchar2 default 'Y'
    ) as
    begin
        update acc_tipovi_klijenata
        set
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_tip_klijenta;

    procedure delete_tip_klijenta (
        p_id in number
    ) as
    begin
        delete from acc_tipovi_klijenata
        where
            id = p_id;

    end delete_tip_klijenta;

    --------------------------------------------------------------
    -- procedures for table KONTNI_OKVIR_KLASE
    --------------------------------------------------------------
    
    
    function get_kontni_plan_postoji (
           p_ooj_id     in number
         ) return number is
      v_kp_postoji number;   
    begin 
      
         select count(1)
         into v_kp_postoji
         from acc_kontni_okvir_klase ak
         where ak.ooj_id=p_ooj_id;
         
         if v_kp_postoji>0 then 
            return 1;
         else 
            return 0;
         end if;    
      
    
    end;


    function get_id_with_code_klasa (
        p_entitet_id in number,
        p_code       in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                acc_kontni_okvir_klase
            where
                    code = p_code
                and entitet_id = p_entitet_id
                and ooj_id is null
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_id_with_code_klasa;

    function get_id_with_code_klasa (
        p_ooj_id in number,
        p_code   in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                acc_kontni_okvir_klase
            where
                    code = p_code
                and ( ooj_id = p_ooj_id
                      or ooj_id is null )
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_id_with_code_klasa;

    function get_parent_id_with_code (
        p_entitet_id in number,
        p_ooj_id     in number,
        p_code       in varchar2,
        p_step       in number default 1
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                acc_kontni_okvir_klase
            where
                    code = substr(p_code,
                                  1,
                                  length(p_code) - p_step)
                and ( ooj_id = p_ooj_id
                      or ooj_id is null )
                and entitet_id = p_entitet_id
        ) loop
            return c1.id;
        end loop;

        return get_parent_id_with_code(
            p_entitet_id => p_entitet_id,
            p_ooj_id     => p_ooj_id,
            p_code       => p_code,
            p_step       => p_step + 1
        );

    end get_parent_id_with_code;

    procedure get_kontni_okvir_klasa (
        p_id            in number,
        p_code          out varchar2,
        p_pdv_indikator out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_kontni_okvir_klase
            where
                id = p_id
        ) loop
            p_code := c1.code;
            p_pdv_indikator := c1.pdv_indikator;
        end loop;
    end get_kontni_okvir_klasa;

    procedure get_kontni_okvir_klasa (
            p_id                  in number,
            p_entitet_id          out number,
            p_kontna_klasa_id     out number,
            p_code                out varchar2,
            p_naziv               out varchar2,
            p_os                  out varchar2,
            p_klijent             out varchar2,
            p_oj                  out varchar2,
            p_radnik              out varchar2,
            p_pdv_indikator       out varchar2,
            p_pdv_indikator_sifra out number,
            p_valid               out varchar2,
            p_row_version         out number,
            p_created             out date,
            p_created_by          out varchar2,
            p_updated             out date,
            p_updated_by          out varchar2, 
            p_otvorene_stavke     out varchar2
      ) as
      begin
          for c1 in (
              select
                  *
              from
                  acc_kontni_okvir_klase
              where
                  id = p_id
          ) loop
              p_entitet_id := c1.entitet_id;
              p_kontna_klasa_id := c1.kontna_klasa_id;
              p_code := c1.code;
              p_naziv := c1.naziv;
              p_os := c1.os;
              p_klijent := c1.klijent;
              p_oj := c1.oj;
              p_radnik := c1.radnik;
              p_pdv_indikator := c1.pdv_indikator;
              p_pdv_indikator_sifra := c1.pdv_indikator_sifra;
              p_valid := c1.valid;
              p_row_version := c1.row_version;
              p_created := c1.created;
              p_created_by := c1.created_by;
              p_updated := c1.updated;
              p_updated_by := c1.updated_by;
              p_otvorene_stavke:=c1.otvorene_stavke;
          end loop;
      end get_kontni_okvir_klasa;

      function get_kontni_okvir_klasa (
          p_id in number
      ) return varchar2 is
      begin
          for c1 in (
              select
                  *
              from
                  acc_kontni_okvir_klase
              where
                  id = p_id
          ) loop
              return c1.code;
          end loop;
      end get_kontni_okvir_klasa;

      procedure insert_kontni_okvir_klasa (
          p_entitet_id          in number,
          p_kontna_klasa_id     in number,
          p_ooj_id              in number,
          p_code                in varchar2,
          p_naziv               in varchar2,
          p_os                  in varchar2,
          p_klijent             in varchar2,
          p_oj                  in varchar2,
          p_radnik              in varchar2,
          p_pdv_indikator       in varchar2,
          p_pdv_indikator_sifra in number,
          p_otvorene_stavke     in varchar2
      ) as
      begin
          insert into acc_kontni_okvir_klase (
              entitet_id,
              kontna_klasa_id,
              ooj_id,
              code,
              naziv,
              os,
              klijent,
              oj,
              radnik,
              pdv_indikator,
              pdv_indikator_sifra,
              otvorene_stavke
          ) values ( p_entitet_id,
                     p_kontna_klasa_id,
                     p_ooj_id,
                     p_code,
                     p_naziv,
                     p_os,
                     p_klijent,
                     p_oj,
                     p_radnik,
                     p_pdv_indikator,
                     p_pdv_indikator_sifra,
                     p_otvorene_stavke );

      end insert_kontni_okvir_klasa;

      procedure update_kontni_okvir_klasa (
          p_id                  in number,
          p_entitet_id          in number,
          p_kontna_klasa_id     in number,
          p_ooj_id              in number,
          p_code                in varchar2,
          p_naziv               in varchar2,
          p_os                  in varchar2,
          p_klijent             in varchar2,
          p_oj                  in varchar2,
          p_radnik              in varchar2,
          p_pdv_indikator       in varchar2,
          p_pdv_indikator_sifra in number,
          p_valid               in varchar2,
          p_otvorene_stavke     in varchar2
      ) as
      begin
          update acc_kontni_okvir_klase
          set
              entitet_id = p_entitet_id,
              kontna_klasa_id = p_kontna_klasa_id,
              ooj_id = p_ooj_id,
              code = p_code,
              naziv = p_naziv,
              os = p_os,
              klijent = p_klijent,
              oj = p_oj,
              radnik = p_radnik,
              pdv_indikator = p_pdv_indikator,
              pdv_indikator_sifra = p_pdv_indikator_sifra,
              valid = p_valid,
              otvorene_stavke= p_otvorene_stavke
          where
              id = p_id;

      end update_kontni_okvir_klasa;

    procedure delete_kontni_okvir_klasa (
        p_id in number
    ) as
    begin
        delete from acc_kontni_okvir_klase
        where
            id = p_id;

    end delete_kontni_okvir_klasa;
    
    
    function validate_konto_obavezna_polja (
      p_kontna_klasa_id  in number,
      p_ooj_id           in number,
      p_klijent_id       in number,
      p_oj_id            in number,
      p_radnik_id        in number,
      p_pdv_indikator_id in number,
      p_osnovno_sredstvo_id in number
    ) return varchar2 is

        r_konfig sif.acc_kontni_okvir_klase%rowtype;
        l_nedostaje varchar2(500) := null;
        l_konto varchar2(10);
        l_konto_duzina number;

    begin
        select * into r_konfig
        from sif.acc_kontni_okvir_klase
        where id = p_kontna_klasa_id;
        
        select o.konto_duzina
        into l_konto_duzina
        from core.ooj o
        where o.id=p_ooj_id;
        
        l_konto:=rpad(r_konfig.code, l_konto_duzina, '0');
        

        if nvl(r_konfig.klijent,'N') = 'Y' and p_klijent_id is null then
            l_nedostaje := l_nedostaje || 'Partner, ';
        end if;

        if nvl(r_konfig.oj,'N') = 'Y' and p_oj_id is null then
            l_nedostaje := l_nedostaje || 'Mjesto troška, ';
        end if;

        if nvl(r_konfig.radnik,'N') = 'Y' and p_radnik_id is null then
            l_nedostaje := l_nedostaje || 'Radnik, ';
        end if;

        if nvl(r_konfig.pdv_indikator,'N') = 'Y' and p_pdv_indikator_id is null then
            l_nedostaje := l_nedostaje || 'PDV indikator, ';
        end if;

        if nvl(r_konfig.os,'N') = 'Y' and p_osnovno_sredstvo_id is null then
            l_nedostaje := l_nedostaje || 'Osnovno sredstvo, ';
        end if;

        if l_nedostaje is not null then
            -- Skini zadnji ", "
            l_nedostaje := rtrim(l_nedostaje, ', ');
            return 'Za konto '||l_konto||' obavezno je unijeti polja: ' || l_nedostaje || '.';
        end if;

        return null;  -- NULL = validacija prošla

    exception
        when no_data_found then
            return 'Neispravno konto';  -- ako nema konfiga za taj konto, ne blokiraj (ili vrati grešku, po želji)

    end validate_konto_obavezna_polja;
    
    --- da li se za konto prate otvorene stavke --30.07.2026 djordjije
    function get_konto_otvorene_stavke (
        p_kontna_klasa_id in number
    ) return varchar2 is
        l_otvorene_stavke varchar2(1);
    begin
        select otvorene_stavke
        into l_otvorene_stavke
        from sif.acc_kontni_okvir_klase
        where id = p_kontna_klasa_id;

        return l_otvorene_stavke;  -- 'Y' ili 'N'

    exception
        when no_data_found then
            return 'N';  -- ako konto nije pronađen, default je da ne prati otvorene stavke

    end get_konto_otvorene_stavke;
    
    
    --preuzimanje podrazumijevanog kontnog plana-- djordjije 17.09.2026
    procedure copy_defoult_kontni_plan (  
           p_ooj_id     in number
         ) is
         
      l_nad_konto number;
      l_nk_code varchar2(10);
      l_nk_ooj_id number;
       
    begin
      
          for kp in ( select *
                      from sif.acc_kontni_okvir_klase
                      where  ooj_id is null
                      and length(code)>3
                      start with kontna_klasa_id is null
                      connect by prior id = kontna_klasa_id)
          loop

              select nk.code, nk.ooj_id
              into l_nk_code, l_nk_ooj_id
              from sif.acc_kontni_okvir_klase nk
              where id = kp.kontna_klasa_id;

              if l_nk_ooj_id is null and length(l_nk_code) <= 3 then
                  l_nad_konto := kp.kontna_klasa_id;   -- roditelj je dijeljeni/defoultni konto - ne duplira se
              else
                  select kk.id
                  into l_nad_konto
                  from sif.acc_kontni_okvir_klase kk
                  where kk.code = l_nk_code
                    and kk.ooj_id = p_ooj_id;
              end if;

              sif.acc_pkg.insert_kontni_okvir_klasa(kp.entitet_id ,
                                                    l_nad_konto ,
                                                    p_ooj_id          ,
                                                    kp.code            ,
                                                    kp.naziv           ,
                                                    kp.os            ,
                                                    kp.klijent         ,
                                                    kp.oj              ,
                                                    kp.radnik          ,
                                                    kp.pdv_indikator   ,
                                                    kp.pdv_indikator_sifra,  
                                                    kp.otvorene_stavke );


          end loop;
          
        
    
    end;
         
    --

    --------------------------------------------------------------
    -- procedures for table ACC_OBRASCI_FAKTURA
    --------------------------------------------------------------

    procedure get_obrazac_fakture (
        p_id          in number,
        p_naziv       out varchar2,
        p_path        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                acc_obrasci_faktura
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_path := c1.path;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_obrazac_fakture;

    procedure insert_obrazac_fakture (
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2
    ) as
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

        insert into acc_obrasci_faktura (
            naziv,
            dokument,
            dokument_filename,
            dokument_mimetype,
            path
        ) values ( p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   p_path );

    end insert_obrazac_fakture;

    procedure update_obrazac_fakture (
        p_id       in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2,
        p_valid    in varchar2
    ) as
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_dokument is null then
            update acc_obrasci_faktura
            set
                naziv = p_naziv,
                path = p_path,
                valid = p_valid
            where
                id = p_id;

        else
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_dokument,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update acc_obrasci_faktura
            set
                naziv = p_naziv,
                path = p_path,
                dokument = l_blob,
                dokument_filename = l_filename,
                dokument_mimetype = l_mimetype,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_obrazac_fakture;

    procedure delete_obrazac_fakture (
        p_id in number
    ) as
    begin
        delete from acc_obrasci_faktura
        where
            id = p_id;

    end delete_obrazac_fakture;

    --------------------------------------------------------------
    -- procedures for table ACC_UIO_TIP_DOKUMENTA
    --------------------------------------------------------------

    function get_uio_tip_dokumenta_id (
        p_ui   in varchar2,
        p_code in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                acc_uio_tipovi_dokumenata
            where
                    upper(ui) = upper(p_ui)
                and upper(code) = upper(p_code)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_uio_tip_dokumenta_id;

    procedure get_uio_tip_dokumenta (
        p_id          in number,
        p_code        out varchar2,
        p_naziv       out varchar2,
        p_ui          out varchar2,
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
                acc_uio_tipovi_dokumenata
            where
                id = p_id
        ) loop
            p_code := c1.code;
            p_naziv := c1.naziv;
            p_ui := c1.ui;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_uio_tip_dokumenta;

    -- Za automatski nalog za knjizenje u UIO
    procedure get_uio_tip_dokumenta (
        p_id   in number,
        p_code out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_uio_tipovi_dokumenata
            where
                id = p_id
        ) loop
            p_code := c1.code;
        end loop;
    end get_uio_tip_dokumenta;

    procedure insert_uio_tip_dokumenta (
        p_code  in varchar2,
        p_naziv in varchar2,
        p_ui    in varchar2
    ) is
    begin
        insert into acc_uio_tipovi_dokumenata (
            code,
            naziv,
            ui
        ) values ( p_code,
                   p_naziv,
                   p_ui );

    end insert_uio_tip_dokumenta;

    procedure update_uio_tip_dokumenta (
        p_id    in number,
        p_code  in varchar2,
        p_naziv in varchar2,
        p_ui    in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_uio_tipovi_dokumenata
        set
            code = p_code,
            naziv = p_naziv,
            ui = p_ui,
            valid = p_valid
        where
            id = p_id;

    end update_uio_tip_dokumenta;

    procedure delete_uio_tip_dokumenta (
        p_id in number
    ) is
    begin
        delete from acc_uio_tipovi_dokumenata
        where
            id = p_id;

    end delete_uio_tip_dokumenta;
    
    --------------------------------------------------------------
    -- procedures for table uio_tip_dokumenta_pdv_indikatori
    --------------------------------------------------------------    
    
    procedure get_uio_tip_dokumenta_pdv_indikatori (
        p_id                   in  number,
        p_uio_tip_dokumenta_id out number,
        p_pdv_indikator_id     out number,
        p_entitet_id           out number,
        p_valid                out varchar2
    ) is
    begin
        p_uio_tip_dokumenta_id := null;
        p_pdv_indikator_id     := null;
        p_entitet_id           := null;
        p_valid                := null;

        for r_utdpi in (
            select uio_tip_dokumenta_id, pdv_indikator_id, entitet_id, valid
            from   sif.uio_tip_dokumenta_pdv_indikatori
            where  id = p_id
        ) loop
            p_uio_tip_dokumenta_id := r_utdpi.uio_tip_dokumenta_id;
            p_pdv_indikator_id     := r_utdpi.pdv_indikator_id;
            p_entitet_id           := r_utdpi.entitet_id;
            p_valid                := r_utdpi.valid;
        end loop;
    end get_uio_tip_dokumenta_pdv_indikatori;
    
    procedure insert_uio_tip_dokumenta_pdv_indikatori (
        p_id                   out number,
        p_uio_tip_dokumenta_id in  number,
        p_pdv_indikator_id     in  number,
        p_entitet_id           in  number
    ) is
    begin
        insert into sif.uio_tip_dokumenta_pdv_indikatori (
            uio_tip_dokumenta_id,
            pdv_indikator_id,
            entitet_id
        ) values (
            p_uio_tip_dokumenta_id,
            p_pdv_indikator_id,
            p_entitet_id
        )
        returning id into p_id;
    end insert_uio_tip_dokumenta_pdv_indikatori;


    procedure update_uio_tip_dokumenta_pdv_indikatori (
        p_id                   in number,
        p_uio_tip_dokumenta_id in number,
        p_pdv_indikator_id     in number,
        p_entitet_id           in number
    ) is
    begin
        update sif.uio_tip_dokumenta_pdv_indikatori
        set    uio_tip_dokumenta_id = p_uio_tip_dokumenta_id,
               pdv_indikator_id     = p_pdv_indikator_id,
               entitet_id           = p_entitet_id

        where  id = p_id;
    end update_uio_tip_dokumenta_pdv_indikatori;


    procedure delete_uio_tip_dokumenta_pdv_indikatori (
        p_id in number
    ) is
    begin
        delete sif.uio_tip_dokumenta_pdv_indikatori
        where  id = p_id;
    end delete_uio_tip_dokumenta_pdv_indikatori;



    --------------------------------------------------------------
    -- procedures for table ACC_AMORTIZACIONE_GRUPE
    --------------------------------------------------------------

    procedure get_amortizaciona_grupa (
        p_id          in number,
        p_ooj_id      out number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                acc_amortizacione_grupe
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_procenat := c1.procenat;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_amortizaciona_grupa;

    procedure insert_amortizaciona_grupa (
        p_ooj_id   in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_procenat in number
    ) is
    begin
        insert into acc_amortizacione_grupe (
            ooj_id,
            sifra,
            naziv,
            procenat
        ) values ( p_ooj_id,
                   p_sifra,
                   p_naziv,
                   p_procenat );

    end insert_amortizaciona_grupa;

    procedure update_amortizaciona_grupa (
        p_id       in number,
        p_ooj_id   in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_procenat in number,
        p_valid    in varchar2
    ) is
    begin
        update acc_amortizacione_grupe
        set
            ooj_id = p_ooj_id,
            sifra = p_sifra,
            naziv = p_naziv,
            procenat = p_procenat,
            valid = p_valid
        where
            id = p_id;

    end update_amortizaciona_grupa;

    procedure delete_amortizaciona_grupa (
        p_id in number
    ) is
    begin
        delete from acc_amortizacione_grupe
        where
            id = p_id;

    end delete_amortizaciona_grupa;

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_PRIHODA
    --------------------------------------------------------------

    procedure get_vrsta_prihoda (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                acc_vrste_prihoda
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_vrsta_prihoda;

    procedure insert_vrsta_prihoda (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into acc_vrste_prihoda (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_vrsta_prihoda;

    procedure update_vrsta_prihoda (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_vrste_prihoda
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_vrsta_prihoda;

    procedure delete_vrsta_prihoda (
        p_id in number
    ) is
    begin
        delete from acc_vrste_prihoda
        where
            id = p_id;

    end delete_vrsta_prihoda;

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_RASHODA
    --------------------------------------------------------------

    procedure get_vrsta_rashoda (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                acc_vrste_rashoda
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_vrsta_rashoda;

    procedure insert_vrsta_rashoda (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into acc_vrste_rashoda (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_vrsta_rashoda;

    procedure update_vrsta_rashoda (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_vrste_rashoda
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_vrsta_rashoda;

    procedure delete_vrsta_rashoda (
        p_id in number
    ) is
    begin
        delete from acc_vrste_rashoda
        where
            id = p_id;

    end delete_vrsta_rashoda;

    --------------------------------------------------------------
    -- procedures for table ACC_IZVJESTAJI
    --------------------------------------------------------------

    procedure get_izvjestaj (
        p_id                  in number,
        p_tipovi_preduzetnika out varchar2,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_apif                out varchar2,
        p_sequence            out number,
        p_icon                out varchar2,
        p_tip                 out varchar2,
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
                acc_izvjestaji
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_apif := c1.apif;
            p_sequence := c1.sequence;
            p_icon := c1.icon;
            p_tip := c1.tip;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;

        for c1 in (
            select
                listagg(tip_preduzetnika_id, ':') as tipovi_preduzetnika
            from
                acc_izvjestaj_preduzetnici
            where
                izvjestaj_id = p_id
        ) loop
            p_tipovi_preduzetnika := c1.tipovi_preduzetnika;
        end loop;

    end get_izvjestaj;

    procedure get_izvjestaj (
        p_id    in number,
        p_sifra out varchar2,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_izvjestaji
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
        end loop;
    end get_izvjestaj;

    procedure insert_izvjestaj (
        p_tipovi_preduzetnika in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_apif                in varchar2,
        p_sequence            in number,
        p_icon                in varchar2,
        p_tip                 in varchar2
    ) is
        l_id number;
    begin
        insert into acc_izvjestaji (
            sifra,
            naziv,
            apif,
            sequence,
            icon,
            tip
        ) values ( p_sifra,
                   p_naziv,
                   p_apif,
                   p_sequence,
                   p_icon,
                   p_tip ) returning id into l_id;

        insert_izvjestaj_preduzetnici(
            p_izvjestaj_id        => l_id,
            p_tipovi_preduzetnika => p_tipovi_preduzetnika
        );
    end insert_izvjestaj;

    procedure update_izvjestaj (
        p_id                  in number,
        p_tipovi_preduzetnika in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_apif                in varchar2,
        p_sequence            in number,
        p_icon                in varchar2,
        p_tip                 in varchar2,
        p_valid               in varchar2
    ) is
    begin
        update acc_izvjestaji
        set
            sifra = p_sifra,
            naziv = p_naziv,
            apif = p_apif,
            sequence = p_sequence,
            icon = p_icon,
            tip = p_tip,
            valid = p_valid
        where
            id = p_id;

        insert_izvjestaj_preduzetnici(
            p_izvjestaj_id        => p_id,
            p_tipovi_preduzetnika => p_tipovi_preduzetnika
        );
    end update_izvjestaj;

    procedure delete_izvjestaj (
        p_id in number
    ) is
    begin
        delete from acc_izvjestaji
        where
            id = p_id;

    end delete_izvjestaj;

    procedure insert_izvjestaj_preduzetnici (
        p_izvjestaj_id        in number,
        p_tipovi_preduzetnika in varchar2
    ) is
    begin
        delete from acc_izvjestaj_preduzetnici
        where
            izvjestaj_id = p_izvjestaj_id;

        for c1 in (
            select
                column_value as tip_preduzetnika_id
            from
                apex_string.split(p_tipovi_preduzetnika, ':')
        ) loop
            insert_izvjestaj_preduzetnik(
                p_izvjestaj_id        => p_izvjestaj_id,
                p_tip_preduzetnika_id => c1.tip_preduzetnika_id
            );
        end loop;

    end insert_izvjestaj_preduzetnici;

    procedure insert_izvjestaj_preduzetnik (
        p_izvjestaj_id        in number,
        p_tip_preduzetnika_id in number
    ) is
    begin
        insert into acc_izvjestaj_preduzetnici (
            izvjestaj_id,
            tip_preduzetnika_id
        ) values ( p_izvjestaj_id,
                   p_tip_preduzetnika_id );

    end insert_izvjestaj_preduzetnik;

    --------------------------------------------------------------
    -- procedures for table ACC_VRSTE_FAKTURA
    --------------------------------------------------------------

    procedure get_vrsta_fakture (
        p_id              in number,
        p_vrsta_naloga_id out number,
        p_naziv           out varchar2,
        p_sifra           out varchar2,
        p_fiskalizacija   out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_vrste_faktura
            where
                id = p_id
        ) loop
            p_vrsta_naloga_id := c1.vrsta_naloga_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_fiskalizacija := c1.fiskalizacija;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_vrsta_fakture;



    procedure get_vrsta_fakture (
        p_id                 in number,
        p_vrsta_naloga_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                vw_vrste_faktura
            where
                id = p_id
        ) loop
            p_vrsta_naloga_sifra := lower(c1.vrsta_naloga_sifra);
        end loop;
    end get_vrsta_fakture;

    procedure insert_vrsta_fakture (
        p_vrsta_naloga_id in number,
        p_naziv           in varchar2,
        p_sifra           in varchar2,
        p_fiskalizacija   in varchar2
    ) is
    begin
        insert into acc_vrste_faktura (
            vrsta_naloga_id,
            naziv,
            sifra,
            fiskalizacija
        ) values ( p_vrsta_naloga_id,
                   p_naziv,
                   p_sifra,
                   p_fiskalizacija );

    end insert_vrsta_fakture;

    procedure update_vrsta_fakture (
        p_id              in number,
        p_vrsta_naloga_id in number,
        p_naziv           in varchar2,
        p_sifra           in varchar2,
        p_fiskalizacija   in varchar2,
        p_valid           in varchar2
    ) is
    begin
        update acc_vrste_faktura
        set
            vrsta_naloga_id = p_vrsta_naloga_id,
            naziv = p_naziv,
            sifra = p_sifra,
            fiskalizacija = p_fiskalizacija,
            valid = p_valid
        where
            id = p_id;

    end update_vrsta_fakture;

    procedure delete_vrsta_fakture (
        p_id in number
    ) is
    begin
        delete from acc_vrste_faktura
        where
            id = p_id;

    end delete_vrsta_fakture;

    --------------------------------------------------------------
    -- procedures for table ACC_GRUPE_STAVKI
    --------------------------------------------------------------
    procedure get_grupa_stavke (
        p_id          in number,
        p_ooj_id      out number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                acc_grupe_stavki
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_grupa_stavke;

    function insert_grupa_stavke (
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2
    ) return number is
        l_id number;
    begin
        insert into acc_grupe_stavki (
            ooj_id,
            sifra,
            naziv
        ) values ( p_ooj_id,
                   p_sifra,
                   p_naziv ) returning id into l_id;

        return l_id;
    end insert_grupa_stavke;

    procedure update_grupa_stavke (
        p_id     in number,
        p_ooj_id in number,
        p_sifra  in varchar2,
        p_naziv  in varchar2,
        p_valid  in varchar2
    ) is
    begin
        update acc_grupe_stavki
        set
            ooj_id = p_ooj_id,
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_grupa_stavke;

    procedure delete_grupa_stavke (
        p_id in number
    ) is
    begin
        delete from acc_grupe_stavki_konta
        where
            grupa_stavke_id = p_id;

        delete from acc_grupe_stavki
        where
            id = p_id;

    end delete_grupa_stavke;

    --------------------------------------------------------------
    -- procedures for table ACC_GRUPE_STAVKI_KONTA
    --------------------------------------------------------------

    procedure get_grupa_stavke_konta (
        p_grupa_stavke_id in number,
        p_tip_kretanja_id in number,
        p_kontna_klasa_id out number,
        p_tip_stavke      out varchar2
    ) is
    begin
        for c1 in (
            select
                kontna_klasa_id,
                tip_stavke
            from
                acc_grupe_stavki_konta
            where
                    grupa_stavke_id = p_grupa_stavke_id
                and tip_kretanja_id = p_tip_kretanja_id
        ) loop
            p_kontna_klasa_id := c1.kontna_klasa_id;
            p_tip_stavke := c1.tip_stavke;
        end loop;
    end get_grupa_stavke_konta;

    procedure insert_grupa_stavke_konta (
        p_grupa_stavke_id in number,
        p_kontna_klasa_id in number,
        p_tip_kretanja_id in number,
        p_tip_stavke      in varchar2
    ) is
    begin
        insert into acc_grupe_stavki_konta (
            grupa_stavke_id,
            kontna_klasa_id,
            tip_kretanja_id,
            tip_stavke
        ) values ( p_grupa_stavke_id,
                   p_kontna_klasa_id,
                   p_tip_kretanja_id,
                   p_tip_stavke );

    end insert_grupa_stavke_konta;

    procedure update_grupa_stavke_konta (
        p_id              in number,
        p_grupa_stavke_id in number,
        p_kontna_klasa_id in number,
        p_tip_kretanja_id in number,
        p_tip_stavke      in varchar2
    ) is
    begin
        update acc_grupe_stavki_konta
        set
            grupa_stavke_id = p_grupa_stavke_id,
            kontna_klasa_id = p_kontna_klasa_id,
            tip_kretanja_id = p_tip_kretanja_id,
            tip_stavke = p_tip_stavke
        where
            id = p_id;

    end update_grupa_stavke_konta;

    procedure delete_grupa_stavke_konta (
        p_id in number
    ) is
    begin
        delete from acc_grupe_stavki_konta
        where
            id = p_id;

    end delete_grupa_stavke_konta;

    --------------------------------------------------------------
    -- procedures for table ACC_ZAVISNI_TROSKOVI
    --------------------------------------------------------------

    procedure get_zavisan_trosak (
        p_id              in number,
        p_kontna_klasa_id out number,
        p_sifra           out varchar2,
        p_naziv           out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_zavisni_troskovi
            where
                id = p_id
        ) loop
            p_kontna_klasa_id := c1.kontna_klasa_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_zavisan_trosak;

    procedure insert_zavisan_trosak (
        p_kontna_klasa_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2
    ) is
    begin
        insert into acc_zavisni_troskovi (
            kontna_klasa_id,
            sifra,
            naziv
        ) values ( p_kontna_klasa_id,
                   p_sifra,
                   p_naziv );

    end insert_zavisan_trosak;

    procedure update_zavisan_trosak (
        p_id              in number,
        p_kontna_klasa_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_valid           in varchar2
    ) is
    begin
        update acc_zavisni_troskovi
        set
            kontna_klasa_id = p_kontna_klasa_id,
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_zavisan_trosak;

    procedure delete_zavisan_trosak (
        p_id in number
    ) is
    begin
        delete from acc_zavisni_troskovi
        where
            id = p_id;

    end delete_zavisan_trosak;

    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_KRETANJA_ROBE
    --------------------------------------------------------------

    function get_tip_kretanja_robe_id (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                acc_tipovi_kretanja_robe
            where
                lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;
    end get_tip_kretanja_robe_id;

    procedure get_tip_kretanja_robe (
        p_id    in number,
        p_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                sifra
            from
                acc_tipovi_kretanja_robe
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
        end loop;
    end get_tip_kretanja_robe;

    procedure get_tip_kretanja_robe (
        p_id              in number,
        p_vrsta_naloga_id out number,
        p_sifra           out varchar2,
        p_naziv           out varchar2,
        p_tip_kretanja    out varchar2,
        p_valid           out varchar2,
        p_row_version     out number,
        p_created         out date,
        p_created_by      out varchar2,
        p_updated         out date,
        p_updated_by      out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_tipovi_kretanja_robe
            where
                id = p_id
        ) loop
            p_vrsta_naloga_id := c1.vrsta_naloga_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_tip_kretanja := c1.tip_kretanja;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_kretanja_robe;

    procedure insert_tip_kretanja_robe (
        p_vrsta_naloga_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_tip_kretanja    in varchar2
    ) is
    begin
        insert into acc_tipovi_kretanja_robe (
            vrsta_naloga_id,
            sifra,
            naziv,
            tip_kretanja
        ) values ( p_vrsta_naloga_id,
                   p_sifra,
                   p_naziv,
                   p_tip_kretanja );

    end insert_tip_kretanja_robe;

    procedure update_tip_kretanja_robe (
        p_id              in number,
        p_vrsta_naloga_id in number,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_tip_kretanja    in varchar2,
        p_valid           in varchar2
    ) is
    begin
        update acc_tipovi_kretanja_robe
        set
            vrsta_naloga_id = p_vrsta_naloga_id,
            sifra = p_sifra,
            naziv = p_naziv,
            tip_kretanja = p_tip_kretanja,
            valid = p_valid
        where
            id = p_id;

    end update_tip_kretanja_robe;

    procedure delete_tip_kretanja_robe (
        p_id in number
    ) is
    begin
        delete from acc_tipovi_kretanja_robe
        where
            id = p_id;

    end delete_tip_kretanja_robe;

    --------------------------------------------------------------
    -- procedures for table ACC_KLASE_OS
    --------------------------------------------------------------

    procedure copy_klase_os (
        p_new_ooj_id in number
    ) is
        type t_id_map is
            table of number index by pls_integer;
        v_map    t_id_map;
        v_new_id number;
    begin
        delete from acc_klase_os_konta
        where
            klasa_id in (
                select
                    id
                from
                    acc_klase_os
                where
                    ooj_id = p_new_ooj_id
            );
            
        delete from acc_klase_os
        where
            ooj_id = p_new_ooj_id;
            
        -- 1. Prvo ubaci sve bez parent_id (ili sa starim parent_id)
        for r in (
            select
                *
            from
                acc_klase_os
            where
                ooj_id is null
            start with
                parent_id is null
            connect by
                prior id = parent_id
        ) loop
            insert into acc_klase_os (
                ooj_id,
                parent_id,
                sifra,
                naziv,
                procenat,
                vijek_trajanja
            ) values ( p_new_ooj_id,
                       r.parent_id, -- privremeno stari parent
                       r.sifra,
                       r.naziv,
                       r.procenat,
                       r.vijek_trajanja ) returning id into v_map ( r.id );

        end loop;
    
        -- 2. Update parent_id na nove vrijednosti
        for r in (
            select
                id,
                parent_id
            from
                acc_klase_os
            where
                ooj_id = p_new_ooj_id
        ) loop
            if r.parent_id is not null then
                update acc_klase_os
                set
                    parent_id = v_map(r.parent_id)
                where
                    id = r.id;

            end if;
        end loop;
    
        -- 3. Kopiranje acc_klase_os_konta
        for r in (
            select
                k.*
            from
                     acc_klase_os_konta k
                join acc_klase_os a on a.id = k.klasa_id
            where
                a.ooj_id is null
        ) loop
            insert into acc_klase_os_konta (
                transakcija_id,
                klasa_id,
                kontna_klasa_id,
                valid
            ) values ( r.transakcija_id,
                       v_map(r.klasa_id), -- novi klasa_id
                       r.kontna_klasa_id,
                       r.valid );

        end loop;

    end copy_klase_os;

    procedure get_klasa_os (
        p_id             in number,
        p_ooj_id         out number,
        p_parent_id      out number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
        p_procenat       out number,
        p_vijek_trajanja out number,
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
                acc_klase_os
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_parent_id := c1.parent_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_procenat := c1.procenat;
            p_vijek_trajanja := c1.vijek_trajanja;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_klasa_os;

    procedure get_klasa_os (
        p_id             in number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
        p_procenat       out number,
        p_vijek_trajanja out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_klase_os
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_procenat := c1.procenat;
            p_vijek_trajanja := c1.vijek_trajanja;
        end loop;
    
    end get_klasa_os;

    procedure get_klasa_os (
        p_id             in number,
        p_procenat       out number,
        p_vijek_trajanja out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_klase_os
            where
                id = p_id
        ) loop
            p_procenat := c1.procenat;
            p_vijek_trajanja := c1.vijek_trajanja;
        end loop;
    end get_klasa_os;

    procedure get_klasa_os (
        p_id    in number,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                naziv
            from
                acc_klase_os
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
        end loop;
    
    end get_klasa_os;

    function insert_klasa_os (
        p_ooj_id         in number,
        p_parent_id      in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_procenat       in number,
        p_vijek_trajanja in number
    ) return number is
        l_id number;
    begin
        insert into acc_klase_os (
            ooj_id,
            parent_id,
            sifra,
            naziv,
            procenat,
            vijek_trajanja
        ) values ( p_ooj_id,
                   p_parent_id,
                   p_sifra,
                   p_naziv,
                   p_procenat,
                   p_vijek_trajanja ) returning id into l_id;

        -- return l_id;
        
        -- Konta
        insert into acc_klase_os_konta (
            klasa_id,
            transakcija_id,
            kontna_klasa_id
        )
        select distinct
            l_id,
            c001,
            c002
        from
            apex_collections
        where
            collection_name = 'KLASE_OS_KONTA';
            
        return l_id;                        -- 18.05.2026 / stefanl / ERP - 517
        
        exception
            when dup_val_on_index then
                raise_application_error(
                    -20001,
                    'Transakcija već postoji za ovu klasu osnovnih sredstava.'
        );
            
    end insert_klasa_os;

    procedure update_klasa_os (
        p_id             in number,
        p_ooj_id         in number,
        p_parent_id      in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_procenat       in number,
        p_vijek_trajanja in number,
        p_valid          in varchar2
    ) is
    begin
        update acc_klase_os
        set
            ooj_id = p_ooj_id,
            parent_id = p_parent_id,
            sifra = p_sifra,
            naziv = p_naziv,
            procenat = p_procenat,
            vijek_trajanja = p_vijek_trajanja,
            valid = p_valid
        where
            id = p_id;
            
        -- Prvo brisemo prethodna konta, pa nova
        delete from acc_klase_os_konta
        where
            klasa_id = p_id;

        insert into acc_klase_os_konta (
            klasa_id,
            transakcija_id,
            kontna_klasa_id
        )
        select distinct
            p_id,
            c001,
            c002
        from
            apex_collections
        where
            collection_name = 'KLASE_OS_KONTA';
            
        exception
            when dup_val_on_index then
                raise_application_error(
                    -20001,
                    'Transakcija već postoji za ovu klasu osnovnih sredstava.'
        );
            
    end update_klasa_os;

    procedure delete_klasa_os (
        p_id in number
    ) is
        e_child_exists EXCEPTION;
        PRAGMA EXCEPTION_INIT(e_child_exists, -2292);
    begin
        delete from acc_klase_os_konta
        where
            klasa_id = p_id;

        delete from acc_klase_os
        where
            id = p_id;
           
        EXCEPTION
            WHEN e_child_exists THEN
                raise_application_error(-20001, 'Ne možete obrisati stavku jer ima podređene elemente.');

    end delete_klasa_os;

    --------------------------------------------------------------
    -- procedures for table ACC_KLASE_OS_KONTA
    --------------------------------------------------------------

    function get_klasa_os_kontna_klasa_id (
        p_klasa_id in number,
        p_sifra    in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                vw_klase_os_konta
            where
                    klasa_id = p_klasa_id
                and lower(p_sifra) = lower(transakcija_sifra)
        ) loop
            return c1.kontna_klasa_id;
        end loop;

        return null;
    end get_klasa_os_kontna_klasa_id;

    procedure insert_klasa_os_konta (
        p_transakcija_id  in number,
        p_klasa_id        in number,
        p_kontna_klasa_id in number
    ) is
    begin
        insert into acc_klase_os_konta (
            transakcija_id,
            klasa_id,
            kontna_klasa_id
        ) values ( p_transakcija_id,
                   p_klasa_id,
                   p_kontna_klasa_id );

    end insert_klasa_os_konta;

    procedure update_klasa_os_konta (
        p_id              in number,
        p_transakcija_id  in number,
        p_klasa_id        in number,
        p_kontna_klasa_id in number
    ) is
    begin
        update acc_klase_os_konta
        set
            transakcija_id = p_transakcija_id,
            klasa_id = p_klasa_id,
            kontna_klasa_id = p_kontna_klasa_id
        where
            id = p_id;

    end update_klasa_os_konta;

    procedure delete_klasa_os_konta (
        p_id in number
    ) is
    begin
        delete from acc_klase_os_konta
        where
            id = p_id;

    end delete_klasa_os_konta;

    --------------------------------------------------------------
    -- procedures for table ACC_TRANSAKCIJE_OS
    --------------------------------------------------------------

    function get_transakcija_id (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                acc_transakcije_os
            where
                lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_transakcija_id;

    procedure get_transakcija_os (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                acc_transakcije_os
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_transakcija_os;

    procedure insert_transakcija_os (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into acc_transakcije_os (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_transakcija_os;

    procedure update_transakcija_os (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_transakcije_os
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_transakcija_os;

    procedure delete_transakcija_os (
        p_id in number
    ) is
    begin
        delete from acc_transakcije_os
        where
            id = p_id;

    end delete_transakcija_os;

    --------------------------------------------------------------
    -- procedures for table ACC_PDV_INDIKATORI
    --------------------------------------------------------------

    function get_pdv_indikator_id (
        p_ui    in varchar2,
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                acc_pdv_indikatori
            where
                    ui = p_ui
                and lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_pdv_indikator_id;

    procedure get_pdv_indikator (
        p_id                  in number,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_opis                out varchar2,
        p_vrijednost          out number,
        p_ui                  out varchar2,
        p_kontna_klasa_prefix out varchar2,
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
                acc_pdv_indikatori
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_vrijednost := c1.vrijednost;
            p_ui := c1.ui;
            p_kontna_klasa_prefix := c1.kontna_klasa_prefix;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_pdv_indikator;

    procedure get_pdv_indikator (
        p_id         in number,
        p_vrijednost out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_pdv_indikatori
            where
                id = p_id
        ) loop
            p_vrijednost := c1.vrijednost;
        end loop;
    end get_pdv_indikator;

    procedure get_pdv_indikator (
        p_id                  in number,
        p_sifra               out varchar2,
        p_kontna_klasa_prefix out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_pdv_indikatori
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_kontna_klasa_prefix := c1.kontna_klasa_prefix;
        end loop;
    end get_pdv_indikator;

    procedure insert_pdv_indikator (
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_vrijednost          in number,
        p_ui                  in varchar2,
        p_kontna_klasa_prefix in varchar2
    ) is
    begin
        insert into acc_pdv_indikatori (
            sifra,
            naziv,
            opis,
            vrijednost,
            ui,
            kontna_klasa_prefix
        ) values ( p_sifra,
                   p_naziv,
                   p_opis,
                   p_vrijednost,
                   p_ui,
                   p_kontna_klasa_prefix );

    end insert_pdv_indikator;

    procedure update_pdv_indikator (
        p_id                  in number,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_vrijednost          in number,
        p_ui                  in varchar2,
        p_kontna_klasa_prefix in varchar2,
        p_valid               in varchar2
    ) is
    begin
        update acc_pdv_indikatori
        set
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            vrijednost = p_vrijednost,
            ui = p_ui,
            kontna_klasa_prefix = p_kontna_klasa_prefix,
            valid = p_valid
        where
            id = p_id;

    end update_pdv_indikator;

    procedure delete_pdv_indikator (
        p_id in number
    ) is
    begin
        delete from acc_pdv_indikatori
        where
            id = p_id;

    end delete_pdv_indikator;

    --------------------------------------------------------------
    -- procedures for table ACC_IZVJESTAJI_AOP
    --------------------------------------------------------------

    procedure insert_izvjestaj_aop (
        p_izvjestaj_id in number,
        p_naziv        in varchar2,
        p_aop          in varchar2,
        p_tip          in varchar2
    ) is
    begin
        insert into acc_izvjestaji_aop (
            izvjestaj_id,
            naziv,
            aop,
            tip
        ) values ( p_izvjestaj_id,
                   p_naziv,
                   p_aop,
                   p_tip );

    end insert_izvjestaj_aop;

    procedure update_izvjestaj_aop (
        p_id           in number,
        p_izvjestaj_id in number,
        p_naziv        in varchar2,
        p_aop          in varchar2,
        p_tip          in varchar2
    ) is
    begin
        update acc_izvjestaji_aop
        set
            izvjestaj_id = p_izvjestaj_id,
            naziv = p_naziv,
            aop = p_aop,
            tip = p_tip
        where
            id = p_id;

    end update_izvjestaj_aop;

    procedure delete_izvjestaj_aop (
        p_id in number
    ) is
    begin
        delete from acc_izvjestaji_aop
        where
            id = p_id;

    end delete_izvjestaj_aop;

    --------------------------------------------------------------
    -- procedures for table ACC_AOP_KONTA
    --------------------------------------------------------------

    procedure insert_aop_konto (
        p_aop_id          in number,
        p_kontna_klasa_id in number,
        p_tip             in varchar2,
        p_polje           in varchar2,
        p_sum_tip         in varchar2
    ) is
    begin
        insert into acc_aop_konta (
            aop_id,
            kontna_klasa_id,
            tip,
            polje,
            sum_tip
        ) values ( p_aop_id,
                   p_kontna_klasa_id,
                   p_tip,
                   p_polje,
                   p_sum_tip );

    end insert_aop_konto;

    procedure update_aop_konto (
        p_id              in number,
        p_aop_id          in number,
        p_kontna_klasa_id in number,
        p_tip             in varchar2,
        p_polje           in varchar2,
        p_sum_tip         in varchar2
    ) is
    begin
        update acc_aop_konta
        set
            aop_id = p_aop_id,
            kontna_klasa_id = p_kontna_klasa_id,
            tip = p_tip,
            polje = p_polje,
            sum_tip = p_sum_tip
        where
            id = p_id;

    end update_aop_konto;

    procedure delete_aop_konto (
        p_id in number
    ) is
    begin
        delete from acc_aop_konta
        where
            id = p_id;

    end delete_aop_konto;

    --------------------------------------------------------------
    -- procedures for table ACC_AOP_GRUPE
    --------------------------------------------------------------

    procedure insert_aop_grupa (
        p_aop_id  in number,
        p_sum_id  in number,
        p_sum_tip in varchar2
    ) is
    begin
        insert into acc_aop_grupe (
            aop_id,
            sum_id,
            sum_tip
        ) values ( p_aop_id,
                   p_sum_id,
                   p_sum_tip );

    end insert_aop_grupa;

    procedure update_aop_grupa (
        p_id      in number,
        p_aop_id  in number,
        p_sum_id  in number,
        p_sum_tip in varchar2
    ) is
    begin
        update acc_aop_grupe
        set
            aop_id = p_aop_id,
            sum_id = p_sum_id,
            sum_tip = p_sum_tip
        where
            id = p_id;

    end update_aop_grupa;

    procedure delete_aop_grupa (
        p_id in number
    ) is
    begin
        delete from acc_aop_grupe
        where
            id = p_id;

    end delete_aop_grupa;

    --------------------------------------------------------------
    -- procedures for table ACC_AUTOMATSKA_KNJIZENJA
    --------------------------------------------------------------

    procedure get_automatsko_knjizenje (
        p_id               in number,
        p_vrsta_fakture_id out number,
        p_naziv            out varchar2,
        p_sifra            out varchar2,
        p_valid            out varchar2,
        p_row_version      out number,
        p_created          out date,
        p_created_by       out varchar2,
        p_updated          out date,
        p_updated_by       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                acc_automatska_knjizenja
            where
                id = p_id
        ) loop
            p_vrsta_fakture_id := c1.vrsta_fakture_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_automatsko_knjizenje;

    procedure insert_automatsko_knjizenje (
        p_vrsta_fakture_id in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2
    ) is
    begin
        insert into acc_automatska_knjizenja (
            vrsta_fakture_id,
            naziv,
            sifra
        ) values ( p_vrsta_fakture_id,
                   p_naziv,
                   p_sifra );

    end insert_automatsko_knjizenje;

    procedure update_automatsko_knjizenje (
        p_id               in number,
        p_vrsta_fakture_id in number,
        p_naziv            in varchar2,
        p_sifra            in varchar2,
        p_valid            in varchar2
    ) is
    begin
        update acc_automatska_knjizenja
        set
            vrsta_fakture_id = p_vrsta_fakture_id,
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_automatsko_knjizenje;

    procedure delete_automatsko_knjizenje (
        p_id in number
    ) is
    begin
        delete from acc_automatska_knjizenja
        where
            id = p_id;

    end delete_automatsko_knjizenje;

    --------------------------------------------------------------
    -- procedures for table ACC_CHART
    --------------------------------------------------------------

    procedure get_chart (
        p_id           in number,
        p_sifra        out varchar2,
        p_naziv        out varchar2,
        p_valid        out varchar2,
        p_kontna_klasa out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    ) is
    begin
        for c1 in (
            select
                id,
                sifra,
                naziv,
                valid,
                row_version,
                created,
                created_by,
                updated,
                updated_by,
                (
                    select
                        listagg(kontna_klasa_id, ':')
                    from
                        acc_chart_konta k
                    where
                        k.chart_id = p_id
                ) as kontna_klasa
            from
                acc_chart c
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_kontna_klasa := c1.kontna_klasa;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_chart;

    procedure get_chart (
        p_id    in number,
        p_sifra out varchar2,
        p_naziv out varchar2
    ) is
    begin
        for c1 in (
            select
                sifra,
                naziv
            from
                acc_chart c
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
        end loop;
    end get_chart;

    function insert_chart (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) return number is
        l_id number;
    begin
        insert into acc_chart (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv ) returning id into l_id;

        return l_id;
    end insert_chart;

    procedure update_chart (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_chart
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_chart;

    procedure delete_chart (
        p_id in number
    ) is
    begin
        delete from acc_chart_konta
        where
            id = p_id;

        delete from acc_chart
        where
            id = p_id;

    end delete_chart;

    --------------------------------------------------------------
    -- procedures for table ACC_CHART_KONTA
    --------------------------------------------------------------

    procedure insert_chart_konto (
        p_chart_id     in number,
        p_kontna_klasa in varchar2
    ) is
    begin
        delete from acc_chart_konta
        where
            chart_id = p_chart_id;

        for c1 in (
            select
                column_value as kontna_klasa_id
            from
                apex_string.split(p_kontna_klasa, ':')
        ) loop
            insert into acc_chart_konta (
                chart_id,
                kontna_klasa_id
            ) values ( p_chart_id,
                       c1.kontna_klasa_id );

        end loop;

    end insert_chart_konto;
    
    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_SKLADISTA
    --------------------------------------------------------------

    procedure get_tip_skladista (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
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
                acc_tipovi_skladista
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_skladista;

    procedure insert_tip_skladista (
        p_naziv in varchar2,
        p_sifra in varchar2
    ) is
    begin
        insert into acc_tipovi_skladista (
            naziv,
            sifra
        ) values ( p_naziv,
                   p_sifra );

    end insert_tip_skladista;

    procedure update_tip_skladista (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_tipovi_skladista
        set
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_tip_skladista;

    procedure delete_tip_skladista (
        p_id in number
    ) is
    begin
        delete from acc_tipovi_skladista
        where
            id = p_id;

    end delete_tip_skladista;
    
    --------------------------------------------------------------
    -- procedures for table ACC_TIPOVI_CIJENA
    --------------------------------------------------------------

    procedure get_tip_cijena (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
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
                acc_tipovi_cijena
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_cijena;

    procedure insert_tip_cijena (
        p_naziv in varchar2,
        p_sifra in varchar2
    ) is
    begin
        insert into acc_tipovi_cijena (
            naziv,
            sifra
        ) values ( p_naziv,
                   p_sifra );

    end insert_tip_cijena;

    procedure update_tip_cijena (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    ) is
    begin
        update acc_tipovi_cijena
        set
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_tip_cijena;

    procedure delete_tip_cijena (
        p_id in number
    ) is
    begin
        delete from acc_tipovi_cijena
        where
            id = p_id;

    end delete_tip_cijena;
    
    --------------------------------------------------------------
    -- procedures for table ACC_STATUSI
    --------------------------------------------------------------

    function get_status_id (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                acc_statusi
            where
                sifra = p_sifra
        ) loop
            return c1.id;
        end loop;
    end get_status_id;

    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_color_code  out varchar2,
        p_opis        out varchar2,
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
                acc_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_color_code := c1.color_code;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_color_code in varchar2,
        p_opis       in varchar2
    ) is
    begin
        insert into acc_statusi (
            naziv,
            sifra,
            color_code,
            opis
        ) values ( p_naziv,
                   p_sifra,
                   p_color_code,
                   p_opis );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_color_code in varchar2,
        p_opis       in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update acc_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            color_code = p_color_code,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from acc_statusi
        where
            id = p_id;

    end delete_status;
    
    --------------------------------
    -- procedures for table ACC_MODULI
    --------------------------------
        procedure get_acc_moduli (
        p_id     in  number,
        p_sifra  out varchar2,
        p_opis   out varchar2,
        p_valid  out varchar2
    ) is
    begin
        select sifra,
               opis,
               valid
          into p_sifra,
               p_opis,
               p_valid
          from acc_moduli
         where id = p_id;
    exception
        when no_data_found then
            p_sifra := null;
            p_opis  := null;
            p_valid := null;
    end get_acc_moduli;


    procedure insert_acc_moduli (
        p_sifra  in  varchar2,
        p_opis   in  varchar2,
        p_id     out number
    ) is
    begin
        insert into acc_moduli (
            sifra,
            opis,
            valid
        ) values (
            p_sifra,
            p_opis,
            'Y'
        )
        returning id into p_id;
    end insert_acc_moduli;


    procedure update_acc_moduli (
        p_id     in number,
        p_sifra  in number,
        p_opis   in varchar2,
        p_valid  in varchar2
    ) is
    begin
        update acc_moduli
           set sifra = p_sifra,
               opis  = p_opis,
               valid = p_valid
         where id = p_id;
    end update_acc_moduli;


    procedure delete_acc_moduli (
        p_id in number
    ) is
    begin
        update acc_moduli
           set valid = 'N'
         where id = p_id;
    end delete_acc_moduli;
    
    
    --------------------------------
    -- procedures for table ACC_MJESTA_TROSKA
    --------------------------------
    
    procedure get_acc_mjesta_troska (
        p_id        in  number,
        p_ooj_id    out number,
        p_sifra     out varchar2,
        p_naziv     out varchar2,
        p_nad_id    out number,
        p_oj_id     out number,
        p_valid     out varchar2,
        p_radnik_id out number 
    ) is
    begin
        p_ooj_id    := null;
        p_sifra     := null;
        p_naziv     := null;
        p_nad_id    := null;
        p_oj_id     := null;
        p_valid     := null;
        p_radnik_id := null;

        for r in (
            select mt.ooj_id, mt.sifra, mt.naziv, mt.nad_id, mt.oj_id, mt.valid, mt.radnik_id
            from sif.acc_mjesta_troska mt
            where mt.id = p_id
        )
        loop
            p_ooj_id    := r.ooj_id;
            p_sifra     := r.sifra;
            p_naziv     := r.naziv;
            p_nad_id    := r.nad_id;
            p_oj_id     := r.oj_id;
            p_valid     := r.valid;
            p_radnik_id := r.radnik_id;
        end loop;
    end get_acc_mjesta_troska;

    procedure insert_acc_mjesta_troska (
        p_ooj_id    in  number,
        p_sifra     in  varchar2,
        p_naziv     in  varchar2,
        p_nad_id    in  number   default null,
        p_oj_id     in  number   default null,
        p_valid     in  varchar2 default 'Y',
        p_radnik_id in  number   default null,
        p_id        out number
    )
    is
    begin
        insert into sif.acc_mjesta_troska (ooj_id, sifra, naziv, nad_id, oj_id, valid, radnik_id)
        values (p_ooj_id, p_sifra, p_naziv, p_nad_id, p_oj_id, p_valid, p_radnik_id)
        returning id into p_id;
    end insert_acc_mjesta_troska;

    procedure update_acc_mjesta_troska (
        p_id        in number,
        p_ooj_id    in number,
        p_sifra     in varchar2,
        p_naziv     in varchar2,
        p_nad_id    in number,
        p_oj_id     in number,
        p_valid     in varchar2,
        p_radnik_id in number
    )
    is
    begin
        update sif.acc_mjesta_troska
        set ooj_id    = p_ooj_id,
            sifra     = p_sifra,
            naziv     = p_naziv,
            nad_id    = p_nad_id,
            oj_id     = p_oj_id,
            valid     = p_valid,
            radnik_id = p_radnik_id
        where id = p_id;
    end update_acc_mjesta_troska;

    procedure delete_acc_mjesta_troska (
        p_id in number
    )
    is
    begin
        delete from sif.acc_mjesta_troska
        where id = p_id;
    end delete_acc_mjesta_troska;
    
    --------------------------------
    -- procedures for table ACC_RADNICI
    --------------------------------
 
    procedure get_acc_radnici (
        p_id            in  number,
        p_ooj_id        out number,
        p_interni_broj  out varchar2,
        p_ime           out varchar2,
        p_prezime       out varchar2,
        p_email         out varchar2,
        p_oj_id         out number,
        p_valid         out varchar2
    ) is
    begin
        p_ooj_id       := null;
        p_interni_broj := null;
        p_ime          := null;
        p_prezime      := null;
        p_email        := null;
        p_oj_id        := null;
        p_valid        := null;
 
        for r in (
            select r.ooj_id, r.interni_broj, r.ime, r.prezime, r.email, r.oj_id, r.valid
            from sif.acc_radnici r
            where r.id = p_id
        )
        loop
            p_ooj_id       := r.ooj_id;
            p_interni_broj := r.interni_broj;
            p_ime          := r.ime;
            p_prezime      := r.prezime;
            p_email        := r.email;
            p_oj_id        := r.oj_id;
            p_valid        := r.valid;
        end loop;
    end get_acc_radnici;
 
    procedure insert_acc_radnici (
        p_ooj_id        in  number,
        p_interni_broj  in  varchar2 default null,
        p_ime           in  varchar2,
        p_prezime       in  varchar2,
        p_email         in  varchar2 default null,
        p_oj_id         in  number   default null,
        p_valid         in  varchar2 default 'Y',
        p_id            out number
    )
    is
    begin
        insert into sif.acc_radnici (ooj_id, interni_broj, ime, prezime, email, oj_id, valid)
        values (p_ooj_id, p_interni_broj, p_ime, p_prezime, p_email, p_oj_id, p_valid)
        returning id into p_id;
    end insert_acc_radnici;
 
    procedure update_acc_radnici (
        p_id            in number,
        p_ooj_id        in number,
        p_interni_broj  in varchar2,
        p_ime           in varchar2,
        p_prezime       in varchar2,
        p_email         in varchar2,
        p_oj_id         in number,
        p_valid         in varchar2
    )
    is
    begin
        update sif.acc_radnici
        set ooj_id       = p_ooj_id,
            interni_broj = p_interni_broj,
            ime          = p_ime,
            prezime      = p_prezime,
            email        = p_email,
            oj_id        = p_oj_id,
            valid        = p_valid
        where id = p_id;
    end update_acc_radnici;
 
    procedure delete_acc_radnici (
        p_id in number
    )
    is
    begin
        delete from sif.acc_radnici
        where id = p_id;
    end delete_acc_radnici;
    
    
    
    procedure get_vrste_dokumenata (
        p_id              in  number,
        p_app_id          out number,
        p_acc_modul_id    out number,
        p_ooj_id          out number,
        p_sifra           out varchar2,
        p_naziv           out varchar2,
        p_opis            out varchar2,
        p_vrsta_naloga_id out number,
        p_fiskalna_sifra  out varchar2,
        p_tip_kretanja    out varchar2,
        p_valid           out varchar2
    ) is
        cursor c_vrsta is
            select app_id, acc_modul_id, ooj_id, sifra, naziv, opis, vrsta_naloga_id,
                   fiskalna_sifra, tip_kretanja, valid
            from   sif.vrste_dokumenata
            where  id = p_id;
    begin
        p_app_id          := null;
        p_acc_modul_id    := null;
        p_ooj_id          := null;
        p_sifra           := null;
        p_naziv           := null;
        p_opis            := null;
        p_vrsta_naloga_id := null;
        p_fiskalna_sifra  := null;
        p_tip_kretanja    := null;
        p_valid           := null;

        open c_vrsta;
        fetch c_vrsta into p_app_id, p_acc_modul_id, p_ooj_id, p_sifra, p_naziv, p_opis,
                            p_vrsta_naloga_id, p_fiskalna_sifra, p_tip_kretanja, p_valid;
        close c_vrsta;
    end get_vrste_dokumenata;


    function get_vd_sifra (
        p_id in number
    ) return varchar2
    is

        l_sifra varchar2(100):=null;
    begin
      
        for f in (select sifra
                  from   sif.vrste_dokumenata
                  where  id = p_id)
        loop
          l_sifra:=f.sifra;
        end loop;
        
        return lower(l_sifra);

    end get_vd_sifra;


    procedure insert_vrste_dokumenata (
        p_app_id          in number,
        p_acc_modul_id    in number,
        p_ooj_id          in number default null,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_opis            in varchar2 default null,
        p_vrsta_naloga_id in number default null,
        p_fiskalna_sifra  in varchar2 default null,
        p_tip_kretanja    in varchar2 default null,
        p_valid           in varchar2 default 'Y',
        p_id              out number
    ) is
    begin
        insert into sif.vrste_dokumenata (
            app_id, acc_modul_id, ooj_id, sifra, naziv, opis, vrsta_naloga_id,
            fiskalna_sifra, tip_kretanja, valid
        ) values (
            p_app_id, p_acc_modul_id, p_ooj_id, p_sifra, p_naziv, p_opis, p_vrsta_naloga_id,
            p_fiskalna_sifra, p_tip_kretanja, p_valid
        )
        returning id into p_id;
    end insert_vrste_dokumenata;


    procedure update_vrste_dokumenata (
        p_id              in number,
        p_app_id          in number,
        p_acc_modul_id    in number,
        p_ooj_id          in number default null,
        p_sifra           in varchar2,
        p_naziv           in varchar2,
        p_opis            in varchar2 default null,
        p_vrsta_naloga_id in number default null,
        p_fiskalna_sifra  in varchar2 default null,
        p_tip_kretanja    in varchar2 default null,
        p_valid           in varchar2 default 'Y'
    ) is
    begin
        update sif.vrste_dokumenata
        set    app_id          = p_app_id,
               acc_modul_id    = p_acc_modul_id,
               ooj_id          = p_ooj_id,
               sifra           = p_sifra,
               naziv           = p_naziv,
               opis            = p_opis,
               vrsta_naloga_id = p_vrsta_naloga_id,
               fiskalna_sifra  = p_fiskalna_sifra,
               tip_kretanja    = p_tip_kretanja,
               valid           = p_valid
        where  id = p_id;
    end update_vrste_dokumenata;


    procedure delete_vrste_dokumenata (
        p_id in number
    ) is
    begin
        delete sif.vrste_dokumenata
        where  id = p_id;
    end delete_vrste_dokumenata;

end acc_pkg;
/

prompt
prompt Creating package body ANKETE_PKG
prompt ================================
prompt
create or replace package body sif.ankete_pkg is

    -- Tipovi obavjestenja
    procedure get_tip_obavjestenja (
        p_id          in number,
        p_naziv       out varchar2,
        p_color_code  out varchar2,
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
                a_sif_tipovi_obavjestenja
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_obavjestenja;

    procedure insert_tip_obavjestenja (
        p_naziv      in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into a_sif_tipovi_obavjestenja (
            naziv,
            color_code
        ) values ( p_naziv,
                   p_color_code );

    end insert_tip_obavjestenja;

    procedure update_tip_obavjestenja (
        p_id         in number,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update a_sif_tipovi_obavjestenja
        set
            naziv = p_naziv,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_tip_obavjestenja;

    procedure delete_tip_obavjestenja (
        p_id in number
    ) is
    begin
        delete from a_sif_tipovi_obavjestenja
        where
            id = p_id;

    end delete_tip_obavjestenja;

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                a_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into a_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update a_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from a_sif_statusi
        where
            id = p_id;

    end delete_status;

end ankete_pkg;
/

prompt
prompt Creating package body BOLOVANJE_PKG
prompt ===================================
prompt
create or replace package body sif.bolovanje_pkg is
    -- Status
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                b_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into b_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update b_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    -- Tip
    procedure get_tip (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
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
                b_sif_tipovi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip;

    procedure insert_tip (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into b_sif_tipovi (
            naziv,
            sifra,
            opis
        ) values ( p_naziv,
                   p_sifra,
                   p_opis );

    end insert_tip;

    procedure update_tip (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update b_sif_tipovi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip;

    -- Prisutnosti
    procedure get_prisutnost (
        p_id                        in number,
        p_evidencija_prisutnosti_id out number,
        p_naziv                     out varchar2,
        p_code                      out varchar2,
        p_valid                     out varchar2,
        p_row_version               out number,
        p_created                   out date,
        p_created_by                out varchar2,
        p_updated                   out date,
        p_updated_by                out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                b_sif_prisutnosti
            where
                id = p_id
        ) loop
            p_evidencija_prisutnosti_id := c1.evidencija_prisutnosti_id;
            p_naziv := c1.naziv;
            p_code := c1.code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_prisutnost;

    procedure insert_prisutnost (
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_code                      in varchar2
    ) is
    begin
        insert into b_sif_prisutnosti (
            evidencija_prisutnosti_id,
            naziv,
            code
        ) values ( p_evidencija_prisutnosti_id,
                   p_naziv,
                   p_code );

    end insert_prisutnost;

    procedure update_prisutnost (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_code                      in varchar2,
        p_valid                     in varchar2
    ) is
    begin
        update b_sif_prisutnosti
        set
            evidencija_prisutnosti_id = p_evidencija_prisutnosti_id,
            naziv = p_naziv,
            code = p_code,
            valid = p_valid
        where
            id = p_id;

    end update_prisutnost;

    procedure delete_prisutnost (
        p_id in number
    ) is
    begin
        delete from b_sif_prisutnosti
        where
            id = p_id;

    end delete_prisutnost;

end bolovanje_pkg;
/

prompt
prompt Creating package body BUDZET_PKG
prompt ================================
prompt
create or replace package body sif.budzet_pkg is

    -- Status
    function get_status_with_sifra (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                budzet_statusi
            where
                lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        raise_application_error(-20001, 'No status found.');
    end get_status_with_sifra;

    procedure get_status (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_color_code  out varchar2,
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
                budzet_statusi
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into budzet_statusi (
            sifra,
            naziv,
            color_code
        ) values ( p_sifra,
                   p_naziv,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update budzet_statusi
        set
            sifra = p_sifra,
            naziv = p_naziv,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from budzet_statusi
        where
            id = p_id;

    end delete_status;

end budzet_pkg;
/

prompt
prompt Creating package body CMS_PKG
prompt =============================
prompt
create or replace package body sif.cms_pkg as

    --SIF_STATUSI

    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
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
                cms_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_icon := c1.icon;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    ) is
    begin
        insert into cms_statusi (
            naziv,
            sifra,
            opis,
            color_code,
            icon
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code,
                   p_icon );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update cms_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            icon = p_icon,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from cms_statusi
        where
            id = p_id;

    end delete_status;

    --SIF_ALAT

    procedure get_alat (
        p_id            in number,
        p_naziv         out varchar2,
        p_support_email out varchar2,
        p_link_alati    out varchar2,
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
                cms_alati
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_support_email := c1.support_email;
            p_link_alati := c1.link_alati;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_alat;

    procedure insert_alat (
        p_naziv         in varchar2,
        p_support_email in varchar2,
        p_link_alati    in varchar2
    ) is
    begin
        insert into cms_alati (
            naziv,
            support_email,
            link_alati
        ) values ( p_naziv,
                   p_support_email,
                   p_link_alati );

    end insert_alat;

    procedure update_alat (
        p_id            in number,
        p_naziv         in varchar2,
        p_support_email in varchar2,
        p_link_alati    in varchar2,
        p_valid         in varchar2
    ) is
    begin
        update cms_alati
        set
            naziv = p_naziv,
            support_email = p_support_email,
            link_alati = p_link_alati,
            valid = p_valid
        where
            id = p_id;

    end update_alat;

    procedure delete_alat (
        p_id in number
    ) is
    begin
        delete from cms_alati
        where
            id = p_id;

    end delete_alat;

    --SIF_TLD

    procedure get_tld (
        p_id          in number,
        p_naziv       out varchar2,
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
                cms_tld
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tld;

    procedure insert_tld (
        p_naziv in varchar2
    ) is
    begin
        insert into cms_tld ( naziv ) values ( p_naziv );

    end insert_tld;

    procedure update_tld (
        p_id    in number,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update cms_tld
        set
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tld;

    procedure delete_tld (
        p_id in number
    ) is
    begin
        delete from cms_tld
        where
            id = p_id;

    end delete_tld;

    --SIF_REGISTRARI

    procedure get_registrar (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_web         out varchar2,
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
                cms_registrari
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_email := c1.email;
            p_web := c1.web;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_registrar;

    procedure insert_registrar (
        p_naziv in varchar2,
        p_email in varchar2,
        p_web   in varchar2
    ) is
    begin
        insert into cms_registrari (
            naziv,
            email,
            web
        ) values ( p_naziv,
                   p_email,
                   p_web );

    end insert_registrar;

    procedure update_registrar (
        p_id    in number,
        p_naziv in varchar2,
        p_email in varchar2,
        p_web   in varchar2,
        p_valid in varchar2
    ) is
    begin
        update cms_registrari
        set
            naziv = p_naziv,
            email = p_email,
            web = p_web,
            valid = p_valid
        where
            id = p_id;

    end update_registrar;

    procedure delete_registrar (
        p_id in number
    ) is
    begin
        delete from cms_registrari
        where
            id = p_id;

    end delete_registrar;

    --SIF_REGISTRAR_TLD

    procedure get_registrar_tld (
        p_id           in number,
        p_registrar_id out number,
        p_tld_id       out number,
        p_valid        out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                cms_registrar_tld
            where
                id = p_id
        ) loop
            p_registrar_id := c1.registrar_id;
            p_tld_id := c1.tld_id;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_registrar_tld;

    procedure insert_registrar_tld (
        p_registrar_id in number,
        p_tld_id       in number
    ) is
    begin
        insert into cms_registrar_tld (
            registrar_id,
            tld_id
        ) values ( p_registrar_id,
                   p_tld_id );

    end insert_registrar_tld;

    procedure update_registrar_tld (
        p_id           in number,
        p_registrar_id in number,
        p_tld_id       in number,
        p_valid        in varchar2
    ) is
    begin
        update cms_registrar_tld
        set
            registrar_id = p_registrar_id,
            tld_id = p_tld_id,
            valid = p_valid
        where
            id = p_id;

    end update_registrar_tld;

    procedure delete_registrar_tld (
        p_id in number
    ) is
    begin
        delete from cms_registrar_tld
        where
            id = p_id;

    end delete_registrar_tld;

end cms_pkg;
/

prompt
prompt Creating package body CS_PKG
prompt ============================
prompt
CREATE OR REPLACE PACKAGE BODY SIF.cs_pkg IS
-- Kategorija vozila
    PROCEDURE get_kategorija_vozila (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_kategorija_vozila
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_kategorija_vozila;

    PROCEDURE insert_kategorija_vozila (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_kategorija_vozila (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_kategorija_vozila;

    PROCEDURE update_kategorija_vozila (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_kategorija_vozila
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_kategorija_vozila;

    PROCEDURE delete_kategorija_vozila (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_kategorija_vozila
        WHERE
            id = p_id;

    END delete_kategorija_vozila;
   -- Proizvodjaci vozila

    PROCEDURE get_proizvodjac_vozila (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_proizvodjaci_vozila
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_proizvodjac_vozila;

    PROCEDURE insert_proizvodjac_vozila (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_proizvodjaci_vozila (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_proizvodjac_vozila;

    PROCEDURE update_proizvodjac_vozila (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_proizvodjaci_vozila
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_proizvodjac_vozila;

    PROCEDURE delete_proizvodjac_vozila (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_proizvodjaci_vozila
        WHERE
            id = p_id;

    END delete_proizvodjac_vozila;

    -- Modeli vozila
    PROCEDURE get_model_vozila (
        p_id             IN NUMBER,
        p_proizvodjac_id OUT NUMBER,
        p_sifra          OUT VARCHAR2,
        p_naziv          OUT VARCHAR2,
        p_valid          OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_modeli_vozila
            WHERE
                id = p_id
        ) LOOP
            p_proizvodjac_id := c1.proizvodjac_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_model_vozila;

    PROCEDURE insert_model_vozila (
        p_proizvodjac_id IN NUMBER,
        p_sifra          IN VARCHAR2,
        p_naziv          IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_modeli_vozila (
            proizvodjac_id,
            sifra,
            naziv
        ) VALUES ( p_proizvodjac_id,
                   p_sifra,
                   p_naziv );

    END insert_model_vozila;

    PROCEDURE update_model_vozila (
        p_id             IN NUMBER,
        p_proizvodjac_id IN NUMBER,
        p_sifra          IN VARCHAR2,
        p_naziv          IN VARCHAR2,
        p_valid          IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_modeli_vozila
        SET
            proizvodjac_id = p_proizvodjac_id,
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_model_vozila;

    PROCEDURE delete_model_vozila (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_modeli_vozila
        WHERE
            id = p_id;

    END delete_model_vozila;


    -- Tipovi goriva
    PROCEDURE get_tip_goriva (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_tipovi_goriva
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_goriva;

    PROCEDURE insert_tip_goriva (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_tipovi_goriva (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_tip_goriva;

    PROCEDURE update_tip_goriva (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_tipovi_goriva
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_goriva;

    PROCEDURE delete_tip_goriva (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_tipovi_goriva
        WHERE
            id = p_id;

    END delete_tip_goriva;


    -- Tipovi mjenjaca
    PROCEDURE get_tip_mjenjaca (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_tipovi_mjenjaca
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_mjenjaca;

    PROCEDURE insert_tip_mjenjaca (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_tipovi_mjenjaca (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_tip_mjenjaca;

    PROCEDURE update_tip_mjenjaca (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_tipovi_mjenjaca
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_mjenjaca;

    PROCEDURE delete_tip_mjenjaca (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_tipovi_mjenjaca
        WHERE
            id = p_id;

    END delete_tip_mjenjaca;

    -- Tipovi pogona
    PROCEDURE get_tip_pogona (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_tipovi_pogona
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_pogona;

    PROCEDURE insert_tip_pogona (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_tipovi_pogona (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_tip_pogona;

    PROCEDURE update_tip_pogona (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_tipovi_pogona
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_pogona;

    PROCEDURE delete_tip_pogona (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_tipovi_pogona
        WHERE
            id = p_id;

    END delete_tip_pogona;

    -- Proizvodjaci
    PROCEDURE get_proizvodjac (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_proizvodjaci
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_proizvodjac;

    PROCEDURE insert_proizvodjac (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_proizvodjaci (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_proizvodjac;

    PROCEDURE update_proizvodjac (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_proizvodjaci
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_proizvodjac;

    PROCEDURE delete_proizvodjac (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_proizvodjaci
        WHERE
            id = p_id;

    END delete_proizvodjac;

    -- Tipovi rada
    PROCEDURE get_tip_rada (
        p_id    IN NUMBER,
        p_sifra OUT VARCHAR2,
        p_naziv OUT VARCHAR2,
        p_valid OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_tipovi_rada
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_rada;

    PROCEDURE insert_tip_rada (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_tipovi_rada (
            sifra,
            naziv
        ) VALUES ( p_sifra,
                   p_naziv );

    END insert_tip_rada;

    PROCEDURE update_tip_rada (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_tipovi_rada
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_rada;

    PROCEDURE delete_tip_rada (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_tipovi_rada
        WHERE
            id = p_id;

    END delete_tip_rada;

    -- Statusi
    PROCEDURE get_status (
        p_id         IN NUMBER,
        p_sifra      OUT VARCHAR2,
        p_naziv      OUT VARCHAR2,
        p_color_code OUT VARCHAR2,
        p_icon       OUT VARCHAR2,
        p_valid      OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                cs_statusi
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
            p_icon := c1.icon;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_status;

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_icon       IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO cs_statusi (
            sifra,
            naziv,
            color_code,
            icon
        ) VALUES ( p_sifra,
                   p_naziv,
                   p_color_code,
                   p_icon );

    END insert_status;

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_valid      IN VARCHAR2
    ) IS
    BEGIN
        UPDATE cs_statusi
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            color_code = p_color_code,
            icon = p_icon,
            valid = p_valid
        WHERE
            id = p_id;

    END update_status;

    PROCEDURE delete_status (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM cs_statusi
        WHERE
            id = p_id;

    END delete_status;

END cs_pkg;
/

prompt
prompt Creating package body DMS_PKG
prompt =============================
prompt
create or replace package body sif.dms_pkg as

    procedure get_pristup (
        p_id          in number,
        p_ooj_id      out number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_sequence    out number,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2
    ) as
    begin
        for c1 in (
            select
                *
            from
                dms_pristupi
            where
                id = p_id
        ) loop
            p_ooj_id := c1.ooj_id;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_sequence := c1.sequence;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_pristup;

    procedure insert_pristup (
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_sifra    in varchar2,
        p_sequence in number,
        p_opis     in varchar2
    ) as
    begin
        insert into dms_pristupi (
            ooj_id,
            naziv,
            sifra,
            sequence,
            opis
        ) values ( p_ooj_id,
                   p_naziv,
                   p_sifra,
                   p_sequence,
                   p_opis );

    end insert_pristup;

    procedure update_pristup (
        p_id       in number,
        p_ooj_id   in number,
        p_naziv    in varchar2,
        p_sifra    in varchar2,
        p_sequence in number,
        p_opis     in varchar2,
        p_valid    in varchar2
    ) as
    begin
        update dms_pristupi
        set
            ooj_id = p_ooj_id,
            naziv = p_naziv,
            sifra = p_sifra,
            sequence = p_sequence,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_pristup;

    procedure delete_pristup (
        p_id in number
    ) as
    begin
        delete from dms_pristupi
        where
            id = p_id;

    end delete_pristup;

end dms_pkg;
/

prompt
prompt Creating package body DYNAMIC_PKG
prompt =================================
prompt
create or replace package body sif.dynamic_pkg as

    /*
    
        c001 - item_name
        c002 - label
        c003 - type
        c004 - idx
        c005 - value
        c006 - options_display (separated by :)
        c007 - options_return (separated by :)
        c008 - required
    
    */

    function generate_item_name (
        p_page_id in number,
        p_code    in varchar2
    ) return varchar2 is
    begin
        return upper('P'
                     || p_page_id
                     || '_'
                     || regexp_replace(p_code, '[^A-Za-z]', ''));
    end generate_item_name;

    function generate_hidden_items (
        p_collection_name in varchar2
    ) return varchar2 is
        l_query varchar2(1000);
    begin
        l_query := '
SELECT
    apex_item.hidden(
        p_idx        => rownum,
        p_value      => value,
        p_item_id    => item_name,
        p_item_label => label
    ) AS hidden_item
FROM (
    SELECT
        c001 AS item_name,
        c002 AS label,
        c003 AS value
    FROM
        apex_collections
    WHERE
        collection_name = '''
                   || p_collection_name
                   || '''
    ORDER BY seq_id
)
        ';
        return l_query;
    end generate_hidden_items;

    function generate_dynamic_items (
        p_collection_name in varchar2
    ) return clob is

        cursor c_parameters is
        (
            select
                seq_id,
                c001 as item_name,
                c002 as label,
                c003 as item_type,
                c004 as idx,
                c005 as value,
                c008 as required
            from
                apex_collections
            where
                collection_name = p_collection_name
        )
        order by
            seq_id;

        cursor c_options (
            p_seq_id number
        ) is
        (
            select
                regexp_substr(c006, '[^:]+', 1, level) as display,
                regexp_substr(c007, '[^:]+', 1, level) as return
            from
                apex_collections
            where
                    collection_name = p_collection_name
                and seq_id = p_seq_id
            connect by level <= regexp_count(c007, ':') + 1
                       and prior sys_guid() is not null
                       and prior rowid = rowid
        );

        l_clob clob;
    begin
        for c1 in c_parameters loop
            if c1.item_type in ( 'INPUT', 'INPUT_KEY_VALUE', 'INPUT_LIST' ) then
                l_clob := l_clob || '
                    <div class="col col-12 apex-col-auto col-start col-end">
                        <div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel ';
                if c1.required = 'Y' then
                    l_clob := l_clob || 'is-required';
                end if;
                l_clob := l_clob
                          || ' apex-item-wrapper apex-item-wrapper--text-field" id="'
                          || c1.item_name
                          || '_CONTAINER"">
                            <div class="t-Form-labelContainer">
                                <label for="'
                          || c1.item_name
                          || '" id="'
                          || c1.item_name
                          || '_LABEL" class="t-Form-label">'
                          || c1.label
                          || '</label>
                            </div>
                            <div class="t-Form-inputContainer">';

                if c1.required = 'Y' then
                    l_clob := l_clob || '<div class="t-Form-itemRequired-marker" aria-hidden="true"></div>';
                end if;
                l_clob := l_clob
                          || '<div class="t-Form-itemWrapper">
                                    <input type="text" id="'
                          || c1.item_name
                          || '" name="f01" class="dynamic-parameter text_field apex-item-text" value="'
                          || c1.value
                          || '" size="30" maxlength="255" data-enter-submit="false" data-is-page-item-type="true">
                                </div>
                                <div class="t-Form-itemAssistance">
                                    <span id="'
                          || c1.item_name
                          || '_error_placeholder" class="a-Form-error"></span>';

                if c1.required = 'Y' then
                    l_clob := l_clob || '<div class="t-Form-itemRequired" aria-hidden="true">Required</div>';
                end if;
                l_clob := l_clob
                          || '
                                </div>
                                <div class="t-Form-inlineHelp">
                                    <span id="'
                          || c1.item_name
                          || '_inline_help">
                                        '
                          ||
                    case
                        when c1.item_type = 'INPUT' then
                            'Text only.'
                        when c1.item_type = 'INPUT_KEY_VALUE' then
                            'Separate key value pair by ":", separate pairs by ;'
                        when c1.item_type = 'INPUT_LIST' then
                            'Separate list items by ";"'
                    end
                          || '
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                ';

            elsif c1.item_type = 'LIST' then
                l_clob := l_clob || '
                    <div class="col col-12 apex-col-auto col-start col-end">
                        <div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel ';
                if c1.required = 'Y' then
                    l_clob := l_clob || 'is-required';
                end if;
                l_clob := l_clob
                          || ' apex-item-wrapper apex-item-wrapper--select-list" id="'
                          || c1.item_name
                          || '_CONTAINER">
                            <div class="t-Form-labelContainer">
                                <label for="'
                          || c1.item_name
                          || '" id="'
                          || c1.item_name
                          || '_LABEL" class="t-Form-label">'
                          || c1.label
                          || '</label>
                            </div>
                            <div class="t-Form-inputContainer">';

                if c1.required = 'Y' then
                    l_clob := l_clob || '<div class="t-Form-itemRequired-marker" aria-hidden="true"></div>';
                end if;
                l_clob := l_clob
                          || '<div class="t-Form-itemWrapper">
                                    <select id="'
                          || c1.item_name
                          || '" name="f01" class="dynamic-parameter selectlist apex-item-select" data-native-menu="false" size="1">';
                if c1.value is not null then
                    l_clob := l_clob || '<option></option>';
                else
                    l_clob := l_clob || '<option selected="selected"></option>';
                end if;

                for c2 in c_options(c1.seq_id) loop
                    if c1.value = c2.return then
                        l_clob := l_clob
                                  || '<option value="'
                                  || c2.return
                                  || '" selected="selected">'
                                  || c2.display
                                  || '</option>';

                    else
                        l_clob := l_clob
                                  || '<option value="'
                                  || c2.return
                                  || '">'
                                  || c2.display
                                  || '</option>';
                    end if;
                end loop;

                l_clob := l_clob
                          || '</select>
                                </div>
                                <div class="t-Form-itemAssistance">
                                    <span id="'
                          || c1.item_name
                          || '_error_placeholder" class="a-Form-error"></span>';
                if c1.required = 'Y' then
                    l_clob := l_clob || '<div class="t-Form-itemRequired" aria-hidden="true">Required</div>';
                end if;
                l_clob := l_clob
                          || '
                                </div>
                                <div class="t-Form-inlineHelp">
                                    <span id="'
                          || c1.item_name
                          || '_inline_help">
                                        Select item available in list.
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>   
                ';
            end if;
        end loop;

        return l_clob;
    end generate_dynamic_items;

    procedure handle_dynamic_items (
        p_collection_name in varchar2
    ) is

        cursor c_items is
        (
            select
                seq_id,
                rownum
            from
                (
                    select
                        seq_id
                    from
                        apex_collections
                    where
                        collection_name = p_collection_name
                    order by
                        seq_id
                )
        );

    begin
        for c1 in c_items loop
            apex_collection.update_member_attribute(
                p_collection_name => p_collection_name,
                p_seq             => c1.seq_id,
                p_attr_number     => '5',
                p_attr_value      => apex_application.g_f01(c1.rownum)
            );
        end loop;
    end handle_dynamic_items;

end dynamic_pkg;
/

prompt
prompt Creating package body EI_PKG
prompt ============================
prompt
create or replace package body sif.ei_pkg is

    function get_tip_sql_query (
        p_id in number
    ) return clob is
    begin
        for c1 in (
            select
                sql_query
            from
                sif_tipovi_ei
            where
                id = p_id
        ) loop
            return c1.sql_query;
        end loop;

        return null;
    end get_tip_sql_query;

    function get_tip_opis (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                opis
            from
                sif_tipovi_ei
            where
                id = p_id
        ) loop
            return c1.opis;
        end loop;

        return null;
    end get_tip_opis;

    function get_tip_file_type (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                file_type
            from
                sif_tipovi_ei
            where
                id = p_id
        ) loop
            return c1.file_type;
        end loop;

        return null;
    end get_tip_file_type;

    procedure get_tip_ei (
        p_id        in number,
        p_sifra     out varchar2,
        p_sql_query out clob
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_tipovi_ei
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_sql_query := c1.sql_query;
        end loop;
    end get_tip_ei;

    procedure get_tip_ei (
        p_id                  in number,
        p_rola_id             out number,
        p_ei                  out varchar2,
        p_data_load_static_id out varchar2,
        p_file_type           out varchar2,
        p_sifra               out varchar2,
        p_naziv               out varchar2,
        p_opis                out varchar2,
        p_sql_query           out clob,
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
                sif_tipovi_ei
            where
                id = p_id
        ) loop
            p_rola_id := c1.rola_id;
            p_ei := c1.ei;
            p_data_load_static_id := c1.data_load_static_id;
            p_file_type := c1.file_type;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_sql_query := c1.sql_query;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_ei;

    procedure insert_tip_ei (
        p_rola_id             in number,
        p_ei                  in varchar2,
        p_data_load_static_id in varchar2,
        p_file_type           in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_sql_query           in clob
    ) is
    begin
        insert into sif_tipovi_ei (
            rola_id,
            ei,
            data_load_static_id,
            file_type,
            sifra,
            naziv,
            opis,
            sql_query
        ) values ( p_rola_id,
                   p_ei,
                   p_data_load_static_id,
                   p_file_type,
                   p_sifra,
                   p_naziv,
                   p_opis,
                   p_sql_query );

    end insert_tip_ei;

    procedure update_tip_ei (
        p_id                  in number,
        p_rola_id             in number,
        p_ei                  in varchar2,
        p_data_load_static_id in varchar2,
        p_file_type           in varchar2,
        p_sifra               in varchar2,
        p_naziv               in varchar2,
        p_opis                in varchar2,
        p_sql_query           in clob,
        p_valid               in varchar2
    ) is
    begin
        update sif_tipovi_ei
        set
            rola_id = p_rola_id,
            ei = p_ei,
            data_load_static_id = p_data_load_static_id,
            file_type = p_file_type,
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            sql_query = p_sql_query,
            valid = p_valid
        where
            id = p_id;

    end update_tip_ei;

    procedure delete_tip_ei (
        p_id in number
    ) is
    begin
        delete from sif_tipovi_ei
        where
            id = p_id;

    end delete_tip_ei;

end ei_pkg;
/

prompt
prompt Creating package body ER_PKG
prompt ============================
prompt
create or replace package body sif.er_pkg is

    -- Tipovi ribolova
    procedure get_tip_ribolova (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_tipovi_ribolova
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_ribolova;

    procedure insert_tip_ribolova (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_tipovi_ribolova (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_ribolova;

    procedure update_tip_ribolova (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_ribolova
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_ribolova;

    procedure delete_tip_ribolova (
        p_id in number
    ) is
    begin
        delete from er_tipovi_ribolova
        where
            id = p_id;

    end delete_tip_ribolova;

    -- Kategorije ribolovaca

    procedure get_kategorija_ribolovca (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_kategorije_ribolovaca
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_kategorija_ribolovca;

    procedure insert_kategorija_ribolovca (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_kategorije_ribolovaca (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_kategorija_ribolovca;

    procedure update_kategorija_ribolovca (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_kategorije_ribolovaca
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_kategorija_ribolovca;

    procedure delete_kategorija_ribolovca (
        p_id in number
    ) is
    begin
        delete from er_kategorije_ribolovaca
        where
            id = p_id;

    end delete_kategorija_ribolovca;

    -- Tipovi dozvola
    function get_tip_dozvole_sifra (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                *
            from
                er_tipovi_dozvola
            where
                id = p_id
        ) loop
            return c1.sifra;
        end loop;

        return null;
    end get_tip_dozvole_sifra;

    procedure get_tip_dozvole (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_tipovi_dozvola
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_dozvole;

    procedure insert_tip_dozvole (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_tipovi_dozvola (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_dozvole;

    procedure update_tip_dozvole (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_dozvola
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_dozvole;

    procedure delete_tip_dozvole (
        p_id in number
    ) is
    begin
        delete from er_tipovi_dozvola
        where
            id = p_id;

    end delete_tip_dozvole;

    -- Tipovi voda

    procedure get_tip_vode (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_revir       out varchar2,
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
                er_tipovi_voda
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_revir := c1.revir;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_vode;

    procedure insert_tip_vode (
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_revir in varchar2
    ) is
    begin
        insert into er_tipovi_voda (
            sifra,
            naziv,
            opis,
            revir
        ) values ( p_sifra,
                   p_naziv,
                   p_opis,
                   p_revir );

    end insert_tip_vode;

    procedure update_tip_vode (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_revir in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_voda
        set
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            revir = p_revir,
            valid = p_valid
        where
            id = p_id;

    end update_tip_vode;

    procedure delete_tip_vode (
        p_id in number
    ) is
    begin
        delete from er_tipovi_voda
        where
            id = p_id;

    end delete_tip_vode;

    -- Riblje vrste
    procedure get_riblja_vrsta (
        p_id          in number,
        p_naziv       out varchar2,
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
                er_riblje_vrste
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_riblja_vrsta;

    procedure insert_riblja_vrsta (
        p_naziv in varchar2
    ) is
    begin
        insert into er_riblje_vrste ( naziv ) values ( p_naziv );

    end insert_riblja_vrsta;

    procedure update_riblja_vrsta (
        p_id    in number,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_riblje_vrste
        set
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_riblja_vrsta;

    procedure delete_riblja_vrsta (
        p_id in number
    ) is
    begin
        delete from er_riblje_vrste
        where
            id = p_id;

    end delete_riblja_vrsta;

    -- Sabloni
    function get_sablon_sifra (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                *
            from
                er_sabloni
            where
                id = p_id
        ) loop
            return c1.sifra;
        end loop;

        return null;
    end get_sablon_sifra;

    procedure get_sablon (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_sabloni
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_sablon;

    procedure insert_sablon (
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_slika in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        utils_pkg.get_apex_file_upload(
            p_apex_filename => p_slika,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into er_sabloni (
            sifra,
            naziv,
            slika,
            slika_filename,
            slika_mimetype
        ) values ( p_sifra,
                   p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype );

    end insert_sablon;

    procedure update_sablon (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_slika in varchar2,
        p_valid in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_slika is not null then
            utils_pkg.get_apex_file_upload(
                p_apex_filename => p_slika,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update er_sabloni
            set
                sifra = p_sifra,
                naziv = p_naziv,
                slika = l_blob,
                slika_filename = l_filename,
                slika_mimetype = l_mimetype,
                valid = p_valid
            where
                id = p_id;

        else
            update er_sabloni
            set
                sifra = p_sifra,
                naziv = p_naziv,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_sablon;

    procedure delete_sablon (
        p_id in number
    ) is
    begin
        delete from er_sabloni
        where
            id = p_id;

    end delete_sablon;

    -- Tipovi privremenih dozvola
    function get_tip_privremene_dozvole_sifra (
        p_id in number
    ) return varchar2 is
    begin
        for c1 in (
            select
                *
            from
                er_tipovi_privremenih_dozvola
            where
                id = p_id
        ) loop
            return c1.sifra;
        end loop;

        return null;
    end get_tip_privremene_dozvole_sifra;

    procedure get_tip_privremene_dozvole (
        p_id             in number,
        p_tip_dozvole_id out number,
        p_sifra          out varchar2,
        p_naziv          out varchar2,
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
                er_tipovi_privremenih_dozvola
            where
                id = p_id
        ) loop
            p_tip_dozvole_id := c1.tip_dozvole_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_privremene_dozvole;

    procedure insert_tip_privremene_dozvole (
        p_tip_dozvole_id in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2
    ) is
    begin
        insert into er_tipovi_privremenih_dozvola (
            tip_dozvole_id,
            sifra,
            naziv
        ) values ( p_tip_dozvole_id,
                   p_sifra,
                   p_naziv );

    end insert_tip_privremene_dozvole;

    procedure update_tip_privremene_dozvole (
        p_id             in number,
        p_tip_dozvole_id in number,
        p_sifra          in varchar2,
        p_naziv          in varchar2,
        p_valid          in varchar2
    ) is
    begin
        update er_tipovi_privremenih_dozvola
        set
            tip_dozvole_id = p_tip_dozvole_id,
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_privremene_dozvole;

    procedure delete_tip_privremene_dozvole (
        p_id in number
    ) is
    begin
        delete from er_tipovi_privremenih_dozvola
        where
            id = p_id;

    end delete_tip_privremene_dozvole;

    -- Tipovi zabrana
    procedure get_tip_zabrane (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_tipovi_zabrana
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_zabrane;

    procedure insert_tip_zabrane (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_tipovi_zabrana (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_zabrane;

    procedure update_tip_zabrane (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_zabrana
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_zabrane;

    procedure delete_tip_zabrane (
        p_id in number
    ) is
    begin
        delete from er_tipovi_zabrana
        where
            id = p_id;

    end delete_tip_zabrane;

    -- Tipovi clanskih karti
    procedure get_tip_clanske_karte (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_tipovi_clanskih_karti
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_clanske_karte;

    procedure insert_tip_clanske_karte (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_tipovi_clanskih_karti (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_clanske_karte;

    procedure update_tip_clanske_karte (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_clanskih_karti
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_clanske_karte;

    procedure delete_tip_clanske_karte (
        p_id in number
    ) is
    begin
        delete from er_tipovi_clanskih_karti
        where
            id = p_id;

    end delete_tip_clanske_karte;

    -- Tipovi cijena
    procedure get_tip_cijene (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                er_tipovi_cijena
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_cijene;

    procedure get_tip_cijene (
        p_id    in number,
        p_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                er_tipovi_cijena
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
        end loop;
    end get_tip_cijene;

    procedure insert_tip_cijene (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into er_tipovi_cijena (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_cijene;

    procedure update_tip_cijene (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update er_tipovi_cijena
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_cijene;

    procedure delete_tip_cijene (
        p_id in number
    ) is
    begin
        delete from er_tipovi_cijena
        where
            id = p_id;

    end delete_tip_cijene;

    -- Izvjestaji
    procedure get_izvjestaj (
        p_id    in number,
        p_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                er_izvjestaji
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
        end loop;
    end get_izvjestaj;

    function get_izvjestaj (
        p_id in number
    ) return clob is
    begin
        for c1 in (
            select
                *
            from
                er_izvjestaji
            where
                id = p_id
        ) loop
            return c1.opis;
        end loop;

        return null;
    end get_izvjestaj;

    procedure get_izvjestaj (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_sequence    out number,
        p_opis        out clob,
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
                er_izvjestaji
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_sequence := c1.sequence;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_izvjestaj;

    procedure insert_izvjestaj (
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_opis     in clob
    ) is
    begin
        insert into er_izvjestaji (
            sifra,
            naziv,
            sequence,
            opis
        ) values ( p_sifra,
                   p_naziv,
                   p_sequence,
                   p_opis );

    end insert_izvjestaj;

    procedure update_izvjestaj (
        p_id       in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_opis     in clob,
        p_valid    in varchar2
    ) is
    begin
        update er_izvjestaji
        set
            sifra = p_sifra,
            naziv = p_naziv,
            sequence = p_sequence,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_izvjestaj;

    procedure delete_izvjestaj (
        p_id in number
    ) is
    begin
        delete from er_izvjestaji
        where
            id = p_id;

    end delete_izvjestaj;

end er_pkg;
/

prompt
prompt Creating package body FV_PKG
prompt ============================
prompt
create or replace package body sif.fv_pkg is

    fv_status_funkcionalan number := 10;
    fv_status_pokvaren     number := 10;

    -- vrste vozila
    procedure get_vrsta_vozila (
        p_id    in number,
        p_naziv out varchar2,
        p_opis  out varchar2,
        p_valid out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_vrste_vozila
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
        end loop;
    end get_vrsta_vozila;

    procedure ce_vrsta_vozila (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        if p_id is null then
            insert into fv_vrste_vozila (
                naziv,
                opis
            ) values ( p_naziv,
                       p_opis );

        else
            update fv_vrste_vozila
            set
                naziv = p_naziv,
                opis = p_opis,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_vrsta_vozila;

    procedure obrisi_vrstu_vozila (
        p_id in number
    ) is
    begin
        delete from fv_vrste_vozila
        where
            id = p_id;

    end obrisi_vrstu_vozila;

    -- vrste servisa
    procedure get_vrsta_servisa (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_vrste_servisa
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_vrsta_servisa;

    procedure ce_vrsta_servisa (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        if p_id is null then
            insert into fv_vrste_servisa (
                naziv,
                opis
            ) values ( p_naziv,
                       p_opis );

        else
            update fv_vrste_servisa
            set
                naziv = p_naziv,
                opis = p_opis,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_vrsta_servisa;

    procedure obrisi_vrstu_servisa (
        p_id in number
    ) is
    begin
        delete from fv_vrste_servisa
        where
            id = p_id;

    end obrisi_vrstu_servisa;

    -- tipovi rezervacije
    procedure get_tip_rezervacije (
        p_id    in number,
        p_naziv out varchar2,
        p_opis  out varchar2,
        p_valid out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                fv_tipovi_rezervacija
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
        end loop;
    end get_tip_rezervacije;

    procedure ce_tip_rezervacije (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        if p_id is null then
            insert into fv_tipovi_rezervacija (
                naziv,
                opis
            ) values ( p_naziv,
                       p_opis );

        else
            update fv_tipovi_rezervacija
            set
                naziv = p_naziv,
                opis = p_opis,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_tip_rezervacije;

    procedure obrisi_tip_rezervacije (
        p_id in number
    ) is
    begin
        delete from fv_tipovi_rezervacija
        where
            id = p_id;

    end obrisi_tip_rezervacije;

end fv_pkg;
/

prompt
prompt Creating package body GO_PKG
prompt ============================
prompt
create or replace package body sif.go_pkg is

    -- Tipovi parametara
    procedure unos_tip_param_go (
        p_opis  in varchar2,
        p_naziv in varchar2
    ) as
    begin
        insert into go_tipovi_parametara (
            opis,
            naziv
        ) values ( p_opis,
                   p_naziv );

    end unos_tip_param_go;

    procedure izmjena_tip_param_go (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2
    ) as
    begin
        update go_tipovi_parametara
        set
            naziv = p_naziv,
            opis = p_opis
        where
            id = p_id;

    end izmjena_tip_param_go;

    -- Parametri
    procedure unos_parametara (
        p_naziv            in varchar2,
        p_tip_parametra_id in number,
        p_param_od         in varchar2,
        p_param_do         in varchar2,
        p_vrijednost       in varchar2
    ) as
        l_hr_ob   number;
        l_inv     number;
        l_sam_rod number;
        l_max_dan number;
    begin
        select
            count(*)
        into l_hr_ob
        from
            go_parametri
        where
                tip_parametra_id = 6
            and valid = 'Y';

        select
            count(*)
        into l_inv
        from
            go_parametri
        where
                tip_parametra_id = 5
            and valid = 'Y';

        select
            count(*)
        into l_sam_rod
        from
            go_parametri
        where
                tip_parametra_id = 7
            and valid = 'Y';

        select
            count(*)
        into l_max_dan
        from
            go_parametri
        where
                tip_parametra_id = 3
            and valid = 'Y';

        if
            p_tip_parametra_id = 6
            and l_hr_ob > 0
        then
            raise_application_error(-20000, 'Nije moguće unijeti više od jednog parametra koji važi,za ovaj tip!!! Podesi postojeći parametar da ne važi pa pokušaj ponovo unijeti novi!'
            );
        end if;

        if
            p_tip_parametra_id = 5
            and l_inv > 0
        then
            raise_application_error(-20001, 'Nije moguće unijeti više od jednog parametra koji važi,za ovaj tip!!! Podesi postojeći parametar da ne važi pa pokušaj ponovo unijeti novi!'
            );
        end if;

        if
            p_tip_parametra_id = 7
            and l_sam_rod > 0
        then
            raise_application_error(-20002, 'Nije moguće unijeti više od jednog parametra koji važi,za ovaj tip!!! Podesi postojeći parametar da ne važi pa pokušaj ponovo unijeti novi!'
            );
        end if;

        if
            p_tip_parametra_id = 3
            and l_max_dan > 0
        then
            raise_application_error(-20003, 'Nije moguće unijeti više od jednog parametra koji važi,za ovaj tip!!! Podesi postojeći parametar da ne važi pa pokušaj ponovo unijeti novi!'
            );
        end if;

        insert into go_parametri (
            naziv,
            param_od,
            param_do,
            vrijednost,
            tip_parametra_id,
            valid
        ) values ( p_naziv,
                   p_param_od,
                   p_param_do,
                   p_vrijednost,
                   p_tip_parametra_id,
                   'Y' );

    end unos_parametara;

    procedure izmjena_parametara (
        p_id               in number,
        p_naziv            in varchar2,
        p_tip_parametra_id in number,
        p_param_od         in varchar2,
        p_param_do         in varchar2,
        p_vrijednost       in varchar2,
        p_vazi             in varchar2
    ) as
    begin
        update go_parametri
        set
            naziv = p_naziv,
            param_od = p_param_od,
            param_do = p_param_do,
            vrijednost = p_vrijednost,
            tip_parametra_id = p_tip_parametra_id,
            valid = p_vazi
        where
            id = p_id;

    end izmjena_parametara;

end go_pkg;
/

prompt
prompt Creating package body GROBLJE_PKG
prompt =================================
prompt
create or replace package body sif.groblje_pkg as

    procedure get_gr_tip_mjesta (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
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
                gr_tipovi_mjesta
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_gr_tip_mjesta;

    procedure get_gr_tip_mjesta (
        p_id    in number,
        p_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                gr_tipovi_mjesta
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
        end loop;
    end get_gr_tip_mjesta;

    procedure insert_gr_tip_mjesta (
        p_naziv in varchar2,
        p_sifra in varchar2
    ) is
    begin
        insert into gr_tipovi_mjesta (
            naziv,
            sifra
        ) values ( p_naziv,
                   p_sifra );

    end insert_gr_tip_mjesta;

    procedure update_gr_tip_mjesta (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_valid in varchar2
    ) is
    begin
        update gr_tipovi_mjesta
        set
            naziv = p_naziv,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_gr_tip_mjesta;

    procedure delete_gr_tip_mjesta (
        p_id in number
    ) is
    begin
        delete from gr_tipovi_mjesta
        where
            id = p_id;

    end delete_gr_tip_mjesta;

end groblje_pkg;
/

prompt
prompt Creating package body HD_PKG
prompt ============================
prompt
CREATE OR REPLACE PACKAGE BODY SIF.hd_pkg IS

    -- Statusi
    FUNCTION get_status (
        p_sifra IN VARCHAR2
    ) RETURN NUMBER IS
    BEGIN
        FOR c1 IN (
            SELECT
                id
            FROM
                hd_statusi
            WHERE
                lower(sifra) = lower(p_sifra)
        ) LOOP
            RETURN c1.id;
        END LOOP;
    END get_status;
    
    PROCEDURE get_status (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                hd_statusi
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_icon := c1.icon;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_status;

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO hd_statusi (
            sifra,
            naziv,
            icon,
            color_code
        ) VALUES (
           p_sifra,
           p_naziv,
           p_icon,
           p_color_code
        );

    END insert_status;

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    ) IS
    BEGIN
        UPDATE hd_statusi
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            icon = p_icon,
            color_code = p_color_code,
            valid = p_valid
        WHERE
            id = p_id;

    END update_status;

    PROCEDURE delete_status (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM hd_statusi
        WHERE
            id = p_id;

    END delete_status;

    -- Tipovi loga
    FUNCTION get_tip_loga (
        p_sifra IN VARCHAR2
    ) RETURN NUMBER IS
    BEGIN
        FOR c1 IN (
            SELECT
                id
            FROM
                hd_tipovi_loga
            WHERE
                lower(sifra) = lower(p_sifra)
        ) LOOP
            RETURN c1.id;
        END LOOP;
    END get_tip_loga;
    
    PROCEDURE get_tip_loga (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                hd_tipovi_loga
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_loga;

    PROCEDURE insert_tip_loga (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO hd_tipovi_loga (
            sifra,
            naziv
        ) VALUES (
            p_sifra,
            p_naziv
        );

    END insert_tip_loga;

    PROCEDURE update_tip_loga (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE hd_tipovi_loga
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_loga;

    PROCEDURE delete_tip_loga (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM hd_tipovi_loga
        WHERE
            id = p_id;

    END delete_tip_loga;

END hd_pkg;
/

prompt
prompt Creating package body HR_PKG
prompt ============================
prompt
create or replace package body sif.hr_pkg is

    -- Praznici
    procedure unos_praznika (
        p_naziv      in varchar2,
        p_datum_od   in date,
        p_datum_do   in date,
        p_entitet_id in number,
        p_constant   in varchar2
    ) as
    begin
        if p_datum_do < p_datum_od then
            raise_application_error(-20005, 'Neispravan unos datuma');
        end if;
        insert into hr_praznici (
            naziv,
            datum_od,
            datum_do,
            entitet_id,
            constant
        ) values ( p_naziv,
                   p_datum_od,
                   p_datum_do,
                   p_entitet_id,
                   p_constant );

    end unos_praznika;

    procedure izmjena_praznika (
        p_id         in number,
        p_naziv      in varchar2,
        p_datum_od   in date,
        p_datum_do   in date,
        p_entitet_id in number,
        p_constant   in varchar2
    ) as
    begin
        if p_datum_do < p_datum_od then
            raise_application_error(-20005, 'Neispravan unos datuma');
        end if;
        update hr_praznici
        set
            naziv = p_naziv,
            datum_od = p_datum_od,
            datum_do = p_datum_do,
            entitet_id = p_entitet_id,
            constant = p_constant
        where
            id = p_id;

    end izmjena_praznika;

    procedure izbrisi_praznik (
        p_id in number
    ) as
    begin
        delete from hr_praznici
        where
            id = p_id;

    end izbrisi_praznik;

    -- PVS tipovi

    -- Evidencija prisutnosti
    procedure get_ev_prisutnosti (
        p_id          in number,
        p_naziv       out varchar2,
        p_oznaka      out varchar2,
        p_koeficijent out number,
        p_icon        out varchar2,
        p_color_code  out varchar2,
        p_visible     out varchar2,
        p_sequence    out number,
        p_valid       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_sif_ev_prisutnosti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_oznaka := c1.oznaka;
            p_koeficijent := c1.koeficijent;
            p_icon := c1.icon;
            p_color_code := c1.color_code;
            p_visible := c1.visible;
            p_sequence := c1.sequence;
            p_valid := c1.valid;
        end loop;
    end get_ev_prisutnosti;

    procedure insert_ev_prisutnosti (
        p_naziv       in varchar2,
        p_oznaka      in varchar2,
        p_koeficijent in number,
        p_icon        in varchar2,
        p_color_code  in varchar2,
        p_visible     in varchar2,
        p_sequence    in number
    ) is
    begin
        insert into hr_sif_ev_prisutnosti (
            naziv,
            oznaka,
            koeficijent,
            icon,
            color_code,
            visible,
            sequence
        ) values ( p_naziv,
                   p_oznaka,
                   p_koeficijent,
                   p_icon,
                   p_color_code,
                   p_visible,
                   p_sequence );

    end insert_ev_prisutnosti;

    procedure update_ev_prisutnosti (
        p_id          in number,
        p_naziv       in varchar2,
        p_oznaka      in varchar2,
        p_koeficijent in number,
        p_icon        in varchar2,
        p_color_code  in varchar2,
        p_visible     in varchar2,
        p_sequence    in number,
        p_valid       in varchar2
    ) is
    begin
        update hr_sif_ev_prisutnosti
        set
            naziv = p_naziv,
            oznaka = p_oznaka,
            koeficijent = p_koeficijent,
            icon = p_icon,
            color_code = p_color_code,
            visible = p_visible,
            sequence = p_sequence,
            valid = p_valid
        where
            id = p_id;

    end update_ev_prisutnosti;

    -- Sihtlista statusi

    -- Tipovi dokumenata
    procedure get_tip_dokumenta (
        p_id            in number,
        p_tip_dokumenta out varchar2,
        p_naziv         out varchar2,
        p_opis          out varchar2,
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
                hr_sif_tipovi_dokumenata
            where
                id = p_id
        ) loop
            p_tip_dokumenta := c1.tip_dokumenta;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_dokumenta;

    procedure insert_tip_dokumenta (
        p_tip_dokumenta in varchar2,
        p_naziv         in varchar2,
        p_opis          in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_dokumenata (
            tip_dokumenta,
            naziv,
            opis
        ) values ( p_tip_dokumenta,
                   p_naziv,
                   p_opis );

    end insert_tip_dokumenta;

    procedure update_tip_dokumenta (
        p_id            in number,
        p_tip_dokumenta in varchar2,
        p_naziv         in varchar2,
        p_opis          in varchar2,
        p_valid         in varchar2
    ) is
    begin
        update hr_sif_tipovi_dokumenata
        set
            tip_dokumenta = p_tip_dokumenta,
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_dokumenta;

    -- Tipovi prijava
    procedure get_tip_prijave (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
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
                hr_sif_tipovi_prijava
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_prijave;

    procedure insert_tip_prijave (
        p_naziv in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_prijava (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_tip_prijave;

    procedure update_tip_prijave (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update hr_sif_tipovi_prijava
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_prijave;

    procedure delete_tip_prijave (
        p_id in number
    ) is
    begin
        delete from hr_sif_tipovi_prijava
        where
            id = p_id;

    end delete_tip_prijave;

    -- Tipovi rada
    procedure get_tip_rada (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
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
                hr_sif_tipovi_rada
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_icon := c1.icon;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_rada;

    procedure insert_tip_rada (
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_rada (
            naziv,
            opis,
            color_code,
            icon
        ) values ( p_naziv,
                   p_opis,
                   p_color_code,
                   p_icon );

    end insert_tip_rada;

    procedure update_tip_rada (
        p_id         in number,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update hr_sif_tipovi_rada
        set
            naziv = p_naziv,
            opis = p_opis,
            color_code = p_color_code,
            icon = p_icon,
            valid = p_valid
        where
            id = p_id;

    end update_tip_rada;

    procedure delete_tip_rada (
        p_id in number
    ) is
    begin
        delete from hr_sif_tipovi_rada
        where
            id = p_id;

    end delete_tip_rada;

    -- Tipovi ugovora

    -- Obrazovanje
    procedure get_obrazovanje (
        p_id    in number,
        p_sifra out varchar2
    ) is
    begin
        for c1 in (
            select
                sifra
            from
                hr_sif_obrazovanja
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
        end loop;
    end get_obrazovanje;
    
    procedure get_obrazovanje (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                hr_sif_obrazovanja
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_sequence := c1.sequence;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_obrazovanje;

    procedure insert_obrazovanje (
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number
    ) is
    begin
        insert into hr_sif_obrazovanja (
            sifra,
            naziv,
            sequence
        ) values ( p_sifra,
                   p_naziv,
                   p_sequence );

    end insert_obrazovanje;

    procedure update_obrazovanje (
        p_id       in number,
        p_sifra    in varchar2,
        p_naziv    in varchar2,
        p_sequence in number,
        p_valid    in varchar2
    ) is
    begin
        update hr_sif_obrazovanja
        set
            sifra = p_sifra,
            naziv = p_naziv,
            sequence = p_sequence,
            valid = p_valid
        where
            id = p_id;

    end update_obrazovanje;

    procedure delete_obrazovanje (
        p_id in number
    ) is
    begin
        delete from hr_sif_obrazovanja
        where
            id = p_id;

    end delete_obrazovanje;

    -- Tipovi radnog vremena
    procedure get_tip_radnog_vremena (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                hr_sif_tipovi_radnog_vremena
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_radnog_vremena;

    procedure insert_tip_radnog_vremena (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_radnog_vremena (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_radnog_vremena;

    procedure update_tip_radnog_vremena (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update hr_sif_tipovi_radnog_vremena
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_radnog_vremena;

    procedure delete_tip_radnog_vremena (
        p_id in number
    ) is
    begin
        delete from hr_sif_tipovi_radnog_vremena
        where
            id = p_id;

    end delete_tip_radnog_vremena;

    -- Tipovi radnog odnosa
    procedure get_tip_radnog_odnosa (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
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
                hr_sif_tipovi_radnog_odnosa
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_radnog_odnosa;

    procedure insert_tip_radnog_odnosa (
        p_sifra in varchar2,
        p_naziv in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_radnog_odnosa (
            sifra,
            naziv
        ) values ( p_sifra,
                   p_naziv );

    end insert_tip_radnog_odnosa;

    procedure update_tip_radnog_odnosa (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_valid in varchar2
    ) is
    begin
        update hr_sif_tipovi_radnog_odnosa
        set
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_tip_radnog_odnosa;

    procedure delete_tip_radnog_odnosa (
        p_id in number
    ) is
    begin
        delete from hr_sif_tipovi_radnog_odnosa
        where
            id = p_id;

    end delete_tip_radnog_odnosa;

    -- Obrasci memoranduma
    procedure get_obrazac_memoranduma (
        p_id          in number,
        p_naziv       out varchar2,
        p_path        out varchar2,
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
                hr_obrasci_memoranduma
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_path := c1.path;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_obrazac_memoranduma;

    procedure insert_obrazac_memoranduma (
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2
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

        insert into hr_obrasci_memoranduma (
            naziv,
            dokument,
            dokument_filename,
            dokument_mimetype,
            path
        ) values ( p_naziv,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   p_path );

    end insert_obrazac_memoranduma;

    procedure update_obrazac_memoranduma (
        p_id       in number,
        p_naziv    in varchar2,
        p_dokument in varchar2,
        p_path     in varchar2,
        p_valid    in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_dokument is null then
            update hr_obrasci_memoranduma
            set
                naziv = p_naziv,
                path = p_path,
                valid = p_valid
            where
                id = p_id;

        else
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_dokument,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update hr_obrasci_memoranduma
            set
                naziv = p_naziv,
                path = p_path,
                dokument = l_blob,
                dokument_filename = l_filename,
                dokument_mimetype = l_mimetype,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_obrazac_memoranduma;

    procedure delete_obrazac_memoranduma (
        p_id in number
    ) is
    begin
        delete from hr_obrasci_memoranduma
        where
            id = p_id;

    end delete_obrazac_memoranduma;

    -- Tipovi zahtjeva
    procedure get_tip_zahtjeva (
        p_id                        in number,
        p_evidencija_prisutnosti_id out number,
        p_naziv                     out varchar2,
        p_opis                      out varchar2,
        p_valid                     out varchar2,
        p_row_version               out number,
        p_created                   out date,
        p_created_by                out varchar2,
        p_updated                   out date,
        p_updated_by                out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                hr_tipovi_zahtjeva
            where
                id = p_id
        ) loop
            p_evidencija_prisutnosti_id := c1.evidencija_prisutnosti_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_zahtjeva;

    procedure insert_tip_zahtjeva (
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_opis                      in varchar2
    ) is
    begin
        insert into hr_tipovi_zahtjeva (
            evidencija_prisutnosti_id,
            naziv,
            opis
        ) values ( p_evidencija_prisutnosti_id,
                   p_naziv,
                   p_opis );

    end insert_tip_zahtjeva;

    procedure update_tip_zahtjeva (
        p_id                        in number,
        p_evidencija_prisutnosti_id in number,
        p_naziv                     in varchar2,
        p_opis                      in varchar2,
        p_valid                     in varchar2
    ) is
    begin
        update hr_tipovi_zahtjeva
        set
            evidencija_prisutnosti_id = p_evidencija_prisutnosti_id,
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_zahtjeva;

    procedure delete_tip_zahtjeva (
        p_id in number
    ) is
    begin
        delete from hr_tipovi_zahtjeva
        where
            id = p_id;

    end delete_tip_zahtjeva;

    -- Tipovi potvrda
    procedure get_tip_potvrde (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
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
                hr_tipovi_potvrda
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_potvrde;

    procedure insert_tip_potvrde (
        p_naziv in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into hr_tipovi_potvrda (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_tip_potvrde;

    procedure update_tip_potvrde (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update hr_tipovi_potvrda
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_potvrde;

    procedure delete_tip_potvrde (
        p_id in number
    ) is
    begin
        delete from hr_tipovi_potvrda
        where
            id = p_id;

    end delete_tip_potvrde;

    -- Tipovi ugovora
    procedure get_tip_ugovora (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                hr_sif_tipovi_ugovora
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_ugovora;

    procedure insert_tip_ugovora (
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into hr_sif_tipovi_ugovora (
            naziv,
            opis,
            color_code
        ) values ( p_naziv,
                   p_opis,
                   p_color_code );

    end insert_tip_ugovora;

    procedure update_tip_ugovora (
        p_id         in number,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update hr_sif_tipovi_ugovora
        set
            naziv = p_naziv,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_tip_ugovora;

    procedure delete_tip_ugovora (
        p_id in number
    ) is
    begin
        delete from hr_sif_tipovi_ugovora
        where
            id = p_id;

    end delete_tip_ugovora;

end hr_pkg;
/

prompt
prompt Creating package body LMS_PKG
prompt =============================
prompt
CREATE OR REPLACE PACKAGE BODY SIF.lms_pkg IS

    -- Tipovi kurseva
    FUNCTION get_tip_kursa (
        p_id IN NUMBER
    ) RETURN VARCHAR2 IS
    BEGIN
        FOR c1 IN (
            SELECT
                sifra
            FROM
                lms_tipovi_kurseva
            WHERE
                id = p_id
        ) LOOP
            RETURN c1.sifra;
        END LOOP;
    
    END get_tip_kursa;
    
    PROCEDURE get_tip_kursa (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_tipovi_kurseva
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_icon := c1.icon;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_kursa;

    PROCEDURE insert_tip_kursa (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_tipovi_kurseva (
            sifra,
            naziv,
            icon,
            color_code
        ) VALUES (
            p_sifra,
            p_naziv,
            p_icon,
            p_color_code
        );

    END insert_tip_kursa;

    PROCEDURE update_tip_kursa (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_tipovi_kurseva
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            icon = p_icon,
            color_code = p_color_code,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_kursa;

    PROCEDURE delete_tip_kursa (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_tipovi_kurseva
        WHERE
            id = p_id;

    END delete_tip_kursa;

    -- Tipovi lekcija
    FUNCTION get_tip_lekcije (
        p_id IN NUMBER
    ) RETURN VARCHAR2 IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_tipovi_lekcija
            WHERE
                id = p_id
        ) LOOP
            RETURN c1.sifra;
        END LOOP;
        
        RETURN null;
    END get_tip_lekcije;
    
    PROCEDURE get_tip_lekcije (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_tipovi_lekcija
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_lekcije;

    PROCEDURE insert_tip_lekcije (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_tipovi_lekcija (
            sifra,
            naziv,
            color_code
        ) VALUES (
            p_sifra,
            p_naziv,
            p_color_code
        );

    END insert_tip_lekcije;

    PROCEDURE update_tip_lekcije (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_tipovi_lekcija
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            color_code = p_color_code,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_lekcije;

    PROCEDURE delete_tip_lekcije (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_tipovi_lekcija
        WHERE
            id = p_id;

    END delete_tip_lekcije;

    -- Tipovi publike
    PROCEDURE get_tip_publike (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_tipovi_publike
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_publike;

    PROCEDURE insert_tip_publike (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_tipovi_publike (
            sifra,
            naziv
        ) VALUES (
            p_sifra,
            p_naziv
        );

    END insert_tip_publike;

    PROCEDURE update_tip_publike (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_tipovi_publike
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_publike;

    PROCEDURE delete_tip_publike (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_tipovi_publike
        WHERE
            id = p_id;

    END delete_tip_publike;

    -- Tipovi ispita
    PROCEDURE get_tip_ispita (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_tipovi_ispita
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_tip_ispita;

    PROCEDURE insert_tip_ispita (
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_tipovi_ispita (
            sifra,
            naziv
        ) VALUES (
            p_sifra,
            p_naziv
        );

    END insert_tip_ispita;

    PROCEDURE update_tip_ispita (
        p_id    IN NUMBER,
        p_sifra IN VARCHAR2,
        p_naziv IN VARCHAR2,
        p_valid IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_tipovi_ispita
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            valid = p_valid
        WHERE
            id = p_id;

    END update_tip_ispita;

    PROCEDURE delete_tip_ispita (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_tipovi_ispita
        WHERE
            id = p_id;

    END delete_tip_ispita;

    -- Kategorije
    PROCEDURE get_kategorija (
        p_id          IN NUMBER,
        p_parent_id   OUT NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_kategorije
            WHERE
                id = p_id
        ) LOOP
            p_parent_id := c1.parent_id;
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_icon := c1.icon;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_kategorija;

    PROCEDURE insert_kategorija (
        p_parent_id IN NUMBER,
        p_sifra     IN VARCHAR2,
        p_naziv     IN VARCHAR2,
        p_icon      IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_kategorije (
            parent_id,
            sifra,
            naziv,
            icon
        ) VALUES (
            p_parent_id,
            p_sifra,
            p_naziv,
            p_icon
        );

    END insert_kategorija;

    PROCEDURE update_kategorija (
        p_id        IN NUMBER,
        p_parent_id IN NUMBER,
        p_sifra     IN VARCHAR2,
        p_naziv     IN VARCHAR2,
        p_icon      IN VARCHAR2,
        p_valid     IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_kategorije
        SET
            parent_id = p_parent_id,
            sifra = p_sifra,
            naziv = p_naziv,
            icon = p_icon,
            valid = p_valid
        WHERE
            id = p_id;

    END update_kategorija;

    PROCEDURE delete_kategorija (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_kategorije
        WHERE
            id = p_id;

    END delete_kategorija;

    -- Statusi
    PROCEDURE get_status (
        p_id          IN NUMBER,
        p_sifra       OUT VARCHAR2,
        p_naziv       OUT VARCHAR2,
        p_icon        OUT VARCHAR2,
        p_color_code  OUT VARCHAR2,
        p_valid       OUT VARCHAR2,
        p_row_version OUT NUMBER,
        p_created     OUT DATE,
        p_created_by  OUT VARCHAR2,
        p_updated     OUT DATE,
        p_updated_by  OUT VARCHAR2
    ) IS
    BEGIN
        FOR c1 IN (
            SELECT
                *
            FROM
                lms_statusi
            WHERE
                id = p_id
        ) LOOP
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_icon := c1.icon;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        END LOOP;
    END get_status;

    PROCEDURE insert_status (
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO lms_statusi (
            sifra,
            naziv,
            icon,
            color_code
        ) VALUES (
            p_sifra,
            p_naziv,
            p_icon,
            p_color_code
        );

    END insert_status;

    PROCEDURE update_status (
        p_id         IN NUMBER,
        p_sifra      IN VARCHAR2,
        p_naziv      IN VARCHAR2,
        p_icon       IN VARCHAR2,
        p_color_code IN VARCHAR2,
        p_valid      IN VARCHAR2
    ) IS
    BEGIN
        UPDATE lms_statusi
        SET
            sifra = p_sifra,
            naziv = p_naziv,
            icon = p_icon,
            color_code = p_color_code,
            valid = p_valid
        WHERE
            id = p_id;

    END update_status;

    PROCEDURE delete_status (
        p_id IN NUMBER
    ) IS
    BEGIN
        DELETE FROM lms_statusi
        WHERE
            id = p_id;

    END delete_status;

END lms_pkg;
/

prompt
prompt Creating package body LPR_PKG
prompt =============================
prompt
create or replace package body sif.lpr_pkg as
    
    -- statusi
    procedure get_status (
        p_id          in lpr_sif_statusi.id%type,
        p_naziv       out lpr_sif_statusi.naziv%type,
        p_valid       out lpr_sif_statusi.valid%type,
        p_created     out lpr_sif_statusi.created%type,
        p_created_by  out lpr_sif_statusi.created_by%type,
        p_updated     out lpr_sif_statusi.updated%type,
        p_updated_by  out lpr_sif_statusi.updated_by%type,
        p_row_version out lpr_sif_statusi.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                lpr_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv in lpr_sif_statusi.naziv%type
    ) as
    begin
        insert into lpr_sif_statusi ( naziv ) values ( p_naziv );

    end insert_status;

    procedure update_status (
        p_id    in lpr_sif_statusi.id%type,
        p_naziv in lpr_sif_statusi.naziv%type,
        p_valid in lpr_sif_statusi.valid%type
    ) as
    begin
        update lpr_sif_statusi
        set
            naziv = p_naziv,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    -- prioriteti
    procedure get_prioritet (
        p_id          in lpr_sif_prioriteti.id%type,
        p_naziv       out lpr_sif_prioriteti.naziv%type,
        p_opis        out lpr_sif_prioriteti.opis%type,
        p_vrijednost  out lpr_sif_prioriteti.vrijednost%type,
        p_valid       out lpr_sif_prioriteti.valid%type,
        p_created     out lpr_sif_prioriteti.created%type,
        p_created_by  out lpr_sif_prioriteti.created_by%type,
        p_updated     out lpr_sif_prioriteti.updated%type,
        p_updated_by  out lpr_sif_prioriteti.updated_by%type,
        p_row_version out lpr_sif_prioriteti.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                lpr_sif_prioriteti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_vrijednost := c1.vrijednost;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_prioritet;

    procedure insert_prioritet (
        p_naziv      in lpr_sif_prioriteti.naziv%type,
        p_opis       in lpr_sif_prioriteti.opis%type,
        p_vrijednost in lpr_sif_prioriteti.vrijednost%type
    ) as
    begin
        insert into lpr_sif_prioriteti (
            naziv,
            opis,
            vrijednost
        ) values ( p_naziv,
                   p_opis,
                   p_vrijednost );

    end insert_prioritet;

    procedure update_prioritet (
        p_id         in lpr_sif_prioriteti.id%type,
        p_naziv      in lpr_sif_prioriteti.naziv%type,
        p_opis       in lpr_sif_prioriteti.opis%type,
        p_vrijednost in lpr_sif_prioriteti.vrijednost%type,
        p_valid      in lpr_sif_prioriteti.valid%type
    ) as
    begin
        update lpr_sif_prioriteti
        set
            naziv = p_naziv,
            opis = p_opis,
            vrijednost = p_vrijednost,
            valid = p_valid
        where
            id = p_id;

    end update_prioritet;

end lpr_pkg;
/

prompt
prompt Creating package body MODULI_PKG
prompt ================================
prompt
create or replace package body sif.moduli_pkg as

    -- moduli
    procedure get_modul (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_valid       out varchar2,
        p_icon        out varchar2,
        p_sequence    out varchar2,
        p_solo        out varchar2,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    ) as
    begin
        for c1 in (
            select
                *
            from
                sif_moduli
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_icon := c1.icon;
            p_sequence := c1.sequence;
            p_solo := c1.solo;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_modul;

    procedure insert_modul (
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_icon     in varchar2,
        p_sequence in varchar2,
        p_solo     in varchar2
    ) as
    begin
        insert into sif_moduli (
            naziv,
            opis,
            icon,
            sequence,
            solo
        ) values ( p_naziv,
                   p_opis,
                   p_icon,
                   p_sequence,
                   p_solo );

    end insert_modul;

    procedure update_modul (
        p_id       in number,
        p_naziv    in varchar2,
        p_opis     in varchar2,
        p_icon     in varchar2,
        p_sequence in varchar2,
        p_solo     in varchar2,
        p_valid    in varchar2
    ) as
    begin
        update sif_moduli
        set
            naziv = p_naziv,
            opis = p_opis,
            icon = p_icon,
            sequence = p_sequence,
            valid = p_valid
        where
            id = p_id;

    end update_modul;

    procedure delete_modul (
        p_id in number
    ) is
    begin
        delete from sif_moduli
        where
            id = p_id;

    end delete_modul;

    -- moduli role
    procedure get_modul_rola (
        p_id          in number,
        p_modul_id    out number,
        p_rola_id     out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2,
        p_row_version out number
    ) as
    begin
        for c1 in (
            select
                *
            from
                sif_moduli_role
            where
                id = p_id
        ) loop
            p_modul_id := c1.modul_id;
            p_rola_id := c1.rola_id;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_modul_rola;

    procedure insert_modul_role (
        p_modul_id in number,
        p_role     in varchar2
    ) as
    begin
        for c1 in (
            select
                column_value as rola_id
            from
                apex_string.split(p_role, ':')
        ) loop
            insert into sif_moduli_role (
                modul_id,
                rola_id
            ) values ( p_modul_id,
                       c1.rola_id );

        end loop;
    end insert_modul_role;

    procedure delete_modul_rola (
        p_modul_id in number,
        p_rola_id  in number
    ) as
    begin
        delete from sif_moduli_role
        where
                modul_id = p_modul_id
            and rola_id = p_rola_id;

    end delete_modul_rola;

    -- moduli cijene
    function get_modul_cijena_stavka_id (
        p_modul_id       in number,
        p_interval_id    in number,
        p_broj_korisnika in number
    ) return number is
    begin
        for c1 in (
            select
                stavka_id
            from
                sif_moduli_cijene
            where
                    modul_id = p_modul_id
                and interval_id = p_interval_id
                and p_broj_korisnika between korisnika_od and korisnika_do
        ) loop
            return c1.stavka_id;
        end loop;

        raise_application_error(-20001, 'Pogrešan broj korisnika. Kontaktirajte administratora. (stavka)');
    end get_modul_cijena_stavka_id;

    function get_modul_cijena (
        p_modul_id       in number,
        p_interval_id    in number,
        p_broj_korisnika in number
    ) return number is
    begin
        for c1 in (
            select
                cijena
            from
                sif_moduli_cijene
            where
                    modul_id = p_modul_id
                and interval_id = p_interval_id
                and p_broj_korisnika between korisnika_od and korisnika_do
        ) loop
            return c1.cijena;
        end loop;

        raise_application_error(-20001, 'Pogrešan broj korisnika. Kontaktirajte administratora. (cijena)');
    end get_modul_cijena;

    procedure get_modul_cijena (
        p_id           in number,
        p_modul_id     out number,
        p_interval_id  out number,
        p_cijena       out number,
        p_stavka_id    out number,
        p_korisnika_od out number,
        p_korisnika_do out number,
        p_valid        out varchar2,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2,
        p_row_version  out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_moduli_cijene
            where
                id = p_id
        ) loop
            p_modul_id := c1.modul_id;
            p_interval_id := c1.interval_id;
            p_cijena := c1.cijena;
            p_stavka_id := c1.stavka_id;
            p_korisnika_od := c1.korisnika_od;
            p_korisnika_do := c1.korisnika_do;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_modul_cijena;

    procedure insert_modul_cijena (
        p_modul_id     in number,
        p_interval_id  in number,
        p_cijena       in number,
        p_stavka_id    in number,
        p_korisnika_od in number,
        p_korisnika_do in number
    ) is
    begin
        insert into sif_moduli_cijene (
            modul_id,
            interval_id,
            cijena,
            stavka_id,
            korisnika_od,
            korisnika_do
        ) values ( p_modul_id,
                   p_interval_id,
                   p_cijena,
                   p_stavka_id,
                   p_korisnika_od,
                   p_korisnika_do );

    end insert_modul_cijena;

    procedure update_modul_cijena (
        p_id           in number,
        p_modul_id     in number,
        p_interval_id  in number,
        p_cijena       in number,
        p_stavka_id    in number,
        p_korisnika_od in number,
        p_korisnika_do in number
    ) is
    begin
        update sif_moduli_cijene
        set
            modul_id = p_modul_id,
            interval_id = p_interval_id,
            cijena = p_cijena,
            stavka_id = p_stavka_id,
            korisnika_od = p_korisnika_od,
            korisnika_do = p_korisnika_do
        where
            id = p_id;

    end update_modul_cijena;

    procedure delete_modul_cijena (
        p_id in number
    ) is
    begin
        delete from sif_moduli_cijene
        where
            id = p_id;

    end delete_modul_cijena;

    -- Aplikacije
    procedure get_aplikacija (
        p_id                in number,
        p_required_modul_id out number,
        p_naziv             out varchar2,
        p_opis              out varchar2,
        p_icon              out varchar2,
        p_sequence          out varchar2,
        p_color_code        out varchar2,
        p_application_id    out number,
        p_hub               out varchar2,
        p_grupa             out varchar2,
        p_role              out varchar2,
        p_valid             out varchar2,
        p_created           out date,
        p_created_by        out varchar2,
        p_updated           out date,
        p_updated_by        out varchar2,
        p_row_version       out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_aplikacije
            where
                id = p_id
        ) loop
            p_required_modul_id := c1.required_modul_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_icon := c1.icon;
            p_sequence := c1.sequence;
            p_color_code := c1.color_code;
            p_application_id := c1.application_id;
            p_hub := c1.hub;
            p_grupa := c1.grupa;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;

        for c1 in (
            select distinct
                listagg(rola_id, ':')
                over(partition by sif_application_id) as roles
            from
                sif_aplikacija_role
            where
                sif_application_id = p_id
        ) loop
            p_role := c1.roles;
        end loop;

    end get_aplikacija;

    procedure get_aplikacija (
        p_id             in number,
        p_required_modul out varchar2,
        p_naziv          out varchar2,
        p_opis           out varchar2,
        p_icon           out varchar2,
        p_color_code     out varchar2
    ) is
    begin
        for c1 in (
            select
                m.naziv as modul_naziv,
                a.naziv,
                a.opis,
                a.icon,
                a.color_code
            from
                sif_aplikacije a
                left join sif_moduli     m on a.required_modul_id = m.id
            where
                a.id = p_id
        ) loop
            p_required_modul := c1.modul_naziv;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_icon := c1.icon;
            p_color_code := c1.color_code;
        end loop;
    end get_aplikacija;

    procedure insert_aplikacija (
        p_required_modul_id in number,
        p_naziv             in varchar2,
        p_opis              in varchar2,
        p_icon              in varchar2,
        p_sequence          in varchar2,
        p_color_code        in varchar2,
        p_application_id    in number,
        p_hub               in varchar2,
        p_grupa             in varchar2,
        p_role              in varchar2
    ) is
        l_id    number;
        l_count number;
    begin
        insert into sif_aplikacije (
            required_modul_id,
            naziv,
            opis,
            icon,
            sequence,
            color_code,
            application_id,
            hub,
            grupa
        ) values ( p_required_modul_id,
                   p_naziv,
                   p_opis,
                   p_icon,
                   p_sequence,
                   p_color_code,
                   p_application_id,
                   p_hub,
                   p_grupa ) returning id into l_id;

        insert_aplikacija_role(
            p_sif_application_id => l_id,
            p_role               => p_role
        );
        if p_hub = 'Y' then
            update sif_aplikacije
            set
                hub = 'N'
            where
                id != l_id;

        else
            select
                count(*)
            into l_count
            from
                sif_aplikacije
            where
                hub = 'Y';

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu HUB aplikaciju.');
            end if;
        end if;

    end insert_aplikacija;

    procedure update_aplikacija (
        p_id                in number,
        p_required_modul_id in number,
        p_naziv             in varchar2,
        p_opis              in varchar2,
        p_icon              in varchar2,
        p_sequence          in varchar2,
        p_color_code        in varchar2,
        p_application_id    in number,
        p_hub               in varchar2,
        p_grupa             in varchar2,
        p_role              in varchar2,
        p_valid             in varchar2
    ) is
        l_count number;
    begin
        update sif_aplikacije
        set
            required_modul_id = p_required_modul_id,
            naziv = p_naziv,
            opis = p_opis,
            icon = p_icon,
            sequence = p_sequence,
            color_code = p_color_code,
            application_id = p_application_id,
            hub = p_hub,
            grupa = p_grupa,
            valid = p_valid
        where
            id = p_id;

        insert_aplikacija_role(
            p_sif_application_id => p_id,
            p_role               => p_role
        );
        if p_hub = 'Y' then
            update sif_aplikacije
            set
                hub = 'N'
            where
                id != p_id;

        else
            select
                count(*)
            into l_count
            from
                sif_aplikacije
            where
                hub = 'Y';

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu HUB aplikaciju.');
            end if;
        end if;

    end update_aplikacija;

    procedure delete_aplikacija (
        p_id in number
    ) is
    begin
        delete from sif_aplikacija_role
        where
            sif_application_id = p_id;

        delete from sif_aplikacije
        where
            id = p_id;

    end delete_aplikacija;

    -- Aplikacija role
    procedure insert_aplikacija_rola (
        p_sif_application_id in number,
        p_rola_id            in number
    ) is
    begin
        insert into sif_aplikacija_role (
            sif_application_id,
            rola_id
        ) values ( p_sif_application_id,
                   p_rola_id );

    end insert_aplikacija_rola;

    procedure insert_aplikacija_role (
        p_sif_application_id in number,
        p_role               in varchar2
    ) is
        l_count number;
    begin
        select
            count(*)
        into l_count
        from
            sif_aplikacija_role
        where
            sif_application_id = p_sif_application_id;

        if l_count > 0 then
            delete from sif_aplikacija_role
            where
                sif_application_id = p_sif_application_id;

        end if;
        for x in (
            select
                regexp_substr(p_role, '[^:]+', 1, level) role_value
            from
                dual
            connect by
                level <= length(p_role) - length(replace(p_role, ':')) + 1
        ) loop
            insert_aplikacija_rola(
                p_sif_application_id => p_sif_application_id,
                p_rola_id            => x.role_value
            );
        end loop;

    end insert_aplikacija_role;

end moduli_pkg;
/

prompt
prompt Creating package body OCI_PKG
prompt =============================
prompt
create or replace package body sif.oci_pkg as

    procedure list_objects (
        p_collection_name in varchar2,
        p_bucket_name     in varchar2
    ) is
        l_response      dbms_cloud_oci_obs_object_storage_list_objects_response_t;
        l_response_body dbms_cloud_oci_object_storage_list_objects_t;
    begin
        apex_collection.create_or_truncate_collection(p_collection_name => p_collection_name);
        l_response := dbms_cloud_oci_obs_object_storage.list_objects(
            namespace_name  => apex_app_setting.get_value('NAMESPACE'),
            bucket_name     => p_bucket_name,
            fields          => 'name,size,timeCreated,storageTier,archivalState',
            region          => apex_app_setting.get_value('REGION'),
            credential_name => apex_app_setting.get_value('CREDENTIAL_NAME')
        );

        l_response_body := l_response.response_body;
        for i in 1..l_response_body.objects.count loop
            apex_collection.add_member(
                p_collection_name => p_collection_name,
                p_c001            => l_response_body.objects(i).name,
                p_c002            => l_response_body.objects(i).l_size,
                p_c003            => l_response_body.objects(i).time_created,
                p_c004            => l_response_body.objects(i).storage_tier,
                p_c005            => l_response_body.objects(i).archival_state
            );
        end loop;

    end list_objects;

    procedure create_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    ) is

        l_response dbms_cloud_oci_obs_object_storage_put_object_response_t;
        cursor c_objects is
        (
            select
                column_value
            from
                apex_string.split(p_object_name, ':')
        );

        l_blob     blob;
        l_size     number;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        for obj in c_objects loop
            select
                blob_content,
                filename,
                mime_type
            into
                l_blob,
                l_filename,
                l_mimetype
            from
                apex_application_temp_files
            where
                name = obj.column_value;

            l_size := dbms_lob.getlength(l_blob);
            l_response := dbms_cloud_oci_obs_object_storage.put_object(
                namespace_name  => apex_app_setting.get_value('NAMESPACE'),
                bucket_name     => p_bucket_name,
                object_name     => l_filename,
                content_length  => l_size,
                put_object_body => l_blob,
                content_type    => l_mimetype,
                region          => apex_app_setting.get_value('REGION'),
                credential_name => apex_app_setting.get_value('CREDENTIAL_NAME')
            );

        end loop;
    end create_object;

    procedure get_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    ) is

        l_response       dbms_cloud_oci_obs_object_storage_get_object_response_t;
        l_response_body  blob;
        l_json_obj       json_object_t;
        l_content_type   varchar2(32767);
        l_content_length varchar2(32767);
    begin
        l_response := dbms_cloud_oci_obs_object_storage.get_object(
            namespace_name  => apex_app_setting.get_value('NAMESPACE'),
            bucket_name     => p_bucket_name,
            object_name     => p_object_name,
            region          => apex_app_setting.get_value('REGION'),
            credential_name => apex_app_setting.get_value('CREDENTIAL_NAME')
        );

        l_response_body := l_response.response_body;
        l_json_obj := l_response.headers;
        l_content_length := trim('"' from l_json_obj.get('Content-Length').to_string);
        l_content_type := trim('"' from l_json_obj.get('Content-Type').to_string);
        sys.htp.init;
        if l_content_type is not null then
            sys.owa_util.mime_header(
                trim(l_content_type),
                false
            );
        end if;

        sys.htp.p('Content-length: ' || l_content_length);
        sys.htp.p('Content-Disposition: attachment; filename="'
                  || p_object_name
                  || '"');
        sys.htp.p('Cache-Control: max-age=3600'); -- if desired
        sys.owa_util.http_header_close;
        sys.wpg_docload.download_file(l_response_body);
    end get_object;

    procedure rename_object (
        p_bucket_name in varchar2,
        p_old_name    in varchar2,
        p_new_name    in varchar2
    ) is
        l_response     dbms_cloud_oci_obs_object_storage_rename_object_response_t;
        rename_details dbms_cloud_oci_object_storage_rename_object_details_t;
    begin
        rename_details := dbms_cloud_oci_object_storage_rename_object_details_t();
        rename_details.source_name := p_old_name;
        rename_details.new_name := p_new_name;
        l_response := dbms_cloud_oci_obs_object_storage.rename_object(
            namespace_name        => apex_app_setting.get_value('NAMESPACE'),
            bucket_name           => p_bucket_name,
            rename_object_details => rename_details,
            region                => apex_app_setting.get_value('REGION'),
            credential_name       => apex_app_setting.get_value('CREDENTIAL_NAME')
        );

    end rename_object;

    procedure delete_object (
        p_bucket_name in varchar2,
        p_object_name in varchar2
    ) is
        l_response dbms_cloud_oci_obs_object_storage_delete_object_response_t;
    begin
        l_response := dbms_cloud_oci_obs_object_storage.delete_object(
            namespace_name  => apex_app_setting.get_value('NAMESPACE'),
            bucket_name     => p_bucket_name,
            object_name     => p_object_name,
            region          => apex_app_setting.get_value('REGION'),
            credential_name => apex_app_setting.get_value('CREDENTIAL_NAME')
        );
    end delete_object;

end oci_pkg;
/

prompt
prompt Creating package body PL_PKG
prompt ============================
prompt
create or replace package body sif.pl_pkg is

    procedure get_tip_ei (
        p_id          in number,
        p_ei          out varchar2,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
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
                pl_tipovi_ei
            where
                id = p_id
        ) loop
            p_ei := c1.ei;
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_ei;

    procedure insert_tip_ei (
        p_ei    in varchar2,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into pl_tipovi_ei (
            ei,
            naziv,
            sifra,
            opis
        ) values ( p_ei,
                   p_naziv,
                   p_sifra,
                   p_opis );

    end insert_tip_ei;

    procedure update_tip_ei (
        p_id    in number,
        p_ei    in varchar2,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update pl_tipovi_ei
        set
            ei = p_ei,
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_ei;

    procedure delete_tip_ei (
        p_id in number
    ) is
    begin
        delete from pl_tipovi_ei
        where
            id = p_id;

    end delete_tip_ei;

end pl_pkg;
/

prompt
prompt Creating package body PROJEKTI_PKG
prompt ==================================
prompt
create or replace package body sif.projekti_pkg is

    -- Nivo pristupa
    procedure get_nivo_pristupa (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
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
                p_sif_nivoi_pristupa
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_nivo_pristupa;

    procedure insert_nivo_pristupa (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into p_sif_nivoi_pristupa (
            naziv,
            sifra,
            opis
        ) values ( p_naziv,
                   p_sifra,
                   p_opis );

    end insert_nivo_pristupa;

    procedure update_nivo_pristupa (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update p_sif_nivoi_pristupa
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_nivo_pristupa;

    procedure delete_nivo_pristupa (
        p_id in number
    ) is
    begin
        delete from p_sif_nivoi_pristupa
        where
            id = p_id;

    end delete_nivo_pristupa;

    -- Tip komentara
    function get_id_tip_komentara_with_sifra (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                *
            from
                p_sif_tipovi_komentara
            where
                lower(sifra) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_id_tip_komentara_with_sifra;

    procedure get_tip_komentara (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
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
                p_sif_tipovi_komentara
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_komentara;

    procedure insert_tip_komentara (
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into p_sif_tipovi_komentara (
            naziv,
            sifra,
            opis
        ) values ( p_naziv,
                   p_sifra,
                   p_opis );

    end insert_tip_komentara;

    procedure update_tip_komentara (
        p_id    in number,
        p_naziv in varchar2,
        p_sifra in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update p_sif_tipovi_komentara
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_komentara;

    procedure delete_tip_komentara (
        p_id in number
    ) is
    begin
        delete from p_sif_tipovi_komentara
        where
            id = p_id;

    end delete_tip_komentara;

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                p_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into p_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update p_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from p_sif_statusi
        where
            id = p_id;

    end delete_status;

    -- Pozadine
    procedure get_pozadina (
        p_id               in number,
        p_naziv            out varchar2,
        p_file_name        out varchar2,
        p_osnovna_pozadina out varchar2,
        p_valid            out varchar2,
        p_row_version      out number,
        p_created          out date,
        p_created_by       out varchar2,
        p_updated          out date,
        p_updated_by       out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                p_sif_pozadine
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_file_name := c1.file_name;
            p_osnovna_pozadina := c1.osnovna_pozadina;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_pozadina;

    procedure insert_pozadina (
        p_naziv            in varchar2,
        p_file_name        in varchar2,
        p_osnovna_pozadina in varchar2
    ) is
        l_id    number;
        l_count number;
    begin
        insert into p_sif_pozadine (
            naziv,
            file_name,
            osnovna_pozadina
        ) values ( p_naziv,
                   p_file_name,
                   p_osnovna_pozadina ) returning id into l_id;

        if p_osnovna_pozadina = 'Y' then
            update p_sif_pozadine
            set
                osnovna_pozadina = 'N'
            where
                id != l_id;

        else
            select
                count(*)
            into l_count
            from
                p_sif_pozadine
            where
                osnovna_pozadina = 'Y';

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu osnovnu pozadinu.');
            end if;
        end if;

    end insert_pozadina;

    procedure update_pozadina (
        p_id               in number,
        p_naziv            in varchar2,
        p_file_name        in varchar2,
        p_osnovna_pozadina in varchar2,
        p_valid            in varchar2
    ) is
        l_count number;
    begin
        update p_sif_pozadine
        set
            naziv = p_naziv,
            file_name = p_file_name,
            osnovna_pozadina = p_osnovna_pozadina,
            valid = p_valid
        where
            id = p_id;

        if p_osnovna_pozadina = 'Y' then
            update p_sif_pozadine
            set
                osnovna_pozadina = 'N'
            where
                id != p_id;

        else
            select
                count(*)
            into l_count
            from
                p_sif_pozadine
            where
                osnovna_pozadina = 'Y';

            if l_count = 0 then
                rollback;
                raise_application_error(-20001, 'Morate imati barem jednu osnovnu pozadinu.');
            end if;
        end if;

    end update_pozadina;

    procedure delete_pozadina (
        p_id in number
    ) is
        l_osnovna_pozadina varchar2(1);
        l_osnovna_id       number;
    begin
        select
            osnovna_pozadina
        into l_osnovna_pozadina
        from
            p_sif_pozadine
        where
            id = p_id;

        if l_osnovna_pozadina = 'Y' then
            raise_application_error(-20001, 'Ne možete obrisati osnovnu pozadinu.');
        end if;
        select
            id
        into l_osnovna_id
        from
            p_sif_pozadine
        where
                osnovna_pozadina = 'Y'
            and rownum = 1;

        update hrm.p_projekti
        set
            pozadina_id = l_osnovna_id
        where
            pozadina_id = p_id;

        delete from p_sif_pozadine
        where
            id = p_id;

    end delete_pozadina;

end projekti_pkg;
/

prompt
prompt Creating package body PRU_PKG
prompt =============================
prompt
create or replace package body sif.pru_pkg as

    procedure get_razlog_neocijenivanja (
        p_id          in pru_sif_razlozi_neocjenivanja.id%type,
        p_naziv       out pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis        out pru_sif_razlozi_neocjenivanja.opis%type,
        p_valid       out pru_sif_razlozi_neocjenivanja.valid%type,
        p_created     out pru_sif_razlozi_neocjenivanja.created%type,
        p_created_by  out pru_sif_razlozi_neocjenivanja.created_by%type,
        p_updated     out pru_sif_razlozi_neocjenivanja.updated%type,
        p_updated_by  out pru_sif_razlozi_neocjenivanja.updated_by%type,
        p_row_version out pru_sif_razlozi_neocjenivanja.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_razlozi_neocjenivanja
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_razlog_neocijenivanja;

    procedure insert_razlog_neocijenivanja (
        p_naziv in pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis  in pru_sif_razlozi_neocjenivanja.opis%type
    ) as
    begin
        insert into pru_sif_razlozi_neocjenivanja (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_razlog_neocijenivanja;

    procedure update_razlog_neocijenivanja (
        p_id    in pru_sif_razlozi_neocjenivanja.id%type,
        p_naziv in pru_sif_razlozi_neocjenivanja.naziv%type,
        p_opis  in pru_sif_razlozi_neocjenivanja.opis%type,
        p_valid in pru_sif_razlozi_neocjenivanja.valid%type
    ) as
    begin
        update pru_sif_razlozi_neocjenivanja
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_razlog_neocijenivanja;

    procedure get_status (
        p_id          in pru_sif_statusi.id%type,
        p_naziv       out pru_sif_statusi.naziv%type,
        p_opis        out pru_sif_statusi.opis%type,
        p_valid       out pru_sif_statusi.valid%type,
        p_created     out pru_sif_statusi.created%type,
        p_created_by  out pru_sif_statusi.created_by%type,
        p_updated     out pru_sif_statusi.updated%type,
        p_updated_by  out pru_sif_statusi.updated_by%type,
        p_row_version out pru_sif_statusi.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_status;

    -- statusi
    procedure insert_status (
        p_naziv in pru_sif_statusi.naziv%type,
        p_opis  in pru_sif_statusi.opis%type
    ) as
    begin
        insert into pru_sif_statusi (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_status;

    procedure update_status (
        p_id    in pru_sif_statusi.id%type,
        p_naziv in pru_sif_statusi.naziv%type,
        p_opis  in pru_sif_statusi.opis%type,
        p_valid in pru_sif_statusi.valid%type
    ) as
    begin
        update pru_sif_statusi
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure get_interval (
        p_id           in pru_sif_intervali.id%type,
        p_naziv        out pru_sif_intervali.naziv%type,
        p_opis         out pru_sif_intervali.opis%type,
        p_broj_mjeseci out pru_sif_intervali.broj_mjeseci%type,
        p_valid        out pru_sif_intervali.valid%type,
        p_created      out pru_sif_intervali.created%type,
        p_created_by   out pru_sif_intervali.created_by%type,
        p_updated      out pru_sif_intervali.updated%type,
        p_updated_by   out pru_sif_intervali.updated_by%type,
        p_row_version  out pru_sif_intervali.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_intervali
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_broj_mjeseci := c1.broj_mjeseci;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_interval;

    -- intervali
    procedure insert_interval (
        p_naziv        in pru_sif_intervali.naziv%type,
        p_opis         in pru_sif_intervali.opis%type,
        p_broj_mjeseci in pru_sif_intervali.broj_mjeseci%type
    ) as
    begin
        insert into pru_sif_intervali (
            naziv,
            opis,
            broj_mjeseci
        ) values ( p_naziv,
                   p_opis,
                   p_broj_mjeseci );

    end insert_interval;

    procedure update_interval (
        p_id           in pru_sif_intervali.id%type,
        p_naziv        in pru_sif_intervali.naziv%type,
        p_opis         in pru_sif_intervali.opis%type,
        p_broj_mjeseci in pru_sif_intervali.broj_mjeseci%type,
        p_valid        in pru_sif_intervali.valid%type
    ) as
    begin
        update pru_sif_intervali
        set
            naziv = p_naziv,
            opis = p_opis,
            broj_mjeseci = p_broj_mjeseci,
            valid = p_valid
        where
            id = p_id;

    end update_interval;

    procedure get_tip_kompetencije (
        p_id          in pru_sif_tipovi_kompetencija.id%type,
        p_naziv       out pru_sif_tipovi_kompetencija.naziv%type,
        p_opis        out pru_sif_tipovi_kompetencija.opis%type,
        p_valid       out pru_sif_tipovi_kompetencija.valid%type,
        p_created     out pru_sif_tipovi_kompetencija.created%type,
        p_created_by  out pru_sif_tipovi_kompetencija.created_by%type,
        p_updated     out pru_sif_tipovi_kompetencija.updated%type,
        p_updated_by  out pru_sif_tipovi_kompetencija.updated_by%type,
        p_row_version out pru_sif_tipovi_kompetencija.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_tipovi_kompetencija
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_tip_kompetencije;

    -- tipovi kompetencija
    procedure insert_tip_kompetencije (
        p_naziv in pru_sif_tipovi_kompetencija.naziv%type,
        p_opis  in pru_sif_tipovi_kompetencija.opis%type
    ) as
    begin
        insert into pru_sif_tipovi_kompetencija (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_tip_kompetencije;

    procedure update_tip_kompetencije (
        p_id    in pru_sif_tipovi_kompetencija.id%type,
        p_naziv in pru_sif_tipovi_kompetencija.naziv%type,
        p_opis  in pru_sif_tipovi_kompetencija.opis%type,
        p_valid in pru_sif_tipovi_kompetencija.valid%type
    ) as
    begin
        update pru_sif_tipovi_kompetencija
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_kompetencije;

    procedure get_tip_ocjene (
        p_id          in pru_sif_tipovi_ocjena.id%type,
        p_naziv       out pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost  out pru_sif_tipovi_ocjena.vrijednost%type,
        p_valid       out pru_sif_tipovi_ocjena.valid%type,
        p_created     out pru_sif_tipovi_ocjena.created%type,
        p_created_by  out pru_sif_tipovi_ocjena.created_by%type,
        p_updated     out pru_sif_tipovi_ocjena.updated%type,
        p_updated_by  out pru_sif_tipovi_ocjena.updated_by%type,
        p_row_version out pru_sif_tipovi_ocjena.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_tipovi_ocjena
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_vrijednost := c1.vrijednost;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_tip_ocjene;

    -- tipovi ocjena
    procedure insert_tip_ocjene (
        p_naziv      in pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost in pru_sif_tipovi_ocjena.vrijednost%type
    ) as
    begin
        insert into pru_sif_tipovi_ocjena (
            naziv,
            vrijednost
        ) values ( p_naziv,
                   p_vrijednost );

    end insert_tip_ocjene;

    procedure update_tip_ocjene (
        p_id         in pru_sif_tipovi_ocjena.id%type,
        p_naziv      in pru_sif_tipovi_ocjena.naziv%type,
        p_vrijednost in pru_sif_tipovi_ocjena.vrijednost%type,
        p_valid      in pru_sif_tipovi_ocjena.valid%type
    ) as
    begin
        update pru_sif_tipovi_ocjena
        set
            naziv = p_naziv,
            vrijednost = p_vrijednost,
            valid = p_valid
        where
            id = p_id;

    end update_tip_ocjene;

    procedure get_kompetencija (
        p_id                  in pru_sif_kompetencije.id%type,
        p_tip_kompetencije_id out pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               out pru_sif_kompetencije.naziv%type,
        p_opis                out pru_sif_kompetencije.opis%type,
        p_valid               out pru_sif_kompetencije.valid%type,
        p_created             out pru_sif_kompetencije.created%type,
        p_created_by          out pru_sif_kompetencije.created_by%type,
        p_updated             out pru_sif_kompetencije.updated%type,
        p_updated_by          out pru_sif_kompetencije.updated_by%type,
        p_row_version         out pru_sif_kompetencije.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_kompetencije
            where
                id = p_id
        ) loop
            p_tip_kompetencije_id := c1.tip_kompetencije_id;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_kompetencija;

    -- kompetencije
    procedure insert_kompetencija (
        p_tip_kompetencije_id in pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               in pru_sif_kompetencije.naziv%type,
        p_opis                in pru_sif_kompetencije.opis%type
    ) as
    begin
        insert into pru_sif_kompetencije (
            tip_kompetencije_id,
            naziv,
            opis
        ) values ( p_tip_kompetencije_id,
                   p_naziv,
                   p_opis );

    end insert_kompetencija;

    procedure update_kompetencija (
        p_id                  in pru_sif_kompetencije.id%type,
        p_tip_kompetencije_id in pru_sif_kompetencije.tip_kompetencije_id%type,
        p_naziv               in pru_sif_kompetencije.naziv%type,
        p_opis                in pru_sif_kompetencije.opis%type,
        p_valid               in pru_sif_kompetencije.valid%type
    ) as
    begin
        update pru_sif_kompetencije
        set
            tip_kompetencije_id = p_tip_kompetencije_id,
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_kompetencija;

    procedure get_ocjena (
        p_id              in pru_sif_ocjene.id%type,
        p_kompetencija_id out pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   out pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            out pru_sif_ocjene.opis%type,
        p_valid           out pru_sif_ocjene.valid%type,
        p_created         out pru_sif_ocjene.created%type,
        p_created_by      out pru_sif_ocjene.created_by%type,
        p_updated         out pru_sif_ocjene.updated%type,
        p_updated_by      out pru_sif_ocjene.updated_by%type,
        p_row_version     out pru_sif_ocjene.row_version%type
    ) as
    begin
        for c1 in (
            select
                *
            from
                pru_sif_ocjene
            where
                id = p_id
        ) loop
            p_kompetencija_id := c1.kompetencija_id;
            p_tip_ocjene_id := c1.tip_ocjene_id;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_ocjena;

    -- ocjene
    procedure insert_ocjena (
        p_kompetencija_id in pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   in pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            in pru_sif_ocjene.opis%type
    ) as
    begin
        insert into pru_sif_ocjene (
            kompetencija_id,
            tip_ocjene_id,
            opis
        ) values ( p_kompetencija_id,
                   p_tip_ocjene_id,
                   p_opis );

    end insert_ocjena;

    procedure update_ocjena (
        p_id              in pru_sif_ocjene.id%type,
        p_kompetencija_id in pru_sif_ocjene.kompetencija_id%type,
        p_tip_ocjene_id   in pru_sif_ocjene.tip_ocjene_id%type,
        p_opis            in pru_sif_ocjene.opis%type,
        p_valid           in pru_sif_ocjene.valid%type
    ) as
    begin
        update pru_sif_ocjene
        set
            kompetencija_id = p_kompetencija_id,
            tip_ocjene_id = p_tip_ocjene_id,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_ocjena;

end pru_pkg;
/

prompt
prompt Creating package body SASTANCI_PKG
prompt ==================================
prompt
create or replace package body sif.sastanci_pkg is

    -- Tipovi sastanaka
    procedure get_tip_sastanka (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
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
                s_sif_tipovi_sastanaka
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_sastanka;

    procedure insert_tip_sastanka (
        p_naziv in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into s_sif_tipovi_sastanaka (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_tip_sastanka;

    procedure update_tip_sastanka (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update s_sif_tipovi_sastanaka
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_sastanka;

    procedure delete_tip_sastanka (
        p_id in number
    ) is
    begin
        -- TODO
        delete from s_sif_tipovi_sastanaka
        where
            id = p_id;

    end delete_tip_sastanka;

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                s_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into s_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update s_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from s_sif_statusi
        where
            id = p_id;

    end delete_status;

end sastanci_pkg;
/

prompt
prompt Creating package body SIF_PKG
prompt =============================
prompt
create or replace package body sif.sif_pkg is
  
    -- Drzave
    procedure get_drzava (
        p_id       in number,
        p_dnevnica out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_drzave
            where
                id = p_id
        ) loop
            p_dnevnica := c1.dnevnica;
        end loop;
    end get_drzava;

    procedure get_drzava (
        p_id           in number,
        p_name         out varchar2,
        p_a2_iso       out varchar2,
        p_a3_un        out varchar2,
        p_num_un       out number,
        p_dialing_code out number,
        p_dnevnica     out number,
        p_valid        out varchar2,
        p_row_version  out number,
        p_created      out date,
        p_created_by   out varchar2,
        p_updated      out date,
        p_updated_by   out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_drzave
            where
                id = p_id
        ) loop
            p_name := c1.name;
            p_a2_iso := c1.a2_iso;
            p_a3_un := c1.a3_un;
            p_num_un := c1.num_un;
            p_dialing_code := c1.dialing_code;
            p_dnevnica := c1.dnevnica;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_drzava;

    procedure insert_drzava (
        p_name         in varchar2,
        p_a2_iso       in varchar2,
        p_a3_un        in varchar2,
        p_num_un       in number,
        p_dialing_code in number,
        p_dnevnica     in number
    ) is
    begin
        insert into sif_drzave (
            name,
            a2_iso,
            a3_un,
            num_un,
            dialing_code,
            dnevnica
        ) values ( p_name,
                   p_a2_iso,
                   p_a3_un,
                   p_num_un,
                   p_dialing_code,
                   p_dnevnica );

    end insert_drzava;

    procedure update_drzava (
        p_id           in number,
        p_name         in varchar2,
        p_a2_iso       in varchar2,
        p_a3_un        in varchar2,
        p_num_un       in number,
        p_dialing_code in number,
        p_dnevnica     in number,
        p_valid        in varchar2
    ) is
    begin
        update sif_drzave
        set
            name = p_name,
            a2_iso = p_a2_iso,
            a3_un = p_a3_un,
            num_un = p_num_un,
            dialing_code = p_dialing_code,
            dnevnica = p_dnevnica,
            valid = p_valid
        where
            id = p_id;

    end update_drzava;

    -- Entiteti
    procedure get_entitet (
        p_id    in sif_entiteti.id%type,
        p_naziv out sif_entiteti.naziv%type,
        p_sifra out sif_entiteti.sifra%type,
        p_valid out sif_entiteti.valid%type
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_entiteti
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
        end loop;
    end get_entitet;

    procedure ce_entitet (
        p_id    in sif_entiteti.id%type,
        p_naziv in sif_entiteti.naziv%type,
        p_sifra in sif_entiteti.sifra%type,
        p_valid in sif_entiteti.valid%type default null
    ) as
        l_count number;
    begin
        if p_id is null then
            insert into sif_entiteti (
                naziv,
                sifra
            ) values ( p_naziv,
                       p_sifra );

        else
            update sif_entiteti
            set
                naziv = p_naziv,
                sifra = p_sifra,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_entitet;

    -- Gradovi
    procedure get_grad (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_grad_id    out number,
        p_entitet_id out number
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_gradovi
            where
                    replace(
                        lower(naziv),
                        ' ',
                        ''
                    ) = p_naziv
                and lpad(sifra, 3, '0') = p_sifra
        ) loop
            p_grad_id := c1.id;
            p_entitet_id := c1.entitet_id;
        end loop;
    end get_grad;

    procedure ce_gradovi (
        p_naziv      in sif_gradovi.naziv%type,
        p_id         in sif_gradovi.id%type,
        p_valid      in sif_gradovi.valid%type default null,
        p_entitet_id in sif_gradovi.entitet_id%type default null,
        p_pozbroj    in sif_gradovi.pozbroj%type default null,
        p_posbroj    in sif_gradovi.posbroj%type default null,
        p_drzava_id  in sif_gradovi.drzava_id%type default null
    ) as
        l_count number;
    begin
        if p_id is null then
            insert into sif_gradovi (
                naziv,
                id,
                entitet_id,
                pozbroj,
                posbroj,
                drzava_id
            ) values ( p_naziv,
                       p_id,
                       p_entitet_id,
                       p_pozbroj,
                       p_posbroj,
                       p_drzava_id );

        else
            update sif_gradovi
            set
                naziv = p_naziv,
                valid = p_valid,
                entitet_id = p_entitet_id,
                pozbroj = p_pozbroj,
                posbroj = p_posbroj,
                drzava_id = p_drzava_id
            where
                id = p_id;

        end if;
    end ce_gradovi;

    -- Intervali
    procedure get_interval (
        p_id           in sif_intervali.id%type,
        p_naziv        out sif_intervali.naziv%type,
        p_broj_mjeseci out sif_intervali.broj_mjeseci%type,
        p_sifra        out sif_intervali.sifra%type,
        p_valid        out sif_intervali.valid%type,
        p_created      out sif_intervali.created%type,
        p_created_by   out sif_intervali.created_by%type,
        p_updated      out sif_intervali.updated%type,
        p_updated_by   out sif_intervali.updated_by%type,
        p_row_version  out sif_intervali.row_version%type
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_intervali
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_broj_mjeseci := c1.broj_mjeseci;
            p_sifra := c1.sifra;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_row_version := c1.row_version;
        end loop;
    end get_interval;

    procedure insert_interval (
        p_naziv        in sif_intervali.naziv%type,
        p_broj_mjeseci in sif_intervali.broj_mjeseci%type,
        p_sifra        in sif_intervali.sifra%type
    ) is
    begin
        insert into sif_intervali (
            naziv,
            broj_mjeseci,
            sifra
        ) values ( p_naziv,
                   p_broj_mjeseci,
                   p_sifra );

    end insert_interval;

    procedure update_interval (
        p_id           in sif_intervali.id%type,
        p_naziv        in sif_intervali.naziv%type,
        p_broj_mjeseci in sif_intervali.broj_mjeseci%type,
        p_sifra        in sif_intervali.sifra%type,
        p_valid        in sif_intervali.valid%type
    ) is
    begin
        update sif_intervali
        set
            naziv = p_naziv,
            broj_mjeseci = p_broj_mjeseci,
            sifra = p_sifra,
            valid = p_valid
        where
            id = p_id;

    end update_interval;

    -- Kantoni
    procedure ce_kantoni (
        p_naziv in sif_kantoni.naziv%type,
        p_id    in sif_kantoni.id%type,
        p_valid in sif_kantoni.valid%type default null
    ) as
        l_count number;
    begin
        if p_id is null then
            insert into sif_kantoni (
                naziv,
                id
            ) values ( p_naziv,
                       p_id );

        else
            update sif_kantoni
            set
                naziv = p_naziv,
                valid = p_valid
            where
                id = p_id;

        end if;
    end ce_kantoni;

    -- Role
    function get_rola_id (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                sif_role
            where
                lower(naziv) = lower(p_sifra)
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_rola_id;

    procedure ce_role (
        p_id        in sif_role.id%type,
        p_role      in sif_role.naziv%type,
        p_role_desc in sif_role.opis%type default null,
        p_name      in sif_role.name%type default null,
        p_valid     in sif_role.valid%type default null
    ) as
        l_count number;
    begin
        if p_id is null then
            insert into sif_role (
                naziv,
                opis,
                name
            ) values ( p_role,
                       p_role_desc,
                       p_name );

        else
            select
                count(*)
            into l_count
            from
                core.korisnik_role
            where
                rola_id = p_id;

            if l_count > 0 then
                raise_application_error(-20007, 'Rola '
                                                || p_role
                                                || ' je dodjeljena nekome od korisnika !!! Rola mora biti van upotrebe, da bi bila moguća izmjena!!!'
                                                );
            else
                update sif_role
                set
                    naziv = p_role,
                    opis = p_role_desc,
                    valid = p_valid,
                    name = p_name
                where
                    id = p_id;

            end if;

        end if;
    end ce_role;

    -- Tipovi notifikacija
    procedure get_tip_notifikacije (
        p_id                 in number,
        p_naziv              out varchar2,
        p_note_icon          out varchar2,
        p_note_icon_color    out varchar2,
        p_note_color         out varchar2,
        p_note_page          out number,
        p_page_item          out varchar2,
        p_sifra              out varchar2,
        p_sif_application_id out number,
        p_valid              out varchar2,
        p_row_version        out number,
        p_created            out date,
        p_created_by         out varchar2,
        p_updated            out date,
        p_updated_by         out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_tipovi_notifikacija
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_note_icon := c1.note_icon;
            p_note_icon_color := c1.note_icon_color;
            p_note_color := c1.note_color;
            p_note_page := c1.note_page;
            p_page_item := c1.page_item;
            p_sifra := c1.sifra;
            p_sif_application_id := c1.sif_application_id;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_notifikacije;

    procedure insert_tip_notifikacije (
        p_naziv              in varchar2,
        p_note_icon          in varchar2,
        p_note_icon_color    in varchar2,
        p_note_color         in varchar2,
        p_note_page          in number,
        p_page_item          in varchar2,
        p_sifra              in varchar2,
        p_sif_application_id in number
    ) is
    begin
        insert into sif_tipovi_notifikacija (
            naziv,
            note_icon,
            note_icon_color,
            note_color,
            note_page,
            page_item,
            sifra,
            sif_application_id
        ) values ( p_naziv,
                   p_note_icon,
                   p_note_icon_color,
                   p_note_color,
                   p_note_page,
                   p_page_item,
                   p_sifra,
                   p_sif_application_id );

    end insert_tip_notifikacije;

    procedure update_tip_notifikacije (
        p_id                 in number,
        p_naziv              in varchar2,
        p_note_icon          in varchar2,
        p_note_icon_color    in varchar2,
        p_note_color         in varchar2,
        p_note_page          in number,
        p_page_item          in varchar2,
        p_sifra              in varchar2,
        p_sif_application_id in number,
        p_valid              in varchar2
    ) is
    begin
        update sif_tipovi_notifikacija
        set
            naziv = p_naziv,
            note_icon = p_note_icon,
            note_icon_color = p_note_icon_color,
            note_color = p_note_color,
            note_page = p_note_page,
            page_item = p_page_item,
            sifra = p_sifra,
            sif_application_id = p_sif_application_id,
            valid = p_valid
        where
            id = p_id;

    end update_tip_notifikacije;

    procedure delete_tip_notifikacije (
        p_id in number
    ) is
    begin
        delete from sif_tipovi_notifikacija
        where
            id = p_id;

    end delete_tip_notifikacije;

    -- Uputstva
    procedure get_uputstvo (
        p_id                in number,
        p_row_version       out integer,
        p_naziv             out varchar2,
        p_uputstvo          out number,
        p_uputstvo_mimetype out varchar2,
        p_uputstvo_filename out varchar2,
        p_rola_id           out number,
        p_valid             out varchar2,
        p_created           out date,
        p_created_by        out varchar2,
        p_updated           out date,
        p_updated_by        out varchar2
    ) is
    begin
        for c1 in (
            select
                *
            from
                sif_uputstva
            where
                id = p_id
        ) loop
            p_row_version := c1.row_version;
            p_naziv := c1.naziv;
            p_uputstvo := dbms_lob.getlength(c1.uputstvo);
            p_uputstvo_mimetype := c1.uputstvo_mimetype;
            p_uputstvo_filename := c1.uputstvo_filename;
            p_rola_id := c1.rola_id;
            p_valid := c1.valid;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_uputstvo;

    procedure insert_uputstvo (
        p_naziv    in varchar2,
        p_uputstvo in varchar2,
        p_rola_id  in number
    ) is
        l_id       number;
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        insert into sif_uputstva (
            naziv,
            rola_id
        ) values ( p_naziv,
                   p_rola_id ) returning id into l_id;

        if p_uputstvo is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_uputstvo,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            -- get blob
            update sif_uputstva
            set
                uputstvo = l_blob,
                uputstvo_filename = l_filename,
                uputstvo_mimetype = l_mimetype
            where
                id = l_id;

        end if;

    end insert_uputstvo;

    procedure update_uputstvo (
        p_id       in number,
        p_naziv    in varchar2,
        p_uputstvo in varchar2,
        p_valid    in varchar2,
        p_rola_id  in number
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        update sif_uputstva
        set
            naziv = p_naziv,
            rola_id = p_rola_id,
            valid = p_valid
        where
            id = p_id;

        if p_uputstvo is not null then
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_uputstvo,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            -- get blob
            update sif_uputstva
            set
                uputstvo = l_blob,
                uputstvo_filename = l_filename,
                uputstvo_mimetype = l_mimetype
            where
                id = p_id;

        end if;

    end update_uputstvo;

    procedure delete_upustvo (
        p_id in number
    ) is
    begin
        delete from sif_uputstva
        where
            id = p_id;

    end delete_upustvo; 

    -- Plata koeficijenti
    procedure ce_koeficijenti (
        p_naziv          in varchar2,
        p_entitet_id     in varchar2,
        p_vazi           in varchar2,
        p_id             in varchar2,
        p_komentar       in varchar2,
        p_vrijednost     in number,
        p_sifra          in varchar2,
        p_tip_ugovora_id in number
    ) as
    begin
        if p_id is null then
            insert into pl_koeficijenti (
                naziv,
                entitet_id,
                drzava,
                vazi,
                vazi_od,
                komentar,
                vrijednost,
                sifra,
                tip_ugovora_id
            ) values ( p_naziv,
                       p_entitet_id,
                       1,
                       'Y',
                       sysdate,
                       p_komentar,
                       p_vrijednost,
                       p_sifra,
                       p_tip_ugovora_id );

        else
            update pl_koeficijenti
            set
                vazi = p_vazi,
                vrijednost = p_vrijednost
            where
                id = p_id;

        end if;
    end ce_koeficijenti;

    --------------------------------------------------------------
    -- procedures for table SIF_VRSTE_NALOGA
    --------------------------------------------------------------

    function get_id_with_sifra_vrsta_naloga (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                sif_vrste_naloga
            where
                lower(sifra) = lower(p_sifra)
                and ooj_id is null                         -- stefanl 06.08.2026
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_id_with_sifra_vrsta_naloga;

    procedure get_vrsta_naloga (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_app         out varchar2,
        p_valid       out varchar2,
        p_row_version out number,
        p_created     out date,
        p_created_by  out varchar2,
        p_updated     out date,
        p_updated_by  out varchar2, 
        p_ooj_id      out number, 
        p_acc_modul_id out number
        
    ) as
    begin
        for c1 in (
            select
                *
            from
                sif_vrste_naloga
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_app := c1.app;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
            p_ooj_id  :=c1.ooj_id;
            p_acc_modul_id := c1.acc_modul_id;
        end loop;
    end get_vrsta_naloga;

    procedure insert_vrsta_naloga (
        p_sifra   in varchar2,
        p_naziv   in varchar2,
        p_opis    in varchar2,
        p_app     in varchar2,
        p_ooj_id     in number, 
        p_acc_modul_id in number
        
    ) as
    begin
        insert into sif_vrste_naloga (
            sifra,
            naziv,
            opis,
            app, 
            ooj_id, 
            acc_modul_id
        ) values ( p_sifra,
                   p_naziv,
                   p_opis,
                   p_app,
                   p_ooj_id, 
                   p_acc_modul_id );

    end insert_vrsta_naloga;

    procedure update_vrsta_naloga (
        p_id    in number,
        p_sifra in varchar2,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_app   in varchar2,
        p_valid in varchar2,
        p_ooj_id     in number, 
        p_acc_modul_id in number 
    ) as
    begin
        update sif_vrste_naloga
        set
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            app = p_app,
            valid = p_valid,
            ooj_id=p_ooj_id,
            acc_modul_id=p_acc_modul_id
        where
            id = p_id;

    end update_vrsta_naloga;

    procedure delete_vrsta_naloga (
        p_id in number
    ) as
    begin
        delete from sif_vrste_naloga
        where
            id = p_id;

    end delete_vrsta_naloga;

    --------------------------------------------------------------
    -- procedures for table SIF_TIPOVI_PREDUZETNIKA
    --------------------------------------------------------------
    procedure get_tip_preduzetnika (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_visible     out varchar2,
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
                sif_tipovi_preduzetnika
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_visible := c1.visible;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_preduzetnika;

    procedure insert_tip_preduzetnika (
        p_sifra   in varchar2,
        p_naziv   in varchar2,
        p_visible in varchar2
    ) is
    begin
        insert into sif_tipovi_preduzetnika (
            sifra,
            naziv,
            visible
        ) values ( p_sifra,
                   p_naziv,
                   p_visible );

    end insert_tip_preduzetnika;

    procedure update_tip_preduzetnika (
        p_id      in number,
        p_sifra   in varchar2,
        p_naziv   in varchar2,
        p_visible in varchar2,
        p_valid   in varchar2
    ) is
    begin
        update sif_tipovi_preduzetnika
        set
            sifra = p_sifra,
            naziv = p_naziv,
            visible = p_visible,
            valid = p_valid
        where
            id = p_id;

    end update_tip_preduzetnika;

    procedure delete_tip_preduzetnika (
        p_id in number
    ) is
    begin
        delete from sif_tipovi_preduzetnika
        where
            id = p_id;

    end delete_tip_preduzetnika;

    --------------------------------------------------------------
    -- procedures for table SIF_BANKE
    --------------------------------------------------------------

    procedure get_banka (
        p_id          in number,
        p_naziv       out varchar2,
        p_email       out varchar2,
        p_www         out varchar2,
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
                sif_banke
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_email := c1.email;
            p_www := c1.www;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_banka;

    procedure insert_banka (
        p_naziv in varchar2,
        p_email in varchar2,
        p_www   in varchar2
    ) is
    begin
        insert into sif_banke (
            naziv,
            email,
            www
        ) values ( p_naziv,
                   p_email,
                   p_www );

    end insert_banka;

    procedure update_banka (
        p_id    in number,
        p_naziv in varchar2,
        p_email in varchar2,
        p_www   in varchar2,
        p_valid in varchar2
    ) is
    begin
        update sif_banke
        set
            naziv = p_naziv,
            email = p_email,
            www = p_www,
            valid = p_valid
        where
            id = p_id;

    end update_banka;

    procedure delete_banka (
        p_id in number
    ) is
    begin
        delete from sif_banke
        where
            id = p_id;

    end delete_banka;

    --------------------------------------------------------------
    -- procedures for table SIF_STATUSI
    --------------------------------------------------------------

    function get_status_id (
        p_sifra in varchar2
    ) return number is
    begin
        for c1 in (
            select
                id
            from
                sif_statusi
            where
                sifra = p_sifra
        ) loop
            return c1.id;
        end loop;

        return null;
    end get_status_id;

    procedure get_status (
        p_id          in number,
        p_sifra       out varchar2,
        p_naziv       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
        p_icon        out varchar2,
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
                sif_statusi
            where
                id = p_id
        ) loop
            p_sifra := c1.sifra;
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_icon := c1.icon;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2
    ) is
    begin
        insert into sif_statusi (
            sifra,
            naziv,
            opis,
            color_code,
            icon
        ) values ( p_sifra,
                   p_naziv,
                   p_opis,
                   p_color_code,
                   p_icon );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_sifra      in varchar2,
        p_naziv      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_icon       in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update sif_statusi
        set
            sifra = p_sifra,
            naziv = p_naziv,
            opis = p_opis,
            color_code = p_color_code,
            icon = p_icon,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from sif_statusi
        where
            id = p_id;

    end delete_status;

    -- Guide
    function get_region_selector (
        p_region_id in varchar2
    ) return varchar2 is
    begin
        for c1 in (
            select
                static_id
            from
                apex_application_page_regions
            where
                region_id = p_region_id
        ) loop
            return '#' || c1.static_id;
        end loop;

        return null;
    end get_region_selector;

    function get_item_selector (
        p_item_id in varchar2
    ) return varchar2 is
    begin
        for c1 in (
            select
                item_name
            from
                apex_application_page_items
            where
                item_id = p_item_id
        ) loop
            return '#' || c1.item_name;
        end loop;

        return null;
    end get_item_selector;

    function get_guide_steps (
        p_application_id in number,
        p_page_id        in number
    ) return varchar2 is

        cursor c_guides is
        (
            select
                element,
                title,
                description,
                side,
                align
            from
                sif_guide
            where
                    application_id = p_application_id
                and page_id = p_page_id
        )
        order by
            sequence asc;

        l_steps clob;
    begin
        l_steps := '[';
        for c1 in c_guides loop
            l_steps := l_steps || '{';
            l_steps := l_steps
                       || 'element: "'
                       || c1.element
                       || '",';
            l_steps := l_steps || 'popover: {';
            l_steps := l_steps
                       || 'title: "'
                       || c1.title
                       || '",';
            l_steps := l_steps
                       || 'description: "'
                       || c1.description
                       || '",';
            l_steps := l_steps
                       || 'side: "'
                       || c1.side
                       || '",';
            l_steps := l_steps
                       || 'align: "'
                       || c1.align
                       || '"';
            l_steps := l_steps || '}';
            l_steps := l_steps || '},';
        end loop;

        l_steps := substr(l_steps,
                          0,
                          length(l_steps) - 1);
        l_steps := l_steps || '];';
        return l_steps;
    end get_guide_steps;

    function get_next_sequence (
        p_application_id in number,
        p_page_id        in number
    ) return number is
        l_max number;
    begin
        select
            coalesce(
                max(sequence),
                0
            )
        into l_max
        from
            sif_guide
        where
                application_id = p_application_id
            and page_id = p_page_id;

        return l_max + 1;
    exception
        when no_data_found then
            return 1;
    end get_next_sequence;

    procedure get_guide (
        p_id             in number,
        p_application_id out number,
        p_page_id        out number,
        p_sequence       out number,
        p_type           out varchar2,
        p_item_id        out varchar2,
        p_region_id      out varchar2,
        p_element        out varchar2,
        p_title          out varchar2,
        p_description    out varchar2,
        p_side           out varchar2,
        p_align          out varchar2,
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
                sif_guide
            where
                id = p_id
        ) loop
            p_application_id := c1.application_id;
            p_page_id := c1.page_id;
            p_sequence := c1.sequence;
            p_type := c1.type;
            p_item_id := c1.item_id;
            p_region_id := c1.region_id;
            p_element := c1.element;
            p_title := c1.title;
            p_description := c1.description;
            p_side := c1.side;
            p_align := c1.align;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_guide;

    procedure insert_guide (
        p_application_id in number,
        p_page_id        in number,
        p_sequence       in number,
        p_type           in varchar2,
        p_item_id        in varchar2,
        p_region_id      in varchar2,
        p_element        in varchar2,
        p_title          in varchar2,
        p_description    in varchar2,
        p_side           in varchar2,
        p_align          in varchar2
    ) is
    begin
        insert into sif_guide (
            application_id,
            page_id,
            sequence,
            type,
            item_id,
            region_id,
            element,
            title,
            description,
            side,
            align
        ) values ( p_application_id,
                   p_page_id,
                   p_sequence,
                   p_type,
                   p_item_id,
                   p_region_id,
                   p_element,
                   p_title,
                   p_description,
                   p_side,
                   p_align );

    end insert_guide;

    procedure update_guide (
        p_id             in number,
        p_application_id in number,
        p_page_id        in number,
        p_sequence       in number,
        p_type           in varchar2,
        p_item_id        in varchar2,
        p_region_id      in varchar2,
        p_element        in varchar2,
        p_title          in varchar2,
        p_description    in varchar2,
        p_side           in varchar2,
        p_align          in varchar2,
        p_valid          in varchar2
    ) is
    begin
        update sif_guide
        set
            application_id = p_application_id,
            page_id = p_page_id,
            sequence = p_sequence,
            type = p_type,
            item_id = p_item_id,
            region_id = p_region_id,
            element = p_element,
            title = p_title,
            description = p_description,
            side = p_side,
            align = p_align,
            valid = p_valid
        where
            id = p_id;

    end update_guide;

    procedure delete_guide (
        p_id in number
    ) is
    begin
        delete from sif_guide
        where
            id = p_id;

    end delete_guide;

    -- Browsers
    procedure get_browser (
        p_id          in number,
        p_name        out varchar2,
        p_url         out varchar2,
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
                sif_browsers
            where
                id = p_id
        ) loop
            p_name := c1.name;
            p_url := c1.url;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_browser;

    procedure insert_browser (
        p_name in varchar2,
        p_url  in varchar2,
        p_logo in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        sif.utils_pkg.get_apex_file_upload(
            p_apex_filename => p_logo,
            p_blob          => l_blob,
            p_filename      => l_filename,
            p_mimetype      => l_mimetype
        );

        insert into sif_browsers (
            name,
            url,
            logo,
            logo_filename,
            logo_mimetype,
            logo_lastupd
        ) values ( p_name,
                   p_url,
                   l_blob,
                   l_filename,
                   l_mimetype,
                   sysdate );

    end insert_browser;

    procedure update_browser (
        p_id    in number,
        p_name  in varchar2,
        p_url   in varchar2,
        p_logo  in varchar2,
        p_valid in varchar2
    ) is
        l_blob     blob;
        l_filename varchar2(255);
        l_mimetype varchar2(255);
    begin
        if p_logo is null then
            update sif_browsers
            set
                name = p_name,
                url = p_url,
                valid = p_valid
            where
                id = p_id;

        else
            sif.utils_pkg.get_apex_file_upload(
                p_apex_filename => p_logo,
                p_blob          => l_blob,
                p_filename      => l_filename,
                p_mimetype      => l_mimetype
            );

            update sif_browsers
            set
                name = p_name,
                url = p_url,
                logo = l_blob,
                logo_filename = l_filename,
                logo_mimetype = l_mimetype,
                logo_lastupd = sysdate,
                valid = p_valid
            where
                id = p_id;

        end if;
    end update_browser;

    procedure delete_browser (
        p_id in number
    ) is
    begin
        delete from sif_browsers
        where
            id = p_id;

    end delete_browser;
    
    --- 06.08.2026  stefanl 
    
    function get_id_with_sifra_vrsta_naloga (
        p_sifra  in varchar2,
        p_ooj_id in number
    ) return number is
        l_id number;
    begin
        select
            id
        into l_id
        from
            sif.sif_vrste_naloga
        where
                sifra = p_sifra
            AND ooj_id = p_ooj_id
            AND valid = 'Y';

        return l_id;
    exception
        when no_data_found then
            return null;
    end get_id_with_sifra_vrsta_naloga;

end sif_pkg;
/

prompt
prompt Creating package body SPELL_PKG
prompt ===============================
prompt
create or replace package body sif.spell_pkg as

    procedure spell_extension (
        p_number    in number,
        p_extension out varchar2
    ) is
        l_number number;
    begin
        l_number := mod(p_number, 100);
        if l_number >= 20 then
            l_number := mod(l_number, 10);
        end if;

        if l_number in ( 0, 1, 5, 6, 7,
                         8, 9, 10, 11, 12,
                         13, 14, 15, 16, 17,
                         18, 19 ) then
            p_extension := 'a';
        else
            p_extension := 'e';
        end if;

    end spell_extension;

    procedure spell_helper (
        p_number     in number,
        p_units_tens in varchar2,
        p_result     out varchar2
    ) is
    begin
        if p_units_tens in ( 'U', 'J' ) then
            case
                when p_number = 1 then
                    if p_units_tens = 'U' then
                        p_result := 'JEDNA';
                    else
                        p_result := 'JEDAN';
                    end if;
                when p_number = 2 then
                    if p_units_tens = 'U' then
                        p_result := 'DVIJE';
                    else
                        p_result := 'DVA';
                    end if;
                when p_number = 3 then
                    p_result := 'TRI';
                when p_number = 4 then
                    p_result := 'ČETIRI';
                when p_number = 5 then
                    p_result := 'PET';
                when p_number = 6 then
                    p_result := 'ŠEST';
                when p_number = 7 then
                    p_result := 'SEDAM';
                when p_number = 8 then
                    p_result := 'OSAM';
                when p_number = 9 then
                    p_result := 'DEVET';
                when p_number = 10 then
                    p_result := 'DESET';
                when p_number = 11 then
                    p_result := 'JEDANAEST';
                when p_number = 12 then
                    p_result := 'DVANAEST';
                when p_number = 13 then
                    p_result := 'TRINAEST';
                when p_number = 14 then
                    p_result := 'ČETRNAEST';
                when p_number = 15 then
                    p_result := 'PETNAEST';
                when p_number = 16 then
                    p_result := 'ŠESTNAEST';
                when p_number = 17 then
                    p_result := 'SEDAMNAEST';
                when p_number = 18 then
                    p_result := 'OSAMNAEST';
                when p_number = 19 then
                    p_result := 'DEVETNAEST';
                else
                    p_result := to_char(p_number);
            end case;
        else
            case
                when p_number = 1 then
                    p_result := 'DESET';
                when p_number = 2 then
                    p_result := 'DVADESET';
                when p_number = 3 then
                    p_result := 'TRIDESET';
                when p_number = 4 then
                    p_result := 'ČETRDESET';
                when p_number = 5 then
                    p_result := 'PEDESET';
                when p_number = 6 then
                    p_result := 'ŠEZDESET';
                when p_number = 7 then
                    p_result := 'SEDAMDESET';
                when p_number = 8 then
                    p_result := 'OSAMDESET';
                when p_number = 9 then
                    p_result := 'DEVEDESET';
                else
                    p_result := to_char(p_number);
            end case;
        end if;

        if p_number = 0 then
            p_result := '';
        end if;
    end spell_helper;

    procedure spell_serbian_number (
        p_number     in number,
        p_first      in varchar2 default 'N',
        p_units_tens in varchar2 default 'J',
        p_valuta     in varchar2 default 'KM',
        p_result     out varchar2
    ) is

        l_number      number := abs(p_number);
        l_temp_spell  varchar2(255);
        l_num_1       number;
        l_num_2       number;
        l_extension_1 varchar2(1);
        l_extension_2 varchar2(1);
        l_pf          varchar2(255);
    begin
        if p_first = 'Y' then
            if instr(
                to_char(l_number),
                '.'
            ) > 0 then
                l_pf := substr(to_char(l_number)
                               || '0',
                               instr(
                                            to_char(l_number),
                                            '.'
                                        ) + 1,
                               2);

                l_number := trunc(l_number);
            else
                l_pf := '00';
            end if;
        end if;

        if l_number = 0 then
            p_result := 'nula';
        elsif l_number < 20 then
            spell_helper(l_number, p_units_tens, p_result);
        elsif l_number < 100 then
            l_num_1 := trunc(l_number / 10);
            l_num_2 := mod(l_number, 10);
            spell_helper(l_num_1, 'T', l_temp_spell);
            p_result := l_temp_spell;
            spell_helper(l_num_2, 'J', l_temp_spell);
            p_result := p_result || l_temp_spell;
        elsif l_number < 1000 then
            l_num_1 := trunc(l_number / 100);
            l_num_2 := mod(l_number, 100);
            spell_extension(l_num_1, l_extension_1);
            spell_helper(l_num_1, 'U', l_temp_spell);
            p_result := l_temp_spell;
            spell_serbian_number(l_num_2, 'N', p_units_tens, p_valuta, l_temp_spell);
            p_result := p_result
                        || 'STOTIN'
                        || l_extension_1
                        || l_temp_spell;
        elsif l_number < 1000000 then
            l_num_1 := trunc(l_number / 1000);
            l_num_2 := mod(l_number, 1000);
            spell_extension(l_num_1, l_extension_1);
            spell_extension(l_num_2, l_extension_2);
            spell_serbian_number(l_num_1, 'N', 'U', p_valuta, l_temp_spell);
            p_result := l_temp_spell;
            spell_serbian_number(l_num_2, 'N', 'J', p_valuta, l_temp_spell);
            p_result := p_result
                        || 'HILJAD'
                        || l_extension_1
                        || l_temp_spell;
        end if;

        p_result := lower(p_result);
        if p_number < 0 then
            p_result := '-' || p_result;
        end if;
        if l_pf is not null then
            p_result := p_result
                        || ' i '
                        || l_pf
                        || '/100 '
                        || p_valuta;
        end if;

    end spell_serbian_number;

    function spell_serbian_number (
        p_number     in number,
        p_first      in varchar2 default 'N',
        p_units_tens in varchar2 default 'J',
        p_valuta     in varchar2 default 'KM'
    ) return varchar2 is
        l_output varchar2(1000);
    begin
        spell_serbian_number(
            p_number     => p_number,
            p_first      => p_first,
            p_units_tens => p_units_tens,
            p_valuta     => p_valuta,
            p_result     => l_output
        );

        return l_output;
    end spell_serbian_number;

end spell_pkg;
/

prompt
prompt Creating package body UTILS_PKG
prompt ===============================
prompt
create or replace package body sif.utils_pkg as
            
    -- Theme
    procedure update_theme_accross_applications (
        p_application_id in number,
        p_theme_style_id in number
    ) is

        cursor c_applications is
        (
            select
                application_id
            from
                sif.sif_aplikacije
        );

        l_main_application number := 220;
        l_main_theme       number;
        l_theme_style      number;
    begin
        if p_application_id = l_main_application then
            l_main_theme := p_theme_style_id;
        else
            select
                subscribed_from_id
            into l_main_theme
            from
                apex_application_theme_styles
            where
                theme_style_id = p_theme_style_id;

        end if;

        for app in c_applications loop
            if app.application_id = l_main_application then
                l_theme_style := l_main_theme;
            else
                select
                    theme_style_id
                into l_theme_style
                from
                    apex_application_theme_styles
                where
                        application_id = app.application_id
                    and subscribed_from_id = l_main_theme;

            end if;

            apex_theme.set_user_style(
                p_application_id => app.application_id,
                p_theme_number   => l_main_application,
                p_id             => l_theme_style
            );

        end loop;

    end update_theme_accross_applications;

    function is_authorized_wrapper (
        p_authorization_name in varchar2
    ) return number is
    begin
        return
            case
                when apex_authorization.is_authorized(p_authorization_name => p_authorization_name) then
                    1
                else 0
            end;
    end is_authorized_wrapper;

    procedure get_apex_file_upload (
        p_apex_filename in varchar2,
        p_blob          out blob,
        p_filename      out varchar2,
        p_mimetype      out varchar2
    ) as
    begin
        if p_apex_filename is null then
            raise_application_error(-20001, 'Došlo je do greške, pokušajte opet.');
        end if;
        select
            blob_content,
            filename,
            mime_type
        into
            p_blob,
            p_filename,
            p_mimetype
        from
            apex_application_temp_files
        where
            name = p_apex_filename;

    exception
        when no_data_found then
            raise_application_error(-20002, 'Došlo je do greške, pokušajte opet.');
    end get_apex_file_upload;

    procedure setup_enviroment (
        p_workspace_name in varchar2
    ) is

        l_service_name varchar2(255) := lower(sys_context('USERENV', 'DB_NAME'));
        l_enviroment   varchar2(255);
        l_flag_string  varchar2(255);
    begin
        case
            when l_service_name like '%esscomdev%' then
                l_flag_string := 'env_dev:TRUE, env_test:FALSE, env_prod:FALSE';
            when l_service_name like '%esscomtest%' then
                l_flag_string := 'env_dev:FALSE, env_test:TRUE, env_prod:FALSE';
            when l_service_name like '%esscomdb%' then
                l_flag_string := 'env_dev:FALSE, env_test:FALSE, env_prod:TRUE';
        end case;

        execute immediate 'ALTER SESSION SET PLSQL_CCFLAGS = '''
                          || l_flag_string
                          || '''';
    end setup_enviroment;

    procedure setup_workspace_to_production_enviroment (
        p_workspace_name in varchar2
    ) is
        l_workspace_id number;
    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        for c1 in (
            select
                application_id
            from
                apex_applications
            where
                workspace = p_workspace_name
        ) loop
            apex_util.set_app_build_status(
                p_application_id => c1.application_id,
                p_build_status   => 'RUN_ONLY'
            );
        end loop;

    end setup_workspace_to_production_enviroment;

    procedure setup_workspace_to_development_enviroment (
        p_workspace_name in varchar2
    ) is
        l_workspace_id number;
    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        for c1 in (
            select
                application_id
            from
                apex_applications
            where
                workspace = p_workspace_name
        ) loop
            apex_util.set_app_build_status(
                p_application_id => c1.application_id,
                p_build_status   => 'RUN_AND_BUILD'
            );
        end loop;

    end setup_workspace_to_development_enviroment;

    procedure disable_workspace_applications (
        p_workspace_name in varchar2
    ) is
        l_unavailable_value varchar2(4000) := '<!DOCTYPE html>
            <html lang="en">
              <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Maintenance Mode</title>
                <style>
                  body {
                    margin: 0;
                    padding: 0;
                    background-color: #f0f0f0;
                    font-family: ''Arial'', sans-serif;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    height: 100vh;
                    text-align: center;
                    color: #333;
                  }

                  .container {
                    background: #fff;
                    padding: 40px;
                    border-radius: 8px;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                    max-width: 600px;
                    width: 90%;
                  }

                  h1 {
                    margin-top: 0;
                    font-size: 2.5em;
                  }

                  p {
                    font-size: 1.2em;
                    margin: 20px 0;
                  }

                  img {
                    max-width: 100%;
                    border-radius: 8px;
                    margin-top: 20px;
                  }

                  .footer {
                    margin-top: 20px;
                    font-size: 0.9em;
                    color: #666;
                  }
                </style>
              </head>
              <body>
                <div class="container">
                  <h1>Održavanje u toku</h1>
                  <p>Trenutno radimo na nekim poboljšanjima. Uskoro ćemo biti ponovo dostupni!</p>
                  <img src="https://miro.medium.com/v2/resize:fit:1100/format:webp/0*Zcn7ZCwN4DGFtmo8.png" width="600" height="400" alt="Maintenance Image">
                  <div class="footer"> '
                                              || '&'
                                              || 'copy; 2025 ESSCOM. </div>
                </div>
              </body>
            </html>';
        l_workspace_id      number;
    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        for c1 in (
            select
                application_id
            from
                apex_applications
            where
                workspace = p_workspace_name
        ) loop
            apex_util.set_application_status(
                p_application_id     => c1.application_id,
                p_application_status => 'UNAVAILABLE',
                p_unavailable_value  => l_unavailable_value
            );
        end loop;

    end disable_workspace_applications;

    procedure enable_workspace_applications (
        p_workspace_name in varchar2
    ) is
        l_workspace_id number;
    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        for c1 in (
            select
                application_id
            from
                apex_applications
            where
                workspace = p_workspace_name
        ) loop
            apex_util.set_application_status(
                p_application_id     => c1.application_id,
                p_application_status => 'AVAILABLE_W_EDIT_LINK',
                p_unavailable_value  => 'Naša aplikacija trenutno nije dostupna.'
            );
        end loop;

    end enable_workspace_applications;

    procedure enable_workspace_automations (
        p_workspace_name in varchar2
    ) is
        l_workspace_id number;
        
        cursor c_automations is
        (
            select
                application_id,
                static_id
            from
                apex_appl_automations
            where
                workspace = p_workspace_name
        );

    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        
        for c1 in c_automations loop
            apex_automation.enable(
                p_application_id => c1.application_id,
                p_static_id      => c1.static_id
            );
        end loop;
    end enable_workspace_automations;

    procedure disable_workspace_automations (
        p_workspace_name in varchar2
    ) is
        l_workspace_id number;
        
        cursor c_automations is
        (
            select
                application_id,
                static_id
            from
                apex_appl_automations
            where
                workspace = p_workspace_name
        );

    begin
        l_workspace_id := apex_util.find_security_group_id(p_workspace => p_workspace_name);
        apex_util.set_security_group_id(p_security_group_id => l_workspace_id);
        
        for c1 in c_automations loop
            apex_automation.disable(
                p_application_id => c1.application_id,
                p_static_id      => c1.static_id
            );
        end loop;
    end disable_workspace_automations;

    function format_size (
        p_size in number
    ) return varchar2 is
        l_size_kb number;
        l_size_mb number;
        l_size_gb number;
    begin
        l_size_kb := p_size / 1024;
        l_size_mb := p_size / ( 1024 * 1024 );
        l_size_gb := p_size / ( 1024 * 1024 * 1024 );
        if p_size < 1024 then
            return p_size || 'bytes';
        elsif l_size_kb < 1024 then
            return to_char(l_size_kb, '999.99')
                   || ' KB';
        elsif l_size_mb < 1024 then
            return to_char(l_size_mb, '999.99')
                   || ' MB';
        else
            return to_char(l_size_gb, '999.99')
                   || ' GB';
        end if;

    end format_size;

    function base64encode (
        p_blob in blob
    ) return clob is
        l_clob clob;
    begin
        return apex_web_service.blob2clobbase64(p_blob);
    end base64encode;

end utils_pkg;
/

prompt
prompt Creating package body VP_PKG
prompt ============================
prompt
create or replace package body sif.vp_pkg is

    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                vp_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into vp_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update vp_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from vp_sif_statusi
        where
            id = p_id;

    end delete_status;

end vp_pkg;
/

prompt
prompt Creating package body ZAPOSLJAVANJE_PKG
prompt =======================================
prompt
create or replace package body sif.zaposljavanje_pkg is
    
    -- Statusi
    procedure get_status (
        p_id          in number,
        p_naziv       out varchar2,
        p_sifra       out varchar2,
        p_opis        out varchar2,
        p_color_code  out varchar2,
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
                i_sif_statusi
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_sifra := c1.sifra;
            p_opis := c1.opis;
            p_color_code := c1.color_code;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_status;

    procedure insert_status (
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2
    ) is
    begin
        insert into i_sif_statusi (
            naziv,
            sifra,
            opis,
            color_code
        ) values ( p_naziv,
                   p_sifra,
                   p_opis,
                   p_color_code );

    end insert_status;

    procedure update_status (
        p_id         in number,
        p_naziv      in varchar2,
        p_sifra      in varchar2,
        p_opis       in varchar2,
        p_color_code in varchar2,
        p_valid      in varchar2
    ) is
    begin
        update i_sif_statusi
        set
            naziv = p_naziv,
            sifra = p_sifra,
            opis = p_opis,
            color_code = p_color_code,
            valid = p_valid
        where
            id = p_id;

    end update_status;

    procedure delete_status (
        p_id in number
    ) is
    begin
        delete from i_sif_statusi
        where
            id = p_id;

    end delete_status;

    -- Tipovi dokumenta
    procedure get_tip_dokumenta (
        p_id          in number,
        p_naziv       out varchar2,
        p_opis        out varchar2,
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
                i_sif_tipovi_dokumenata
            where
                id = p_id
        ) loop
            p_naziv := c1.naziv;
            p_opis := c1.opis;
            p_valid := c1.valid;
            p_row_version := c1.row_version;
            p_created := c1.created;
            p_created_by := c1.created_by;
            p_updated := c1.updated;
            p_updated_by := c1.updated_by;
        end loop;
    end get_tip_dokumenta;

    procedure insert_tip_dokumenta (
        p_naziv in varchar2,
        p_opis  in varchar2
    ) is
    begin
        insert into i_sif_tipovi_dokumenata (
            naziv,
            opis
        ) values ( p_naziv,
                   p_opis );

    end insert_tip_dokumenta;

    procedure update_tip_dokumenta (
        p_id    in number,
        p_naziv in varchar2,
        p_opis  in varchar2,
        p_valid in varchar2
    ) is
    begin
        update i_sif_tipovi_dokumenata
        set
            naziv = p_naziv,
            opis = p_opis,
            valid = p_valid
        where
            id = p_id;

    end update_tip_dokumenta;

    procedure delete_tip_dokumenta (
        p_id in number
    ) is
    begin
        delete from i_sif_tipovi_dokumenata
        where
            id = p_id;

    end delete_tip_dokumenta;

end zaposljavanje_pkg;
/

prompt
prompt Creating trigger ACC_AMORTIZACIONE_GRUPE_BIU
prompt ============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_AMORTIZACIONE_GRUPE_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_amortizacione_grupe
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END acc_amortizacione_grupe_biu;
/

prompt
prompt Creating trigger ACC_AOP_GRUPE_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_AOP_GRUPE_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_aop_grupe
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

END acc_aop_grupe_biu;
/

prompt
prompt Creating trigger ACC_AOP_KONTA_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_AOP_KONTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_aop_konta
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

END acc_aop_konta_biu;
/

prompt
prompt Creating trigger ACC_AUTOMATSKA_KNJIZENJA_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_AUTOMATSKA_KNJIZENJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_automatska_knjizenja
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

END acc_automatska_knjizenja_biu;
/

prompt
prompt Creating trigger ACC_CHART_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_CHART_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_chart
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

END acc_chart_biu;
/

prompt
prompt Creating trigger ACC_CHART_KONTA_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_CHART_KONTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_chart_konta
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

END acc_chart_konta_biu;
/

prompt
prompt Creating trigger ACC_GRUPE_STAVKI_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_GRUPE_STAVKI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_grupe_stavki
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

END acc_grupe_stavki_biu;
/

prompt
prompt Creating trigger ACC_GRUPE_STAVKI_KONTA_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_GRUPE_STAVKI_KONTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_grupe_stavki_konta
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

END acc_grupe_stavki_konta_biu;
/

prompt
prompt Creating trigger ACC_IZVJESTAJI_AOP_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_IZVJESTAJI_AOP_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_izvjestaji_aop
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

END acc_izvjestaji_aop_biu;
/

prompt
prompt Creating trigger ACC_IZVJESTAJI_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_IZVJESTAJI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_izvjestaji
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END acc_izvjestaji_biu;
/

prompt
prompt Creating trigger ACC_IZVJESTAJ_PREDUZETNICI_BIU
prompt ===============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_IZVJESTAJ_PREDUZETNICI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_izvjestaj_preduzetnici
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

END acc_izvjestaj_preduzetnici_biu;
/

prompt
prompt Creating trigger ACC_JEDINICE_MJERE_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_JEDINICE_MJERE_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_jedinice_mjere
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

END acc_jedinice_mjere_biu;
/

prompt
prompt Creating trigger ACC_KLASE_OS_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_KLASE_OS_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_klase_os
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

END acc_klase_os_biu;
/

prompt
prompt Creating trigger ACC_KLASE_OS_KONTA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_KLASE_OS_KONTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_klase_os_konta
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

END acc_klase_os_konta_biu;
/

prompt
prompt Creating trigger ACC_KONTNI_OKVIR_KLASE_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_KONTNI_OKVIR_KLASE_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_kontni_okvir_klase
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

END acc_kontni_okvir_klase_biu;
/

prompt
prompt Creating trigger ACC_MJESTA_TROSKA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_MJESTA_TROSKA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_mjesta_troska
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END acc_mjesta_troska_biu;
/

prompt
prompt Creating trigger ACC_MODULI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_MODULI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_moduli
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

END acc_moduli_biu;
/

prompt
prompt Creating trigger ACC_OBRASCI_FAKTURA_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_OBRASCI_FAKTURA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_obrasci_faktura
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

END acc_obrasci_faktura_biu;
/

prompt
prompt Creating trigger ACC_PDV_INDIKATORI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_PDV_INDIKATORI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_pdv_indikatori
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END acc_pdv_indikatori_biu;
/

prompt
prompt Creating trigger ACC_RADNICI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_RADNICI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_radnici
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

END acc_radnici_biu;
/

prompt
prompt Creating trigger ACC_STATUSI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_statusi
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

END acc_statusi_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_CIJENA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_CIJENA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_cijena
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

END acc_tipovi_cijena_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_KLIJENATA_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_KLIJENATA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_klijenata
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

END acc_tipovi_klijenata_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_KRETANJA_ROBE_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_KRETANJA_ROBE_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_kretanja_robe
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

END acc_tipovi_kretanja_robe_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_PLACANJA_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_PLACANJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_placanja
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

END acc_tipovi_placanja_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_SKLADISTA_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_SKLADISTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_skladista
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

END acc_tipovi_skladista_biu;
/

prompt
prompt Creating trigger ACC_TIPOVI_STAVKI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TIPOVI_STAVKI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_tipovi_stavki
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

END acc_tipovi_stavki_biu;
/

prompt
prompt Creating trigger ACC_TRANSAKCIJE_OS_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_TRANSAKCIJE_OS_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_transakcije_os
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

END acc_transakcije_os_biu;
/

prompt
prompt Creating trigger ACC_UIO_TIP_DOKUMENTA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_UIO_TIP_DOKUMENTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_uio_tipovi_dokumenata
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

END acc_uio_tip_dokumenta_biu;
/

prompt
prompt Creating trigger ACC_VALUTA_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VALUTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_valute
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

END acc_valuta_biu;
/

prompt
prompt Creating trigger ACC_VALUTA_KURSEVI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VALUTA_KURSEVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_valuta_kursevi
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

END acc_valuta_kursevi_biu;
/

prompt
prompt Creating trigger ACC_VALUTE_HIST_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VALUTE_HIST_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_valute_hist
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

END acc_valute_hist_biu;
/

prompt
prompt Creating trigger ACC_VRSTE_FAKTURA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VRSTE_FAKTURA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_vrste_faktura
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

END acc_vrste_faktura_biu;
/

prompt
prompt Creating trigger ACC_VRSTE_PRIHODA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VRSTE_PRIHODA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_vrste_prihoda
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END acc_vrste_prihoda_biu;
/

prompt
prompt Creating trigger ACC_VRSTE_RASHODA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_VRSTE_RASHODA_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_vrste_rashoda
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END acc_vrste_rashoda_biu;
/

prompt
prompt Creating trigger ACC_VRSTE_UGOVORA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF.acc_vrste_ugovora_biu
    BEFORE INSERT OR UPDATE ON sif.acc_vrste_ugovora
    FOR EACH ROW
BEGIN
    IF inserting THEN
        :new.row_version := 1;
        :new.created_by := coalesce(sys_context('APEX$SESSION', 'APP_USER'),
                                    sys_context('userenv', 'proxy_user'), user);
        :new.created := sysdate;
    ELSIF updating THEN
        :new.row_version := nvl(:old.row_version, 0) + 1;
    END IF;
    :new.updated_by := coalesce(sys_context('APEX$SESSION', 'APP_USER'),
                                sys_context('userenv', 'proxy_user'), user);
    :new.updated := sysdate;
END acc_vrste_ugovora_biu;
/

prompt
prompt Creating trigger ACC_ZAVISNI_TROSKOVI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."ACC_ZAVISNI_TROSKOVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.acc_zavisni_troskovi
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

END acc_zavisni_troskovi_biu;
/

prompt
prompt Creating trigger A_SIF_STATUSI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."A_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.a_sif_statusi
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

END a_sif_statusi_biu;
/

prompt
prompt Creating trigger A_SIF_TIPOVI_OBAVJESTENJA_BIU
prompt ==============================================
prompt
CREATE OR REPLACE TRIGGER SIF."A_SIF_TIPOVI_OBAVJESTENJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.a_sif_tipovi_obavjestenja
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

END a_sif_tipovi_obavjestenja_biu;
/

prompt
prompt Creating trigger BUDZET_STATUSI_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."BUDZET_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.budzet_statusi
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

END budzet_statusi_biu;
/

prompt
prompt Creating trigger B_SIF_PRISUTNOSTI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."B_SIF_PRISUTNOSTI_BIU" BEFORE
    INSERT OR UPDATE ON sif.b_sif_prisutnosti
    FOR EACH ROW
BEGIN
    :new.code := upper(:new.code);

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

END b_sif_prisutnosti_biu;
/

prompt
prompt Creating trigger B_SIF_STATUSI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."B_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.b_sif_statusi
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

END b_sif_statusi_biu;
/

prompt
prompt Creating trigger B_SIF_TIPOVI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."B_SIF_TIPOVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.b_sif_tipovi
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

END b_sif_tipovi_biu;
/

prompt
prompt Creating trigger CMS_ALATI_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER SIF."CMS_ALATI_BIU" BEFORE
    INSERT OR UPDATE ON sif.cms_alati
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

END cms_alati_biu;
/

prompt
prompt Creating trigger CMS_REGISTRARI_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."CMS_REGISTRARI_BIU" BEFORE
    INSERT OR UPDATE ON sif.cms_registrari
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

END cms_registrari_biu;
/

prompt
prompt Creating trigger CMS_REGISTRAR_TLD_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."CMS_REGISTRAR_TLD_BIU" BEFORE
    INSERT OR UPDATE ON sif.cms_registrar_tld
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

END cms_registrar_tld_biu;
/

prompt
prompt Creating trigger CMS_STATUSI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."CMS_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.cms_statusi
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

END cms_statusi_biu;
/

prompt
prompt Creating trigger CMS_TLD_BIU
prompt ============================
prompt
CREATE OR REPLACE TRIGGER SIF."CMS_TLD_BIU" BEFORE
    INSERT OR UPDATE ON sif.cms_tld
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

END cms_tld_biu;
/

prompt
prompt Creating trigger CS_KATEGORIJA_VOZILA_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_KATEGORIJA_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_kategorija_vozila
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

END cs_kategorija_vozila_biu;
/

prompt
prompt Creating trigger CS_MODELI_VOZILA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_MODELI_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_modeli_vozila
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

END cs_modeli_vozila_biu;
/

prompt
prompt Creating trigger CS_PROIZVODJACI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_PROIZVODJACI_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_proizvodjaci
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

END cs_proizvodjaci_biu;
/

prompt
prompt Creating trigger CS_PROIZVODJACI_VOZILA_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_PROIZVODJACI_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_proizvodjaci_vozila
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

END cs_proizvodjaci_vozila_biu;
/

prompt
prompt Creating trigger CS_STATUSI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_statusi
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

END cs_statusi_biu;
/

prompt
prompt Creating trigger CS_TIPOVI_GORIVA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_TIPOVI_GORIVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_tipovi_goriva
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

END cs_tipovi_goriva_biu;
/

prompt
prompt Creating trigger CS_TIPOVI_MJENJACA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_TIPOVI_MJENJACA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_tipovi_mjenjaca
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

END cs_tipovi_mjenjaca_biu;
/

prompt
prompt Creating trigger CS_TIPOVI_POGONA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_TIPOVI_POGONA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_tipovi_pogona
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

END cs_tipovi_pogona_biu;
/

prompt
prompt Creating trigger CS_TIPOVI_RADA_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."CS_TIPOVI_RADA_BIU" BEFORE
    INSERT OR UPDATE ON sif.cs_tipovi_rada
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

END cs_tipovi_rada_biu;
/

prompt
prompt Creating trigger DMS_PRISTUPI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."DMS_PRISTUPI_BIU" BEFORE
    INSERT OR UPDATE ON sif.dms_pristupi
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

END dms_pristupi_biu;
/

prompt
prompt Creating trigger ER_IZVJESTAJI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_IZVJESTAJI_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_izvjestaji
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

END er_izvjestaji_biu;
/

prompt
prompt Creating trigger ER_KATEGORIJE_RIBOLOVACA_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_KATEGORIJE_RIBOLOVACA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_kategorije_ribolovaca
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

END er_kategorije_ribolovaca_biu;
/

prompt
prompt Creating trigger ER_RIBLJE_VRSTE_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_RIBLJE_VRSTE_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_riblje_vrste
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

END er_riblje_vrste_biu;
/

prompt
prompt Creating trigger ER_SABLONI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_SABLONI_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_sabloni
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

END er_sabloni_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_CIJENA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_CIJENA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_cijena
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

END er_tipovi_cijena_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_CLANSKIH_KARTI_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_CLANSKIH_KARTI_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_clanskih_karti
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

END er_tipovi_clanskih_karti_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_DOZVOLA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_DOZVOLA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_dozvola
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

END er_tipovi_dozvola_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_PRIVREMENIH_DOZVOLA_BIU
prompt ==================================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_PRIVREMENIH_DOZVOLA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_privremenih_dozvola
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

END er_tipovi_privremenih_dozvola_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_RIBOLOVA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_RIBOLOVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_ribolova
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

END er_tipovi_ribolova_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_VODA_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_VODA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_voda
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

END er_tipovi_voda_biu;
/

prompt
prompt Creating trigger ER_TIPOVI_ZABRANA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."ER_TIPOVI_ZABRANA_BIU" BEFORE
    INSERT OR UPDATE ON sif.er_tipovi_zabrana
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

END er_tipovi_zabrana_biu;
/

prompt
prompt Creating trigger FV_TIPOVI_REZERVACIJA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."FV_TIPOVI_REZERVACIJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.fv_tipovi_rezervacija
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

END fv_tipovi_rezervacija_biu;
/

prompt
prompt Creating trigger FV_VRSTE_SERVISA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."FV_VRSTE_SERVISA_BIU" BEFORE
    INSERT OR UPDATE ON sif.fv_vrste_servisa
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

END fv_vrste_servisa_biu;
/

prompt
prompt Creating trigger FV_VRSTE_VOZILA_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."FV_VRSTE_VOZILA_BIU" BEFORE
    INSERT OR UPDATE ON sif.fv_vrste_vozila
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

END fv_vrste_vozila_biu;
/

prompt
prompt Creating trigger GO_PARAMETRI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."GO_PARAMETRI_BIU" BEFORE
    INSERT OR UPDATE ON sif.go_parametri
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

END go_parametri_biu;
/

prompt
prompt Creating trigger GO_STATUSI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."GO_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.go_statusi
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

END go_statusi_biu;
/

prompt
prompt Creating trigger GO_TIPOVI_PARAMETARA_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."GO_TIPOVI_PARAMETARA_BIU" BEFORE
    INSERT OR UPDATE ON sif.go_tipovi_parametara
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

END go_tipovi_parametara_biu;
/

prompt
prompt Creating trigger GO_TIPOVI_ZAHTJEVA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."GO_TIPOVI_ZAHTJEVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.go_tipovi_zahtjeva
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

END go_tipovi_zahtjeva_biu;
/

prompt
prompt Creating trigger GR_TIPOVI_MJESTA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."GR_TIPOVI_MJESTA_BIU" BEFORE
    INSERT OR UPDATE ON sif.gr_tipovi_mjesta
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

END gr_tipovi_mjesta_biu;
/

prompt
prompt Creating trigger HD_STATUSI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."HD_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.hd_statusi
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

END hd_statusi_biu;
/

prompt
prompt Creating trigger HD_TIPOVI_LOGA_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."HD_TIPOVI_LOGA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hd_tipovi_loga
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

END hd_tipovi_loga_biu;
/

prompt
prompt Creating trigger HR_OBRASCI_MEMORANDUMA_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_OBRASCI_MEMORANDUMA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_obrasci_memoranduma
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

END hr_obrasci_memoranduma_biu;
/

prompt
prompt Creating trigger HR_PRAZNICI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_PRAZNICI_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_praznici
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

END hr_praznici_biu;
/

prompt
prompt Creating trigger HR_PVS_TIPOVI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_PVS_TIPOVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_pvs_tipovi
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

END hr_pvs_tipovi_biu;
/

prompt
prompt Creating trigger HR_SIF_EV_PRISUTNOSTI_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_EV_PRISUTNOSTI_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_ev_prisutnosti
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

END hr_sif_ev_prisutnosti_biu;
/

prompt
prompt Creating trigger HR_SIF_OBRAZOVANJA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_OBRAZOVANJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_obrazovanja
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END hr_sif_obrazovanja_biu;
/

prompt
prompt Creating trigger HR_SIF_SIHTL_STATUSI_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_SIHTL_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_sihtl_statusi
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

END hr_sif_sihtl_statusi_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_DOKUMENATA_BIU
prompt =============================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_DOKUMENATA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_dokumenata
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

END hr_sif_tipovi_dokumenata_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_PRIJAVA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_PRIJAVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_prijava
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

END hr_sif_tipovi_prijava_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_RADA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_RADA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_rada
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

END hr_sif_tipovi_rada_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_RADNOG_ODNOSA_BIU
prompt ================================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_RADNOG_ODNOSA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_radnog_odnosa
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END hr_sif_tipovi_radnog_odnosa_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_RADNOG_VREMENA_BIU
prompt =================================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_RADNOG_VREMENA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_radnog_vremena
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END hr_sif_tipovi_radnog_vremena_biu;
/

prompt
prompt Creating trigger HR_SIF_TIPOVI_UGOVORA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_SIF_TIPOVI_UGOVORA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_sif_tipovi_ugovora
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

END hr_sif_tipovi_ugovora_biu;
/

prompt
prompt Creating trigger HR_TIPOVI_POTVRDA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_TIPOVI_POTVRDA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_tipovi_potvrda
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

END hr_tipovi_potvrda_biu;
/

prompt
prompt Creating trigger HR_TIPOVI_ZAHTJEVA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."HR_TIPOVI_ZAHTJEVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.hr_tipovi_zahtjeva
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

END hr_tipovi_zahtjeva_biu;
/

prompt
prompt Creating trigger I_SIF_STATUSI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."I_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.i_sif_statusi
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

END i_sif_statusi_biu;
/

prompt
prompt Creating trigger I_SIF_TIPOVI_DOKUMENATA_BIU
prompt ============================================
prompt
CREATE OR REPLACE TRIGGER SIF."I_SIF_TIPOVI_DOKUMENATA_BIU" BEFORE
    INSERT OR UPDATE ON sif.i_sif_tipovi_dokumenata
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

END i_sif_tipovi_dokumenata_biu;
/

prompt
prompt Creating trigger LMS_KATEGORIJE_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_KATEGORIJE_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_kategorije
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

END lms_kategorije_biu;
/

prompt
prompt Creating trigger LMS_STATUSI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_statusi
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

END lms_statusi_biu;
/

prompt
prompt Creating trigger LMS_TIPOVI_ISPITA_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_TIPOVI_ISPITA_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_tipovi_ispita
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

END lms_tipovi_ispita_biu;
/

prompt
prompt Creating trigger LMS_TIPOVI_KURSEVA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_TIPOVI_KURSEVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_tipovi_kurseva
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

END lms_tipovi_kurseva_biu;
/

prompt
prompt Creating trigger LMS_TIPOVI_LEKCIJA_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_TIPOVI_LEKCIJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_tipovi_lekcija
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

END lms_tipovi_lekcija_biu;
/

prompt
prompt Creating trigger LMS_TIPOVI_PUBLIKE_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."LMS_TIPOVI_PUBLIKE_BIU" BEFORE
    INSERT OR UPDATE ON sif.lms_tipovi_publike
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

END lms_tipovi_publike_biu;
/

prompt
prompt Creating trigger LOKI_BEFORE_DDL_TGR
prompt ====================================
prompt
create or replace trigger sif.loki_before_ddl_tgr
    before ddl on sif.schema begin
        execute immediate 'begin LOKI.loki_lock.handle_ddl_event(); end;';
    end loki_before_ddl_tgr;
/

prompt
prompt Creating trigger LPR_SIF_PRIORITETI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."LPR_SIF_PRIORITETI_BIU" BEFORE
    INSERT OR UPDATE ON sif.lpr_sif_prioriteti
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

END lpr_sif_prioriteti_biu;
/

prompt
prompt Creating trigger LPR_SIF_STATUSI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."LPR_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.lpr_sif_statusi
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

END lpr_sif_statusi_biu;
/

prompt
prompt Creating trigger PL_KOEFICIJENTI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."PL_KOEFICIJENTI_BIU" BEFORE
    INSERT OR UPDATE ON sif.pl_koeficijenti
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

END pl_koeficijenti_biu;
/

prompt
prompt Creating trigger PL_TIPOVI_EI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."PL_TIPOVI_EI_BIU" BEFORE
    INSERT OR UPDATE ON sif.pl_tipovi_ei
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END pl_tipovi_ei_biu;
/

prompt
prompt Creating trigger PRU_SIF_INTERVALI_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_INTERVALI_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_intervali
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

END pru_sif_intervali_biu;
/

prompt
prompt Creating trigger PRU_SIF_KOMPETENCIJE_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_KOMPETENCIJE_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_kompetencije
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

END pru_sif_kompetencije_biu;
/

prompt
prompt Creating trigger PRU_SIF_OCJENE_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_OCJENE_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_ocjene
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

END pru_sif_ocjene_biu;
/

prompt
prompt Creating trigger PRU_SIF_RAZLOZI_NEOCJENIVANJA_BIU
prompt ==================================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_RAZLOZI_NEOCJENIVANJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_razlozi_neocjenivanja
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

END pru_sif_razlozi_neocjenivanja_biu;
/

prompt
prompt Creating trigger PRU_SIF_STATUSI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_statusi
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

END pru_sif_statusi_biu;
/

prompt
prompt Creating trigger PRU_SIF_TIPOVI_KOMPETENCIJA_BIU
prompt ================================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_TIPOVI_KOMPETENCIJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_tipovi_kompetencija
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

END pru_sif_tipovi_kompetencija_biu;
/

prompt
prompt Creating trigger PRU_SIF_TIPOVI_OCJENA_BIU
prompt ==========================================
prompt
CREATE OR REPLACE TRIGGER SIF."PRU_SIF_TIPOVI_OCJENA_BIU" BEFORE
    INSERT OR UPDATE ON sif.pru_sif_tipovi_ocjena
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

END pru_sif_tipovi_ocjena_biu;
/

prompt
prompt Creating trigger P_SIF_NIVOI_PRISTUPA_BIU
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER SIF."P_SIF_NIVOI_PRISTUPA_BIU" BEFORE
    INSERT OR UPDATE ON sif.p_sif_nivoi_pristupa
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

END p_sif_nivoi_pristupa_biu;
/

prompt
prompt Creating trigger P_SIF_POZADINE_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."P_SIF_POZADINE_BIU" BEFORE
    INSERT OR UPDATE ON sif.p_sif_pozadine
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

END p_sif_pozadine_biu;
/

prompt
prompt Creating trigger P_SIF_STATUSI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."P_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.p_sif_statusi
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

END p_sif_statusi_biu;
/

prompt
prompt Creating trigger P_SIF_TIPOVI_KOMENTARA_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."P_SIF_TIPOVI_KOMENTARA_BIU" BEFORE
    INSERT OR UPDATE ON sif.p_sif_tipovi_komentara
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

END p_sif_tipovi_komentara_biu;
/

prompt
prompt Creating trigger SIF_APLIKACIJA_ROLE_BIU
prompt ========================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_APLIKACIJA_ROLE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_aplikacija_role
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

END sif_aplikacija_role_biu;
/

prompt
prompt Creating trigger SIF_APLIKACIJE_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_APLIKACIJE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_aplikacije
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

END sif_aplikacije_biu;
/

prompt
prompt Creating trigger SIF_BANKE_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_BANKE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_banke
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

END sif_banke_biu;
/

prompt
prompt Creating trigger SIF_BROWSERS_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_BROWSERS_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_browsers
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

END sif_browsers_biu;
/

prompt
prompt Creating trigger SIF_DRZAVE_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_DRZAVE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_drzave
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

END sif_drzave_biu;
/

prompt
prompt Creating trigger SIF_ENTITETI_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_ENTITETI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_entiteti
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

END sif_entiteti_biu;
/

prompt
prompt Creating trigger SIF_GRADOVI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_GRADOVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_gradovi
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

END sif_gradovi_biu;
/

prompt
prompt Creating trigger SIF_GUIDE_BIU
prompt ==============================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_GUIDE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_guide
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

END sif_guide_biu;
/

prompt
prompt Creating trigger SIF_INTERVALI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_INTERVALI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_intervali
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

END sif_intervali_biu;
/

prompt
prompt Creating trigger SIF_KANTONI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_KANTONI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_kantoni
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

END sif_kantoni_biu;
/

prompt
prompt Creating trigger SIF_MODULI_BIU
prompt ===============================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_MODULI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_moduli
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

END sif_moduli_biu;
/

prompt
prompt Creating trigger SIF_MODULI_CIJENE_BIU
prompt ======================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_MODULI_CIJENE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_moduli_cijene
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

END sif_moduli_cijene_biu;
/

prompt
prompt Creating trigger SIF_MODULI_ROLE_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_MODULI_ROLE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_moduli_role
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

END sif_moduli_role_biu;
/

prompt
prompt Creating trigger SIF_ROLE_BIU
prompt =============================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_ROLE_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_role
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

END sif_role_biu;
/

prompt
prompt Creating trigger SIF_STATUSI_BIU
prompt ================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_statusi
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END sif_statusi_biu;
/

prompt
prompt Creating trigger SIF_TIPOVI_EI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_TIPOVI_EI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_tipovi_ei
    FOR EACH ROW
BEGIN
    :new.sifra := upper(:new.sifra);

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

END sif_tipovi_ei_biu;
/

prompt
prompt Creating trigger SIF_TIPOVI_NOTIFIKACIJA_BIU
prompt ============================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_TIPOVI_NOTIFIKACIJA_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_tipovi_notifikacija
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

END sif_tipovi_notifikacija_biu;
/

prompt
prompt Creating trigger SIF_TIPOVI_PREDUZETNIKA_BIU
prompt ============================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_TIPOVI_PREDUZETNIKA_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_tipovi_preduzetnika
    FOR EACH ROW
BEGIN
    :new.sifra := lower(:new.sifra);

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

END sif_tipovi_preduzetnika_biu;
/

prompt
prompt Creating trigger SIF_UPUTSTVA_BIU
prompt =================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_UPUTSTVA_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_uputstva
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

END sif_uputstva_biu;
/

prompt
prompt Creating trigger SIF_VRSTE_NALOGA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_VRSTE_NALOGA_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_vrste_naloga
    FOR EACH ROW
BEGIN
    :new.app := upper(:new.app);

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

END sif_vrste_naloga_biu;
/

prompt
prompt Creating trigger SIF_ZIRO_RACUNI_BIU
prompt ====================================
prompt
CREATE OR REPLACE TRIGGER SIF."SIF_ZIRO_RACUNI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sif_ziro_racuni
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

END sif_ziro_racuni_biu;
/

prompt
prompt Creating trigger SP_TROSKOVI_TIPOVI_BIU
prompt =======================================
prompt
CREATE OR REPLACE TRIGGER SIF."SP_TROSKOVI_TIPOVI_BIU" BEFORE
    INSERT OR UPDATE ON sif.sp_troskovi_tipovi
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

END sp_troskovi_tipovi_biu;
/

prompt
prompt Creating trigger S_SIF_STATUSI_BIU
prompt ==================================
prompt
CREATE OR REPLACE TRIGGER SIF."S_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.s_sif_statusi
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

END s_sif_statusi_biu;
/

prompt
prompt Creating trigger S_SIF_TIPOVI_SASTANAKA_BIU
prompt ===========================================
prompt
CREATE OR REPLACE TRIGGER SIF."S_SIF_TIPOVI_SASTANAKA_BIU" BEFORE
    INSERT OR UPDATE ON sif.s_sif_tipovi_sastanaka
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

END s_sif_tipovi_sastanaka_biu;
/

prompt
prompt Creating trigger UIO_TIP_DOKUMENTA_PDV_INDIKATORI
prompt =================================================
prompt
CREATE OR REPLACE TRIGGER SIF."UIO_TIP_DOKUMENTA_PDV_INDIKATORI" BEFORE
    INSERT OR UPDATE ON sif.uio_tip_dokumenta_pdv_indikatori
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

END uio_tip_dokumenta_pdv_indikatori;
/

prompt
prompt Creating trigger VP_SIF_STATUSI_BIU
prompt ===================================
prompt
CREATE OR REPLACE TRIGGER SIF."VP_SIF_STATUSI_BIU" BEFORE
    INSERT OR UPDATE ON sif.vp_sif_statusi
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

END vp_sif_statusi_biu;
/

prompt
prompt Creating trigger VRSTE_DOKUMENATA_BIU
prompt =====================================
prompt
CREATE OR REPLACE TRIGGER SIF."VRSTE_DOKUMENATA_BIU" BEFORE
    INSERT OR UPDATE ON sif.vrste_dokumenata
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

END VRSTE_DOKUMENATA_BIU;
/

prompt
prompt Creating trigger uio_tip_dokumenta_pdv_indikatori
prompt =================================================
prompt
CREATE OR REPLACE TRIGGER SIF."uio_tip_dokumenta_pdv_indikatori" BEFORE
    INSERT OR UPDATE ON sif.uio_tip_dokumenta_pdv_indikatori
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

END uio_tip_dokumenta_pdv_indikatori;
/


prompt Done
spool off
set define on
