dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header=TRUE, as.is=TRUE)
#Create training data (excluding ID) of the first 80 observations
train2<-dat[1:80,-c(1)]
test2<-dat[81:100,-c(1)]
attach(train2) #Can now refer to the variable names directly

str(train2)
summary(train2)
#Change EQPMNT AND TLENGTH into a Factor
train2$EQPMNT<-factor(EQPMNT, levels = c("DRY","REF"))
train2$TLENGTH<-factor(TLENGTH, levels = c(48,53))
test2$EQPMNT<-factor(test2$EQPMNT, levels = c("DRY","REF"))
test2$TLENGTH<-factor(test2$TLENGTH, levels = c(48,53))

#Regression Tree Example
#install.packages('rpart', quiet=T) #Only ever need to run once
library(rpart)

# grow tree
set.seed(130)
fit2 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, method="anova",
data=train2)
printcp(fit2) # display the results (cp= "complexity parameter")
plotcp(fit2) # visualize complexity results
summary(fit2) # detailed summary of splits
# view the cp plot for the most complex regression tree model according to R
set.seed(130)
fit21 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, method="anova",
data=train2, control=list(cp=0))
par(mfrow=c(1,2)) # optional 2 graphs/page
plotcp(fit2) # visualize original complexity results
plotcp(fit21)# visualize most complex tree CP results
# plot tree
plot(fit2, uniform=TRUE,
main="Regression Tree for MacOne Ind.")
text(fit2, use.n=TRUE, all=TRUE, cex=.5)

dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header=T, as.is=T)
#Create training data (excluding ID) of the first 80 observations
train2<-dat[1:80,-c(1)]
test2<-dat[81:100,-c(1)]
attach(train2) #Can now refer to the variable names directly

str(train2)
summary(train2)
#Change EQPMNT AND TLENGTH into a Factor
train2$EQPMNT<-factor(EQPMNT, levels = c("DRY","REF"))
train2$TLENGTH<-factor(TLENGTH, levels = c(48,53))
test2$EQPMNT<-factor(test2$EQPMNT, levels = c("DRY","REF"))
test2$TLENGTH<-factor(test2$TLENGTH, levels = c(48,53))

#Regression Tree Example
#install.packages('rpart', quiet=T) #Only ever need to run once
library(rpart)

# grow tree
set.seed(130)
fit2 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, method="anova",
data=train2)
printcp(fit2) # display the results (cp= "complexity parameter")
plotcp(fit2) # visualize complexity results
summary(fit2) # detailed summary of splits
# view the cp plot for the most complex regression tree model according to R
set.seed(130)
fit21 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, method="anova",
data=train2, control=list(cp=0))
par(mfrow=c(1,2)) # optional 2 graphs/page
plotcp(fit2) # visualize original complexity results
plotcp(fit21)# visualize most complex tree CP results
# plot tree
plot(fit2, uniform=TRUE,
main="Regression Tree for MacOne Ind.")
text(fit2, use.n=TRUE, all=TRUE, cex=.5)
