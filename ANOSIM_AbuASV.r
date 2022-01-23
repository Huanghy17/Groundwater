library("vegan")

otu <- read.delim('AbundantASV_nogroup.txt', row.names = 1, sep = '\t', stringsAsFactors = FALSE, check.names = FALSE)
otu <- t(otu)
map <- read.table('group.txt',header=T,sep="\t",row.names=1)

distance.bray<-vegdist(otu,method = 'bray')

anosim.result<-anosim(distance.bray,map$group,permutations = 999)

summary(anosim.result)
