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
| timeBodyAcc.Mean.X| mean body acceleration (derived in time), X directional vector  |
| timeBodyAcc.Mean.Y   | mean body acceleration (derived in time), Y directional vector |
| timeBodyAcc.Mean.Z   | mean body acceleration (derived in time), Z directional vector  |
| timeBodyAcc.Std.X  | standard deviation of body acceleration (derived in time), X directional vector  |
| timeBodyAcc.Std.Y   | standard deviation of body acceleration (derived in time), X directional vector  |
| timeBodyAcc.Std.Z   | standard deviation of body acceleration (derived in time), X directional vector  |
| timeGravityAcc.Mean.X   | Content Cell  |
| timeGravityAcc.Mean.Y   | Content Cell  |
| timeGravityAcc.Mean.Z   | Content Cell  |
| timeGravityAcc.Std.X   | Content Cell  |
| timeGravityAcc.Std.Y   | Content Cell  |
| timeGravityAcc.Std.Z  | Content Cell  |
| timeBodyAccJerk.Mean.X   | Content Cell  |
| timeBodyAccJerk.Mean.Y  | Content Cell  |
| timeBodyAccJerk.Mean.Z   | Content Cell  |
| timeBodyAccJerk.Std.X   | Content Cell  |
| timeBodyAccJerk.Std.Y  | Content Cell  |
| timeBodyAccJerk.Std.Z   | Content Cell  |
| timeBodyGyro.Mean.X   | Content Cell  |
| timeBodyGyro.Mean.Y   | Content Cell  |
| timeBodyGyro.Mean.Z   | Content Cell  |
| timeBodyGyro.Std.X   | Content Cell  |
| timeBodyGyro.Std.Y   | Content Cell  |
| timeBodyGyro.Std.Z   | Content Cell  |
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
