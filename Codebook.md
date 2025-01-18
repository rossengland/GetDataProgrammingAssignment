---
Title: Codebook for variables in the tidydata.txt file
Author: Ross England
Date: 17 January, 2025
---

## Codebook for variables in the tidydata.txt file
This codebook contains explanations of the tidydate.txt file generated from the UCI HAR Dataset by the run_analyis.R file. 
For additional details of the dataset and the functions of the run_analysis.R file, please see README.md. The current codebook
updates the previous codebook for the UCI HAR Dataset (which can be found in the features_info.txt file within the UCI HAR Dataset).

## Explanation of generation of variable measurements and variable naming conventions
The variables for tidydata.txt come from the accelerometer and gyroscope 3-axial raw signals timeAcc.XYZ and timeGyro.XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc.XYZ and timeGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk.XYZ and timeBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc.XYZ, freqBodyAccJerk.XYZ, freqBodyGyro.XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The original UCI HAR Dataset contained the means and standard deviations of multiple reads from each subject-activity combination. The tidydata.txt data set has been simplified to include the mean of these mean values(.Mean) and the mean of the standard deviation values (.Std) for each subject-activity combination. Thus each subject-activity combination occupies a single row/observation of the tidydata.txt data set.

## Table of Variable Names and Descriptions


| Variable Name     | Description of variable |
| ------------------| ---------------------------------------------------------- |
| subject           | subject identification number, integer ranging from 1 - 30  |
| activitylabel     | descriptor of activity of subject at time of sensor readings  |
| timeBodyAcc.Mean.X| mean body acceleration, X directional axis  |
| timeBodyAcc.Mean.Y   | mean body acceleration, Y directional axis |
| timeBodyAcc.Mean.Z   | mean body acceleration, Z directional axis |
| timeBodyAcc.Std.X  | standard deviation of body acceleration, X axis  |
| timeBodyAcc.Std.Y   | standard deviation of body acceleration, Y axis  |
| timeBodyAcc.Std.Z   | standard deviation of body acceleration, Z axis  |
| timeGravityAcc.Mean.X   | mean gravity acceleration, X axis  |
| timeGravityAcc.Mean.Y   | mean gravity acceleration, Y axis  |
| timeGravityAcc.Mean.Z   | mean gravity acceleration, Z axis  |
| timeGravityAcc.Std.X   | standard deviation of gravity acceleration, X axis |
| timeGravityAcc.Std.Y   | standard deviation of gravity acceleration, Y axis|
| timeGravityAcc.Std.Z  | standard deviation of gravity acceleration, Z axis  |
| timeBodyAccJerk.Mean.X   | mean body acceleration jerk (derived in time), X axis  |
| timeBodyAccJerk.Mean.Y  | mean body acceleration jerk (derived in time), Y axis  |
| timeBodyAccJerk.Mean.Z   | mean body acceleration jerk (derived in time), Z axis  |
| timeBodyAccJerk.Std.X   | standard deviation of body acceleration jerk (derived in time), X axis |
| timeBodyAccJerk.Std.Y  | standard deviation of body acceleration jerk (derived in time), Y axis  |
| timeBodyAccJerk.Std.Z   | standard deviation of body acceleration jerk (derived in time), Z axis  |
| timeBodyGyro.Mean.X   | mean body angular velocity, X axis |
| timeBodyGyro.Mean.Y   | mean body angular velocity, Y axis  |
| timeBodyGyro.Mean.Z   | mean body angular velocity, Z axis |
| timeBodyGyro.Std.X   | standard deviation of body angular velocity, X  axis  |
| timeBodyGyro.Std.Y   | standard deviation of body angular velocity, Y  axis  |
| timeBodyGyro.Std.Z   | standard deviation of body angular velocity, Z  axis |
| timeBodyGyroJerk.Mean.X  | Content Cell  |
| timeBodyGyroJerk.Mean.Y   | Content Cell  |
| timeBodyGyroJerk.Mean.Z   | Content Cell  |
| timeBodyGyroJerk.Std.X   | Content Cell  |
| timeBodyGyroJerk.Std.Y   | Content Cell  |
| timeBodyGyroJerk.Std.Z   | Content Cell  |
| timeBodyAccMag.Mean   | Content Cell  |
| timeBodyAccMag.Std   | Content Cell  |
| timeGravityAccMag.Mean   | Content Cell  |
| timeGravityAccMag.Std   | Content Cell  |
| timeBodyAccJerkMag.Mean   | Content Cell  |
| timeBodyAccJerkMag.Std   | Content Cell  |
| timeBodyGyroMag.Mean   | Content Cell  |
| timeBodyGyroMag.Std   | Content Cell  |
| timeBodyGyroJerkMag.Mean   | Content Cell  |
| timeBodyGyroJerkMag.Std   | Content Cell  |
| freqBodyAcc.Mean.X   | Content Cell  |
| freqBodyAcc.Mean.Y   | Content Cell  |
| freqBodyAcc.Mean.Z   | Content Cell  |
| freqBodyAcc.Std.X   | Content Cell  |
| freqBodyAcc.Std.Y   | Content Cell  |
| freqBodyAcc.Std.Z   | Content Cell  |
| freqBodyAccJerk.Mean.X   | Content Cell  |
| freqBodyAccJerk.Mean.Y   | Content Cell  |
| freqBodyAccJerk.Mean.Z   | Content Cell  |
| freqBodyAccJerk.Std.X   | Content Cell  |
| freqBodyAccJerk.Std.Y  | Content Cell  |
| freqBodyAccJerk.Std.Z   | Content Cell  |
| freqBodyGyro.Mean.X   | Content Cell  |
| freqBodyGyro.Mean.Y   | Content Cell  |
| freqBodyGyro.Mean.Z   | Content Cell  |
| freqBodyGyro.Std.X   | Content Cell  |
| freqBodyGyro.Std.Y   | Content Cell  |
| freqBodyGyro.Std.Z   | Content Cell  |
| freqBodyAccMag.Mean   | Content Cell  |
| freqBodyAccMag.Std   | Content Cell  |
| freqBodyBodyAccJerkMag.Mean   | Content Cell  |
| freqBodyBodyAccJerkMag.Std  | Content Cell  |
| freqBodyBodyGyroMag.Mean   | Content Cell  |
| freqBodyBodyGyroMag.Std   | Content Cell  |
| freqBodyBodyGyroJerkMag.Mean   | Content Cell  |
| freqBodyBodyGyroJerkMag.Std   | Content Cell  |
