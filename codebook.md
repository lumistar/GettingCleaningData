The attached R script (run_analysis.R) performs the following to clean up the source data:
1. Read all the required data sets into R.
2. Combine the train and the test data sets.
	*X_train.txt, X_test.txt
	*y_train.txt, y_test.txt
	*subject_train.txt, subject_test.txt
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
	*Get the mean and std indices from features table.
	*Subset columns only have mean and std.
	*Get appropriate column names.
4. Uses descriptive activity names to name the activities in the data set.
5. Merge all three data sets into one data set, and save it to a txt file: *samsungData.txt*
6. Create another tidy data set that has the average of each variable for each activity and each subject, save it to a txt file: *samsung_tidy_data.txt* 
