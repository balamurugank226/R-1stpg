#define dataset
x <- c(3.13,2.88,2.86,3.072,3.38,3.33,4.02,4.048,4.15,4.35,4.43,4.68,5.18,6.22,6.92)

y <- c(2.91,2.46,1.69,7.25,3.67,3.29,1.04,3.31,2.62,4.52,5.45,5.47,2.071,4.19,6.85)

pik <- c(0.5,0.53,0.55,0.58,0.63,0.66,0.69,0.72,0.73,0.75,0.78,0.83,0.85,0.85,0.91)

#calculate the ratio estimate
ratio_estimate <- sum(x*y/pik)/sum(y/pik)

#print the ratio estimate
cat("Ratio Estimate :",ratio_estimate)
