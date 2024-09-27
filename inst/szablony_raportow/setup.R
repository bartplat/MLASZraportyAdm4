# biblioteki
library(dplyr)
library(ggplot2)
library(kableExtra)
library(tidyr)
library(MLASZraportyAdm4)

# parametry
progLiczebnosci = params$progLiczebnosci
typDokumentu = params$typDokumentu
wyrownanieTabWykr = params$wyrownanieTabWykr
rocznik = paste0(params$rok - 1, "/", params$rok)

# dane
szk = get(params$obiektWskazniki)
god = get(params$obiektWskaznikiPorownanie) %>%
  filter(id_szk %in% szk$id_szk)
szkozaw = szkozaw %>% 
  filter(id_szk %in% szk$id_szk)

# obiekt powiaty
powiaty_dop = powiaty %>%
  filter(teryt_pow %in% szk$teryt_pow[[1]]) %>%
  select(starts_with(szk$odniesieniePoziom[[1]])) %>%
  as.character()

# knitr options
knitr::opts_chunk$set(
  echo = FALSE,
  results = 'asis',
  message = FALSE,
  warning = FALSE,
  fig.align = wyrownanieTabWykr
)
