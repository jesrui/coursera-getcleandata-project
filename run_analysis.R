################
# Getting and Cleaning Data
# Course Project
# https://class.coursera.org/getdata-031/human_grading/view/courses/975115/assessments/3/submissions
################

subj_test <- read.csv('test/subject_test.txt', header = FALSE, sep = " ")

table(subj_test)
#subj_test
#  2   4   9  10  12  13  18  20  24 
#302 317 288 294 320 327 364 354 381 
#
colnames(subj_test) <- c('Subject')

activity_labels <- read.csv('activity_labels.txt', header=FALSE, sep = ' ',
                            col.names=c('id','label'))
activity_factor <- factor(activity_labels$id, labels=activity_labels$label)

activities_test <- read.csv('test/y_test.txt', header=FALSE, sep = ' ',
                            col.names=c('activity'))
# Use descriptive activity names to name the activities in the test dataset
activities_test$activity <- factor(activities_test$activity,
                                   labels=activity_factor)

str(activities_test)
#'data.frame':	2947 obs. of  1 variable:
# $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 5 5 5 5 5 5 5 5 5 5 ...

table(activities_test)
#activities_test
#           WALKING   WALKING_UPSTAIRS WALKING_DOWNSTAIRS            SITTING 
#               496                471                420                491 
#          STANDING             LAYING 
#               532                537
#

# NOTE not all labels are unique. For example:
# 461 fBodyGyro-bandsEnergy()-1,8
# 475 fBodyGyro-bandsEnergy()-1,8
# 489 fBodyGyro-bandsEnergy()-1,8
# ...

feature_labels <- read.csv('features.txt', header=FALSE, sep = ' ',
                            stringsAsFactors=FALSE, col.names=c('id','label'))

# TODO rename to meassurements_test
features_test <- read.table('test/X_test.txt')

# Select only the variables containing 'mean' or 'std' in their names
# TODO include fBodyGyro-meanFreq()-X ?
mean_or_std_labels <- grep('mean()|std()', feature_labels$label)
features_test <- features_test[,mean_or_std_labels]
# label the test dataset with descriptive variable names.
colnames(features_test) <- feature_labels$label[mean_or_std_labels]

# TODO use cbind to prepend coluns
# cbind(a=rnorm(5),X)
# Add a column containing the subject id of each observation
features_test$Subject <- subj_test$Subject
# Add a column containing the activity of each observation
features_test$activity <- activities_test$activity

