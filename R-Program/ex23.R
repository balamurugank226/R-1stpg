#load the truncnorm package
library(truncnorm)

#Set the paramters
mean_val <-500
sd_val <- 100
lower_limit <- 200
upper_limit <- 800
num_participants <- 80
reaction_times <- rtruncnorm(n=num_participants,a=(lower_limit-mean_val)/sd_val,
                  b=(upper_limit-mean_val)/sd_val,mean = mean_val,sd = sd_val)

#View the generated reaction times
print(reaction_times)

