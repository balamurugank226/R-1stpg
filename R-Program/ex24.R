#Set the number of teams and matches
num_teams <- 50
num_matches_per_team <- 20

#Generate random success rates for each team
success_rates <- runif(num_teams,min=0.2,max=0.8)

#Simulate outcomes for each team using a compound binomial distribution
team_outcomes <- sapply(success_rates,
                    function(p)rbinom(num_matches_per_team,size=50,prob=p))

#Print the simulated outcomes for the first team
print(team_outcomes[1])
