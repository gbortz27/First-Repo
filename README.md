First-Repo
==========

This is for R development 

corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  options(digits=4)
  a=list.files(directory)
  df=data.frame(id=1,nobs=1)
  coeffs=rep(NA,length(a))
  cnt=0
  for(i in a) {
    filename=paste0(directory,"/",i)
    data=read.csv(filename)
    #print(data)
    comp_cases=complete.cases(data)
    no_cases=sum(comp_cases*1)
    data_comp=data[comp_cases,c(-1,-4)]
    if(no_cases > threshold) {
      cormat=cor(data_comp)
      cnt=cnt+1
      coeffs[cnt]=cormat[1,2]  
      ### Now clloect all the correlations  and put them ion a data frame 
    }
    
    }
  if(cnt==0){
    coeff0=numeric(0)
    coeff0
  }
    else {
      coeffs1=coeffs[1:cnt]
      compcases1=complete.cases(coeffs1)
      coeffs2=coeffs1[compcases1]
      coeffs2
      
    }
#   for(i in id){
#     
#     if(i<10) {
#       filename=paste0(directory,"/",0,0,i,".CSV",sep="") 
#     }
#     else if(i<100) {
#       filename=paste0(directory,"/",0,i,".CSV",sep="")
#     }
#     else {
#       filename=paste0(directory,"/",i,".CSV",sep="")
#     }
#     cnt=cnt+1 
#     data=read.csv(filename)
#     comp_cases=complete.cases(data)
#     no_cases=sum(comp_cases*1)
#     print(no_cases)
#     if (cnt==1)    {
#       df[1,]=data.frame(i,no_cases)
#     } 
#     else {
#       df=rbind(df,data.frame(id=i,nobs=no_cases))
#     }
#   } 
#   print(df)
  
}
