# CodeBook

The original data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
A full description is available [at the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals `tAcc-XYZ` and `tGyro-XYZ`. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals `tBodyAcc-XYZ` and `tGravityAcc-XYZ` using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals `tBodyAccJerk-XYZ` and `tBodyGyroJerk-XYZ`. Also, the magnitude of these three-dimensional signals were calculated using the Euclidean norm `tBodyAccMag`, `tGravityAccMag`, `tBodyAccJerkMag`, `tBodyGyroMag`, `tBodyGyroJerkMag`.

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing `fBodyAcc-XYZ`, `fBodyAccJerk-XYZ`, `fBodyGyro-XYZ`, `fBodyAccJerkMag`, `fBodyGyroMag`, `fBodyGyroJerkMag`. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y, and Z directions.

Additionally, it contains the "Subject_ID", which is the ID for each individual participant (1-30) as well as the "Activity_ID" which is one of:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The set of variables that were estimated from these signals are:

- `mean()`: Mean value
- `std()`: Standard deviation
- `mad()`: Median absolute deviation 
- `max()`: Largest value in array
- `min()`: Smallest value in array
- `sma()`: Signal magnitude area
- `energy()`: Energy measure. Sum of the squares divided by the number of values. 
- `iqr()`: Interquartile range 
- `entropy()`: Signal entropy
- `arCoeff()`: Autorregresion coefficients with Burg order equal to 4
- `correlation()`: Correlation coefficient between two signals
- `maxInds()`: Index of the frequency component with the largest magnitude
- `meanFreq()`: Weighted average of the frequency components to obtain a mean frequency
- `skewness()`: Skewness of the frequency domain signal 
- `kurtosis()`: Kurtosis of the frequency domain signal 
- `bandsEnergy()`: Energy of a frequency interval within the 64 bins of the FFT of each window
- `angle()`: Angle between two vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the `angle()` variable:

- `gravityMean`
- `tBodyAccMean`
- `tBodyAccJerkMean`
- `tBodyGyroMean`
- `tBodyGyroJerkMean`

The complete list of variables of each feature vector is available in 'features.txt'.
