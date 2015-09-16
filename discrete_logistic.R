popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK)) #equation


r <- 1.05
NN = 100
ttMAX = 10
KK = 1000
popu <- rep(NA, 11)
popu[1] <- NN
for(tt in 1:ttMAX){
  popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK));
}
print(popu)
plot(0:10, popu, xlab = "time", ylab = "size", col = 'red')

#convert to a function
discreteLogisticFun <- function(NN, r, KK, ttMAX){
  popu <- rep(NA, 11)
  popu[1] <- NN
  for(tt in 1:ttMAX){
    popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK));
  }
  print(popu)
  plot(0:10, popu, xlab = "time", ylab = "size", col = "blue", type = "b")
}


#different r values
NN <- 10
KK <- 100
ttMAX <- 10
rdVec <- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7)
par(mfrow = c(2,3))
for(ii in 1:6){
  discreteLogisticFun(NN, rdVec[ii], KK, ttMAX);
}

























