#generate example data
set.seed(456)
survival_data <- rweibull(75,shape=1.5,scale=18)
library(MASS)

#fit weibull distribution 
fit <- fitdistr(survival_data, densfun = "weibull")

#extract estimate parameters
shape <- fit$estimate["shape"]
scale <- fit$estimate["scale"]

#print parameters
shape
scale
