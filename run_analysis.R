
## Set the directory path and place all the raw data files into that working directory
## setwd("C:\\Ramesh\\R Programs\\Project")

## reading the feature list
featurelist <- read.table("features.txt", header=F)

## splitting the feature list for mean and std
featurevalues <- featurelist$V2
featuresd <- c(grep("std()",featurevalues,value=T,fixed=T))
featuremean <- c(grep("mean()",featurevalues,value=T,fixed=T))
featuremeansd <- c(featuremean, featuresd)

## TRAINING

## reading the training data
traindata <- read.table("X_train.txt", header=F)

## reading the training acvitity
trainactivity <- read.table("y_train.txt", header=F)

## setting the colname for train activity
colnames(trainactivity) <- c("activity")

## reading the training subject data
trainsubject <- read.table("subject_train.txt", header=F)

## setting the colname for training subject
colnames(trainsubject)<- c("subject")

## Assigning the feature list values as training data set columns
colnames(traindata) <- factor(featurelist$V2)

## consolidating activity and training data
cumtrainactivitydata <- cbind(trainactivity,traindata)

## consolidating subject with activity and training data
cumtrainactivitysubjectdata <- cbind(trainsubject,cumtrainactivitydata)

## TEST 
## reading the test data
testdata <- read.table("X_test.txt", header=F)

## reading the test acvitity
testactivity <- read.table("y_test.txt", header=F)

## setting the colnames for testactivity
colnames(testactivity) <- c("activity")

## reading the test subject data
testsubject <- read.table("subject_test.txt", header=F)

## setting the colnames for test subject
colnames(testsubject)<- c("subject")

## Assigning the feature list values as columns to test dataset
colnames(testdata) <- factor(featurelist$V2)

## consolidating activity and test data
cumtestactivitydata <- cbind(testactivity,testdata)

## consolidating subject with activity and test data
cumtestactivitysubjectdata <- cbind(testsubject,cumtestactivitydata)


## Merge Test and Training set in entirety includes subject, activity, test and training activities
##
mergetestandtrain <- rbind(cumtrainactivitysubjectdata,cumtestactivitysubjectdata)

## assigning activity names to the merged data set. This data set contains both descriptive variable names and descriptive activity names
## I have made it for all columns over and above the specific info called for rather than mean and standard deviation only which is asked in STEP 2 
mergetestandtrain$activity <- factor(mergetestandtrain$activity, levels = c(1,2,3,4,5,6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

## creating 2 training and test data with variables for mean, SD as common information.
## One data set with mean and sd data with activity
## 2nd data set with mean and sd data for subject
MeanSDfortestandtraininfowithactivity <- mergetestandtrain[,c('activity',featuremeansd)]
MeanSDfortestandtraininfowithsubject <- mergetestandtrain[,c('subject',featuremeansd)]

library(data.table)
## creating data table from testtrainingactivity data frame
TableFormatMeanSDfortestandtraindataforactivity <- data.table(MeanSDfortestandtraininfowithactivity)

## average mean by activity
avgMeanbyactivity <- TableFormatMeanSDfortestandtraindataforactivity[,c(average=lapply(.SD,mean)),by=activity]

## writing the activity based averages to activity file
write.table(avgMeanbyactivity, file = "avgMeanbyactivity.txt",row.name=FALSE)

## creating data table from testtrainingsubject data frame
TableFormatMeanSDfortestandtraindataforsubject <- data.table(MeanSDfortestandtraininfowithsubject)

## average mean by subject
avgMeanbysubject <- TableFormatMeanSDfortestandtraindataforsubject[,c(average=lapply(.SD,mean)),by=subject]

## writing the subject based averages to subject file
write.table(avgMeanbysubject, file = "avgMeanbysubject.txt",row.name=FALSE)

