# Load the required library
library(dplyr)

# Download the data and unzip it
if(!file.exists("./UCI HAR Dataset")) {
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, destfile = "./UCI HAR Dataset.zip")  
    unzip("./UCI HAR Dataset.zip")
}

# Import feature labels
feature_labels <- read.table("./UCI HAR Dataset/features.txt")

# Import the test dataset extracting only measurements on mean and standard deviation
subjects_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")                             
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = feature_labels[,2]) %>% select(matches("mean|std"))
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
df_test <- cbind(subjects_test, y_test, x_test)

# Import the train dataset extracting only measurements on mean and standard deviation
subjects_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")                             
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = feature_labels[,2]) %>% select(matches("mean|std"))
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
df_train <- cbind(subjects_train, y_train, x_train)

# Merging the test and train dataset
df <- rbind(df_test, df_train)

# Adding descriptive activity names
df <- df %>% mutate(activity = recode(activity, 
                                      "1" = "walking", 
                                      "2" = "walking_upstairs", 
                                      "3" = "walking_downstairs", 
                                      "4" = "sitting", 
                                      "5" = "standing", 
                                      "6" = "laying"
                                      )
                    )

# Creating and writing a new, tidy dataset containing the average of each variable for each activity and each subject
tidy_df <- df %>% 
            group_by(subject, activity) %>%
            summarize(across(everything(), mean))
write.table(tidy_df, "tidy_dataset.txt", row.names = FALSE)