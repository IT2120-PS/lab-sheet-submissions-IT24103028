setwd("D:\\USER\\Desktop\\SLITT\\Y2S1\\PS ( IT2120)\\Labs ( PS )\\IT24103028_Lab06_PS")
getwd()


##Question 01
#Part 1
#Binomial Distribution
#Here, random variable X has binomial distribution with n=50 and p=0.85

#Part 2
pbinom(46, 50, 0.85, lower.tail = FALSE)




##Question 02
#Part 1
#Number of customer calls received in one hour

#Part 2
#Poisson distribution
#Here, random variable X has poisson distribution with lambda=12


#Part 3
#It asks to find P(X=`15). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dpois" command.
dpois(15,12)
