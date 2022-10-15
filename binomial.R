?dbinom()

#P(X>100)
pbinom(100 ,110, 0.85, lower.tail=F)

b <- sample(1:365,23,replace=TRUE)
tabulate(b)
r <- replicate(10^4, max(tabulate(sample(1:365,23,replace=TRUE))))
sum(r>=2)/10^4


1-prod((365-300+1):365)/365^300
?prod

n <- numeric
prob1 <- function(n){
  x <- 1
  for (i in 1:n){
    if(i>=1 & i<=365){
      
      x = (x*(365-(i-1))/365)
      p1=1-x
      
    } else if(i>365){
      p1<-1
    } else if(i<1){
      p1<-0
    }
  }
  
  return(p1)
}

prob1(80)

(1*(365-(2-1))/365)

n <- numeric
prob2 <- function(n){
  p2<- numeric
  p2<- 1 -(364/365)^n
  return(p2)
}
prob2(80)

library(ggplot2)
vector1<-c()
vector2<-c()
for(i in 1:365){
  vector1[i]<-prob1(i)
  vector2[i]<-prob2(i)
}

data <- data.frame(vector1, vector2, prob2(1:365))

ggplot(data, aes(1:365))+ 
  geom_point(aes(y=vector1), 
   col="red") + geom_point(aes(y=vector2), col="green")

k <- 23
p <- numeric(k)
str(k)
class(k)
t <- character(k)
t






