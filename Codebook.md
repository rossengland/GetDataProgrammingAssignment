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

## Units of Variable Measures
| Measurement Type | Units |
| ---------------- | ------- |
| acceleration | meters/second^2 (m/s^2) |
| acceleration jerk | meters/second^3 (m/s^3) |
| angular velocity | radians/second (rad/s) |
| angular velocity jerk | radians/second^3 (rad/s^3) |
| acceleration frequency domain signal| meters/second^2 per Hertz (m/s^2 per Hz) |
| acceleration jerk frequency domain signal | meters/second^3 per Hertz (m/s^3 per Hz) |
| angular velocity frequency domain signal | radians/second per Hertz (rad/s per Hz) |
| angular velocity jerk frequency domain signal | radians/second^3 per Hertz (rad/s^3 per Hz) |



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
| timeBodyAccJerk.Mean.Y  | mean body acceleration jerk, Y axis  |
| timeBodyAccJerk.Mean.Z   | mean body acceleration jerk, Z axis  |
| timeBodyAccJerk.Std.X   | standard deviation of body acceleration jerk, X axis |
| timeBodyAccJerk.Std.Y  | standard deviation of body acceleration jerk, Y axis  |
| timeBodyAccJerk.Std.Z   | standard deviation of body acceleration jerk, Z axis  |
| timeBodyGyro.Mean.X   | mean body angular velocity, X axis |
| timeBodyGyro.Mean.Y   | mean body angular velocity, Y axis  |
| timeBodyGyro.Mean.Z   | mean body angular velocity, Z axis |
| timeBodyGyro.Std.X   | standard deviation of body angular velocity, X  axis  |
| timeBodyGyro.Std.Y   | standard deviation of body angular velocity, Y  axis  |
| timeBodyGyro.Std.Z   | standard deviation of body angular velocity, Z  axis |
| timeBodyGyroJerk.Mean.X  | mean body angular velocity jerk, X axis  |
| timeBodyGyroJerk.Mean.Y   | mean body angular velocity jerk, Y axis  |
| timeBodyGyroJerk.Mean.Z   | mean body angular velocity jerk, Z axis  |
| timeBodyGyroJerk.Std.X   | standard deviation of body angular velocity jerk, X axis  |
| timeBodyGyroJerk.Std.Y   | standard deviation of body angular velocity jerk, X axis  |
| timeBodyGyroJerk.Std.Z   | standard deviation of body angular velocity jerk, X axis  |
| timeBodyAccMag.Mean   | mean body acceleration magnitude   |
| timeBodyAccMag.Std   | standard deviation of body acceleration magnitude  |
| timeGravityAccMag.Mean   | mean gravity acceleration magnitude  |
| timeGravityAccMag.Std   | standard deviation of gravity acceleration magnitude  |
| timeBodyAccJerkMag.Mean   | mean body acceleration jerk magnitude  |
| timeBodyAccJerkMag.Std   | standard deviation of body acceleration jerk magnitude  |
| timeBodyGyroMag.Mean   | mean body angular velocity magnitude |
| timeBodyGyroMag.Std   | standard deviation of body angular velocity magnitude |
| timeBodyGyroJerkMag.Mean   | mean body angular velocity jerk magnitude |
| timeBodyGyroJerkMag.Std   | standard deviation of body angular velocity jerk magnitude  |
| freqBodyAcc.Mean.X   | mean body acceleration frequency domain signal, X axis  |
| freqBodyAcc.Mean.Y   | mean body acceleration frequency domain signal, Y axis  |
| freqBodyAcc.Mean.Z   | mean body acceleration frequency domain signal, Z axis  |
| freqBodyAcc.Std.X   | standard deviation of body acceleration frequency domain signal, X axis  |
| freqBodyAcc.Std.Y   | standard deviation of body acceleration frequency domain signal, Y axis  |
| freqBodyAcc.Std.Z   | standard deviation of body acceleration frequency domain signal, Z axis  |
| freqBodyAccJerk.Mean.X   | mean body acceleration jerk frequency domain signal, X axis  |
| freqBodyAccJerk.Mean.Y   | mean body acceleration jerk frequency domain signal, Y axis |
| freqBodyAccJerk.Mean.Z   | mean body acceleration jerk frequency domain signal, Z axis  |
| freqBodyAccJerk.Std.X   | standard deviation of body acceleration jerk frequency domain signal, X axis  |
| freqBodyAccJerk.Std.Y  | standard deviation of body acceleration jerk frequency domain signal, Y axis  |
| freqBodyAccJerk.Std.Z   | standard deviation of body acceleration jerk frequency domain signal, Z axis  |
| freqBodyGyro.Mean.X   | mean body angular velocity frequency domain signal, X axis  |
| freqBodyGyro.Mean.Y   | mean body angular velocity frequency domain signal, Y axis  |
| freqBodyGyro.Mean.Z   | mean body angular velocity frequency domain signal, Z axis  |
| freqBodyGyro.Std.X   | standard deviation of body angular velocity frequency domain signal, X axis  |
| freqBodyGyro.Std.Y   | standard deviation of body angular velocity frequency domain signal, Y axis  |
| freqBodyGyro.Std.Z   | standard deviation of body angular velocity frequency domain signal, Z axis  |
| freqBodyAccMag.Mean   | mean body acceleration magnitude frequency domain signal  |
| freqBodyAccMag.Std   | standard deviation of body accerleration magnitude frequency domain signal   |
| freqBodyBodyAccJerkMag.Mean   | mean body  acceleration jerk magnitude frequency domain signal   |
| freqBodyBodyAccJerkMag.Std  | standard deviation of body acceleration jerk magnitude frequency domain signal |
| freqBodyBodyGyroMag.Mean   | mean body angular velocity magnitude frequency domain signal  |
| freqBodyBodyGyroMag.Std   | standard deviation of body angular velocity magnitude frequency domain signal  |
| freqBodyBodyGyroJerkMag.Mean   | mean body angular velocity jerk magnitude frequency domain signal |
| freqBodyBodyGyroJerkMag.Std   | standard deviation of body angular velocity jerk magnitude frequency domain signal  |
