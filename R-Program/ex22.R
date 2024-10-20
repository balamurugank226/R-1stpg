#Truncated Poisson Distribution
lambda <- 2 

#Simulate data from the truncated poisson distribution
num_samples <- 1000 # Number of samples to generate
samples <- rpois(num_samples,lambda)
truncated_samples <- samples[samples>0] #Truncated at zero

#Calculate Mean and Variance of the truncated distribution
mean_truncated <- mean(truncated_samples)
variance_truncated <- var(truncated_samples)

#Plot the histogran of the truncated samples 
hist(truncated_samples,main="Truncated Poisson Distribution",xlab="Values",ylab="Frequency")

#Print Mean and Variance of the truncated distribution
cat("Mean (Truncated) :",mean_truncated,"\n")
cat("Variance (Truncated) :",variance_truncated,"\n")
