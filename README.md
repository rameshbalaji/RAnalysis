# RAnalysis
Instructions: 

1.	Please setup the working directory and place the following Data files in the working directory
o	'features.txt'
o	X_train.txt'
o	y_train.txt'
o	X_test.txt'
o	‘y_test.txt'
o	‘Subject_train.txt'
o	‘Subject_test.txt'
2.	Please install “data.table” package before you run the “R” script. This is key dependency.
3.	Place the ‘run_analysis.R’ script in the working directory and Run the   ‘run_analysis.R’  file from the “R” environment
4.	The ‘run_analysis.R’ performs the following key activities 
a.	Creates a Training data set with features list attached with activities and subject
b.	Creates a  Testing data set with feature lists attached with activities and subject
c.	Merge Training and Testing data set
d.	The activities numeric values are labeled into categorical values
e.	The mean and standard deviation variables are extracted from the Merged data set
f.	From the extracted data set, the average values are calculated based on activitity and subject
5.	The ‘run_analysis.R’ as a last step creates 2 output files
	The dataset for average values by activity is saved in the output file (avgMeanbyactivity.txt). For every variable, there are 6 rows where each row represents an activity
	The data set for average values by subject is saved in the output file (avgMeanbysubject.txt). For every variable there are 30 observations, each observation represents a subject.
	The above extracted output files (avgMeanbysubject.txt & avgMeanbyactivity.txt) form the Final Tidy data and placed in the working directory.



