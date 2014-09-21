getdata007project
=================

This github implements the Project assignment for the Getting and Cleaning Data course, per https://class.coursera.org/getdata-007/human_grading/view/courses/972585/assessments/3/submissions

File | Description
---- | -----------
[run_analysis.R](https://github.com/curnutt/getdata007project/blob/master/run_analysis.R) | This script reads the raw data set from the assignment instructions, and outputs a "tidy" data set. It assumes that the raw data set has already been downloaded and unzipped into the current working directory, maintaining the folder structure from the original zip file (i.e. "train" and "test" subdirectories). It requires the data.table and plyr packages.
[averages.txt](https://github.com/curnutt/getdata007project/blob/master/averages.txt) | This is the "tidy" output of run_analysis.R. It can be read into R using ```read.table("averages.txt")```.
[CodeBook.md](https://github.com/curnutt/getdata007project/blob/master/CodeBook.md) | This markdown file describes the "tidy" data set in averages.txt.

The script takes the following steps to read and transform the data:

**Step 1.1: Read the input**

Input File | Data Description
---------- | ----------------
activity\_labels.txt | Provides a key for mapping from activity numbers in train/y\_train.txt and test/y\_test.txt to human-readable names for the activities.
features.txt | Provides a list of names for the numeric columns in the data set.
test/X\_test.txt | Provides numeric data values for the data set; each row will match with a corresponding subject identification number and activity name from other data files. Combines with train/X\_train.txt to give the full set of numeric data.
test/y\_test.txt | Gives a list of activity numbers corresponding to each row of numeric values in test/X\_test.txt.
test/subject\_test.txt | Gives a list of subject identification numbers corresponding to each row of numeric values in test/X\_test.txt.
train/X\_train.txt | Provides the rest of the numeric data values for the data set, equivalent to test/X\_test.txt.
train/y\_train.txt | Gives activity numbers corresponding to each row of train/X\_train.txt.
train/subject\_train.txt | Gives subject identification numbers corresponding to each row of train/X\_train.txt.

**Step 1.2: Merge the test and training data sets**

The subject, X and y data read from the test and train subdirectories are combined into merged subject, X and y data structures.

**Step 2: Select only data corresponding to mean and standard deviations for measurements**

We search the names from features.txt for "mean" and "std" (standard deviation) names.
We don't include values with "meanFreq" because that appears to be a value derived from other derived values, rather than a mean of measurements. (features\_info.txt in the original data set describes these as "Weighted average of the frequency components to obtain a mean frequency")
We don't include values with "angle(...)" even if it includes the word "Mean", because those are calculated angels, and do not represent means of measurement values. (features\_info.txt describes them as "Angle between to vectors.")

**Step 3.1: Associate the activity names to the numeric data**

We assume that the values from train/y\_train.txt and test/y\_test.txt provide activity numbers which correspond row-by-row to the rows from train/X\_train.txt and test/X\_test.txt, and map to the activity names in activity\_labels.txt... so we use the "y" numbers to add activity names from activity\_labels.txt to each row of numeric data in the data set.

**Step 3.2: Associate subject identifiers to the numeric data**

Although it's not explicitly part of the instructions, since we need subject identifiers for the final step, we associate the identifiers from test/subject\_test.txt and train/subject\_train.txt to the corresponding rows in the data set.

**Step 4: Modify the data names to be more readily descriptive**

Per the discussion thread in https://class.coursera.org/getdata-007/forum/thread?thread_id=249, we've chosen to take the following steps to make the data names "descriptive":
* Change the apparent typo "BodyBody" to "Body"
* Remove non-alphanumeric symbols
* Expand some of the more cryptic abbreviations to less cryptic abbreviations, or in some cases full words, i.e.
    * Acc => Accel      (abbreviating "Acceleration")
    * Mag => Magnitude
    * std => StdDev     (abbreviating "Standard Deviation")
    * t (at start of name) => Time
    * f (at start of name) => Freq    (abbreviating "Frequency")
* For easier readability, we maintain capital letters for the beginnings of words... and capitalize the "M" in "mean" to be consistent

We then apply the resulting data names to the columns of the data set.
For the new subject identifier and activity name columns, we use the names "Subject" and "Activity" respectively.

**Step 5.1: Create a new data set with the means of each numeric value from Step 2 grouped by Subject (identifiers from Step 3.2) and Activity (names from Step 3.1)**

The code uses ddply to find the mean of each numeric column, grouped by Subject and Activity.
To clarify that the resulting values are means (or "averages") of other values, we change the names of the columns in the new data set to prepend "avg" to each numeric value.

**Step 5.2: Write the new data set to a file**

We output the new "tidy" data set to the file "averages.txt" using the write.table() function, excluding row labels.

**Step 5.3: There is no step 5.3, we are done**

No further action is taken, as we can defend the resulting "averages.txt" file as a tidy data set in any barfight where the subject arises.  Particularly if we can cite https://class.coursera.org/getdata-007/forum/thread?thread_id=214, where a TA for the course explicitly told us that it's OK for "tidy" data to look messy to a human being.




Below are quoted the original assigned Project instructions, from https://class.coursera.org/getdata-007/human_grading/view/courses/972585/assessments/3/submissions :
> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
> 
> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
> 
> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
> 
> Here are the data for the project: 
> 
> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
> 
> You should create one R script called run_analysis.R that does the following. 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
> 
> Good luck!
