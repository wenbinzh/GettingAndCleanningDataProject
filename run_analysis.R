x_train <- read.csv("./UCI HAR Dataset/train/x_train.txt", sep="", header=FALSE)
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
x_test <- read.csv("./UCI HAR Dataset/test/x_test.txt", sep="", header=FALSE)
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
train <- cbind(x_train, y_train, subject_train)
test <- cbind(x_test, y_test, subject_test)
data <- rbind(train, test)
features <- as.character(read.csv("./UCI HAR Dataset/features.txt",sep="",header=FALSE)[, 2])
features_filtered <- c(grep("mean\\(\\)|std\\(\\)",features),ncol(data) - 1,ncol(data))
data <- data[, features_filtered]
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)[, 2]
data[, ncol(data) - 1] = activity_labels[data[, ncol(data) - 1]]
names(data) <- c(features, "activity_label", "subject_id")[features_filtered]
data_mean <- aggregate(. ~ subject_id + activity_label, FUN=mean, data=data)