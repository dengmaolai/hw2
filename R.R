library(quantmod)
getSymbols(c("AAPL", "ORCL", "MSFT", "GOOG","AMZN"),src="yahoo",from="2020-02-01",to="2020-06-01") 
a<-Cl(AAPL)
b<-Cl(ORCL)
c<-Cl(MSFT)
d<-Cl(GOOG)
e<-Cl(AMZN)
f<-cbind(a,b,c,d,e)
us<- read.csv("F://��Ŀ//us.csv")
fff<-cbind(f,us[,'deathIncrease'],us[,'positiveIncrease'])
names(fff) <- c("a","b","c","d","e","death","positive")
library(ggplot2)
ggplot(fff, aes(x=death, y=a)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=death, y=b)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=death, y=c)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=death, y=d)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=death, y=e)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=positive, y=a)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=positive, y=b)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=positive, y=c)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=positive, y=d)) + geom_point(size=3,shape=21)
ggplot(fff, aes(x=positive, y=e)) + geom_point(size=3,shape=21)
library(pheatmap)
matrix <- cor (fff[,1:7])
pheatmap(matrix)
pheatmap(matrix,display_numbers=T)