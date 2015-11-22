## getandcleandata
Getting and Cleaning Data

## To run the run_analysis.R
source("run_analysis.R")
<br />
run_analysis()

## Steps carried out to get the clean dataset - used in the run_analysis()
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
