
## read all the required data into R
setwd("./data/UCI HAR Dataset")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

## combine the train and the test data sets
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

## get the mean and std indices from features table
mean_std_indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
## subset columns only have the measurements on the mean and std
X_mean_std <- X[, mean_std_indices]
## get appropriate column names 
names(X_mean_std) <- features[mean_std_indices, 2]
names(X_mean_std) <- gsub("\\(|\\)", "", names(X_mean_std))
names(X_mean_std) <- tolower(names(X_mean_std))

## use descriptive activity names to name the activities
activity_labels[, 2] = gsub("_", "", 
                            tolower(as.character(activity_labels[, 2])))
y[, 1] = activity_labels[y[, 1], 2]
names(y) <- "activity"

## merge all three data sets into one data set
## save it to a txt file
names(subject) <- "subject"
merged_data <- cbind(subject, y, X_mean_std)
write.table(merged_data, "samsungData.txt")

## create a tidy data set that has the average of each variable for each
## activity and each subject, save it to a txt file
melted_data <- melt(merged_data, id = c("activity", "subject"))
tidy_data <- dcast(melted_data, activity + subject ~ variable, mean)
write.table(tidy_data, "samsung_tidy_data.txt")