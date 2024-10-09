#Truncated Binomial Distribution
n <- 5 # Number of trails
p <- 1/3 # Probability of success
q <- 1-p # Probability of failure

#Simulate data from the truncated binomial distribution
num_samples <- 1000 # Number of samples to generate
samples <- rbinom(num_samples,n,p)
truncated_samples <- samples[samples>0] #Truncated at zero

#Calculate Mean and Variance of the truncated distribution
mean_truncated <- mean(truncated_samples)
variance_truncated <- var(truncated_samples)

#Plot the histogran of the truncated samples 
hist(truncated_samples,main="Truncated Binomial Distribution",xlab="Values",ylab="Frequency")

#Print Mean and Variance of the truncated distribution
cat("Mean (Truncated) :",mean_truncated,"\n")
cat("Variance (Truncated) :",variance_truncated,"\n")

