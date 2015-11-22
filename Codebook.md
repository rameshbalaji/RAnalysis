Title: Human Activity Recognition Using Smartphones Dataset 
Environment: 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. For each record it is provided
o	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
o	Triaxial Angular velocity from the gyroscope. 
o	A 561-feature vector with time and frequency domain variables. 
o	Its activity label. 
o	An identifier of the subject who carried out the experiment.

Raw Data:
The experiment produced following raw data which are present in the following file representation:
o	features_info.txt': Shows information about the variables used on the feature vector.
o	'features.txt': List of all features.
o	'activity_labels.txt': Links the class labels with their activity name.
o	'train/X_train.txt': Training set.
o	'train/y_train.txt': Training labels.
o	'test/X_test.txt': Test set.
o	'test/y_test.txt': Test labels
o	Subject_train.txt': Each row identifies the subject who performed the activity at training stage. Its range is from 1 to 30.
o	Subject_test.txt': Each row identifies the subject who performed the activity during test stages. Its range is from 1 to 30.

Units of Measurement:
o	The acceleration signal from the smartphone accelerometer is in standard gravity units 'g'
o	The angular velocity vector measured by the gyroscope is in radians/second.

Data Transformation:
The experiment produced following raw data which are present in the following file representation:
The approach for Data transformation is done in 2 parts. 
	Training Data Set
	Test Data Set

Training Data Set
The list of activities involved in Training Set transformation includes:
1.	Training set represented in file X_train.txt is taken as a base set of rows. This is the starting point
2.	Features /Variables represented in features.txt are attached to Training set. Now the training set has clear observations for a given set of variables/features.
3.	The activity information represented in the y_train.txt is represented with “activity” column so that there is clear variable represented for each activity observation
4.	The activity variable is attached to Training data set
5.	The subject information represented in the subject_train.txt is represented with “subject” column so that there is clear variable represented for each subject.
6.	The subject variable is attached to Training data set
7.	Now the Consolidated Training set has clearly defined variables from features, subject and activity





Test Data Set
The list of activities involved in Testing Set transformation includes:
1.	Testing set represented in file X_test.txt is taken as a base set of rows. This is the starting point
2.	Features /Variables represented in features.txt are attached to Testing set. Now the training set has clear observations for a given set of variables/features.
3.	The activity information represented in the y_test.txt is represented with “activity” column so that there is clear variable represented for each activity observation
4.	The activity variable is attached to Testing data set
5.	The subject information represented in the subject_test.txt is represented with “subject” column so that there is clear variable represented for each subject.
6.	The subject variable is attached to Testing data set
7.	The Consolidated Testing set has clearly defined variables from features, subject and activity

Merging of Training and Testing Data Set (Tidy Dataset 1)
The list of activities involved during the Merger of training and Testing set
•	The Consolidated Training and Testing dataset is merged  as one single Merged data set
•	The activity variables which are represented in numeric values are categorized by following values
	1 -WALKING
	2 -WALKING_UPSTAIRS
	3 –WALKING_DOWNSTAIRS
	4 -SITTING
	5- STANDING
	6 -LAYING
•	The mean and standard deviation are extracted from the Merged data set for the following variables/features
o	tBodyAcc-XYZ
o	tGravityAcc-XYZ
o	tBodyAccJerk-XYZ
o	tBodyGyro-XYZ
o	tBodyGyroJerk-XYZ
o	tBodyAccMag
o	tGravityAccMag
o	tBodyAccJerkMag
o	tBodyGyroMag
o	tBodyGyroJerkMag
o	fBodyAcc-XYZ
o	fBodyAccJerk-XYZ
o	fBodyGyro-XYZ
o	fBodyAccMag
o	fBodyAccJerkMag
o	fBodyGyroMag
o	fBodyGyroJerkMag
•	The above Extracted dataset forms the first part of Tidy Data set

Data Transformation on Extracted Data set (Tidy Dataset 2)

The list of activities involved on the extracted Data st
•	The Extracted data (Mean and Standard deviation) set forms the base data
•	The Extracted data set is used to find the Mean/average values for the Mean and standard deviation for the above feature list provided above in (Blue color) which is grouped by Activity
•	The dataset is saved in the output file (avgMeanbyactivity.txt). For every variable, there are 6 rows where each row represents an activity
•	Similarly the Extracted data set is used to find the Mean/average values for the Mean and standard deviation for the above feature list provided above in (Blue color) which is grouped by Subject
•	The data set is saved in the output file (avgMeanbysubject.txt). For every variable there are 30 observations, each observation represents a subject.
•	The above extracted output files (avgMeanbysubject.txt & avgMeanbyactivity.txt) form the Final Tidy data as stipulated by the Project.



	
