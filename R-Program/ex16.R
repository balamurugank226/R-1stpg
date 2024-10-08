#sample data (20 lifetimes in ours)
data <- c(125,150,170,180,200,220,240,260,280,300,330,360,380,400,420,440,460,480,500,520)

#define parameters for weibull distribution
lambda <- 250 #Scale Parameter
k <- 1.5 #Shape Parameter

#Calculate Mean and Variance
mean <- lambda * gamma(1+1/k)
variance <- (lambda^2)*(gamma(1+2/k)-gamma(1+1/k))^2

#Generate random numbers from te weibull distribution
num_samples <- 1000 #no of samples to generate
weibull_samples <- rweibull(num_samples, shape=k, scale=lambda)

#Calculate Mean and Variance of the generated samples
mean_weibull <- mean(weibull_samples)
variance_weibull <- var(weibull_samples)

#create a histogran
hist(data, breaks=6, prob=TRUE, main="Histograms of lifetimes")

#Print Mean and Variance
cat("Mean :",mean_weibull,"\n")
cat("Variance :",variance_weibull,"\n")

