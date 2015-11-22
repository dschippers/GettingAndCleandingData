Read Me File: 
=============

The R code contained in run_analysis.R assumes that you have a folder called 'courseproject' with a zipfile called "getdata_projectfiles_UCI HAR Dataset.zip"
stored in a sub-folder of 'courseproject' called 'data. 
To code first unzips the zip file mentioned above, extracts the test and train data and their respective subject and activity files and applies the following transformations: 
1) Extracting only the variables measuring the means and standard deviations
2) Applies descriptive activity names to name the activities in the data set
3) Labels the data set with descriptive variable names, which are found in the codebook.
4) A tidy dataset is created containing the average of each variable for each activity and each subject.

This new dataset is found in 'subjectactivitymeans.txt'
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.