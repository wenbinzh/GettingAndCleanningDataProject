Getting and Cleanning Data Projecct
===================================

run_analysis.R works on data collected from the accelerometers from the Samsung Galaxy S smartphone from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

run_analysis.R will do the following: 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In order to run the script you need to put it in the same directory where UCI HAR Dataset is contained. So if the path to UCI HAR Dataset is C:\Data\UCI HAR Dataset, you may need to put run_analysis.R in C:\Data to make it work correctly.

The output of the script will be two data sets. One is called "data" which is a tidy data set with features on the mean and standard deviation for each measurement. Another is called "data_mean" which is a tidy data set with the average of each variable for each activity and each subject.

The dataset includes the following files:

- 'README.txt'
- 'CodeBook.txt': Shows information about the variables used on the feature vector.
- 'TidyData.txt': Tidy data set with features on the mean and standard deviation for each measurement.
- 'TidyData_mean.txt': Tidy data set with the average of each variable for each activity and each subject.
