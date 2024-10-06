#create the preditor and responsible variable
height <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
weight <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#fit simple linear regression model

#Apply the lm() function
relation <- lm(weight~height)

#view model summary
print(summary(relation))

#Find weight of a person with height 170
a <- data.frame(height=170)
result <- predict(relation,a)
print(result)

