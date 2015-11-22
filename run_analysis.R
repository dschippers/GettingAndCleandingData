setwd("./courseproject")

#Downloading Data: 
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "

#loading Data: 
zip.dir <- ".\\courseproject\\data\\getdata_projectfiles_UCI HAR Dataset.zip"
unzip(zip.dir)
#features:
features.list <- read.table("UCI HAR Dataset/features.txt")

#We only want the mean and STD of each variable, so we use grep in order to select them. 

#test data
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test.data <- read.table("UCI HAR Dataset/test/X_test.txt")
test.labels <- read.table("UCI HAR Dataset/test/y_test.txt")
#combining all three variables: 
test.combined <- cbind(test.subject, test.labels)

#train data
train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.data <- read.table("UCI HAR Dataset/train/X_train.txt")
train.labels <- read.table("UCI HAR Dataset/train/y_train.txt")
#combining all three variables: 
train.combined <- cbind(train.subject, train.labels)

total.combined <- rbind(test.combined, train.combined)

colnames(total.combined) <- c("subjects", "activities")

#Step one: Merge the training and the test sets to create one data set.

merged.set <- rbind(test.data, train.data)

#Step two: Extract only the measurements on the mean and standard deviation for each measurement. 

indices <- grep("mean|std", features.list[,2])
merged.select <- merged.set[,indices]
colnames(merged.select) <- features.list[indices,2]

merged.labeled <- cbind(total.combined, merged.select)

#Step 3: Use descriptive activity names to name the activities in the data set

activity.labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

for(i in 1:length(activity.labels)){
merged.labeled$activities[merged.labeled$activities == i] <- activity.labels[i]}

#Step 4: Appropriately label the data set with descriptive variable names. 

clean.names <- tolower(colnames(merged.labeled))
clean.names <- gsub("-", "", clean.names)
clean.names <- gsub("\\(\\)", "", clean.names)
clean.names <- gsub("acc", "acceleration", clean.names)
clean.names <- gsub("^t", "time", clean.names)
clean.names <- gsub("^f", "frequencydomain", clean.names)
clean.names <- gsub("mag", "magnitude", clean.names)

#Applying the names,
colnames(merged.labeled) <- clean.names

#Step 5: From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity and each subject.


library(dplyr)
library(tidyr)
by_sub.activities <- merged.labeled%>% group_by(subjects,activities) %>% summarise_each(funs(mean))

write.table(by_sub.activities,file="subjectactivitymeans.txt" ,row.names = FALSE)