#Set the parameters
#Average numbr of complaints per week
lambda <- 2

#Maximum number of complaints per week
max_complaints <- 3

#Number of weeks
num_weeks <- 60

#Generate compound poisson distribution
complaints_per_week <- pmin(rpois(num_weeks,lambda),max_complaints)

#Display the results
print(complaints_per_week)
