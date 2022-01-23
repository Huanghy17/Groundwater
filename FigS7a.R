library("pheatmap")
set.seed(1234)
a <- read.csv("FigS7a.csv",header = T, row.names = 1)

p <- pheatmap(a, cluster_cols = F, cluster_rows = F,
              color = colorRampPalette(c("darkblue","yellow","darkRed"))(100),
              angle_col = "90",fontsize_col = 4, fontsize_row =6,
              cellwidth = 3, cellheight =10)
pdf("FigS7a.pdf",width = 10)
print(p)
dev.off()
