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
popu <- rep(NA, 11)
popu[1] <- 100
for(tt in 1:10){
  popu[tt + 1] = popu[tt] * r;
  cat("The population size of year", tt, popu[tt + 1], "\n");
}
print(popu)
plot(0:10, popu, xlab = "time", ylab = "size", col = 'red')












