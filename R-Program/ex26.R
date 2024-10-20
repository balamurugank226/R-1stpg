#Set the seed for reproducibility
set.seed(123)

#Generate 80 random reaction times from a normal distribution
reaction_times <- rnorm(80,mean=500,sd=100)

#Ensure the values are within the specified range
reaction_times <- pmax(pmin(reaction_times,800),200)

#Display the generated reaction times
print(reaction_times)
