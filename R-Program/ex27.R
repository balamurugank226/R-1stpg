#Generate a sample dataset
set.seed(789)

#Gamma distribution with shape =1.5 , rate=0.2
survival_times <- rgamma(150,shape = 1.5, rate = 0.2)

#Calculate the Hazard rates
hazard_rates <- 0.2

#Calculate Mills Ratio
mills_ratio <- 1 - exp(-hazard_rates*  survival_times)

#Plot the Mills Ratio
hist(mills_ratio, breaks=30, col="lightyellow", main="Mills Ratio Distribution",
     xlab="Mills Ratio")
