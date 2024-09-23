# MLASZraportyAdm4

Pakiet `MLASZraportyAdm4` zawiera przede wszystkim szablony raportów w RMarkdown, które służą do masowego i automatycznego generowania raportów dla szkół w ramach 4. edycji Monitoringu Losów Absolwentów z użyciem danych administracyjnych (rejestry: CIE, ZUS, POLON i CKE).

# Instalacja / aktualizacja

Pakiet nie jest dostępny na CRAN, więc trzeba instalować go ze źródeł.

Instalację najprościej przeprowadzić wykorzystując pakiet [*devtools*](https://devtools.r-lib.org/):

```r
if (!requireNamespace("devtools", quietly = TRUE)) install.packages("devtools")
devtools::install_github('bartplat/MLASZraportyAdm4', build_opts = c("--no-resave-data"))
```

Pakiet `MLASZraportyAdm4` jest zależny od pakietu `MLASZraporty`, ale nie ma potrzeby go dodatkowo instalować, ponieważ dzieje się to podczas instalacji pakietu `MLASZraportyAdm4`.

Dokładnie w ten sam sposób można przeprowadzić aktualizację pakietu do najnowszej wersji.
