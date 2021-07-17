# Loading necessary libraries
library(rio) # used for importing and exporting
library(e1071) # used for skewness calculation

# Loading the dataset
studentDf <- import("student_scores.csv") # Read data from a file in working directory 

head(studentDf)

# Create Training and Test data
set.seed(100)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(studentDf), 0.8*nrow(studentDf))  # row indices for training data
trainDf <- studentDf[trainingRowIndex, ]  # training data
testDf  <- studentDf[-trainingRowIndex, ]   # test data

# Build and summarise the model on training data
mod <- lm(Hours ~ Scores, data=trainDf) # build the model
summary(mod)  # model summary

# Predict the test data
yPred <- predict(mod, testDf)  # predict scores

AIC(mod)  # Calculate Akaike information criterion

BIC(mod)  # Calculate Bayesian information criterion

## Accuracy and Prediction Errors
predDf <- data.frame(cbind(actuals=testDf$Scores, predicteds=yPred)) # creating a dataframe
head(predDf) # printing the first few rows

# Min-Max Accuracy Calculation
min_max_accuracy <- mean(apply(predDf, 1, min) / apply(predDf, 1, max))  
min_max_accuracy

# Mean Absolute Percentage Error Calculation
mape <- mean(abs((predDf$predicteds - predDf$actuals))/predDf$actuals)  
mape

# what is the predicted score if a student studies for 9.25hrs/day?
predict(mod, data.frame(Scores=c(9.25)))

