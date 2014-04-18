setwd("~/Coursera/Rprogramming/Week_2")
add2 <- function(x,y){
  x+y
}
#
above10 <- function(x) {
        use <- x>10
        x[use]
}

# ;lets make n insertable by the user
#
above<- function(x,n){
          use<- x > n
         x[use]
}

# Specify default
#
above<- function(x,n=10){
  use<- x > n
  x[use]
}

# Column Mean of a matrix or df
#
columnmean <- function(y,removeNA=TRUE) {
          nc<- ncol(y)
          means<-numeric(nc)
          for(i in 1:nc) {
            means[i]=mean(y[,i],na.rm=removeNA)
          }
          means
}

y<-10
f<-function(x) {
        y<-2
        y^2+g(x)
}

g<-function(x){
        x*y
}
        


