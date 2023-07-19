# How to Use

There is only one file which is called "run_analysis.R". The whole process is split into 6 steps:

1. **Step 1**: Load data from the text files on drive (the files can be downloaded using the link below).

2. **Step 2**: Create two data frames, one from the training data and one from the test data by combining the data from the text files.

3. **Step 3**: Combine the two data frames from the previous step to one data frame (df_combined) which contains all data.

4. **Step 4**: Extract the mean and standard deviation measurements using the column names and store them in a new data frame.

5. **Step 5**: Replace activity_ID by descriptive activity names as provided in "activity_labels.txt".

6. **Step 6**: Create a tidy data set (df_final) with the average of each variable for each activity and each subject.

The original data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
