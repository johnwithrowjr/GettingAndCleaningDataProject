#Load library and set working directory
library(dplyr)
setwd("C:\\Users\\John\\Desktop\\UCI HAR Dataset")

#Reading in data
subject_test <- read.table(".\\test\\subject_test.txt",header=FALSE)
x_test <- read.table(".\\test\\X_test.txt",header=FALSE)
y_test <- read.table(".\\test\\Y_test.txt",header=FALSE)
subject_train <- read.table(".\\train\\subject_train.txt",header=FALSE)
x_train <- read.table(".\\train\\X_train.txt",header=FALSE)
y_train <- read.table(".\\train\\Y_train.txt",header=FALSE)
cn <- read.table("features.txt")
activities <- read.table("activity_labels.txt")
activities <- as.vector(activities[,2])

#Set column names to show full variable names (Mandate 4)
colnames(x_test) <- cn$V2
colnames(x_train) <- cn$V2
colnames(y_test) <- "activitynum"
colnames(y_train) <- "activitynum"
colnames(subject_test) <- "subjectnum"
colnames(subject_train) <- "subjectnum"

#Combine data sets (Mandate 1)
mode_test <- as.matrix(rep("test",dim(x_test)[1]))
mode_train <- as.matrix(rep("train",dim(x_train)[1]))
all_test <- cbind(x_test,y_test,subject_test,mode_test)
all_train <- cbind(x_train,y_train,subject_train,mode_train)
colnames(all_test)[564] <- "mode"
colnames(all_train)[564] <- "mode"
fulldataset <- rbind(all_test,all_train)
fulldataset$subjectnum <- as.factor(fulldataset$subjectnum)

#Replace activity numbers with activity names (Mandate 3)
fulldataset <- cbind(fulldataset,activities[fulldataset$activitynum])
colnames(fulldataset)[565] <- "activity"
fulldataset <- fulldataset[,-562]

#Extract means and standard deviation varibles (Mandate 2)
selectdataset <- fulldataset[,grep("mean[^F]|std",cn$V2)]
write.table(selectdataset,"dataset.txt")

#Extract mean varibles (Mandate 5)
meandataset <- fulldataset[,grep("mean",cn$V2)]
write.table(meandataset,"mean.txt")
