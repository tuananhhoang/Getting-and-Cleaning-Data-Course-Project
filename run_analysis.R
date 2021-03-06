#Step 1: Merges the training and the test sets to create one data set
#Make sure that current directory is at "UCI HAR Dataset" directory

activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

train_set <- read.table("train/X_train.txt")
train_label <- read.table("train/y_train.txt")
train_subject <- read.table("train/subject_train.txt")

#Labels the data set with descriptive variable names
names(train_set) <- features[,2]

#Merge train_set, train_label and train_subject together
train_set$Label <- train_label[,1]
train_set$Subject <- train_subject[,1]

test_set <- read.table("test/X_test.txt")
test_label <- read.table("test/y_test.txt")
test_subject <- read.table("test/subject_test.txt")

#Labels the data set with descriptive variable names
names(test_set) <- features[,2]

#Merge test_set, test_label and test_subject together
test_set$Label <- test_label[,1]
test_set$Subject <- test_subject[,1]

#Do merging the training and the test sets
merged_set <- rbind(train_set, test_set)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
mean_std_features <- features[grep("-(mean|std)\\(", features[, 2]), 2]
mean_std_set <- merged_set[,which(names(merged_set) %in% c(as.character(mean_std_features), "Label", "Subject"))]

#Step 3: Uses descriptive activity names to name the activities in the data set
mean_std_set$Activity <- activity_labels[mean_std_set$Label,2]

#Step 4: Appropriately labels the data set with descriptive variable names
names(mean_std_set) <- gsub("^t", "Time", names(mean_std_set))
names(mean_std_set) <- gsub("^f", "Frequency", names(mean_std_set))
names(mean_std_set) <- gsub("Acc", "Acceleration", names(mean_std_set))
names(mean_std_set) <- gsub("Gyro", "Gyroscope", names(mean_std_set))
names(mean_std_set) <- gsub("Mag", "Magnitude", names(mean_std_set))

#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
group_by_set <- mean_std_set[,c("Activity", "Subject")]
mean_std_set <- mean_std_set[,!(names(mean_std_set) %in% c("Label", "Subject", "Activity"))]
write.table(aggregate(mean_std_set, by=group_by_set, FUN=mean), file="tidy.txt", sep = ",", row.names=FALSE)
