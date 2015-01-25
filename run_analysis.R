#Step 1: Merges the training and the test sets to create one data set.
setwd("C:\\UCI HAR Dataset")

activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

train_set <- read.table("train/X_train.txt")
train_label <- read.table("train/y_train.txt")
train_subject <- read.table("train/subject_train.txt")

names(train_set) <- features[,2]
train_set$Label <- train_label[,1]
train_set$Subject <- train_subject[,1]

test_set <- read.table("test/X_test.txt")
test_label <- read.table("test/y_test.txt")
test_subject <- read.table("test/subject_test.txt")

names(test_set) <- features[,2]
test_set$Label <- test_label[,1]
test_set$Subject <- test_subject[,1]

merged_set <- rbind(train_set, test_set)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
#Step 3: Uses descriptive activity names to name the activities in the data set
#Step 4: Appropriately labels the data set with descriptive variable names.
#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
