#Define parameters for the logistic distribution
location <- 0 #Location parameter
scale <- 1  #Scale parameter

#Generate a random sample from the logistic distribution
set.seed(123) #for reproducibility
sample_size <- 1000
logistic_data <- rlogis(sample_size, location = location, scale = scale)

#Calculate the mean of the logistic distribution
mean_logistic <- mean(logistic_data)

#Calculate the variance of the logistic distribution
variance_logistic <- var(logistic_data)

#Print the results
cat("Mean of the Logistic Distribution :",mean_logistic,"\n")
cat("Variance of the Logistic Distribution :",variance_logistic,"\n")
#Draw a Histogram for the logistic distribution
hist(logistic_data, breaks=20, main="Logistic Histogram Distribution",
     xlab="Value",col="lightblue",border="black")
