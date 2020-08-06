---
title: "Code Book"
author: "samknight114"
date: "8/5/2020"
output: html_document
---

This Code Book serves as a summary of various fields in the supplied data "tidydata.txt". This table is the result of data that have been generated from UC Irvine's study on "Human Activity Recognition Using Smartphones" which gathered data on 30 subjects with smartphones in their pockets as they engaged in a variety of common physical activities.

### Data Frames

- MergeAll - An imcomplete, intermediary DF that combines all raw data from the test and train sets. *10229 rows, 563 columns*
- MergeMeanSTD - A labelled and tidy DF that subsets only the 79 observations that contain mean and std data. *10299 rows, 81 columns*
- MergeAverageMeans - a labelled and tidy DF that groups Identifiers into 180 sets and then takes the average means and STD for all observations in that set. *180 rows, 81 columns*

### Identifiers 

- Subject - One of the 30 individuals who were selected to participate in this study
- Activity - One of the six types of activities that these subjects engaged in
  1. Walking
  2. Walking Upstairs
  3. Walking Downstairs
  4. Sitting
  5. Standing
  6. Laying

### Variables

##### 79 Different Types of Accelerometer & Gyroscope Data. 

- "timeBodyAccelerometer-mean()-X"
- "timeBodyAccelerometer-mean()-Y"
- "timeBodyAccelerometer-mean()-Z"
- "timeGravityAccelerometer-mean()-X"
- "timeGravityAccelerometer-mean()-Y"
- "timeGravityAccelerometer-mean()-Z"
- "timeBodyAccelerometerJerk-mean()-X"
- "timeBodyAccelerometerJerk-mean()-Y"
- "timeBodyAccelerometerJerk-mean()-Z"
- "timeBodyGyroscope-mean()-X"
- "timeBodyGyroscope-mean()-Y"
- "timeBodyGyroscope-mean()-Z"
- "timeBodyGyroscopeJerk-mean()-X"
- "timeBodyGyroscopeJerk-mean()-Y"
- "timeBodyGyroscopeJerk-mean()-Z"
- "timeBodyAccelerometerMagnitude-mean()"
- "timeGravityAccelerometerMagnitude-mean()"
- "timeBodyAccelerometerJerkMagnitude-mean()"
- "timeBodyGyroscopeMagnitude-mean()"
- "timeBodyGyroscopeJerkMagnitude-mean()"
- "frequencyBodyAccelerometer-mean()-X"
- "frequencyBodyAccelerometer-mean()-Y"
- "frequencyBodyAccelerometer-mean()-Z"
- "frequencyBodyAccelerometer-meanFreq()-X"
- "frequencyBodyAccelerometer-meanFreq()-Y"
- "frequencyBodyAccelerometer-meanFreq()-Z"
- "frequencyBodyAccelerometerJerk-mean()-X"
- "frequencyBodyAccelerometerJerk-mean()-Y"
- "frequencyBodyAccelerometerJerk-mean()-Z"
- "frequencyBodyAccelerometerJerk-meanFreq()-X"
- "frequencyBodyAccelerometerJerk-meanFreq()-Y"
- "frequencyBodyAccelerometerJerk-meanFreq()-Z"
- "frequencyBodyGyroscope-mean()-X"
- "frequencyBodyGyroscope-mean()-Y"
- "frequencyBodyGyroscope-mean()-Z"
- "frequencyBodyGyroscope-meanFreq()-X"
- "frequencyBodyGyroscope-meanFreq()-Y"
- "frequencyBodyGyroscope-meanFreq()-Z"
- "frequencyBodyAccelerometerMagnitude-mean()"
- "frequencyBodyAccelerometerMagnitude-meanFreq()"
- "frequencyBodyBodyAccelerometerJerkMagnitude-mean()"
- "frequencyBodyBodyAccelerometerJerkMagnitude-meanFreq()"
- "frequencyBodyBodyGyroscopeMagnitude-mean()"
- "frequencyBodyBodyGyroscopeMagnitude-meanFreq()"
- "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"
- "frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"
- "timeBodyAccelerometer-std()-X"
- "timeBodyAccelerometer-std()-Y"
- "timeBodyAccelerometer-std()-Z"
- "timeGravityAccelerometer-std()-X"
- "timeGravityAccelerometer-std()-Y"
- "timeGravityAccelerometer-std()-Z"
- "timeBodyAccelerometerJerk-std()-X"
- "timeBodyAccelerometerJerk-std()-Y"
- "timeBodyAccelerometerJerk-std()-Z"
- "timeBodyGyroscope-std()-X"
- "timeBodyGyroscope-std()-Y"
- "timeBodyGyroscope-std()-Z"
- "timeBodyGyroscopeJerk-std()-X"
- "timeBodyGyroscopeJerk-std()-Y"
- "timeBodyGyroscopeJerk-std()-Z"
- "timeBodyAccelerometerMagnitude-std()"
- "timeGravityAccelerometerMagnitude-std()"
- "timeBodyAccelerometerJerkMagnitude-std()"
- "timeBodyGyroscopeMagnitude-std()"
- "timeBodyGyroscopeJerkMagnitude-std()"
- "frequencyBodyAccelerometer-std()-X"
- "frequencyBodyAccelerometer-std()-Y"
- "frequencyBodyAccelerometer-std()-Z"
- "frequencyBodyAccelerometerJerk-std()-X"
- "frequencyBodyAccelerometerJerk-std()-Y"
- "frequencyBodyAccelerometerJerk-std()-Z"
- "frequencyBodyGyroscope-std()-X"
- "frequencyBodyGyroscope-std()-Y"
- "frequencyBodyGyroscope-std()-Z"
- "frequencyBodyAccelerometerMagnitude-std()"
- "frequencyBodyBodyAccelerometerJerkMagnitude-std()"
- "frequencyBodyBodyGyroscopeMagnitude-std()"
- "frequencyBodyBodyGyroscopeJerkMagnitude-std()"



