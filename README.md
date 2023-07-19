There is only one file which is called "run_analysis.R".
The whole process is split into 6 steps:
Step 1: Load data from the text files on drive 
Step 2: create two data frames, one for training data and one for test data by combining the data from the text files
Step 3: Combine the two dataframes from the previous step to one data frame (df_combined) which contains all data
Step 4: extract the mean and standard deviation measurements using the column names and store them in a new data frame
Step 5: replace activity_ID by descriptive activity names as provided in "activity_labels.txt"
Step 6: create a tidy data set (df_final) with the average of each variable for each activity and each subject