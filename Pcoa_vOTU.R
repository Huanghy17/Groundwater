library(vegan)
library(ggplot2)
library(ape)

color=c( "#3C5488B2","#00A087B2", 
         "#F39B7FB2","#91D1C2B2", 
         "#8491B4B2", "#DC0000B2", 
         "#7E6148B2","yellow", 
         "darkolivegreen1", "lightskyblue", 
         "darkgreen", "deeppink", "khaki2", 
         "firebrick", "brown1", "darkorange1", 
         "cyan1", "royalblue4", "darksalmon", 
         "darkgoldenrod1", "darkseagreen", "darkorchid")

otu <- read.delim('vOTU_nogroup.txt', row.names = 1, sep = '\t', stringsAsFactors = FALSE, check.names = FALSE)
otu <- t(otu)
map <- read.table('group_vOTU.txt',header=T,sep="\t",row.names=1)

bray_dis <- vegdist(otu, method = 'bray',binary=FALSE)   

pcoa <- cmdscale(bray_dis, k = (nrow(otu) - 1), eig = TRUE)
site <- data.frame(pcoa$point)[1:2]
site$name <- rownames(site)
merged=merge(site,map,by="row.names",all.x=TRUE)

pcoa_exp <- pcoa$eig/sum(pcoa$eig)
pcoa1 <- paste('PCoA axis1 :', round(100*pcoa_exp[1], 2), '%')
pcoa2 <- paste('PCoA axis2 :', round(100*pcoa_exp[2], 2), '%')

p <- ggplot(data = merged, aes(X1, X2)) +
  geom_point(aes(color = group)) +
  stat_ellipse(aes(fill = group), geom = 'polygon', level = 0.95, alpha = 0.1, show.legend = FALSE) +   #添加置信椭圆，注意不是聚???
  scale_color_manual(values =color[1:length(unique(map$group))]) +
  scale_fill_manual(values =color[1:length(unique(map$group))]) +
  theme(panel.grid.major = element_line(color = 'gray', size = 0.2), panel.background = element_rect(color = 'black', fill = 'transparent'), 
        plot.title = element_text(hjust = 0.5)) +
  geom_vline(xintercept = 0, color = 'gray', size = 0.5) +
  geom_hline(yintercept = 0, color = 'gray', size = 0.5) +
  labs(x = pcoa1, y = pcoa2) 
p
