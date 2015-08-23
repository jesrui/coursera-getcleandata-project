################################################################################
# Getting and Cleaning Data
# Course Project
# https://class.coursera.org/getdata-031/human_grading/view/courses/975115/assessments/3/submissions
################################################################################

library(plyr)
library(dplyr)

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

# This is the number of measurements recorded for each of the nine subjects
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

# Here is how many activities of each class were done in the test dataset:
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
# Label the test dataset with descriptive variable names.
colnames(measurements_test) <- feature_labels$label[mean_or_std_labels]

# TODO use cbind to prepend coluns
# cbind(a=rnorm(5),X)
# Add a column containing the subject id of each observation
measurements_test$Subject <- subj_test$Subject
# Add a column containing the activity of each observation
measurements_test$activity <- activities_test$activity

############# Process the training dataset

# Read subject ids for each measurement in the training dataset
subj_train <- read.table('train/subject_train.txt', col.names=c('Subject'))

# This is the number of measurements recorded for each of the 21 subjects
# in the train dataset:
#> table(subj_train)
#subj_train
#  1   3   5   6   7   8  11  14  15  16  17  19  21  22  23  25  26  27  28  29 
#347 341 302 325 308 281 316 323 328 366 368 360 408 321 372 409 392 376 382 344 
# 30 
#383 



# Read activity ids for each measurement in the train dataset
activities_train <- read.table('train/y_train.txt', col.names=c('activity'))
# Use descriptive activity names to name the activities in the train dataset
activities_train$activity <- factor(activities_train$activity,
                                   labels=activity_factor)

# All subjects of the train dataset together did 7352 activities:
#> str(activities_train)
#'data.frame':	7352 obs. of  1 variable:
# $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 5 5 5 5 5 5 5 5 5 5 ...

# Here is how many activities of each class were done in the train dataset:
#> table(activities_train)
#activities_train
#           WALKING   WALKING_UPSTAIRS WALKING_DOWNSTAIRS            SITTING 
#              1226               1073                986               1286 
#          STANDING             LAYING 
#              1374               1407 


# Read the feature measurements of the train dataset
measurements_train <- read.table('train/X_train.txt')

# Select only the features containing 'mean' or 'std' in their names
# TODO include fBodyGyro-meanFreq()-X ?
measurements_train <- measurements_train[,mean_or_std_labels]
# Label the train dataset with descriptive variable names.
colnames(measurements_train) <- feature_labels$label[mean_or_std_labels]

# TODO use cbind to prepend coluns
# cbind(a=rnorm(5),X)
# Add a column containing the subject id of each observation
measurements_train$Subject <- subj_train$Subject
# Add a column containing the activity of each observation
measurements_train$activity <- activities_train$activity

############# Merge training and test datasets

measurements <- rbind(measurements_train, measurements_test)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# change column names to simplfy ddply command below
colnames(measurements)[1:79] = paste0('c',1:79)
# XXX is there a way to generate sumarize arguments from colnames and pass them
# somehow (perhaps in a list) to ddply?
measurementsMeans <- ddply(measurements,.(Subject,activity),summarize,
                           mean.c1=mean(c1),
                           mean.c2=mean(c2),
                           mean.c3=mean(c3),
                           mean.c4=mean(c4),
                           mean.c5=mean(c5),
                           mean.c6=mean(c6),
                           mean.c7=mean(c7),
                           mean.c8=mean(c8),
                           mean.c9=mean(c9),
                           mean.c10=mean(c10),
                           mean.c11=mean(c11),
                           mean.c12=mean(c12),
                           mean.c13=mean(c13),
                           mean.c14=mean(c14),
                           mean.c15=mean(c15),
                           mean.c16=mean(c16),
                           mean.c17=mean(c17),
                           mean.c18=mean(c18),
                           mean.c19=mean(c19),
                           mean.c20=mean(c20),
                           mean.c21=mean(c21),
                           mean.c22=mean(c22),
                           mean.c23=mean(c23),
                           mean.c24=mean(c24),
                           mean.c25=mean(c25),
                           mean.c26=mean(c26),
                           mean.c27=mean(c27),
                           mean.c28=mean(c28),
                           mean.c29=mean(c29),
                           mean.c30=mean(c30),
                           mean.c31=mean(c31),
                           mean.c32=mean(c32),
                           mean.c33=mean(c33),
                           mean.c34=mean(c34),
                           mean.c35=mean(c35),
                           mean.c36=mean(c36),
                           mean.c37=mean(c37),
                           mean.c38=mean(c38),
                           mean.c39=mean(c39),
                           mean.c40=mean(c40),
                           mean.c41=mean(c41),
                           mean.c42=mean(c42),
                           mean.c43=mean(c43),
                           mean.c44=mean(c44),
                           mean.c45=mean(c45),
                           mean.c46=mean(c46),
                           mean.c47=mean(c47),
                           mean.c48=mean(c48),
                           mean.c49=mean(c49),
                           mean.c50=mean(c50),
                           mean.c51=mean(c51),
                           mean.c52=mean(c52),
                           mean.c53=mean(c53),
                           mean.c54=mean(c54),
                           mean.c55=mean(c55),
                           mean.c56=mean(c56),
                           mean.c57=mean(c57),
                           mean.c58=mean(c58),
                           mean.c59=mean(c59),
                           mean.c60=mean(c60),
                           mean.c61=mean(c61),
                           mean.c62=mean(c62),
                           mean.c63=mean(c63),
                           mean.c64=mean(c64),
                           mean.c65=mean(c65),
                           mean.c66=mean(c66),
                           mean.c67=mean(c67),
                           mean.c68=mean(c68),
                           mean.c69=mean(c69),
                           mean.c70=mean(c70),
                           mean.c71=mean(c71),
                           mean.c72=mean(c72),
                           mean.c73=mean(c73),
                           mean.c74=mean(c74),
                           mean.c75=mean(c75),
                           mean.c76=mean(c76),
                           mean.c77=mean(c77),
                           mean.c78=mean(c78),
                           mean.c79=mean(c79))

# use meaningful names for mean columns of the new data frame

clean_feature_labels <- feature_labels$label[mean_or_std_labels]
clean_feature_labels <- gsub('[()]','', clean_feature_labels)
clean_feature_labels <- gsub('-','.', clean_feature_labels)

colnames(measurementsMeans)[3:81] = paste0('mean.',clean_feature_labels)

measurementsMeans2 <- measurements %>%
        group_by(Subject,activity) %>%
        summarise_each(funs(mean))

measurementsMeans2 <- as.data.frame(measurementsMeans2)

colnames(measurementsMeans2)[3:81] = paste0('mean.',clean_feature_labels)
