setwd("/Users/ZhangXinhui/GitHub/EEB201-coursework")
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-1.txt',header=TRUE)
phenoData = read.table('pheno.sim.2014-1.txt', header = TRUE)

#1.a
snps=as.matrix(snpsDataFrame)

calc_freq=function(x){
  return(sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))))
}

calc_het=function(x){
  return(sum(x==1,na.rm=TRUE)/(sum(!is.na(x))))
}

freq=apply(snps,1,calc_freq)
het=apply(snps,1,calc_het)

plot(freq,het,xlab="Frequency",ylab="Heterozygosity")  

p=seq(0,0.5,by=0.05)   
lines(p,2*p*(1-p),type="l",col=2, lwd = 4) 


compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}



compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) 
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$statistic
  return(chisq)
}


chisqs=apply(snps,1,compute_chisquare)
chisqs2=apply(snps,1,compute_chisquare_2)

cor.test(chisqs,chisqs2)

plot(chisqs,chisqs2)

pvals=pchisq(chisqs,1,lower.tail=FALSE)

#1.b
prop0.05 <- sum(pvals<0.05)/length(pvals)
prop0.01 <- sum(pvals<0.01)/length(pvals)
prop0.001 <- sum(pvals<0.001)/length(pvals)

#1.c
length(pvals)
num_pval <- length(pvals)

#1.d
exp_pvals <- rep(NA, num_pval)
for(i in 1:num_pval){
  exp_pvals[i] <- i/num_pval
}
exp_pvals

#1.e
sort(pvals, decreasing = FALSE)
sort_pvals <- sort(pvals, decreasing = FALSE)

#1.f
log_sort_pvals <- -log10(sort_pvals)
log_exp_pvals <- -log10(exp_pvals)

#1.g
plot(log_exp_pvals, log_sort_pvals, col = 'black', xlab = '-log10(expected P-value)', ylab = '-log10(observed P-value)')
xx <- seq(0, 4, by = 0.01)
yy <- seq(0, 4, by = 0.01)
lines(xx, yy, lty = 2, col = 3, lwd = 4)
















