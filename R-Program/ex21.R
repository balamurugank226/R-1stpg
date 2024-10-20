#Set lambda to 3(max complaints per week)
lambda <- 3 

#Generate a sequence of possible complain counts (0-3)
complaint_counts <- 0:3

#Calculate the possibilities for each count using the poisson distribution
probabilities <- dpois(complaint_counts,lambda)

#print the probabilities
print(probabilities)
