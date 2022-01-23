library("pheatmap")
set.seed(1234)
a <- read.csv("Fig4a.csv",header = T, row.names = 1)
a <- t(a)
p <- pheatmap(log(a+1,base=10), cluster_cols = F, cluster_rows = F,
              color = colorRampPalette(c("darkblue","yellow","darkRed"))(100),
              angle_col = "90",fontsize_col = 8, fontsize_row =6,
              cellwidth = 8, cellheight =8)
pdf("Fig4a.pdf",width=10,height=5)
print(p)
dev.off()
