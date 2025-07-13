dat <- read.csv("MacOneData.csv", header=T, as.is=T)
#Create training data (excluding ID) of the first 80 observations
train2<-dat[1:80,-c(1)]
test2<-dat[81:100,-c(1)]
attach(train2) #Can now refer to the variable names directly