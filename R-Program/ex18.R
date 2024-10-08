# Set the rate parameter
lambda <- 0.2

# Calculate the mean and variance
mean_value <- 1 / lambda
variance_value <- 1 / (lambda^2)

# Print the mean and variance
cat("Mean:", mean_value, "\n")
cat("Variance:", variance_value, "\n")

# Simulate the exponential distribution
set.seed(123)  # for reproducibility
data <- rexp(1000, rate = lambda)

# Plot the histogram
hist(data, probability = TRUE, breaks = 30, col = "skyblue", 
     main = "Histogram of Exponential Distribution (λ = 0.2)",
     xlab = "Time between arrivals (hours)", ylab = "Density")

# Add theoretical curve
curve(dexp(x, rate = lambda), col = "red", lwd = 2, add = TRUE)

