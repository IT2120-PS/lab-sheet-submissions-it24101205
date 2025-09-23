setwd("C:\\Users\\it24101205\\Desktop\\IT24101205")
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)

##Q1
population_mean <- mean(weight_data)
population_sd <- sd(weight_data)

cat("1. Population Mean (kg):", population_mean, "\n")
cat("1. Population SD (kg):", population_sd, "\n\n")

##Q2
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample_i <- sample(weight_data, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
  cat(sprintf("Sample %02d - Mean: %.4f | SD: %.4f\n", i, sample_means[i], sample_sds[i]))
}


##Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\n3. Mean of Sample Means:", mean_of_sample_means, "\n")
cat("3. SD of Sample Means:", sd_of_sample_means, "\n")

theoretical_se <- population_sd / sqrt(6)
cat("4. Theoretical Standard Error (Pop SD / sqrt(n)):", theoretical_se, "\n")
