# Study Design
## About the experiment data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## About tidy data
The tidy.txt file in this folder contains tidy data of Smartphones Dataset about Human Activity Recognition.
Requirements for data in tidy.txt are desribed in the course project:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Version of origin data: 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws

www.smartlab.ws

## License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

# Code book
The tidy data contains average values of 66 variables, in which each row is for a combination of Activity and Subject values.
* *Subject* identifies the persons who participated the experiments
* *Activity* is among following six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
* The 66 variables are included in below table:

No | Variable Names
---| -------------
1  | TimeBodyAcceleration-mean()-X
2  | TimeBodyAcceleration-mean()-Y
3  | TimeBodyAcceleration-mean()-Z
4  | TimeBodyAcceleration-std()-X
5  | TimeBodyAcceleration-std()-Y
6  | TimeBodyAcceleration-std()-Z
7  | TimeGravityAcceleration-mean()-X
8  | TimeGravityAcceleration-mean()-Y
9  | TimeGravityAcceleration-mean()-Z
10 | TimeGravityAcceleration-std()-X
11 | TimeGravityAcceleration-std()-Y
12 | TimeGravityAcceleration-std()-Z
13 | TimeBodyAccelerationJerk-mean()-X
14 | TimeBodyAccelerationJerk-mean()-Y
15 | TimeBodyAccelerationJerk-mean()-Z
16 | TimeBodyAccelerationJerk-std()-X
17 | TimeBodyAccelerationJerk-std()-Y
18 | TimeBodyAccelerationJerk-std()-Z
19 | TimeBodyGyroscope-mean()-X
20 | TimeBodyGyroscope-mean()-Y
21 | TimeBodyGyroscope-mean()-Z
22 | TimeBodyGyroscope-std()-X
23 | TimeBodyGyroscope-std()-Y
24 | TimeBodyGyroscope-std()-Z
25 | TimeBodyGyroscopeJerk-mean()-X
26 | TimeBodyGyroscopeJerk-mean()-Y
27 | TimeBodyGyroscopeJerk-mean()-Z
28 | TimeBodyGyroscopeJerk-std()-X
29 | TimeBodyGyroscopeJerk-std()-Y
30 | TimeBodyGyroscopeJerk-std()-Z
31 | TimeBodyAccelerationMagnitude-mean()
32 | TimeBodyAccelerationMagnitude-std()
33 | TimeGravityAccelerationMagnitude-mean()
34 | TimeGravityAccelerationMagnitude-std()
35 | TimeBodyAccelerationJerkMagnitude-mean()
36 | TimeBodyAccelerationJerkMagnitude-std()
37 | TimeBodyGyroscopeMagnitude-mean()
38 | TimeBodyGyroscopeMagnitude-std()
39 | TimeBodyGyroscopeJerkMagnitude-mean()
40 | TimeBodyGyroscopeJerkMagnitude-std()
41 | FrequencyBodyAcceleration-mean()-X
42 | FrequencyBodyAcceleration-mean()-Y
43 | FrequencyBodyAcceleration-mean()-Z
44 | FrequencyBodyAcceleration-std()-X
45 | FrequencyBodyAcceleration-std()-Y
46 | FrequencyBodyAcceleration-std()-Z
47 | FrequencyBodyAccelerationJerk-mean()-X
48 | FrequencyBodyAccelerationJerk-mean()-Y
49 | FrequencyBodyAccelerationJerk-mean()-Z
50 | FrequencyBodyAccelerationJerk-std()-X
51 | FrequencyBodyAccelerationJerk-std()-Y
52 | FrequencyBodyAccelerationJerk-std()-Z
53 | FrequencyBodyGyroscope-mean()-X
54 | FrequencyBodyGyroscope-mean()-Y
55 | FrequencyBodyGyroscope-mean()-Z
56 | FrequencyBodyGyroscope-std()-X
57 | FrequencyBodyGyroscope-std()-Y
58 | FrequencyBodyGyroscope-std()-Z
59 | FrequencyBodyAccelerationMagnitude-mean()
60 | FrequencyBodyAccelerationMagnitude-std()
61 | FrequencyBodyBodyAccelerationJerkMagnitude-mean()
62 | FrequencyBodyBodyAccelerationJerkMagnitude-std()
63 | FrequencyBodyBodyGyroscopeMagnitude-mean()
64 | FrequencyBodyBodyGyroscopeMagnitude-std()
65 | FrequencyBodyBodyGyroscopeJerkMagnitude-mean()
66 | FrequencyBodyBodyGyroscopeJerkMagnitude-std()
