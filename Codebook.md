# Project Code Book

This code book provides information about how to access the data for this project and explains the variables and transformations made by the R script.


## Project data

The data used in this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

There is no need to manually download the data from the website. The R script automatically downloads, unpacks and reads all necessary files.


## About the R script

The R script `run_analysis.R` performs the following steps and transformations:

1.  It loads the necessary libraries

2.  It loads the test and train data

    -   Thereby, it extracts only the measurements for mean and standard deviation

    -   It assigns the variable names according to the feature description given in the downloaded data

3.  It merges the train and test data to create a single data set

4.  It adds descriptive activity names

5.  It creates the a second, tidy data set containing the average of each variable for each activity and each subject and saves it to the output file `tidy_dataset.txt`


## Variables created by the R script

`feature_labels` contains the correct labels for the measurements according to the downloaded file `features.txt`. For more information about the different features, please refer to the file `features_info.txt`in the downloaded data

`subjects_test`, `subjects_train`, `y_test`and `y_test`contain data from the downloaded files

`x_test`and `x_train` also contain data from the downloaded file but only the measurments on the mean and standard deviation of all measurements

`df_test`and `df_train` merge the imported data sets to one test and one train data set

`df` merges the test and train data sets to a single data set and adds descriptive activity labels

`tidy_df` is the final tidy data set containing the average of each variable for each activity and each subject. This variable is then saved to the output file `tidy_dataset.txt`

