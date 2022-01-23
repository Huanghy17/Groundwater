library(ggplot2)

Data <- read.csv("ENVFig3E.csv",row.names=1,check.names=FALSE)

box_DOC <- ggplot(Data, aes(x=group, y=DOC, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
  
pdf("box_DOC.pdf", paper="special",height=10, width=15)
print(box_DOC)
dev.off()

ANOVA_DOC <- aov(DOC ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_DOC, conf.level = 0.95)#Turkey Test

#---
box_VBR <- ggplot(Data, aes(x=group, y=VBR, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))

pdf("box_VBR.pdf", paper="special",height=10, width=15)
print(box_VBR)
dev.off()

ANOVA_VBR <- aov(VBR ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_VBR, conf.level = 0.95)#Turkey Test
