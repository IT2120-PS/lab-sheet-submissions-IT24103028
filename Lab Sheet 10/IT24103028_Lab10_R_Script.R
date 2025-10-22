setwd("D:\\USER\\Desktop\\SLITT\\Y2S1\\PS ( IT2120)\\Labs ( PS )\\IT24103028_Lab10_PS")
getwd()

#01


Snack_Type <- c("A", "B", "C", "D")
Count <- c(120, 95, 85, 100)

#Create a data frame
snack_data <- data.frame(Snack_Type, Count)
snack_data


#02

#Observed frequencies
observed <- snack_data$Count

#Expected frequencies 
expected <- rep(sum(observed)/length(observed), length(observed))

#Perform the Chi-square goodness-of-fit test
chisq <- chisq.test(x = observed, p = c(0.25, 0.25, 0.25, 0.25))
chisq


#03
#Display the p-value
chisq$p.value

#Conclusion:
#If the p-value > 0.05 → Fail to reject H0.
#If the p-value < 0.05 → Reject H0.

#In this case, the p-value is greater than 0.05.
#Therefore, we do not  reject the null hypothesis.
#Conclusion: There is no significant difference in snack preferences.
#Hence, customers choose the four snack types approximately equally.

