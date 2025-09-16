setwd("D:\\USER\\Desktop\\SLITT\\Y2S1\\PS ( IT2120)\\Labs ( PS )\\IT24103028_Lab07_PS")
getwd()

#01
punif(25, min=0, max=40, lower.tail=TRUE) -punif(10, min=0, max=40, lower.tail=TRUE)

#02
lambda <- 1/3
pexp(2, rate=lambda, lower.tail=TRUE)


#03
#part1
pnorm(130, mean=100, sd=15, lower.tail=FALSE)

#part2
qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)
