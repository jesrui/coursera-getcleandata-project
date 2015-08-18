################
# Getting and Cleaning Data
# Course Project
# https://class.coursera.org/getdata-031/human_grading/view/courses/975115/assessments/3/submissions
################

# Read the names and ids of the activities
activity_labels <- read.table('activity_labels.txt', col.names=c('id','label'))
# Convert activities to a factor
activity_factor <- factor(activity_labels$id, labels=activity_labels$label)

# Read the ids and names of the measured features:
# NOTE not all labels are unique. For example:
# 461 fBodyGyro-bandsEnergy()-1,8
# 475 fBodyGyro-bandsEnergy()-1,8
# 489 fBodyGyro-bandsEnergy()-1,8
# ...
feature_labels <- read.table('features.txt', stringsAsFactors=FALSE,
                             col.names=c('id','label'))

############# Process the test dataset

# Read subject ids for each measurement in the test dataset
subj_test <- read.table('test/subject_test.txt', col.names=c('Subject'))

# This is the number of measurements done by each of the nine subjects
# in the test dataset:
#> table(subj_test)
#subj_test
#  2   4   9  10  12  13  18  20  24 
#302 317 288 294 320 327 364 354 381 
#


# Read activity ids for each measurement in the test dataset
activities_test <- read.table('test/y_test.txt', col.names=c('activity'))
# Use descriptive activity names to name the activities in the test dataset
activities_test$activity <- factor(activities_test$activity,
                                   labels=activity_factor)
# All subjects of the test dataset together did 2947 activities:
# > str(activities_test)
#'data.frame':	2947 obs. of  1 variable:
# $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 5 5 5 5 5 5 5 5 5 5 ...

# Here is how many activities of each class was done in the test dataset:
# > table(activities_test)
#activities_test
#           WALKING   WALKING_UPSTAIRS WALKING_DOWNSTAIRS            SITTING 
#               496                471                420                491 
#          STANDING             LAYING 
#               532                537
#

# Read the feature measurements of the test dataset
measurements_test <- read.table('test/X_test.txt')

# Select only the features containing 'mean' or 'std' in their names
# TODO include fBodyGyro-meanFreq()-X ?
mean_or_std_labels <- grep('mean()|std()', feature_labels$label)
measurements_test <- measurements_test[,mean_or_std_labels]
# label the test dataset with descriptive variable names.
colnames(measurements_test) <- feature_labels$label[mean_or_std_labels]

# TODO use cbind to prepend coluns
# cbind(a=rnorm(5),X)
# Add a column containing the subject id of each observation
measurements_test$Subject <- subj_test$Subject
# Add a column containing the activity of each observation
measurements_test$activity <- activities_test$activity

