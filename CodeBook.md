---
title: "Codebook - For Course Project - Getting and Cleaning Data"
author: "Manjula T"
date: "22-Nov-2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
To Collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The data was actually collected from the accelerometers from the Samsung Galaxy S smartphone.

##Study design and data processing

###Collection of the raw data
[Data Set from the following URL]
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Notes on the original (raw) data 

As in the following URL
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



##Creating the tidy datafile

###Guide to create the tidy data file
        1.Get the Training Data by reading from the files - Read from Files in the folder - UCI HAR Dataset\train
	   a.subject_train.txt
	   b.X_train.txt
	   c.y_train.txt

	2.Get the Test Data by reading from the files - Read from Files in the folder - UCI HAR Dataset\test
	   a.subject_test.txt
	   b.X_test.txt
	   c.y_test.txt

	3.Get the Features and Activity Labels by reading from the files in the folder - UCI HAR Dataset
	   a.features.txt
	   b.activity_labels.txt
 
	4.read.table is used to read from the files.

	5.Set Column Names for the Data read from Training and Test Data 
	
	6.Combine the columns of the Training Data - to form the Training Dataset. cbind is used. 

	7.Combine the columns of the Test Data - to form the Test Dataset. cbind is used. 
	
	8.Merge the Train and the Test Datasets - using rbind
	
	9.Extract only the columns having the measurements on the mean and standard deviation
	(with activity_id and subject_id included along)
	
	10.Add Descriptive Activity names - based on the activity_id

	11.Set descriptive variable names
	
	12.Find the average of each variable for each activity and each subject
	
	13.Write the final tidy dataset to a text file using write.table.  




##Variables in the tiny_data.txt file

1.activity_id	
2.subject_id	
3.tBodyAccMagnitude-mean	
4.tBodyAccMagnitude-std	
5.tGravityAccMagnitude-mean	
6.tGravityAccMagnitude-std	
7.tBodyAccJerkMagnitude-mean	
8.tBodyAccJerkMagnitude-std	
9.tBodyGyroMagnitude-mean	
10.tBodyGyroMagnitude-std	
11.tBodyGyroJerkMagnitude-mean	
12.tBodyGyroJerkMagnitude-std	
13.fBodyAccMagnitude-mean	
14.fBodyAccMagnitude-std	
15.fBodyBodyAccJerkMagnitude-mean	
16.fBodyBodyAccJerkMagnitude-std	
17.fBodyBodyGyroMagnitude-mean	
18.fBodyBodyGyroMagnitude-std	
19.fBodyBodyGyroJerkMagnitude-mean	
20.fBodyBodyGyroJerkMagnitude-std	
21.activity_name


