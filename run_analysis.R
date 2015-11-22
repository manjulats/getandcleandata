run_analysis <- function()
{
	## Training Data - Read from Files
	subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt", header=FALSE)
	x_train <- read.table("UCI HAR Dataset\\train\\X_train.txt", header=FALSE)
	y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt", header=FALSE)

	## Test Data - Read from files
	subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt", header=FALSE)
	x_test <- read.table("UCI HAR Dataset\\test\\X_test.txt", header=FALSE)
	y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt", header=FALSE)

	## Features and Activity Labels - Read from files
	features <- read.table("UCI HAR Dataset\\features.txt", header=FALSE)
	activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt", header=FALSE)

	## Set Column Names
	colnames(activity_labels) <- c("activity_id", "activity_name")
	
	colnames(subject_train) <- "subject_id"
	colnames(x_train) <- features$V2
	colnames(y_train) <- "activity_id"

	colnames(subject_test) <- "subject_id"
	colnames(x_test) <- features$V2
	colnames(y_test) <- "activity_id"
	
	## Forming the Train and Test datasets
	dataset_train <- cbind(subject_train, x_train, y_train)
	dataset_test <- cbind(subject_test, x_test, y_test)
	
	## Merging of the Train and Test datasets
	tidydataset <- rbind(dataset_train, dataset_test)
	
	## Extracting only the measurements on the mean and standard deviation
	## (with activity_id and subject_id included along)
	allcolnames <- colnames(tidydataset)
	tidydatasetwithstdandmean <- tidydataset[, (grepl("activity..",allcolnames) | grepl("subject..",allcolnames) | grepl("-mean..",allcolnames) & !grepl("-meanFreq..",allcolnames) & !grepl("mean..-",allcolnames) |  grepl("-std..",allcolnames) & !grepl("-std()..-",allcolnames))]

	## Descriptive Activity names added
	tidydatasetwithactivitynames <- merge(tidydatasetwithstdandmean ,activity_labels,by='activity_id',all.x=TRUE);

	## Getting the column names
	allcolnames <- colnames(tidydatasetwithactivitynames)

	## Setting descriptive variable names
	for (i in 1:length(allcolnames))
	{
		allcolnames [i] <- gsub("\\()","",allcolnames [i])
		allcolnames [i] <- gsub("Mag","Magnitude",allcolnames [i])
	}

	colnames(tidydatasetwithactivitynames) <- allcolnames 
 	
	
	## Tidy dataset with the average of each variable for each activity and each subject
	


	## Writing to the file tidydatasetfinal.txt
	write.table(tidydatasetwithactivitynames, file="tidydatasetfinal.txt", sep=" ", row.name=FALSE)

}