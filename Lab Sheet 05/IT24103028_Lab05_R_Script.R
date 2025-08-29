setwd("C:\\Users\\it24103028\\Desktop\\IT24103028_Lab05_PS")
getwd()

#01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)



#02
breaks <- seq(20, 70, length.out = 10)
x11()
histogram = hist(Delivery_Times$Delivery_Time_.minutes., 
     breaks = breaks, 
     right = FALSE,       # right open intervals
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times (minutes)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")


#03





#04
freq <- histogram$counts
mids <- histogram$mids

classes <- c()


for(i in 1: length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
  
  
freq_table <- cbind(Classes = classes, Frequency = freq)
print(freq_table)


plot(mids, freq, type = 'o', 
     main = "Frequency Polygon for Delevery Times",
     xlab = "Delivery Times (minutes)",
     ylab = "Frequency",
     col = "blue",
     pch = 16)



lines(mids,freq,col = "blue")

cum.freq <- cumsum(freq)

ogive_x <- c(breaks[1], breaks[-1])
cum.freq.start <- c(0, cum.freq)



plot(ogive_x, cum.freq.start, type = 'o',
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times (minutes)",
     ylab = "Cumulative Frequency",
     col = "red",
     pch = 16)
    
lines(ogive_x, cum.freq.start, col = "red")


cum_table <- cbind(Upper = breaks[-1], CumFreq = cum.freq)
print(cum_table)





