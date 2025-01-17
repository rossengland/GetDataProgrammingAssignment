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

##Preparing to use the analysis file, run_analysis.R
To function properly, run_analysis.R must be run in R R 4.4.2+ on MacOS operating
system (directory labels in the code are specific for file paths on a Mac system).
The unzipped, unaltered "UCI HAR Dataset" folder
(zip file available at  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
must be present in the current working directory. 

##Explanation of code procedures in the analysis file, run_analysis.R
run_analysis.R contains code that will (1) merge the training and test data sets
(along with subject and activity label sets) into a single data set; (2) extract
a smaller data set consisting only of the mean (Mean) and standard deviation
(Std) variables for each measurement type; (3) apply descriptive names to 
numerically-coded activity labels; (4) apply descriptive labels to the variables
(i.e., column names) using "tidy data" principles; and (5) create a separate dataset
from the compiled data that contains a single mean value for each variable per 
subject-activity. 

run_analysis.R code procedures by line: 


Lines 14 - 24: read the relevant space-sepaarated .txt files
(X_test.txt, y_test.txt,subject_test.txt, X_train.txt, y_train.txt,
subject_train.txt) into R using the read.table function (header = FALSE, as
these data files do not directly contain variable names). The features.txt file
is also read into an object, features, which contains the variable names for
X_test and X_train. 

Lines 26 - 39: merge the resulting data frames into a single data frame ('data'),
consisting of 10,299 observations of 563 variables,
and apply column names using "subject" for column 1, "activitylabel" for column 2,
and the features object to name columns 3 - 563.

Lines 41 - 44: utilize the the grep function to generate a vector (meanstd) of all
all variables named with an instance of "mean()" or "std()" and subsets the 'data'
object to a data frame consisting of only those variable (as well as columns 1-2
of subject and activitylabel information). The resulting 'data' object consists of
10,299 observations of 68 variables. 

Lines 47 - 49: replace numeric activity label codes (1 - 6) contained in the
'activitylabel' variable with corresponding descriptive activity labels (walking,
walkingupstairs, walkingdownstairs, sitting, standing, laying). 

Lines 51 - 56: utilize regular expressions and the gsub function to apply
new descriptive names to each variable consistent with "tidy data" principles. 
Among the changes include replacing "t" and "f" at the beginning of each variable
name with the more descriptive "time" and "freq" (frequency), removing unncessary
parentheses, and changing from hyphen separators to dot separators. 

Lines 58 - 73: employ a "split-apply-combine" approach to split the data according
to subject-activitylabel, apply a function to result the column means of the 
measured variables (columns 3 - 68), and re-combine the results (using the rbind
function) to generate (from the larger dataset 'data') a separate dataset,
'tidydata', that contains a single mean value for each variable per subject-activity

Lines 74-76: clean up the 'tidydata' object by reclassingit as a data frame, 
removing unnecessary row names, and coercing the measured variable values
back to numeric class objects (from character class objects).

Line 78: utlizes the write.table function to generate a space-seaparated file
of the 'tidydata' object in the working directory, tidydata.txt.

