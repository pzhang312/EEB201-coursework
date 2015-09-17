library(ape)
library(geiger)
library(ggplot2)
#trying in class exercise
cat("hello world")
getwd()
setwd("/Users/ZhangXinhui/GitHub/EEB201-coursework")
tips <- c("learn R", "avoid excel")
source("/Users/ZhangXinhui/GitHub/EEB201-coursework/source.example.R")
source("source.example.R")
all.I.know.about.life.I.learned.in.grad.school()
tt <- read.tree("tree.tre")
str(tt)
tt$tip.label
attributes(tt)
tt$Nnode
dd <- read.table("data.txt", header = T, sep = '\t', as.is=T)
dd <- read.table("data.txt", header=T, sep='\t', as.is=T)
attributes(dd)
dim(dd)
dim(dd)[2]
size <- runif(92)
size <- runif(dim(dd)[1])
head(cbind(dd,size))
newdd <- cbind(dd, size)
head(dd$species)
newdd[1,]
which(dd$mode == "MPF")
dd[which(dd$mode == "MPF"), ]
dd[which(dd$mode == "MPF"), which(dd$species == "Acanthurus_blochii")]
mpfs <- which(dd$mode == 'MPF')
mpf_swimmers <- dd[mpfs,]

for (ii in 1:5){
  cat("\nthe number is ", ii)
}

notfish <- c("bat", "dolphin", "toad", "soldier")
for(a in notfish){
  cat(a, "fish \n", sep="")
}
for(a in notfish){
  cat(a, "fish", "1\n", sep="_")
}
for(a in notfish){
  cat(a, "fish", " are tasty!\n", sep="")
}

xx <- 1
while(xx < 5) {
  xx <- xx+1; 
  cat("value of xx is", xx, sep = "_", "\n")
}
print(xx)

xx <- 1
while(xx < 10) {
  xx <- xx+1; 
  #cat("value of xx is ", xx, ".", "\n", sep = "")
  if (xx == 7) {
    cat("My lucky number is", xx, "\n")
  }
  else if (xx == 2){
    cat("The number", xx, "is unlucky.\n")
  }
  else {
    cat("not exited about the number", xx, "\n")
  }
}
print(xx)


#Below are Sep.16 afternoon examples. 
xx <- 21
if (xx < 2 | xx > 20){
  print(xx)
}

nn <- 10
RR <- 0.1
for (tt in 1:10){
  nn[tt + 1] <- nn[tt]*RR
}
print(nn)





r <- 1.05
popu <- rep(NA, 11)
popu[1] <- 100
for(tt in 1:10){
  popu[tt + 1] = popu[tt] * r;
  cat("The population size of year", tt, popu[tt + 1], "\n");
}
print(popu)
plot(0:10, popu, xlab = "time", ylab = "size", col = 'blue')

r <- 0.90
NN = 100
ttMAX = 10
popu <- rep(NA, 11)
popu[1] <- NN
for(tt in 1:ttMAX){
  popu[tt + 1] = popu[tt] * r;
  cat("The population size of year", tt, popu[tt + 1], "\n");
}
print(popu)
plot(0:10, popu, xlab = "time", ylab = "size", col = 'red')


#trying to make a function from the script above
geometricGrowthFun <- function(r, NN, ttMAX){
  popu <- rep(NA, 11)
  popu[1] <- NN
  for(tt in 1:ttMAX){
    popu[tt + 1] = popu[tt] * r;
    cat("The population size of year", tt, popu[tt + 1], "\n");
  }
  print(popu)
  plot(0:ttMAX, popu, xlab = "time", ylab = "size", col = 'red')
}

#Below are Sep.17 exaples

library(deSolve)

s1 <- rnorm(1000, mean = 0, sd = 1)
s3 <- rnorm(1000, mean = 0, sd = 3)
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) 
plot(density(s1),col=2,lwd=4,xlab="Value",xlim=c(-15,15),main="Normal distribution")
lines(density(s3),col=4,lwd=4) 
legend(-15,0.35,c("sigma=1","sigma=3"),lwd=4,col=c(2,4),cex=1)
abline(v = quantile(s1, 0.75), lty = 2, lwd = 3, col = 2)
abline(v = quantile(s3, 0.75), lty = 2, lwd = 3, col = 4)
quantile(s1, 0.75)
quantile(s1)

par(mfrow = c(1, 1), mar = c(4, 4, 3, 2))
boxplot(cbind(s1,s3),names=c("Sigma=1","Sigma=3"),main="Draws from a normal distribution",col=c(2,4))

bins <- seq(-11, 11, by = 1)
hist(s1, breaks = bins)$breaks
hist(s3, breaks = bins)$breaks
counts_s1 <- hist(s1, breaks = bins)$counts
counts_s3 <- hist(s3, breaks = bins)$counts
par(mfrow = c(1,1), mar = c(5, 5, 5, 5))
barplot(rbind(counts_s1, counts_s3), col = c(2, 4),beside = T, names.arg = seq(-11, 10, by = 1), xlab = "Value", ylab = "Counts")




