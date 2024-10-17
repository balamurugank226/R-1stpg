#Generate a sample dataset
set.seed(456)
sample_data <- rgamma(500,shape=2,rate=0.5)

#Calculate the 7th order statistic
seventh_order_statistic <- sort(sample_data)[7]

#Generate quantiles for the 7th order statistic
quantiles <- qgamma(ppoints(500),shape=2,rate=0.5)

#Plot the distribution of the 7th order statistic
hist(quantiles,breaks=30,col="lightgreen",main="Distribution of 7th order statistic",
     xlab="Value")
abline(v=seventh_order_statistic,col="blue",lwd=2)

