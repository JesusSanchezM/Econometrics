#Hypothesis testing 

x = rnorm(10)
y = rnorm(10)
t.test(x,y)

t.test(x, y, var.equal = T) 
#This instruction forces the t.test() command 
#to assume that the variance of the two samples is equal.

#One-Sample T-testing in R------------------------------

t.test(x, mu = 5)

#Using Directional Hypotheses in R

t.test(y, mu = 5, alternative = 'greater')
t.test(y, mu = 5, alternative = 'less')

#Formula Syntax and Subsetting Samples in the T-test in R

t.test(rich ~ graze, data = grass)
#You can create a formula by using the tilde (~) symbol. 

rich <- c(12, 15,17,11,15,8,9,7,9)
p <- c(15,8,9,7,9,12, 15,17,11)
graze <- c("mow","mow","mow","mow","mow","unmow","unmow", 
           "unmow", "unmow")
grass <- data.frame(rich, graze, p)

t.test(rich ~ graze, data = grass, subset = graze %in% c("mow", "unmow"))
t.test(rich ~ graze, data = grass, subset = graze %in% c("mow", "unmow", "p"))

#Simple Correlation in R

count = c(9,25,15,2,14,25,24,47)
speed = c(2,3,5,9,14,24,29,34)
cor(count, speed)
cor(count, speed, method = 'spearman')
cor(count, speed, method= "kendall")

set.seed(5)
x <- rnorm(30, sd=runif(30, 2, 50))
mat <- matrix(x,10)
V <- cov(mat)
V

cov2cor(V)
#determines the correlation from a matrix of covariance









