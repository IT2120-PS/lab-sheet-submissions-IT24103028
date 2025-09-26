setwd("D:\\USER\\Desktop\\SLITT\\Y2S1\\PS ( IT2120)\\Labs ( PS )\\IT24103028_Lab08_PS")
getwd()


#01

weights <- scan("Exercise - LaptopsWeights.txt", skip = 1)
print(weights)


popmn <- mean(weights)
print(popmn)

# Population standard deviation (σ)
pop_sd <- sd(weights) * sqrt((length(weights)-1)/length(weights))
print(pop_sd)


#02
set.seed(123)  # reproducibility

num_samples <- 25   # number of samples
sample_size <- 6    # sample size

# Create empty vectors
sample_means <- numeric(num_samples)
sample_sds   <- numeric(num_samples)

# Draw 25 samples and calculate mean & sd
for(i in 1:num_samples){
  S <- sample(weights, sample_size, replace = TRUE)
  sample_means[i] <- mean(S)
  sample_sds[i]   <- sd(S)
}

# Combine into a data frame
results <- data.frame(
  Sample = paste0("S", 1:num_samples),
  Mean   = round(sample_means, 3),
  SD     = round(sample_sds, 3)
)

print(results)



#03
# Mean of sample means
mean_of_means <- mean(sample_means)

# Standard deviation of sample means
sd_of_means <- sd(sample_means)

cat("Mean of 25 Sample Means:", mean_of_means, "\n")
cat("SD of 25 Sample Means:", sd_of_means, "\n")

# Theoretical Standard Error
se_theoretical <- pop_sd / sqrt(sample_size)
cat("Theoretical SE (σ/√n):", se_theoretical, "\n")
