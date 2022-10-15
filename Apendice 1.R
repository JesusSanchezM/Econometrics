#__________________________________________________
#_____________________11111111111111_______________
#__________________________________________________

Familily <- c(1,2,3,4,5,6,7,8,9,10)
M_H_E <- c(300,440,350,1100,640, 480, 450, 700,670,530)

Exp <- data.frame(Familily, M_H_E)

mean(Exp$M_H_E)
median(Exp$M_H_E)

M_100<-Exp$M_H_E/100
Exp <- cbind(Exp, M_100)

mean(Exp$M_100)
median(Exp$M_100)

drop <- names(Exp) %in% c("M_100")
Exp <- Exp[,!drop]

fix(Exp)
mean(Exp$M_H_E)
median(Exp$M_H_E)

#___________________________________________________
#_____________________222222222222222_______________
#___________________________________________________

distance <- (-10:10)
missed <- 3+0.2*distance
plot(distance, missed, main="Distance and missed",
     type="l", col = "blue", col.axis="black", 
     fg="orange")
legend("bottomright", legend=c("regression line"),
       lwd=3, col = c("blue"))


3+0.2*20
120 - 9.8 *15 + .03*200


#___________________________________________________
#_____________________44444555566666________________
#___________________________________________________

100*((6.4-5.6)/6.4)

100*((15-18)/15)
15*16.6
15*.20

100*((abs(35000-42000))/35000)

abs(log1p(35000)-log1p(42000))*100


#___________________________________________________
#_____________________777777777777777_______________
#___________________________________________________

#log(salary) = 10.6 +.027 exper

exp(10.6)
exp(10.6 +.027*5)

100*abs(40134.85-45935.8)
100*(0.027)*abs(0-5)  

100*(abs(40134.84-45935.8)/40134.84)


#---------------------------------------------------
#-------------------999999999-----------------------
#---------------------------------------------------

fertilizer <- (-10:10)
yield <- 120+0.19*sqrt(fertilizer)
plot(fertilizer, yield, main="yield and fertilizer",
     type="l", col = "blue", col.axis="black", 
     fg="orange")
legend("bottomleft", legend=c("regression line"),
       lwd=3, col = c("blue"))
yield

 
#---------------------------------------------------
#----------------------10---------------------------
#---------------------------------------------------

#$$score = 45.6 + .082 class - .000147class ^{2}$$
  
clas <- (-3000:3000)
score <- 45.6 + (0.082*clas) - (0.0001477*clas^2)
plot(clas, score, main="class and score",
     type="l", col = "blue", col.axis="black", 
     fg="orange")
legend("bottomright", legend=c("regression line"),
       lwd=3, col = c("blue"))

#b1/(-2b2)
0.082/(-2*-0.000147)
45.6 + (0.082*278.9116) - (0.0001477*278.9116^2)

# plotting the data
df <- data.frame(score, clas)
plot(score ~clas , col="red", cex=2, data= df )

# adding text to the data
text(score  ~ clas, labels= clas ,data=df , cex=0.9)


seleccionados <- c(3280)

# Indexamos los elementos con el vector
text(clas[seleccionados], score[seleccionados],
     labels = row.names(df)[seleccionados],
     cex = 0.6, pos = 4, col = "red", )

?text

library(tidyverse)
df %>% filter(df$clas==278)

max(df$score)





