library(ggplot2)

Data <- read.csv("vfamily3group.csv",row.names=1,check.names=FALSE)

box_Myoviridae <- ggplot(Data, aes(x=group, y=Myoviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Myoviridae

pdf("box_Myoviridae.pdf", paper="special",height=10, width=15)
print(box_Myoviridae)
dev.off()

ANOVA_Myoviridae <- aov(Myoviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Myoviridae, conf.level = 0.95)#Turkey Test

#---
box_Podoviridae <- ggplot(Data, aes(x=group, y=Podoviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Podoviridae

pdf("box_Podoviridae.pdf", paper="special",height=10, width=15)
print(box_Podoviridae)
dev.off()

ANOVA_Podoviridae <- aov(Podoviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Podoviridae, conf.level = 0.95)#Turkey Test

#---
box_Siphoviridae <- ggplot(Data, aes(x=group, y=Siphoviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Siphoviridae

pdf("box_Siphoviridae.pdf", paper="special",height=10, width=15)
print(box_Siphoviridae)
dev.off()

ANOVA_Siphoviridae <- aov(Siphoviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Siphoviridae, conf.level = 0.95)#Turkey Test

#---
box_norankCaudovirales <- ggplot(Data, aes(x=group, y=norankCaudovirales, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_norankCaudovirales

pdf("box_norankCaudovirales.pdf", paper="special",height=10, width=15)
print(box_norankCaudovirales)
dev.off()

ANOVA_norankCaudovirales <- aov(norankCaudovirales ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_norankCaudovirales, conf.level = 0.95)#Turkey Test

#---
box_Herelleviridae <- ggplot(Data, aes(x=group, y=Herelleviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Herelleviridae

pdf("box_Herelleviridae.pdf", paper="special",height=10, width=15)
print(box_Herelleviridae)
dev.off()

ANOVA_Herelleviridae <- aov(Herelleviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Herelleviridae, conf.level = 0.95)#Turkey Test

#---
box_Autolykiviridae <- ggplot(Data, aes(x=group, y=Autolykiviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Autolykiviridae

pdf("box_Autolykiviridae.pdf", paper="special",height=10, width=15)
print(box_Autolykiviridae)
dev.off()

ANOVA_Autolykiviridae <- aov(Autolykiviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Autolykiviridae, conf.level = 0.95)#Turkey Test

#---
box_Marseilleviridae <- ggplot(Data, aes(x=group, y=Marseilleviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Marseilleviridae

pdf("box_Marseilleviridae.pdf", paper="special",height=10, width=15)
print(box_Marseilleviridae)
dev.off()

ANOVA_Marseilleviridae <- aov(Marseilleviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Marseilleviridae, conf.level = 0.95)#Turkey Test

#---
box_Mimiviridae <- ggplot(Data, aes(x=group, y=Mimiviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Mimiviridae

pdf("box_Mimiviridae.pdf", paper="special",height=10, width=15)
print(box_Mimiviridae)
dev.off()

ANOVA_Mimiviridae <- aov(Mimiviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Mimiviridae, conf.level = 0.95)#Turkey Test

#---
box_Phycodnaviridae <- ggplot(Data, aes(x=group, y=Phycodnaviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Phycodnaviridae

pdf("box_Phycodnaviridae.pdf", paper="special",height=10, width=15)
print(box_Phycodnaviridae)
dev.off()

ANOVA_Phycodnaviridae <- aov(Phycodnaviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Phycodnaviridae, conf.level = 0.95)#Turkey Test

#---
box_Tectiviridae <- ggplot(Data, aes(x=group, y=Tectiviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Tectiviridae

pdf("box_Tectiviridae.pdf", paper="special",height=10, width=15)
print(box_Tectiviridae)
dev.off()

ANOVA_Tectiviridae <- aov(Tectiviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Tectiviridae, conf.level = 0.95)#Turkey Test

#---
box_Lavidaviridae <- ggplot(Data, aes(x=group, y=Lavidaviridae, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_Lavidaviridae

pdf("box_Lavidaviridae.pdf", paper="special",height=10, width=15)
print(box_Lavidaviridae)
dev.off()

ANOVA_Lavidaviridae <- aov(Lavidaviridae ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_Lavidaviridae, conf.level = 0.95)#Turkey Test

#---
box_norankViruses <- ggplot(Data, aes(x=group, y=norankViruses, color=group)) + 
  geom_boxplot()+
  geom_jitter(shape=16,size=3,  position=position_jitter(0.2))
box_norankViruses

pdf("box_norankViruses.pdf", paper="special",height=10, width=15)
print(box_norankViruses)
dev.off()

ANOVA_norankViruses <- aov(norankViruses ~ group, data = Data)#ANOVA
TukeyHSD(ANOVA_norankViruses, conf.level = 0.95)#Turkey Test
