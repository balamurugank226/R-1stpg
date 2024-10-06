#define your dataset
x <- c(65.7,15.6,17.6,14,22.2,13.3,34.1,6.2,10.6,130)
y <- c(50.84,54.10,57.36,60.62,63.88,67.13,70.39,73.65,76.91,80.17)

#calculate sampling probabilities
total_size <- length(x)
proportions <- x/sum(y)

#setting seed for reproducibility
set.seed(123)

#perform pps sampling without replacement
sample_indices <- sample(1:total_size, size=5, prob= proportions,replace= FALSE)

#retrive the selected units
selected_x <- x[sample_indices]
selected_y <- y[sample_indices]

#print the selected units
selected_x
selected_y
