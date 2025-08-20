# **Coursera Getting and Cleaning Data Course Project**

------------------------------------------------------------------------

This repository contains all required files for the Coursera Getting and Cleaning Data Course Project.

## Files in this Repository

------------------------------------------------------------------------

`run_analysis.R`: This R script performs the analysis according to the project requirements, which are:

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation for each measurement.

3.  Uses descriptive activity names to name the activities in the data set

4.  Appropriately labels the data set with descriptive variable names.

5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please note that the steps above are not performed in the same order in the R script. E.g. variable names are added and the measurements of the mean and standard deviation are extracted before merging the test and train data sets. Please refer to the explanations in the R script for more information about the individual steps.

`tidy_dataset.txt`: The output file of `run_analysis.R`. It contains the final tidy data set with the average of each variable for each activity and each subject.

`Codebook.md`: This file describes the variables, the data and any transformations that were performed to clean up the data.

## About the data

------------------------------------------------------------------------

The data used in this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

There is no need to manually download the data from the website. The R script automatically downloads, unpacks and reads all necessary files.
