library(ggplot2)

Data <- read.csv("ENVFig3E.csv",row.names=1,check.names=FALSE)

box_LysogenicRate <- ggplot(Data, aes(x=group, y=LysogenicRate, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
  
pdf("box_LysogenicRate.pdf", paper="special",height=10, width=15)
print(box_LysogenicRate)
dev.off()

ANOVA_LysogenicRate <- aov(LysogenicRate ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_LysogenicRate, conf.level = 0.95)#Turkey Test
