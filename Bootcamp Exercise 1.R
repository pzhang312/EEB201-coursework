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

#Exercise 6)

bankAccounts <- c(10, 9.2, 5.6);
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0);    
fun <- c(7.8, 2.1, 10.5);  
income <- c(21, 21, 21); 

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] = bankAccounts[i] - house[i] - food[i] - fun[i] + income[i] 
    bankAccounts[i] = bankAccounts[i]*interestRate + bankAccounts[i] 
  }
}
print(bankAccounts)

#Exercise 7)


bankAccounts <- c(10, 9.2, 5.6);
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0);    
fun <- c(7.8, 2.1, 10.5);  
income <- c(21, 21, 21); 

for (j in 2015:2020) {
  if ((j - 2014) %% 2 == 0){
    for (i in 1:length(bankAccounts)) {
      bankAccounts[i] = bankAccounts[i] - house[i] - food[i] - fun[i] + income[i] 
      bankAccounts[i] = bankAccounts[i]*interestRate + bankAccounts[i] 
      cat("In the year of", j, "student", i, "will have a compound of", bankAccounts[i], ".\n");
    }
  }
  if ((j - 2014) %% 2 != 0) {
    for (i in 1:length(bankAccounts)){
      if (i == 2){
        bankAccounts[i] = bankAccounts[i] - house[i] - food[i] - fun[i] + income[i] 
        bankAccounts[i] = bankAccounts[i]*interestRate + bankAccounts[i]
      }
      if (i != 2){
        bankAccounts[i] = bankAccounts[i] - house[i] - food[i] - fun[i] + income[i] + 5; 
        bankAccounts[i] = bankAccounts[i]*interestRate + bankAccounts[i]
      }
      cat("In the year of", j, "student", i, "will have a compound of", bankAccounts[i], ".\n");
    }
  }
}

#Exercise 8)
xx <- 1
sum = 0
while(xx < 18){
  sum = sum + xx;
  xx = xx + 1;
}
print(sum)

#Exercise 9)
input = -100
if(input <= -1){
  print("small")
}
if(input >= 1){
  print("big")
}
if(input >= -1 & input <= 1){
  print("medium")
}






