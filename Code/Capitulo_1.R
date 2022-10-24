
#paquete de datos wage1

library(tidyverse)

filter(data, female==1)
filter(data, data$female>=0)
str(data)
summary(data)

a <- data %>% filter(female==1)
b <- data %>% filter(female==0)

#paquete de datos bwght

str(data)
female <- data %>% filter(male==0)
female
female_cig_preg <- data %>% filter(male==0 & cigs > 0)
summary(data)
mean(female_cig_preg$cigs)
sum(is.na(data$fatheduc))
sd(data$faminc)
summary(data$fatheduc)

summary(data$faminc)
sd(data$faminc)
?sd

#paquete de datos meap01

summary(data$math4)
min(data$math4)
max(data$math4)

perfect_score <- data %>% filter(math4==100)
sum(is.na(data$math4))
38/1823
score <- data %>% filter(math4>60)
quantile(data$math4)
summary(data$math4)
summary(data$read4)

ordering_data <- data[order(data$math4, decreasing = F), ]
ordering_data_1 <- arrange(data, math4)

cor(data$math4, data$read4)
summary(data$exppp)
sd(data$exppp)

s <- data.frame(ordering_data[1:911, 1:6])

1823/2

distinct <- distinct(s, s$dcode)

number_studants_who_passed <- filter(s, s$math4>50)

(log1p(6000)-log1p(5500))*100

((6000-5500)/5500)*100

#Paquete de datos JTRAIN2

Men_training <- data %>% filter(train==1)
summary(data$train)

Men_not_training <- data %>% filter(train==0)

summary(Men_training$re78)
summary(Men_not_training$re78)

Men_unem_trained <- Men_training %>% filter(unem78==1)
Men_unem_not_trained <- Men_not_training %>% filter(unem78==1)

summary(Men_unem_trained)
str(Men_training)
str(Men_unem_trained)
45/185

str(Men_not_training)
str(Men_unem_not_trained)
92/260

#Paquete de datos fertil2

summary(data$children)
filter(data, children==13)

women_with_electricity <- filter(data, data$electric==1)
women_with_no_electricity <- filter(data, data$electric==0)

summary(women_with_electricity$children)
summary(women_with_no_electricity$children)



