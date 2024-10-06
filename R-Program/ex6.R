#make this example reproducibe
set.seed(1)

#create data frame
df <- data.frame(grade = rep(c('Freshmen','Sophomore','Junior','Senior'),each=100),gpa=rnorm(400,mean=85,sd=3))

#view first six rows of data frame
head(df)

library(dplyr)

#obtain stratified sample
strat_sample <- df%>%group_by(grade)%>%sample_n(size=10)

#find frequency of students from each grade
table(strat_sample$grade)

