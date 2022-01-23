#linear regression
library(ggplot2)

table <-  read.csv("ENVFig3E.csv",row.names=1,check.names=FALSE)

lm_LysogenicRate_DOC<- lm(table$LysogenicRate ~ table$DOC, data = table)
summary(lm_LysogenicRate_DOC)

p_LysogenicRate_DOC <- qplot(table$DOC, table$LysogenicRate, data=table)+
  geom_smooth(method = "lm")+
  theme(plot.title=element_text(size=14,hjust=0.5))+
  xlab("DOC")+
  ylab("LysogenicRate")

pdf("linear_Regression_LysogenicRate_DOC.pdf", width = 6, height = 3)
print(p_LysogenicRate_DOC)
dev.off()
