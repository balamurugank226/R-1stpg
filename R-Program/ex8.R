#Dataset of agricultural areas
areas <- c(65.7,15.6,17.6,14,22.2,13.3,34.1,6.12,10.6,130,50.84,54.10,57.36,60.62,63.88,67.13,70.39,73.65,76.91,80.17)

#Calculate the probabilities based on size
probs <- areas/sum(areas)

#set the sample size
n<-5

#perform PPS Sampling with replacemeent
sampled_units <- sample(1:length(areas),n,replace=TRUE,prob=probs)

#retrive the selected units
selected_areas <- areas[sampled_units]

#display the units
selected_areas