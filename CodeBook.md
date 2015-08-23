# `measurements` data frame

## Study design

From the original `features_info.txt` file in the raw data set:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


From the README:

> - Features are normalized and bounded within [-1,1].

All feature measurements are thus adimensional.

## Code book

The `measurements` data frame contains 10299 observations of 81 variables:

01. tBodyAcc.mean.X              : The normalized body acceleration signal from the smartphone accelerometer X axis, averaged
02. tBodyAcc.mean.Y              : ... Y axis
03. tBodyAcc.mean.Z              : ... Z axis
04. tBodyAcc.std.X               : The normalized standard deviation of the body acceleration signal from the smartphone accelerometer X axis
05. tBodyAcc.std.Y               : ... Y axis
06. tBodyAcc.std.Z               : ... Z axis
07. tGravityAcc.mean.X           : The normalized gravity acceleration signal from the smartphone accelerometer X axis, averaged
08. tGravityAcc.mean.Y           : ... Y axis
09. tGravityAcc.mean.Z           : ... Z axis
10. tGravityAcc.std.X            : The normalized standard deviation of the gravity acceleration signal from the smartphone accelerometer X axis
11. tGravityAcc.std.Y            : ... Y axis
12. tGravityAcc.std.Z            : ... Z axis
13. tBodyAccJerk.mean.X          : The normalized derivative of the body acceleration signal from the smartphone accelerometer X axis, averaged
14. tBodyAccJerk.mean.Y          : ... Y axis
15. tBodyAccJerk.mean.Z          : ... Z axis
16. tBodyAccJerk.std.X           : The normalized standard deviation of the derivative of the body acceleration signal from the smartphone accelerometer X axis
17. tBodyAccJerk.std.Y           : ... Y axis
18. tBodyAccJerk.std.Z           : ... Z axis
19. tBodyGyro.mean.X             : The normalized body angular velocity from the smartphone gyroscope around the X axis, averaged
20. tBodyGyro.mean.Y             : ... Y axis
21. tBodyGyro.mean.Z             : ... Z axis
22. tBodyGyro.std.X              : The normalized standard deviation of the body angular velocity from the smartphone gyroscope around the X axis
23. tBodyGyro.std.Y              : ... Y axis
24. tBodyGyro.std.Z              : ... Z axis
25. tBodyGyroJerk.mean.X         : The normalized derivative of the body angular velocity from the smartphone gyroscope around the X axis, averaged
26. tBodyGyroJerk.mean.Y         : ... Y axis
27. tBodyGyroJerk.mean.Z         : ... Z axis
28. tBodyGyroJerk.std.X          : The normalized standard deviation of the derivative of the body angular velocity from the smartphone gyroscope around the X axis
29. tBodyGyroJerk.std.Y          : ... Y axis
30. tBodyGyroJerk.std.Z          : ... Z axis
31. tBodyAccMag.mean             : The normalized Euclidean norm of the body acceleration signal from the smartphone accelerometer, averaged 
32. tBodyAccMag.std              : The normalized standard devitation of the Euclidean norm of the body acceleration signal from the smartphone accelerometer
33. tGravityAccMag.mean          : The normalized Euclidean norm of the gravity acceleration signal from the smartphone accelerometer, averaged
34. tGravityAccMag.std           : The normalized standard devitation of the Euclidean norm of the gravity acceleration signal from the smartphone accelerometer
35. tBodyAccJerkMag.mean         : The normalized Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, averaged
36. tBodyAccJerkMag.std          : The normalized standard deviation of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer
37. tBodyGyroMag.mean            : The normalized Euclidean norm of the body angular velocity from the smartphone gyroscope, averaged
38. tBodyGyroMag.std             : The normalized standard deviation of the Euclidean norm of the body angular velocity from the smartphone gyroscope
39. tBodyGyroJerkMag.mean        : The normalized Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, averaged
40. tBodyGyroJerkMag.std         : The normalized standard deviation of the Euclidean norm of the derivative of the body angular velocity from the smartphone gyroscope
41. fBodyAcc.mean.X              : The normalized FFT of the body acceleration signal from the smartphone accelerometer X axis, averaged
42. fBodyAcc.mean.Y              : ... Y axis
43. fBodyAcc.mean.Z              : ... Z axis
44. fBodyAcc.std.X               : The normalized standard deviation of the FFT of the body acceleration signal from the smartphone accelerometer X axis
45. fBodyAcc.std.Y               : ... Y axis
46. fBodyAcc.std.Z               : ... Z axis
47. fBodyAcc.meanFreq.X          : The normalized FFT of the body acceleration signal from the smartphone accelerometer X axis, weighted average
48. fBodyAcc.meanFreq.Y          : ... Y axis
49. fBodyAcc.meanFreq.Z          : ... Z axis
50. fBodyAccJerk.mean.X          : The normalized FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis, averaged
51. fBodyAccJerk.mean.Y          : ... Y axis
52. fBodyAccJerk.mean.Z          : ... Z axis
53. fBodyAccJerk.std.X           : The normalized standard deviation of the FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis
54. fBodyAccJerk.std.Y           : ... Y axis
55. fBodyAccJerk.std.Z           : ... Z axis
56. fBodyAccJerk.meanFreq.X      : The normalized FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis, weighted average
57. fBodyAccJerk.meanFreq.Y      : ... Y axis
58. fBodyAccJerk.meanFreq.Z      : ... Z axis
59. fBodyGyro.mean.X             : The normalized FFT of the body angular velocity from the smartphone gyroscope around the X axis, averaged
60. fBodyGyro.mean.Y             : ... Y axis
61. fBodyGyro.mean.Z             : ... Z axis
62. fBodyGyro.std.X              : The normalized standard deviation of the FFT of the body angular velocity from the smartphone gyroscope around the X axis
63. fBodyGyro.std.Y              : ... Y axis
64. fBodyGyro.std.Z              : ... Z axis
65. fBodyGyro.meanFreq.X         : The normalized FFT of the body angular velocity from the smartphone gyroscope around the X axis, weighted average
66. fBodyGyro.meanFreq.Y         : ... Y axis
67. fBodyGyro.meanFreq.Z         : ... Z axis
68. fBodyAccMag.mean             : The normalized FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer, averaged 
69. fBodyAccMag.std              : The normalized standard devitation of the FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer
70. fBodyAccMag.meanFreq         : The normalized FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer, weighted average
71. fBodyBodyAccJerkMag.mean     : The normalized FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, averaged
72. fBodyBodyAccJerkMag.std      : The normalized standard deviation of the FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer
73. fBodyBodyAccJerkMag.meanFreq : The normalized FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, weighted average
74. fBodyBodyGyroMag.mean        : The normalized FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope, averaged
75. fBodyBodyGyroMag.std         : The normalized standard deviation of the FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope
76. fBodyBodyGyroMag.meanFreq    : The normalized FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope, weighted average
77. fBodyBodyGyroJerkMag.mean    : The normalized FFT of the Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, averaged
78. fBodyBodyGyroJerkMag.std     : The normalized standard deviation of the FFT of the Euclidean norm of the derivative of the body angular velocity from the smartphone gyroscope
79. fBodyBodyGyroJerkMag.meanFreq: The normalized FFT of the Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, weighted average
80. Subject                      : Unique identifier assigned to each subject, an integer between 1 and 30
81. activity                     : Factor w/ 6 levels: 1="WALKING", 2="WALKING_UPSTAIRS", 3="WALKING_DOWNSTAIRS", 4="SITTING", 5="STANDING", 6="LAYING"


# `measurementsMeans` data frame

## Study design

The `measurementsMeans` data frame was generated from `measurements` by
averaging each feature (column) for each activity and each subject (row). It
has thus 30 times 6 = 180 rows and the same number of columns as
`measurements`. Its structure looks like this:

```
Subject     activity    mean.feat1  mean.feat2  ... mean.feat79
-----------+-----------+-----------+-----------+---+-----------
subject01   activity1   xxx         yyy             zzz
subject01   activity2   xxx         yyy             zzz
...
subject30   activity5   xxx         yyy             zzz
subject30   activity6   xxx         yyy             zzz
```

## Code book

The feature columns of the `measurementsMeans` data frame are named exactly
like the ones of `measurements`, except for the `mean.` prefix, and have
exactly the same meaning, but, as explained above, averaged for each subject
and each activity.

Note that, in the `measurementsMeans` data frame, the `Subject` and `activity`
variables appear first.

01. Subject                           : Unique identifier assigned to each subject, an integer between 1 and 30
02. activity                          : Factor w/ 6 levels: 1="WALKING", 2="WALKING_UPSTAIRS", 3="WALKING_DOWNSTAIRS", 4="SITTING", 5="STANDING", 6="LAYING"
03. mean.tBodyAcc.mean.X              : The normalized body acceleration signal from the smartphone accelerometer X axis, averaged
04. mean.tBodyAcc.mean.Y              : ... Y axis
05. mean.tBodyAcc.mean.Z              : ... Z axis
06. mean.tBodyAcc.std.X               : The normalized standard deviation of the body acceleration signal from the smartphone accelerometer X axis
07. mean.tBodyAcc.std.Y               : ... Y axis
08. mean.tBodyAcc.std.Z               : ... Z axis
09. mean.tGravityAcc.mean.X           : The normalized gravity acceleration signal from the smartphone accelerometer X axis, averaged
10. mean.tGravityAcc.mean.Y           : ... Y axis
11. mean.tGravityAcc.mean.Z           : ... Z axis
12. mean.tGravityAcc.std.X            : The normalized standard deviation of the gravity acceleration signal from the smartphone accelerometer X axis
13. mean.tGravityAcc.std.Y            : ... Y axis
14. mean.tGravityAcc.std.Z            : ... Z axis
15. mean.tBodyAccJerk.mean.X          : The normalized derivative of the body acceleration signal from the smartphone accelerometer X axis, averaged
16. mean.tBodyAccJerk.mean.Y          : ... Y axis
17. mean.tBodyAccJerk.mean.Z          : ... Z axis
18. mean.tBodyAccJerk.std.X           : The normalized standard deviation of the derivative of the body acceleration signal from the smartphone accelerometer X axis
19. mean.tBodyAccJerk.std.Y           : ... Y axis
20. mean.tBodyAccJerk.std.Z           : ... Z axis
21. mean.tBodyGyro.mean.X             : The normalized body angular velocity from the smartphone gyroscope around the X axis, averaged
22. mean.tBodyGyro.mean.Y             : ... Y axis
23. mean.tBodyGyro.mean.Z             : ... Z axis
24. mean.tBodyGyro.std.X              : The normalized standard deviation of the body angular velocity from the smartphone gyroscope around the X axis
25. mean.tBodyGyro.std.Y              : ... Y axis
26. mean.tBodyGyro.std.Z              : ... Z axis
27. mean.tBodyGyroJerk.mean.X         : The normalized derivative of the body angular velocity from the smartphone gyroscope around the X axis, averaged
28. mean.tBodyGyroJerk.mean.Y         : ... Y axis
29. mean.tBodyGyroJerk.mean.Z         : ... Z axis
30. mean.tBodyGyroJerk.std.X          : The normalized standard deviation of the derivative of the body angular velocity from the smartphone gyroscope around the X axis
31. mean.tBodyGyroJerk.std.Y          : ... Y axis
32. mean.tBodyGyroJerk.std.Z          : ... Z axis
33. mean.tBodyAccMag.mean             : The normalized Euclidean norm of the body acceleration signal from the smartphone accelerometer, averaged 
34. mean.tBodyAccMag.std              : The normalized standard devitation of the Euclidean norm of the body acceleration signal from the smartphone accelerometer
35. mean.tGravityAccMag.mean          : The normalized Euclidean norm of the gravity acceleration signal from the smartphone accelerometer, averaged
36. mean.tGravityAccMag.std           : The normalized standard devitation of the Euclidean norm of the gravity acceleration signal from the smartphone accelerometer
37. mean.tBodyAccJerkMag.mean         : The normalized Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, averaged
38. mean.tBodyAccJerkMag.std          : The normalized standard deviation of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer
39. mean.tBodyGyroMag.mean            : The normalized Euclidean norm of the body angular velocity from the smartphone gyroscope, averaged
40. mean.tBodyGyroMag.std             : The normalized standard deviation of the Euclidean norm of the body angular velocity from the smartphone gyroscope
41. mean.tBodyGyroJerkMag.mean        : The normalized Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, averaged
42. mean.tBodyGyroJerkMag.std         : The normalized standard deviation of the Euclidean norm of the derivative of the body angular velocity from the smartphone gyroscope
43. mean.fBodyAcc.mean.X              : The normalized FFT of the body acceleration signal from the smartphone accelerometer X axis, averaged
44. mean.fBodyAcc.mean.Y              : ... Y axis
45. mean.fBodyAcc.mean.Z              : ... Z axis
46. mean.fBodyAcc.std.X               : The normalized standard deviation of the FFT of the body acceleration signal from the smartphone accelerometer X axis
47. mean.fBodyAcc.std.Y               : ... Y axis
48. mean.fBodyAcc.std.Z               : ... Z axis
49. mean.fBodyAcc.meanFreq.X          : The normalized FFT of the body acceleration signal from the smartphone accelerometer X axis, weighted average
50. mean.fBodyAcc.meanFreq.Y          : ... Y axis
51. mean.fBodyAcc.meanFreq.Z          : ... Z axis
52. mean.fBodyAccJerk.mean.X          : The normalized FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis, averaged
53. mean.fBodyAccJerk.mean.Y          : ... Y axis
54. mean.fBodyAccJerk.mean.Z          : ... Z axis
55. mean.fBodyAccJerk.std.X           : The normalized standard deviation of the FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis
56. mean.fBodyAccJerk.std.Y           : ... Y axis
57. mean.fBodyAccJerk.std.Z           : ... Z axis
58. mean.fBodyAccJerk.meanFreq.X      : The normalized FFT of the derivative of the body acceleration signal from the smartphone accelerometer X axis, weighted average
59. mean.fBodyAccJerk.meanFreq.Y      : ... Y axis
60. mean.fBodyAccJerk.meanFreq.Z      : ... Z axis
61. mean.fBodyGyro.mean.X             : The normalized FFT of the body angular velocity from the smartphone gyroscope around the X axis, averaged
62. mean.fBodyGyro.mean.Y             : ... Y axis
63. mean.fBodyGyro.mean.Z             : ... Z axis
64. mean.fBodyGyro.std.X              : The normalized standard deviation of the FFT of the body angular velocity from the smartphone gyroscope around the X axis
65. mean.fBodyGyro.std.Y              : ... Y axis
66. mean.fBodyGyro.std.Z              : ... Z axis
67. mean.fBodyGyro.meanFreq.X         : The normalized FFT of the body angular velocity from the smartphone gyroscope around the X axis, weighted average
68. mean.fBodyGyro.meanFreq.Y         : ... Y axis
69. mean.fBodyGyro.meanFreq.Z         : ... Z axis
70. mean.fBodyAccMag.mean             : The normalized FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer, averaged 
71. mean.fBodyAccMag.std              : The normalized standard devitation of the FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer
72. mean.fBodyAccMag.meanFreq         : The normalized FFT of the Euclidean norm of the body acceleration signal from the smartphone accelerometer, weighted average
73. mean.fBodyBodyAccJerkMag.mean     : The normalized FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, averaged
74. mean.fBodyBodyAccJerkMag.std      : The normalized standard deviation of the FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer
75. mean.fBodyBodyAccJerkMag.meanFreq : The normalized FFT of the Euclidean norm of the derivative of the body acceleration signal from the smartphone accelerometer, weighted average
76. mean.fBodyBodyGyroMag.mean        : The normalized FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope, averaged
77. mean.fBodyBodyGyroMag.std         : The normalized standard deviation of the FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope
78. mean.fBodyBodyGyroMag.meanFreq    : The normalized FFT of the Euclidean norm of the body angular velocity from the smartphone gyroscope, weighted average
79. mean.fBodyBodyGyroJerkMag.mean    : The normalized FFT of the Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, averaged
80. mean.fBodyBodyGyroJerkMag.std     : The normalized standard deviation of the FFT of the Euclidean norm of the derivative of the body angular velocity from the smartphone gyroscope
81. mean.fBodyBodyGyroJerkMag.meanFreq: The normalized FFT of the Euclidean norm of the derivative of the body angular velocity signal from the smartphone gyroscope, weighted average
