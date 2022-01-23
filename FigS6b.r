library(ggplot2)

Data <- read.csv("FigS6b.csv",row.names=1,check.names=FALSE)

box_ENOG411202B <- ggplot(Data, aes(x=group, y=ENOG411202B, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_ENOG411202B

pdf("box_ENOG411202B.pdf", paper="special",height=10, width=15)
print(box_ENOG411202B)
dev.off()

ANOVA_ENOG411202B <- aov(ENOG411202B ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_ENOG411202B, conf.level = 0.95)#Turkey Test

#--
box_COG2256 <- ggplot(Data, aes(x=group, y=COG2256, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_COG2256

pdf("box_COG2256.pdf", paper="special",height=10, width=15)
print(box_COG2256)
dev.off()

ANOVA_COG2256 <- aov(COG2256 ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_COG2256, conf.level = 0.95)#Turkey Test

#--
box_ENOG410XP1C <- ggplot(Data, aes(x=group, y=ENOG410XP1C, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_ENOG410XP1C

pdf("box_ENOG410XP1C.pdf", paper="special",height=10, width=15)
print(box_ENOG410XP1C)
dev.off()

ANOVA_ENOG410XP1C <- aov(ENOG410XP1C ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_ENOG410XP1C, conf.level = 0.95)#Turkey Test

#--
box_COG0243 <- ggplot(Data, aes(x=group, y=COG0243, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_COG0243

pdf("box_COG0243.pdf", paper="special",height=10, width=15)
print(box_COG0243)
dev.off()

ANOVA_COG0243 <- aov(COG0243 ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_COG0243, conf.level = 0.95)#Turkey Test
