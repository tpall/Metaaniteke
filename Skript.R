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
# Tabel <- read_delim(Katse, delim = ";", locale = locale(decimal_mark = ","))
Tabel

# Parandame tulpade nimedhttps://github.com/tkorb/Metaaniteke.git
colnames(Tabel) <- make.names(colnames(Tabel))

# Plotime Katse 26 andmed
Gr_katse26 <- ggplot(data = Tabel, aes(x = Aeg.p, y = Katse.26, group = 1)) +
  geom_line() +
  labs(x = "Aeg, päeva", y = "Metaani ml/g", title = "Katse 26")
Gr_katse26

# Plotime Katse 28 andmed
Gr_katse28 <- ggplot(data = Tabel, aes(x = Aeg.p, y = Katse.28, group = 1)) +
  geom_line() +
  labs(x = "Aeg, päeva", y = "Metaani ml/g", title = "Katse 28")
Gr_katse28

# Plotime Katse 29 andmed
Gr_katse29 <- ggplot(data = Tabel, aes(x = Aeg.p, y = Katse.29, group = 1)) +
  geom_line() +
  labs(x = "Aeg, päeva", y = "Metaani ml/g", title = "Katse 29")
Gr_katse29

# Plotime Katse 30 andmed
Gr_katse30 <- ggplot(data = Tabel, aes(x = Aeg.p, y = Katse.30, group = 1)) +
  geom_line() +
  labs(x = "Aeg, päeva", y = "Metaani ml/g", title = "Katse 30")
Gr_katse30

# Kõik katseandmed on nüüd sisestatud

