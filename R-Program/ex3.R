data <- data.frame(s.no= c(01,02,03,04,05,06,07,08,09,10),
        sample_values = c("17, 37 93 27 18","47 4 74 47 67",
        "98 10 50 71 75","72 42 49 7 88","49 17 47 9 62",
        "79 83 36 19 62" ,"83 11 46 23 24","7 45 32 14 8",
        "0 56 76 31 38","42 37 7 96 88"),
        mean = c(50.4,53.8,60.8,51.6,36.6,55.8,39.8,21.2,40.2,54.0),
        variance = c(1104.8,906.7,1906.7,957.3,508.3,765.7,760.7,236.7,809.2,1390.5))

print(data)
k=10
n=5
N=50

mean = c(50.4,53.8,60.8,51.6,36.6,55.8,39.8,21.2,40.2,54.0)

#sum(mean)
mean_sample_mean = sum(mean)/k
print(mean_sample_mean)

#variane calculation
variance = c(1104.8,906.7,1906.7,957.3,508.3,765.7,760.7,236.7,809.2,1390.5)

#sum(variance)
mean_sample_variance = sum(variance)/k
print(mean_sample_variance)

#estimate polpulation total
estimate_pop = n*(mean_sample_mean)
print(estimate_pop)

#population mean
pop_mean = estimate_pop/N

#standard error
SE = sqrt((N-1)/N)*((mean_sample_variance)/n)

#standard error of estimate population total
SE_pop = N*(SE)
print(SE_pop)

