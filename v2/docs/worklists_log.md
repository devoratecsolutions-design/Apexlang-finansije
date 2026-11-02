# Radne liste – Smart Filters (obrazac pilota p50)

## p10 p00010-klijenti.apx
  lista: klijenti
## p20 p00020-stavke1.apx
  lista: izvjestaj-report
## p40 p00040-ulazne-fakture.apx
  - P40_IZNOS_BEZ_PDV: filter raspona (range) izostavljen; iznos se traži kroz pretragu
  - P40_IZNOS_SA_PDV: filter raspona (range) izostavljen; iznos se traži kroz pretragu
  lista: ulazne-fakture-report
## p70 p00070-ugovori.apx
  lista: ugovori
## p200 p00200-nalozi-za-knjiženje.apx
  lista: master-records
## p271 p00271-održavanja-osnovnih-sredstava.apx
  lista: održavanja-osnovnih-sredstava
## p320 p00320-trebovanja.apx
  lista: trebovanja-report
## p330 p00330-operacije.apx
  lista: operacije-report
## p350 p00350-nivelacija-cijena.apx
  - P350_TIP_KRETANJA_ID: filter je i ranije bio isključen (Commented Out) - nije prenesen
  lista: operacije-report
## p1001 p01001-žiro-računi.apx
  lista: master-records
## p1010 p01010-izvodi1.apx
  lista: master-records
## p1900 p01900-kursna-lista.apx
  lista: master-records
