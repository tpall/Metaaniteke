library(tidyverse)
# Kasutame seda faili, sest siin on üheselt määratud delimiterid
# Soovitav oleks eemaldada tühikud failinimest st fail ümber nimetada
# asendades tühikud alakriipsuga _
# NB!!! Pane tähele, et kasutan suhtelist path-i st eeldan, 
# et fail asub projekti root dir-is
Katse <- "28.02.2016_katse_metaanitekke_andmed.csv"

# Impordime andmed
# Kuna murdarvudes on komad, siis oleks kõik tulbad tekst
# muuda localet impordi funktsioonis, et imporditaks numbritena
Tabel <- read.delim(Katse, sep = ";", dec = ",")
Tabel <- read_delim(Katse, delim = ";", locale = locale(decimal_mark = ","))
Tabel

# Parandame tulpade nimed
colnames(Tabel) <- make.names(colnames(Tabel))

# Plotime andmed
Gr_katse26 <- ggplot(data = Tabel, aes(x = Aeg.p, y = Katse.26, group = 1)) +
  geom_line() +
  labs(x = "Aeg, päeva", y = "Ühikud", title = "Pealkiri")
Gr_katse26



