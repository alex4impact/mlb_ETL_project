# using melt to transform data
rm(list=ls())
wins <- read.csv("MLB_Wins.csv", check.names = FALSE)   #import data. check.names removes hidden 'X' in date column
#head(wins)
#melt
library(reshape2)
cmelt <- as.data.frame(melt(wins))
colnames(cmelt) <- c('Team','Year','Wins')
#Export as a csv file:
write.csv(cmelt,"C:\\Users\\andre\\fall2019courses\\databases\\project\\baseball\\team_winsR.csv", row.names = FALSE)


