This is the repository of Coursera's "Getting and Cleaning Data"
Course Project. See https://class.coursera.org/getdata-031

# Directory contents

- `README.md` this file
- `run_analysis.R` the script that takes as input the raw data avaliable at
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  and produces as output the tidy data.
- `CodeBook.md` the code book that describes the variables, the data, and any
  transformations or work that you performed to clean up the data

# Download and extract the raw data

Before you can run the script, you have to download the raw data.

    wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    unzip -x 'getdata%2Fprojectfiles%2FUCI HAR Dataset.zip'

The last command unpacks the raw data into a directory called `UCI HAR Dataset`.

# The script

`run_analysis.R` does the following:

1.    Merges the training and the test sets to create one data set.
2.    Extracts only the measurements on the mean and standard deviation for each measurement. 
3.    Uses descriptive activity names to name the activities in the data set
4.    Appropriately labels the data set with descriptive variable names. 
5.    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the script, cd to the directory where you unzipped the raw data, start
an R shell there and source the script:

    source('../coursera-getcleandata-project/run_analysis.R')

(where `../coursera-getcleandata-project/` is the path to the directory where you cloned the project
repository).

The script produces two tidy datasets:

- `measurements` the result of step 4
- `measurementsMeans` the seult of step 5

# `measurementsMeans.txt`

If you are evaluating my coursera assignment, you'll find
`measurementsMeans.txt` attached to my submission. The `measurementsMeans` data
frame was saved to the `measurementsMeans.txt` file as follows:

    write.table(measurementsMeans, file="measurementsMeans.txt", row.name=FALSE)

You can load `measurementsMeans.txt` back into R as follows:

    measurementsMeans <- read.table('measurementsMeans.txt', header = TRUE)

