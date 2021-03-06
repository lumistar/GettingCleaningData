## Data Source
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] 

Here are the data for the project: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] 

## Project Requirement
You should create one R script called run_analysis.R that does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Running the script 
* Download the data and extract.
* In R, change the current directory to the *UCI HAR Dataset* folder.
* Run script run_analysis.R in the current directory : source("run_analysis.R")
* The script will write two files in the current directory:
[samsungData.txt -- 8.3MB]
[samsung_tidy_data.txt -- 225KB]

