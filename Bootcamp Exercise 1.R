#Exercise 1)

for(ii in 1:9){
  if(ii != 9){
    cat("\n")
  }
  if(ii == 9){
    cat("*")
  }
}

#Exercise 2)

for(ii in 1:19){
  if(ii %% 2 == 0){
    cat("&")
  }
  if(ii %% 2 != 0){
    cat("*")
  }
}

#Exercise 3)

dogs(at the start) = 10
dogs(at the end)= 15
meatloaf(at the start) = 0
meatloaf(at the end) = -30
bubbles(at the start) = 12
bubbles(at the end) = -4


#Exercise 4)

years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if((years[ii]-1792) %% 4 == 0){
    cat(years[ii], " Hooray, presidential election!\n")
  }
  
}

#Exercise 5)

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded <- rep(NA, 6)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }













