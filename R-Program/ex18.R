#Given the parameter (lambda)
lambda <- 0.2

#Calculate Mean(Expected Value)
mean_value <- 1/lambda
mean_value

#Calculate Variance
variance_value <- 1/(lambda^2)
variance_value

#Generate random samples from the exponential distribution
sample_size <- 1000 #You can adjust the sample size
samples <- rexp(sample_size,rate = lambda)

#Create a Histogram
hist(samples,breaks=20,main="Exponential Distribution Histogram")
