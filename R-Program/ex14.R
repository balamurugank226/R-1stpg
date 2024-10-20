# Load data
Tree_NO <- 1:10
Actual_Weight <- c(59, 47, 52, 60, 67, 48, 44, 58, 76, 58)
Estimated_Weight <- c(61, 42, 50, 58, 67, 45, 39, 57, 71, 53)

# Calculate population total of estimated weights
x_total <- 1160

# Create data frame
df <- data.frame(Tree_NO, Actual_Weight, Estimated_Weight)

# Fit regression model
model <- lm(Actual_Weight ~ Estimated_Weight, data = df)

# Summary of regression model
summary(model)

# Predict population total
N <- 200
y_hat <- (coef(model)[1] + coef(model)[2] * (x_total / N)) * N

# Calculate standard error of estimated total
SE_y_hat <- sqrt((N^2 * (N - length(Actual_Weight)) / (length(Actual_Weight) * (N - 1))) * summary(model)$sigma^2)

# Print results
cat("Estimated Population Total:", y_hat, "\n")
cat("Standard Error (S.E):", SE_y_hat, "\n")
