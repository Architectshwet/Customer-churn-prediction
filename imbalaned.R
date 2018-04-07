setwd("C:/Users/Architect_shwet/Desktop/customer churn")

library(caret)
library(readr)
library(dplyr)
library(tibble)
library(data.table)
library("ROSE")
train = read.csv('train_new.csv')

sapply(train,class)
names(train)
train = train[, -c(19, 20, 8, 24)]
train = train[, -18]

table(train$is_churn)

train$is_churn[train$is_churn == 1] <- 'churn'
train$is_churn[train$is_churn == 0] <- 'not_churn'

train$is_churn = as.factor(train$is_churn)

balanced_train <- ovun.sample(is_churn~.,data=train,method = "both",N = 10000,p=.5,seed=1)$data


table(balanced_train$is_churn)
index <- createDataPartition(balanced_train$is_churn, p=0.75, list=FALSE)

trainSet <- balanced_train[ index,]
testSet <- balanced_train[-index,]
table(trainSet$is_churn)
table(testSet$is_churn)
dim(trainSet)
dim(testSet)

write.csv(trainSet,"10k_actual_train.csv",row.names = F)
write.csv(testSet,"10kactual_test.csv",row.names = F)




train = read.csv('balanced_train.csv')
table(train$is_churn)
sapply(train,class)
'amt_per_day'

train = train[, -21]

names(train)

index <- createDataPartition(train$is_churn, p=0.75, list=FALSE)
trainSet <- train[ index,]
testSet <- train[-index,]
table(trainSet$is_churn)
table(testSet$is_churn)
dim(trainSet)
dim(testSet)
write.csv(trainSet,"actual_train.csv",row.names = F)
write.csv(testSet,"actual_test.csv",row.names = F)












































