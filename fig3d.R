#linear regression
library(ggplot2)

table <-  read.csv("ENVFig3D.csv",row.names=1,check.names=FALSE)

lm_VChao1_TCC<- lm(table$VChao1 ~ table$TCC, data = table)
summary(lm_VChao1_TCC)

p_VChao1_TCC <- qplot(table$TCC, table$VChao1, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("TCC")+
  ylab("VChao1")

pdf("linear_Regression_VChao1_TCC.pdf", width = 6, height = 3)
print(p_VChao1_TCC)
dev.off()

#---
lm_VChao1_DOC<- lm(table$VChao1 ~ table$DOC, data = table)
summary(lm_VChao1_DOC)

p_VChao1_DOC <- qplot(table$DOC, table$VChao1, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("DOC")+
  ylab("VChao1")

pdf("linear_Regression_VChao1_DOC.pdf", width = 6, height = 3)
print(p_VChao1_DOC)
dev.off()

#---
lm_VChao1_VLPs<- lm(table$VChao1 ~ table$VLPs, data = table)
summary(lm_VChao1_VLPs)

p_VChao1_VLPs <- qplot(table$VLPs, table$VChao1, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("VLPs")+
  ylab("VChao1")

pdf("linear_Regression_VChao1_VLPs.pdf", width = 6, height = 3)
print(p_VChao1_VLPs)
dev.off()

#---
lm_VLPs_TCC<- lm(table$VLPs ~ table$TCC, data = table)
summary(lm_VLPs_TCC)

p_VLPs_TCC <- qplot(table$TCC, table$VLPs, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("TCC")+
  ylab("VLPs")

pdf("linear_Regression_VLPs_TCC.pdf", width = 6, height = 3)
print(p_VLPs_TCC)
dev.off()

#---
lm_VLPs_DOC<- lm(table$VLPs ~ table$DOC, data = table)
summary(lm_VLPs_DOC)

p_VLPs_DOC <- qplot(table$DOC, table$VLPs, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("DOC")+
  ylab("VLPs")

pdf("linear_Regression_VLPs_DOC.pdf", width = 6, height = 3)
print(p_VLPs_DOC)
dev.off()
