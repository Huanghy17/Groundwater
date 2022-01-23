#PCA
# Rows are samples and columns are variables
otu <- read.delim('AbundantASV_nogroup.txt', row.names = 1, sep = '\t', stringsAsFactors = FALSE, check.names = FALSE)

otu.pca <- prcomp(otu, center = T,scale = F)
summary(otu.pca)
plot(otu.pca$x, main = "after PCA")

a <- otu.pca$x
write.table(a,"PCA_demo.csv", sep=",",row.names = T)

#linear regression
library(ggplot2)

pca.x1 <-  read.csv("PCA.csv",row.names=1,check.names=FALSE)
pca.x1$PC1 <- 0-pca.x1$PC1
env <- read.csv("ENV_Fig3.csv",row.names=1,check.names=FALSE)
table.merged <- merge(pca.x1,env,by="row.names",all.x=TRUE)

lm_DOC<- lm(table.merged$DOC ~ table.merged$PC1, data = table.merged)
summary(lm_DOC)

p_DOC <- qplot(table.merged$DOC, table.merged$PC1, data=table.merged)+
geom_point(aes(color-group))+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("DOC")+
  ylab("PC1")

pdf("linear_Regression_DOC_PCA.pdf")
print(p_DOC)
dev.off()


#---
lm_VLPs<- lm(table.merged$VLPs ~ table.merged$PC1, data = table.merged)
summary(lm_VLPs)

p_VLPs <- qplot(table.merged$VLPs, table.merged$PC1, data=table.merged)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("VLPs")+
  ylab("PC1")

pdf("linear_Regression_VLPs_PCA.pdf")
print(p_VLPs)
dev.off()

#---
lm_VChao1<- lm(table.merged$VChao1 ~ table.merged$PC1, data = table.merged)
summary(lm_VChao1)

p_VChao1 <- qplot(table.merged$VChao1, table.merged$PC1, data=table.merged)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("VChao1")+
  ylab("PC1")

pdf("linear_Regression_VChao1_PCA.pdf")
print(p_VChao1)
dev.off()

#---
lm_Sulfide<- lm(table.merged$Sulfide ~ table.merged$PC1, data = table.merged)
summary(lm_Sulfide)

p_Sulfide <- qplot(table.merged$Sulfide, table.merged$PC1, data=table.merged)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("Sulfide")+
  ylab("PC1")

pdf("linear_Regression_Sulfide_PCA.pdf")
print(p_Sulfide)
dev.off()

