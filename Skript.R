Katse <- "C:/Users/Triin/Desktop/Katse_28.02.2016.txt"
Tabel <- read.table(Katse, sep="\t", header=T, stringsAsFactors = F)

Gr_katse26 <- ggplot(data=Tabel, aes(x=Aeg.p, y=Katse.26, group=1))+
  geom_line()+
  labs(x="aeg, päeva", y="ühikud", title="Pealkiri")
Gr_katse26
