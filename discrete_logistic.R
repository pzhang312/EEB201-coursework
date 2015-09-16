popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK)) #equation


r <- 1.05
NN = 100
ttMAX = 10
KK = 1000
popu <- rep(NA, 11)
popu[1] <- NN
for(tt in 1:ttMAX){
  popu[tt + 1] = popu[tt] * (1 + r * (1-popu[tt]/KK));
  cat("The population size of year", tt, popu[tt + 1], "\n");
}
print(popu)
plot(0:10, popu, xlab = "time", ylab = "size", col = 'red')