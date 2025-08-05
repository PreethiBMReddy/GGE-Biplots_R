
gen.var(P3SP5[3:6], P3SP5$Geno,  P3SP5$Rep)
geno.corr(P3SP5[3:5], P3SP5$Geno,  P3SP5$Rep)
geno.path(P3SP5$CYT2, P3SP5[3:4], P3SP5$Geno,  P3SP5$Rep)
library(metan)
model <-
  performs_ammi(MLTDATA,
                env = ENV,
                gen = GENO,
                rep = REP,
                resp = c(FIRM))
abs91 <- ammi_indexes(model)
print(abs91)
View(abs91)
model <-
  performs_ammi(MLTDATA,
                env = ENV,
                gen = GENO,
                rep = REP,
                resp = c(AW))
abs92 <- ammi_indexes(model)
print(abs92)
View(abs92)
model <-
  performs_ammi(MLTDATA,
                env = ENV,
                gen = GENO,
                rep = REP,
                resp = c(CYT2))
abs93 <- ammi_indexes(model)
print(abs93)
View(abs93)
model <-
  performs_ammi(MLTDATA,
                env = ENV,
                gen = GENO,
                rep = REP,
                resp = c(ytm2))
abs94 <- ammi_indexes(model)
print(abs94)
View(abs94)
###############GGE Model###############
#SVP = environment # by default ## FIRM AW CYT2 ytm2	

#1 FIRM
gge_model1 <- gge(MLTDATA, ENV, GENO, FIRM)
predict(gge_model1)
pgge1 <-predict(gge_model1)
View(pgge1$FIRM)
#2 AW
gge_model2 <- gge(MLTDATA, ENV, GENO, AW)
predict(gge_model2)
pgge2 <-predict(gge_model2)
View(pgge2$AW)
#3 CYT2
gge_model3 <- gge(MLTDATA, ENV, GENO, CYT2)
predict(gge_model3)
pgge3 <-predict(gge_model3)
View(pgge3$CYT2)
#4 ytm2
gge_model4 <- gge(MLTDATA, ENV, GENO, ytm2)
predict(gge_model4)
pgge4 <-predict(gge_model4)
View(pgge4$ytm2)

# 1 Basic biplot
# FIRM
bbp1 <- plot(gge_model1)
bbp1

bbp1 <- plot(gge_model1, col.gen = "blue")
bbp1
# AW
bbp2 <- plot(gge_model2)
bbp2

bbp2 <- plot(gge_model2, col.gen = "red")
bbp2
# CYT2
bbp3 <- plot(gge_model3)
bbp3

bbp3 <- plot(gge_model3, col.gen = "brown")
bbp3
# ytm2
bbp4 <- plot(gge_model4, col.gen = "black")
bbp4

# 2 Discriminativeness vs representativeness
#1 firm
dvr1 <- plot(gge_model1, type = 4)
dvr1
# AW
dvr2 <- plot(gge_model2, type = 4, col.gen = "red")
dvr2
#3 CYT2
dvr3 <- plot(gge_model3, type = 4, col.gen = "brown")
dvr3
#4 ytm2
dvr4 <- plot(gge_model4, type = 4)
dvr4

# 3 Which won where

##1 firm
www1 <- plot(gps1, type = 3)
www1
##2 AW
www2 <- plot(gps2, type = 3, col.gen = "red")
www2
##3 CYT2
www3 <- plot(gps3, type = 3)
www3
##4 ytm2
www4 <- plot(gps4, type = 3)
www4
