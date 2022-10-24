#Ecuaciones simultaneas

install.packages("remotes")
remotes::install_github("ccolonescu/PoEdata")
data("truffles", package="PoEdata")
library(tidyverse)

data("truffles", package="PoEdata")
D <- q~p+ps+di
S <- q~p+pf
sys <- list(D,S)
instr <- ~ps+di+pf
truff.sys <- systemfit(sys, inst=instr, 
                       method="2SLS", data=truffles)
summary(truff.sys)

Q.red <- lm(q~ps+di+pf, data=truffles)
P.red <- lm(q~ps+di+pf, data=truffles)
kable(tidy(Q.red), digits=4,
      caption="Reduced form for quantity")

#problemas de identificacion

#datos panel

#efectos fijos

#efectos aleatoreos

#prueba de endogeneidad de hausman 
