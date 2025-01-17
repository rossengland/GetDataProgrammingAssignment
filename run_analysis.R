#This file contains code that will read in the data from the UCI HAR Dataset of 
#accelerometer data collected from the Samsung Galanxy S smartphone. The code
#(1) merges the training and test sets to create one data set
#(2) Extracts only the measurements on the mean and standard deviation for each
#measurement
#(3) Uses descriptive activity names to name the activities in the data set
#(4) Appropriately labels the data set with descriptive variable names
#(5) From the data set in step 4, creates a second, independent tidy data set
#the average variable for each activity and each subject


##read in the relevant data using the read.table function and merge with cbind, rbind

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

#read in column names and convert to a character vector
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
names(features) <- c("num", "features") #rename columns 

#merge the three test data sets by adding subject_test and y_test as columns 
#at the beginning of the X_test data set
test <- cbind(subject_test, y_test, X_test)

#merge the three train data sets by adding subject_train and y_train as columns 
#at the beginning of the X_train data set
train <- cbind(subject_train, y_train, X_train)

#rbind test and train datasets to form a single large data table
data <- rbind(test, train)

#rename columns with subject, activitylabel, and the column names in the features.txt file
names(data)[1:2] <- c("subject", "activitylabel")
names(data)[3:563] <- features$features

##extract only the measurements on the mean and standard deviation for each measurement
meanstd <- grep("mean\\(\\)|std\\(\\)",names(data)) #use grep to make a vector of columns containing "mean()" or "std()"
meanstd <- c(1,2,meanstd) #add columns 1 and 2 to the beginning of meanstd
data <- data[ ,meanstd]


##Use descriptive activity names to rename the activities in the data set
activitycode <- c(walking = 1, walkingupstairs = 2, walkingdownstairs = 3, sitting = 4, standing = 5, laying = 6)
data$activitylabel <- names(activitycode)[match(data$activitylabel,activitycode)]

##label the data set with descriptive variable names
names(data) <- gsub("^t", "time", names(data)) #replaces t with more descriptive "time"
names(data) <- gsub("^f", "freq", names(data)) #replaces f with more descriptive "freq"
names(data) <- gsub("-mean\\(\\)", ".Mean", names(data)) #replaces -mean() with tidier ".Mean"
names(data) <- gsub("-std\\(\\)", ".Std", names(data)) #replaces -std() with tidier ".Std"
names(data) <- gsub("-",".",names(data)) #replaces hyphen with tidier "." to indicate X, Y, Z axes

##From the data set in step 4, creates a second, independent tidy data set
##the average variable for each activity and each subject

#split: split the data frame by subject/activity label
datasplit <- split(data, f = list(data$activitylabel, data$subject))

colmean <- function(x) {              #apply: initialize a function that takes the 
  id <- x[1,1:2]                      #column means of all measured values for
  means <- colMeans(x[,3:68])         #each split of the data
  id_means <- c(id, means)
  invisible(id_means)
}
meanlist <- lapply(datasplit, colmean) 
meanlist <- lapply(meanlist, unlist)

tidydata <- do.call("rbind", meanlist) #combine: rbind each new vector in meanlist
tidydata <- as.data.frame(tidydata) #make into a data frame
rownames(tidydata) <- NULL #remove rownames
tidydata[,3:68] <- as.numeric(unlist(tidydata[,3:68])) #coerce measured values to class numeric

write.table(tidydata, file ="tidydata.txt", row.name=FALSE) #produce separate .txt file of tidy data set