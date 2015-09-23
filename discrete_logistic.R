popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK)) #equation

#3.2.1 
N0 <- 25
RR <- 1.05
ttMAX <- 100
NN <- matrix(NA, nrow = 1, ncol = ttMAX + 1)
NN[1] <- N0
for(tt in 1:ttMAX){
  NN[tt + 1] <- RR*NN[tt]
}
plot(1:(ttMAX+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")

#3.2.2 convert to a function
geometricGrowthFun <- function(N0, RR){
  ttMAX <- 100
  NN <- matrix(NA, nrow = 1, ncol = ttMAX + 1)
  NN[1] <- N0
  for(tt in 1:ttMAX){
    NN[tt + 1] <- RR*NN[tt]
  }
  plot(1:(ttMAX+1), NN, xlab = "time", ylab = "N", type = "b", col = "blue")
}

#3.3.1 convert to a function
discreteLogisticFun <- function(NN, r, KK, ttMAX){
  popu <- rep(NA, 11)
  popu[1] <- NN
  for(tt in 1:ttMAX){
    popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK));
  }
  print(popu)
  plot(0:10, popu, xlab = "time", ylab = "size", col = "blue", type = "b")
}


#3.3.2 different r values
NN <- 10
KK <- 100
ttMAX <- 10
rdVec <- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7)
par(mfrow = c(2,3))
for(ii in 1:6){
  discreteLogisticFun(NN, rdVec[ii], KK, ttMAX);
}

#4.1.1 
expGrowthODE <- function(tt, yy, pars){
  derivs <- pars['rr'] * yy
  return(list(derivs))
}
output <- lsoda(init, tseq, expGrowthODE, pars)
init <- 1
tseq <- seq(0, 20, by = 0.01)
pars <- c(rr = 0.1)
expGrowthOutput <- lsoda(init, tseq, expGrowthODE, pars)
head(expGrowthOutput)
plot(expGrowthOutput[, 1], expGrowthOutput[, 2], col = 'red')




















