# README file for Course Project

## Content of the repository

This repository contains the following files.

* README.md - explanation of the content of the repository (=this file)
* mean.txt - tidy data file with the requested average of each variable for each activity and each subject.
* CookBook.md - description of how the data was maintained and manipulated and a description of the variables in mean.txt
* features_info.txt - original cookbook with the description of the features
* run_analysis.R - R script that was used to created mean.txt

## How to read mean.txt
When the file has been placed in the current workdirectory, then he file 
can be read with the following R command:  
read.table('./mean.txt', header=TRUE)

## Run run_analysis.R
The run_analyses.R file assumes that in the work directory is present:
# features.txt
# activity_labels.txt
# directory train containing the train files
# directory test containing the test files

You can get a correct environment by changing the workdirectory to the directoy 'UCI HAR Dataset'. 
This directory is created when unzipping the zip file.
