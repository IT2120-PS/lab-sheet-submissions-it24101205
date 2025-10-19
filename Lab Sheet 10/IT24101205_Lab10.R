setwd("C:\\Users\\Acer\\Desktop\\Lab 10")
#i
#Null hypothesis
#customer choose all four snack types(A,B,C,D) 
#equal probability (pA=pB=pC=pD=0.25) 

#Alternative hypothesis
#customers do not choose all four snack types with equal probabilty


#ii
observed<- c(120,95,85,100)
prob<- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

#iii
#Significant level = 0.05
#p-value = 0.089>0.05
#Fail to reject null hypotheses.