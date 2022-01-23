library("Hmisc")

spec <- read.csv("Class.csv",header = T, row.names = 1)
env <- read.csv("ENVFig3C.csv",header = T, row.names = 1)
spec <- as.matrix(spec)
env <- as.matrix(env)

cor.spearman <- cor(spec,env,use="pairwise", method="spearman")
write.csv(cor.spearman,"spearman.csv")

Cor.p <- rcorr(spec,env,type=c("spearman"))
write.csv(symnum(Cor.p$P, 
                 cutpoints = c(0,  .001,.01,.05, .1, 1), 
                 symbols = c("***","**","*","."," ")),
          "spearman_p.csv" )

####Draw figure
library("pheatmap")
set.seed(1234)

p <- pheatmap(cor.spearman, cluster_cols = F, cluster_rows = F,
              color = colorRampPalette(c("blue","white","Red"))(100),legend_labels = c("-1","0","1"),
              angle_col = "90",fontsize_col = 8, fontsize_row =6,
              cellwidth = 12, cellheight =6)
pdf("spearman_heatmap.pdf")
print(p)
dev.off()
