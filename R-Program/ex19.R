#set the parameter
#total number of matches
n <- 20
#probability of success in a individual match
p <- 0.6
#lower limit for success
lower_limit <- 10
#Calculate the PMF for success within the lower limit
pmf <- dbinom(lower_limit, size = n, prob = p)
#Calculate the CDF for success within the lower limit
cdf <- pbinom(lower_limit, size = n, prob = p)
#Print the Results
cat("PMF :",pmf,"\n")
cat("CDF :",cdf,"\n")
