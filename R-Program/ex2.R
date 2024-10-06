#defining range of values from 1 to 100
samplerange = c(1:100)

#select random samples of 10 elements
sample(x=samplerange,size=10)

#select random samples of 10 elements Without Replacement
sample(x=samplerange,size=10,replace=FALSE)

#select random samples of 10 elements With Replacement
sample(x=samplerange,size=10,replace=TRUE)
