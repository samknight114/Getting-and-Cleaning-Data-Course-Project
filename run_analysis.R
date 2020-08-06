library(dplyr)

# 1. Check/Download appropriate dataset and then unzips
if (!file.exists("accelerometer_data.zip")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                      destfile = "accelerometer_data.zip")
}

if (!file.exists("UCI HAR Dataset")) {
        unzip("accelerometer_data.zip")
}

# 2. Reading Test/Subject data into tables
TestSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
TestActivity <- read.table("UCI HAR Dataset/test/y_test.txt")
TestValues <- read.table("UCI HAR Dataset/test/X_test.txt")
TrainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
TrainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")
TrainValues <- read.table("UCI HAR Dataset/train/X_train.txt")

# 3. Merging Train/Test Groups
ActivityType <- rbind(TestActivity, TrainActivity)
SubjectID <- rbind(TestSubject, TrainSubject)
Values <- rbind(TestValues, TrainValues)

# 4. Assigning Feature strings to Value variables and better column names
features <- read.table("UCI HAR Dataset/features.txt")
names(Values) <- features$V2
names(ActivityType) <- "Activity"
names(SubjectID) <- "Subject"

# 5. Grouping into single dataset 
MergeAll <- cbind(SubjectID, ActivityType, Values)

# 6. Finding indices for columns that contain mean/std data 
#    Then using indices to combine into new dataframe with Activity and Subject
meancols <- grep("mean", names(MergeAll))
stdcols <- grep("std", names(MergeAll))
MergeMeanSTD <- MergeAll[, c(meancols, stdcols)]
MergeMeanSTD <- cbind(MergeAll["Subject"], MergeAll["Activity"], MergeMeanSTD)

# 7. Better Activity names
ActivityLabels <- c("walking", "walking_upstairs", 
                    "walking_downstairs", "sitting", "standing", "laying")
MergeMeanSTD$Activity <- factor(MergeMeanSTD$Activity, labels = ActivityLabels)

# 8. Better Variable Value names
names(MergeMeanSTD) <- gsub("^t", "time", names(MergeMeanSTD))
names(MergeMeanSTD) <- gsub("^f", "frequency", names(MergeMeanSTD))
names(MergeMeanSTD) <- gsub("Acc", "Accelerometer", names(MergeMeanSTD))
names(MergeMeanSTD) <- gsub("Gyro", "Gyroscope", names(MergeMeanSTD))
names(MergeMeanSTD) <- gsub("Mag", "Magnitude", names(MergeMeanSTD))

# 9. Creates a new dataframe that finds all 180 unique combinations of 
#    Subject/Activity and finds all corresponding means for those groups
MergeAverageMeans <- MergeMeanSTD %>% 
        group_by(Subject, Activity) %>% 
        summarize_all(mean)

# 10. Creates file and views it
write.table(MergeAverageMeans, file = "tidydata.txt", row.names = FALSE)
View(read.table("tidydata.txt"))


                                                                                









