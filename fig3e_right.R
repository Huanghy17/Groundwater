#linear regression
library(ggplot2)

table <-  read.csv("ENVFig3E.csv",row.names=1,check.names=FALSE)

lm_VBR_DOC<- lm(table$VBR ~ table$DOC, data = table)
summary(lm_VBR_DOC)

p_VBR_DOC <- qplot(table$DOC, table$VBR, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("DOC")+
  ylab("VBR")

pdf("linear_Regression_VBR_DOC.pdf", width = 6, height = 3)
print(p_VBR_DOC)
dev.off()
