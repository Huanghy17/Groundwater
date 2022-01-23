library("pheatmap")
set.seed(1234)
a <- read.csv("FigS5.csv",header = T, row.names = 1)

p <- pheatmap(log(a+1,base=10), cluster_cols = F, cluster_rows = T,
              color = colorRampPalette(c("darkblue","yellow","darkRed"))(100),
              angle_col = "90",fontsize_col = 8, fontsize_row =6,
              cellwidth = 8, cellheight =8)
pdf("FigS5.pdf",width=5,height=15)
print(p)
dev.off()
