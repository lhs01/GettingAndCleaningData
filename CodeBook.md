# Code Book for Course Project

## Origin of the data

The data was downloaded as a zip file from the Coursera website.
Url of the zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data in this zip file was original obtained from the following site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformation

The original data has been changed in the following ways:
* training and test data have been merged into one file
* only feature columns for mean and standard deviation have been selected. The columns were selected by filtering on column names containing ‘mean()’ or ‘std()’
* activity numbers were replaced by activity descriptions
* feature column names were changed:
	- ‘()’  was removed
	- ‘-‘ was replaced by space
	- t (first character) was replaced by Time
	- f (first character) was replace by Freq
* Per selected feature the average per activity / subject was calculated

## Units
The units of the original file are used.
These are: features are normalised and bounded within [-1, 1]

## Variables

1 activity - activity that the subject performed during the measurements
	- LAYING
	- SITTING
	- STANDING
	- WALKING
	- WALKING_DOWNSTAIRS
	- WALKING_UPSTAIRS

2 subject - person that performed the activity
	- range [1-30]

The following variables are the means per activity/subject. 
The values are in the range [-1,1]
See features_info.txt for the explanation of the terms. (this file is included in the repo)

3 Time BodyAcc mean X     
4 Time BodyAcc mean Y       
5 Time BodyAcc mean Z           
6 Time BodyAcc std X          
7 Time BodyAcc std Y
8 Time BodyAcc std Z

9 Time GravityAcc mean X     
10 Time GravityAcc mean Y
11 Time GravityAcc mean Z
12 Time GravityAcc std X    
13 Time GravityAcc std Y
14 Time GravityAcc std Z

15 Time BodyAccJerk mean X    
16 Time BodyAccJerk mean Y
17 Time BodyAccJerk mean Z
18 Time BodyAccJerk std X     
19 Time BodyAccJerk std Y
20 Time BodyAccJerk std Z

21 Time BodyGyro mean X      
22 Time BodyGyro mean Y
23 Time BodyGyro mean Z
24 Time BodyGyro std X        
25 Time BodyGyro std Y
26 Time BodyGyro std Z         

27 Time BodyGyroJerk mean X   
28 Time BodyGyroJerk mean Y
29 Time BodyGyroJerk mean Z
30 Time BodyGyroJerk std X   
31 Time BodyGyroJerk std Y   
32 Time BodyGyroJerk std Z     

33 Time BodyAccMag mean
34 Time BodyAccMag std

35 Time GravityAccMag mean 
36 Time GravityAccMag std    

37 Time BodyAccJerkMag mean     
38 Time BodyAccJerkMag std

39 Time BodyGyroMag mean      
40 Time BodyGyroMag std

41 Time BodyGyroJerkMag mean 
42 Time BodyGyroJerkMag std  

43 Freq BodyAcc mean X 
44 Freq BodyAcc mean Y 
45 Freq BodyAcc mean Z     
46 Freq BodyAcc std X 
47 Freq BodyAcc std Y 
48 Freq BodyAcc std Z      

49 Freq BodyAccJerk mean X 
50 Freq BodyAccJerk mean Y 
51 Freq BodyAccJerk mean Z 
52 Freq BodyAccJerk std X 
53 Freq BodyAccJerk std Y 
54 Freq BodyAccJerk std Z     

55 Freq BodyGyro mean X 
56 Freq BodyGyro mean Y 
57 Freq BodyGyro mean Z   
58 Freq BodyGyro std X 
59 Freq BodyGyro std Y 
60 Freq BodyGyro std Z 
        
61 Freq BodyAccMag mean 
62 Freq BodyAccMag std 

63 Freq BodyBodyAccJerkMag mean 
64 Freq BodyBodyAccJerkMag std 

65 Freq BodyBodyGyroMag mean 
66 Freq BodyBodyGyroMag std   

67 Freq BodyBodyGyroJerkMag mean 
68 Freq BodyBodyGyroJerkMag std 