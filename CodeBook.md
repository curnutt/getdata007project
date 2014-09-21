CODEBOOK
========

This data set summarizes the mean and standard deviations of measurements from the raw data set, by calculating the corresponding means of those means and standard deviations for values associated with each Subject+Activity pair.

Raw data which were not means or standard deviations of measurements are excluded from the resultant data set. This includes "MeanFreq" values, which are not means of direct measurements, and angle(...) values.

There is a row for each Subject and Activity pair. Subject and Activity are used as factors in the data set. Numeric values have no units, as the raw data were normalized. (See https://class.coursera.org/getdata-007/forum/thread?thread_id=201#comment-748.)

Column | Description
------ | -----------
Subject | The identifier for the subject, 1 through 30, from whom the measurements were taken. Taken from the "subjects\_*.txt" files in the raw data set, used as factors in the resulting data set.
Activity | The name of the activity from which the measurements were taken. Taken from the "activity\_labels.txt" file in the raw data set, and associated to the data values via the "y_*.txt" files from the raw data set. There are 6 activity names (used as factors) in the data set.
avgTimeBodyAccelMeanX | The mean of the raw data's tBodyAcc-mean()-X for each Subject and Activity.
avgTimeBodyAccelMeanY | The mean of the raw data's tBodyAcc-mean()-Y for each Subject and Activity.
avgTimeBodyAccelMeanZ | The mean of the raw data's tBodyAcc-mean()-Z for each Subject and Activity.
avgTimeBodyAccelStdDevX | The mean of the raw data's tBodyAcc-std()-X for each Subject and Activity.
avgTimeBodyAccelStdDevY | The mean of the raw data's tBodyAcc-std()-Y for each Subject and Activity.
avgTimeBodyAccelStdDevZ | The mean of the raw data's tBodyAcc-std()-Z for each Subject and Activity.
avgTimeGravityAccelMeanX | The mean of the raw data's tGravityAcc-mean()-X for each Subject and Activity.
avgTimeGravityAccelMeanY | The mean of the raw data's tGravityAcc-mean()-Y for each Subject and Activity.
avgTimeGravityAccelMeanZ | The mean of the raw data's tGravityAcc-mean()-Z for each Subject and Activity.
avgTimeGravityAccelStdDevX | The mean of the raw data's tGravityAcc-std()-X for each Subject and Activity.
avgTimeGravityAccelStdDevY | The mean of the raw data's tGravityAcc-std()-Y for each Subject and Activity.
avgTimeGravityAccelStdDevZ | The mean of the raw data's tGravityAcc-std()-Z for each Subject and Activity.
avgTimeBodyAccelJerkMeanX | The mean of the raw data's tBodyAccJerk-mean()-X for each Subject and Activity.
avgTimeBodyAccelJerkMeanY | The mean of the raw data's tBodyAccJerk-mean()-Y for each Subject and Activity.
avgTimeBodyAccelJerkMeanZ | The mean of the raw data's tBodyAccJerk-mean()-Z for each Subject and Activity.
avgTimeBodyAccelJerkStdDevX | The mean of the raw data's tBodyAccJerk-std()-X for each Subject and Activity.
avgTimeBodyAccelJerkStdDevY | The mean of the raw data's tBodyAccJerk-std()-Y for each Subject and Activity.
avgTimeBodyAccelJerkStdDevZ | The mean of the raw data's tBodyAccJerk-std()-Z for each Subject and Activity.
avgTimeBodyGyroMeanX | The mean of the raw data's tBodyGyro-mean()-X for each Subject and Activity.
avgTimeBodyGyroMeanY | The mean of the raw data's tBodyGyro-mean()-Y for each Subject and Activity.
avgTimeBodyGyroMeanZ | The mean of the raw data's tBodyGyro-mean()-Z for each Subject and Activity.
avgTimeBodyGyroStdDevX | The mean of the raw data's tBodyGyro-std()-X for each Subject and Activity.
avgTimeBodyGyroStdDevY | The mean of the raw data's tBodyGyro-std()-Y for each Subject and Activity.
avgTimeBodyGyroStdDevZ | The mean of the raw data's tBodyGyro-std()-Z for each Subject and Activity.
avgTimeBodyGyroJerkMeanX | The mean of the raw data's tBodyGyroJerk-mean()-X for each Subject and Activity.
avgTimeBodyGyroJerkMeanY | The mean of the raw data's tBodyGyroJerk-mean()-Y for each Subject and Activity.
avgTimeBodyGyroJerkMeanZ | The mean of the raw data's tBodyGyroJerk-mean()-Z for each Subject and Activity.
avgTimeBodyGyroJerkStdDevX | The mean of the raw data's tBodyGyroJerk-std()-X for each Subject and Activity.
avgTimeBodyGyroJerkStdDevY | The mean of the raw data's tBodyGyroJerk-std()-Y for each Subject and Activity.
avgTimeBodyGyroJerkStdDevZ | The mean of the raw data's tBodyGyroJerk-std()-Z for each Subject and Activity.
avgTimeBodyAccelMagnitudeMean | The mean of the raw data's tBodyAccMag-mean() for each Subject and Activity.
avgTimeBodyAccelMagnitudeStdDev | The mean of the raw data's tBodyAccMag-std() for each Subject and Activity.
avgTimeGravityAccelMagnitudeMean | The mean of the raw data's tGravityAccMag-mean() for each Subject and Activity.
avgTimeGravityAccelMagnitudeStdDev | The mean of the raw data's tGravityAccMag-std() for each Subject and Activity.
avgTimeBodyAccelJerkMagnitudeMean | The mean of the raw data's tBodyAccJerkMag-mean() for each Subject and Activity.
avgTimeBodyAccelJerkMagnitudeStdDev | The mean of the raw data's tBodyAccJerkMag-std() for each Subject and Activity.
avgTimeBodyGyroMagnitudeMean | The mean of the raw data's tBodyGyroMag-mean() for each Subject and Activity.
avgTimeBodyGyroMagnitudeStdDev | The mean of the raw data's tBodyGyroMag-std() for each Subject and Activity.
avgTimeBodyGyroJerkMagnitudeMean | The mean of the raw data's tBodyGyroJerkMag-mean() for each Subject and Activity.
avgTimeBodyGyroJerkMagnitudeStdDev | The mean of the raw data's tBodyGyroJerkMag-std() for each Subject and Activity.
avgFreqBodyAccelMeanX | The mean of the raw data's fBodyAcc-mean()-X for each Subject and Activity.
avgFreqBodyAccelMeanY | The mean of the raw data's fBodyAcc-mean()-Y for each Subject and Activity.
avgFreqBodyAccelMeanZ | The mean of the raw data's fBodyAcc-mean()-Z for each Subject and Activity.
avgFreqBodyAccelStdDevX | The mean of the raw data's fBodyAcc-std()-X for each Subject and Activity.
avgFreqBodyAccelStdDevY | The mean of the raw data's fBodyAcc-std()-Y for each Subject and Activity.
avgFreqBodyAccelStdDevZ | The mean of the raw data's fBodyAcc-std()-Z for each Subject and Activity.
avgFreqBodyAccelJerkMeanX | The mean of the raw data's fBodyAccJerk-mean()-X for each Subject and Activity.
avgFreqBodyAccelJerkMeanY | The mean of the raw data's fBodyAccJerk-mean()-Y for each Subject and Activity.
avgFreqBodyAccelJerkMeanZ | The mean of the raw data's fBodyAccJerk-mean()-Z for each Subject and Activity.
avgFreqBodyAccelJerkStdDevX | The mean of the raw data's fBodyAccJerk-std()-X for each Subject and Activity.
avgFreqBodyAccelJerkStdDevY | The mean of the raw data's fBodyAccJerk-std()-Y for each Subject and Activity.
avgFreqBodyAccelJerkStdDevZ | The mean of the raw data's fBodyAccJerk-std()-Z for each Subject and Activity.
avgFreqBodyGyroMeanX | The mean of the raw data's fBodyGyro-mean()-X for each Subject and Activity.
avgFreqBodyGyroMeanY | The mean of the raw data's fBodyGyro-mean()-Y for each Subject and Activity.
avgFreqBodyGyroMeanZ | The mean of the raw data's fBodyGyro-mean()-Z for each Subject and Activity.
avgFreqBodyGyroStdDevX | The mean of the raw data's fBodyGyro-std()-X for each Subject and Activity.
avgFreqBodyGyroStdDevY | The mean of the raw data's fBodyGyro-std()-Y for each Subject and Activity.
avgFreqBodyGyroStdDevZ | The mean of the raw data's fBodyGyro-std()-Z for each Subject and Activity.
avgFreqBodyAccelMagnitudeMean | The mean of the raw data's fBodyAccMag-mean() for each Subject and Activity.
avgFreqBodyAccelMagnitudeStdDev | The mean of the raw data's fBodyAccMag-std() for each Subject and Activity.
avgFreqBodyAccelJerkMagnitudeMean | The mean of the raw data's fBodyBodyAccJerkMag-mean() for each Subject and Activity.
avgFreqBodyAccelJerkMagnitudeStdDev | The mean of the raw data's fBodyBodyAccJerkMag-std() for each Subject and Activity.
avgFreqBodyGyroMagnitudeMean | The mean of the raw data's fBodyBodyGyroMag-mean() for each Subject and Activity.
avgFreqBodyGyroMagnitudeStdDev | The mean of the raw data's fBodyBodyGyroMag-std() for each Subject and Activity.
avgFreqBodyGyroJerkMagnitudeMean | The mean of the raw data's fBodyBodyGyroJerkMag-mean() for each Subject and Activity.
avgFreqBodyGyroJerkMagnitudeStdDev | The mean of the raw data's fBodyBodyGyroJerkMag-std() for each Subject and Activity.

Explanations of how these values were derived are in the [README.md](https://github.com/curnutt/getdata007project/blob/master/README.md) file.

To aid in understanding the origin of the data, here is the description of the raw data, from features\_info.txt in the raw data set:
> Feature Selection 
> =================
> 
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
> 
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
> 
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> 
> tBodyAcc-XYZ
> tGravityAcc-XYZ
> tBodyAccJerk-XYZ
> tBodyGyro-XYZ
> tBodyGyroJerk-XYZ
> tBodyAccMag
> tGravityAccMag
> tBodyAccJerkMag
> tBodyGyroMag
> tBodyGyroJerkMag
> fBodyAcc-XYZ
> fBodyAccJerk-XYZ
> fBodyGyro-XYZ
> fBodyAccMag
> fBodyAccJerkMag
> fBodyGyroMag
> fBodyGyroJerkMag
> 
> The set of variables that were estimated from these signals are: 
> 
> mean(): Mean value
> std(): Standard deviation
> mad(): Median absolute deviation 
> max(): Largest value in array
> min(): Smallest value in array
> sma(): Signal magnitude area
> energy(): Energy measure. Sum of the squares divided by the number of values. 
> iqr(): Interquartile range 
> entropy(): Signal entropy
> arCoeff(): Autorregresion coefficients with Burg order equal to 4
> correlation(): correlation coefficient between two signals
> maxInds(): index of the frequency component with largest magnitude
> meanFreq(): Weighted average of the frequency components to obtain a mean frequency
> skewness(): skewness of the frequency domain signal 
> kurtosis(): kurtosis of the frequency domain signal 
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
> angle(): Angle between to vectors.
> 
> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
> 
> gravityMean
> tBodyAccMean
> tBodyAccJerkMean
> tBodyGyroMean
> tBodyGyroJerkMean
> 
> The complete list of variables of each feature vector is available in 'features.txt'



Here is the description of how the raw data were gathered, from the README.txt in the raw data set:
> ==================================================================
> Human Activity Recognition Using Smartphones Dataset
> Version 1.0
> ==================================================================
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Non Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Genoa, Italy.
> activityrecognition@smartlab.ws
> www.smartlab.ws
> ==================================================================
> 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
> 
> For each record it is provided:
> ======================================
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.
> 
> The dataset includes the following files:
> =========================================
> 
> - 'README.txt'
> 
> - 'features_info.txt': Shows information about the variables used on the feature vector.
> 
> - 'features.txt': List of all features.
> 
> - 'activity_labels.txt': Links the class labels with their activity name.
> 
> - 'train/X_train.txt': Training set.
> 
> - 'train/y_train.txt': Training labels.
> 
> - 'test/X_test.txt': Test set.
> 
> - 'test/y_test.txt': Test labels.
> 
> The following files are available for the train and test data. Their descriptions are equivalent. 
> 
> - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
> 
> - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
> 
> - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
> 
> - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
> 
> Notes: 
> ======
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.
> 
> For more information about this dataset contact: activityrecognition@smartlab.ws
> 
> License:
> ========
> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
> 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> 
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> 
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
