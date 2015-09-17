#Exercise 1)

for(ii in 1:9){
  if(ii != 9){
    cat("\n")
  }
  if(ii == 9){
    cat("*")
  }
}










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