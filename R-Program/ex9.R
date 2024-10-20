#Given data
Nh <- c(724,648,560,344,81)
nh <- c(61,55,49,29,9)
fh <- c(4246,11636,15957,23586,29667)
sh_sq <- c(22.76,56.6,71.4,192.4,334.7)

#Calculation population total of (t)
t <- sum(Nh/nh*fh)
#Calculate total number of frames (n)
n <- sum(Nh)
#Calculate the average number of cattle per farm (y)
y <- t/n

#Calculate the Standard Error(SE)
se <- sqrt(sum(sh_sq*(Nh/nh^2)*(Nh-nh)/(Nh^2)))

#print the results
cat("Estimated average number of cattle per farm (y) :",y,"\n")
cat("Estimated population total :",t,"\n")
cat("Estimated error (SE) of the estimate :",se,"\n")

