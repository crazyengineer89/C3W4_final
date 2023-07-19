#Step 1: Load data from text files on drive 

x_train_raw <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train_raw <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train_raw <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test_raw <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test_raw <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test_raw <- read.table("./UCI HAR Dataset/test/subject_test.txt")

feature_names <- read.table("./UCI HAR Dataset/features.txt")
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Step 2: create two data frames, one for training data and one for test data
df_train <- cbind(do.call(rbind, Map(data.frame, A=subject_train_raw, B=y_train_raw)), x_train_raw)
colnames(df_train) <- c("Subject_ID", "Activity_ID", feature_names[,2])
df_test <- cbind(do.call(rbind, Map(data.frame, A=subject_test_raw, B=y_test_raw)), x_test_raw)
colnames(df_test) <- c("Subject_ID", "Activity_ID", feature_names[,2])

#Step 3: Combine the two dataframes from the previous step to one data frame (df_combined) which contains all data
df_combined <- rbind(df_train, df_test)
df_combined <- df_combined[order(df_combined$Subject_ID, df_combined$Activity_ID),]

#Step 4: extract the mean and standard deviation measurements using the column names and store them in a new data frame
relevant_col_names <-grep("mean()|std()",colnames(df_combined), value = TRUE)
df_mean_and_std_only <- cbind(df_combined[,1:2],df_combined[,relevant_col_names])

#Step 5: replace activity ID by descriptive activity names as provided in "activity_labels.txt"
for (i in 1:lengths(activity_names[1])){
        df_mean_and_std_only$Activity_ID[df_mean_and_std_only$Activity_ID == i] <- activity_names[i,2]
}

#step 6: create a tidy data set (df_final) with the average of each variable for each activity and each subject

df_final <- df_mean_and_std_only %>% 
             group_by(Subject_ID, Activity_ID) %>%
             summarise_all("mean")
