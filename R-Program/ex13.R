# Sample data
X <- c(76, 67, 29, 23, 37, 61, 93, 78, 67, 60, 46, 25, 50, 44, 77, 64, 64, 40, 40, 50)
Y <- c(80, 67, 30, 40, 63, 69, 104, 106, 86, 57, 65, 50, 64, 58, 89, 63, 77, 60, 64, 62)

# Population size
N <- 196

# Sample size
n <- length(X)

# True total population (2001)
true_total <- 22919

# Simple Random Sampling (SRS) estimation
srs_estimate <- (N / n) * sum(X)
srs_variance <- (N^2 * (N - n) / (n * (N - 1))) * var(X)

# Ratio Estimation
ratio <- sum(Y) / sum(X)
ratio_estimate <- (N / n) * sum(X) * ratio
ratio_variance <- (N^2 * (N - n) / (n * (N - 1))) * var(X * ratio)

# Print results
cat("Simple Random Sampling Estimation:\n")
cat("Estimated Total:", srs_estimate, "\n")
cat("Variance:", srs_variance, "\n")
cat("Standard Error:", sqrt(srs_variance), "\n")

cat("\nRatio Estimation:\n")
cat("Estimated Total:", ratio_estimate, "\n")
cat("Variance:", ratio_variance, "\n")
cat("Standard Error:", sqrt(ratio_variance), "\n")

