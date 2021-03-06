library("pheatmap")
set.seed(1234)
a <- read.csv("vfamily3group.csv",,header = T, row.names = 1)
a <- a[,-1]
a <- t(a)
p <- pheatmap(log(a+1,base=10), cluster_cols = F, cluster_rows = T,
              color = colorRampPalette(c("darkblue","yellow","darkRed"))(100),
              angle_col = "90",fontsize_col = 8, fontsize_row =6,
              cellwidth = 8, cellheight =6)
pdf("heatmap_vfamily.pdf")
print(p)
dev.off()
