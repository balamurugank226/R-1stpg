set.seed(456)
failure_hmes <- rexp(70,rate=0.1)
library(MASS)
fit <- fitdistr(failure_hmes,densfun = "exponential")
rate <- fit$estimate["rate"]
rate

