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

# Load necessary library
library(rpart)

# Read the dataset
dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header = TRUE, as.is = TRUE)

# Set seed for reproducibility
set.seed(520)

# Create a random sample index for 75% training data
train_index <- sample(seq_len(nrow(dat)), size = 0.75 * nrow(dat), replace = FALSE)

# Split the dataset
train4 <- dat[train_index, -c(1)]  # Excluding ID column
test4 <- dat[-train_index, -c(1)]  # Excluding ID column

# Convert categorical variables to factors
train4$EQPMNT <- factor(train4$EQPMNT, levels = c("DRY", "REF"))
train4$TLENGTH <- factor(train4$TLENGTH, levels = c(48, 53))
test4$EQPMNT <- factor(test4$EQPMNT, levels = c("DRY", "REF"))
test4$TLENGTH <- factor(test4$TLENGTH, levels = c(48, 53))

# Build regression tree using default rpart settings
set.seed(520)
fit4 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT,
              method = "anova", data = train4)

# Display complexity parameter (CP) table
cp_table <- printcp(fit4)  # Table of CP values

# Display CP results
print(cp_table)

# Load necessary library
library(rpart)

# Read the dataset
dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header = TRUE, as.is = TRUE)

# Set seed for reproducibility
set.seed(520)

# Create a random sample index for 75% training data
train_index <- sample(seq_len(nrow(dat)), size = 0.75 * nrow(dat), replace = FALSE)

# Split the dataset
train4 <- dat[train_index, -c(1)]  # Excluding ID column
test4 <- dat[-train_index, -c(1)]  # Excluding ID column

# Convert categorical variables to factors
train4$EQPMNT <- factor(train4$EQPMNT, levels = c("DRY", "REF"))
train4$TLENGTH <- factor(train4$TLENGTH, levels = c(48, 53))
test4$EQPMNT <- factor(test4$EQPMNT, levels = c("DRY", "REF"))
test4$TLENGTH <- factor(test4$TLENGTH, levels = c(48, 53))

# Build the most complex regression tree (cp=0)
set.seed(520)
fit4_complex <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT,
                      method = "anova", data = train4, control = list(cp = 0))

# Plot CP values vs. relative error
plotcp(fit4_complex, main = "CP vs. Relative Error for Most Complex Tree")

# Load necessary library
library(rpart)

# Read the dataset
dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header = TRUE, as.is = TRUE)

# Set seed for reproducibility
set.seed(520)

# Create a random sample index for 75% training data
train_index <- sample(seq_len(nrow(dat)), size = 0.75 * nrow(dat), replace = FALSE)

# Split the dataset
train4 <- dat[train_index, -c(1)]  # Excluding ID column
test4 <- dat[-train_index, -c(1)]  # Excluding ID column

# Convert categorical variables to factors
train4$EQPMNT <- factor(train4$EQPMNT, levels = c("DRY", "REF"))
train4$TLENGTH <- factor(train4$TLENGTH, levels = c(48, 53))
test4$EQPMNT <- factor(test4$EQPMNT, levels = c("DRY", "REF"))
test4$TLENGTH <- factor(test4$TLENGTH, levels = c(48, 53))

# Build the full regression tree
set.seed(520)
fit4 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT,
              method = "anova", data = train4)

# Prune the tree using CP = 0.026
fit4_pruned <- prune(fit4, cp = 0.026)

# Plot original and pruned trees side by side
par(mfrow=c(1,2))  # Set layout for 2 plots
plot(fit4, uniform = TRUE, main = "Original Regression Tree")
text(fit4, use.n = TRUE, all = TRUE, cex = 0.6)

plot(fit4_pruned, uniform = TRUE, main = "Pruned Regression Tree (CP = 0.026)")
text(fit4_pruned, use.n = TRUE, all = TRUE, cex = 0.6)

# Load necessary library
library(rpart)

# Read the dataset
dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header = TRUE, as.is = TRUE)

# Set seed for reproducibility
set.seed(520)

# Create a random sample index for 75% training data
train_index <- sample(seq_len(nrow(dat)), size = 0.75 * nrow(dat), replace = FALSE)

# Split the dataset
train4 <- dat[train_index, -c(1)]  # Excluding ID column
test4 <- dat[-train_index, -c(1)]  # Excluding ID column

# Convert categorical variables to factors
train4$EQPMNT <- factor(train4$EQPMNT, levels = c("DRY", "REF"))
train4$TLENGTH <- factor(train4$TLENGTH, levels = c(48, 53))
test4$EQPMNT <- factor(test4$EQPMNT, levels = c("DRY", "REF"))
test4$TLENGTH <- factor(test4$TLENGTH, levels = c(48, 53))

# Build the full regression tree
set.seed(520)
fit4 <- rpart(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT,
              method = "anova", data = train4)

# Prune the tree using CP = 0.026
fit4_pruned <- prune(fit4, cp = 0.026)

# Predictions on the test set
predictions_initial <- predict(fit4, newdata = test4)
predictions_pruned <- predict(fit4_pruned, newdata = test4)

# Calculate Mean Absolute Percentage Error (MAPE) function
mape <- function(actual, predicted) {
  mean(abs((actual - predicted) / actual)) * 100
}

# Compute MAPE for both models
mape_initial <- mape(test4$COST, predictions_initial)
mape_pruned <- mape(test4$COST, predictions_pruned)

# Print results rounded to two decimal places
print(paste("MAPE for Initial Regression Tree: ", round(mape_initial, 2), "%"))
print(paste("MAPE for Pruned Regression Tree: ", round(mape_pruned, 2), "%"))

dat <- read.csv("C:\\Users\\momas\\Documents\\RegressionTreeCode\\MacOneData.csv", header=T, as.is=T)
#Create training data (excluding ID) of the first 80 observations
len<-ceiling(nrow(dat)*0.8);indx<-1:len
train3<-dat[indx,-c(1)]
test3<-dat[-indx,-c(1)]
attach(train3)

#Change EQPMNT AND TLENGTH into a Factor
train3$EQPMNT<-factor(EQPMNT, levels = c("DRY","REF"))
train3$TLENGTH<-factor(TLENGTH, levels = c(48,53))
test3$EQPMNT<-factor(test3$EQPMNT, levels = c("DRY","REF"))
test3$TLENGTH<-factor(test3$TLENGTH, levels = c(48,53))
#Random forest example
install.packages('randomForest',quiet=T)
library(randomForest)
set.seed(130)
fit3 <- randomForest(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, data=train3)
print(fit3) # view results

#Making a new prediction
newdata <- data.frame(DIST=1000, LDTIME=9, TLENGTH=as.factor(c(48,53)),
WGHT=16900, EQPMNT=as.factor(c("REF","DRY")))
predict(fit3, newdata)

#Prepare the test data for predictions
detach(train3)
attach(test3)
#Predict using test data
pred3<-predict(fit3, test3)
#Define MAPE function
mape <- function(actual,pred){
mape <- mean(abs((actual - pred)/actual))*100
return (mape)
}
#Find MAPE of predictions
mape.forest<-round(mape(COST,pred3),2)

varImpPlot(fit3)# plot of importance of each predictor
plot(fit3) # plot of random forest error vs ntree
#Need to re-attach train1 data to estimate new model
detach(test3)
attach(train3)
#Best fitting model according to the plots and trial and error
set.seed(130)
fit31 <- randomForest(COST ~ DIST + LDTIME + TLENGTH + WGHT + EQPMNT, data=train3, mtry=3,
ntree=1000)
#view results
print(fit31)
plot(fit31)
#Need to re-attach test3 to make predictions
detach(train3)
attach(test3)
#Predict using test data
pred31<-predict(fit31, test3)
#Find MAPE of predictions
mape.forest<-round(mape(COST,pred31),2)