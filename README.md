---
Title: Tidying Up the Human Activity Recognition Using Smartphone Dataset
Author: Ross England
Date: 17 January, 2025
---


# Tidying Up the Human Activity Recognition Using Smartphone Dataset

## Background
This project was completed as a ogramming assignment for the Johns Hopkins 
Coursera Course, Getting and Cleaning Data. It creates an Rscript, run_analysis.R,
that when run produces a tidy dataset of mean and standard deviations of
measurements taken using the accelerometer and gyroscope of a smartphone
(Samsung Galaxy S II)
for each experimental subject (numbered 1 - 30) and activity (walking,
walking upstairs, walking downstairs, sitting, standing, laying).

## Experimental Details
The following details are from the README.txt file of the UCI HAR Dataset.

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial
angular velocity at a constant rate of 50Hz. The experiments have been
video-recorded to label the data manually. The obtained dataset has been
randomly partitioned into two sets, where 70% of the volunteers was selected
for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force
is assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.[1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass
Hardware-Friendly Support Vector Machine. International Workshop of Ambient
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012





