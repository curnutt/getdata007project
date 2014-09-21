library(data.table)
library(plyr)

# Behind a proxy, downloading from within the script doesn't always work well.
# It's easier to manually download the file and unzip it.
# If one were exposed to the Internet, the following three lines might be useful
# if uncommented:
#         fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#         download.file(fileURL,"UCI_0HAR_Dataset.zip")
#         unzip("UCI_0HAR_Dataset.zip")

# Read the needed data files
activities <- read.table("activity_labels.txt")
features <- read.table("features.txt")
testsubj <- read.table("test/subject_test.txt")
testx <- read.table("test/X_test.txt")
testy <- read.table("test/y_test.txt")
trainsubj <- read.table("train/subject_train.txt")
trainx <- read.table("train/X_train.txt")
trainy <- read.table("train/y_train.txt")

# Merge the training and test sets to create one data set
subjects <- rbind(trainsubj,testsubj)
x_combined <- rbind(trainx, testx)
y <- rbind(trainy, testy)

# Per http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# we should now have 10299 combined instances (rows in x_combined, y and subjects)

# Extract variables which contain a mean or standard deviation
# for a measurement
# 
# (Observation of variable names indicates that this can be done by looking
# for variables which contain 'mean(' or 'std('; this avoids angles computed
# from means, and avoids meanFreq values which are weighted averages of
# several observations and not, in themselves, means of measurements.)
#
featurefilter <- grep("mean\\(|std\\(",features$V2)
feat <- features[featurefilter,]
x <- x_combined[,featurefilter]

# Add activity names to x, based on the activity numbers in y
y <- join(y, activities, by="V1")
x <- cbind(as.factor(y$V2), x)

# Although instructions don't explicitly include this, add subject as well - 
# otherwise the data isn't tidy, as long as subject is in a separate data
# structure with no index to link the two
x <- cbind(as.factor(subjects$V1), x)

# Following the guidelines given at https://class.coursera.org/getdata-007/forum/thread?thread_id=249
# to provide "meaningful" column names, we'll do the following:
# - change the apparent typo "BodyBody" to "Body"
# - Remove () and - symbols
# - Expand cryptic abbreviations to full words, or at least to slightly
#   less cryptic abbreviations which don't make the names *too* long...
# - since everything else is in Proper Case, change "mean" to "Mean"
# - replace t and f at the beginning of the name with Time and Freq
#
feat$V2 <- sub("BodyBody", "Body", feat$V2)
feat$V2 <- gsub("[()-]", "", feat$V2)
feat$V2 <- sub("Acc", "Accel", feat$V2)
feat$V2 <- sub("Mag", "Magnitude", feat$V2)
#feat$V2 <- sub("Gyro", "Gyroscope", feat$V2)
feat$V2 <- sub("std", "StdDev", feat$V2) # this abbreviation should be sufficient?
feat$V2 <- gsub("mean", "Mean", feat$V2)
feat$V2 <- sub("^t", "Time", feat$V2)
feat$V2 <- sub("^f", "Freq", feat$V2)

# Now apply those labels to our data frame x
names(x) <- c("Subject","Activity",feat$V2)

# For each combination of Subject and Activity,
# find the mean for each of the numeric columns
mydata <- ddply(x, .(Subject, Activity), numcolwise(mean))

# change the column names to reflect the fact that these are now averages
# of the original values...
names(mydata)[3:68] <- paste("avg",names(mydata)[3:68],sep="")

write.table(mydata, file="averages.txt", row.names=FALSE)