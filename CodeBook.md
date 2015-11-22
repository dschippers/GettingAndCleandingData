Code Book
=============

Raw Data: 
---------
The raw data conists of two files, one containing the training data and the other the testing data. 
Both datasets contain the following variables:

BodyAcc-mean()-X               tBodyAcc-mean()-Y               tBodyAcc-mean()-Z               tBodyAcc-std()-X               
tBodyAcc-std()-Y                tBodyAcc-std()-Z                tGravityAcc-mean()-X            tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z            tGravityAcc-std()-X             tGravityAcc-std()-Y             tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y           tBodyAccJerk-mean()-Z           tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y            tBodyAccJerk-std()-Z            tBodyGyro-mean()-X              tBodyGyro-mean()-Y             
tBodyGyro-mean()-Z              tBodyGyro-std()-X               tBodyGyro-std()-Y               tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y          tBodyGyroJerk-mean()-Z          tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y           tBodyGyroJerk-std()-Z           tBodyAccMag-mean()              tBodyAccMag-std()              
tGravityAccMag-mean()           tGravityAccMag-std()            tBodyAccJerkMag-mean()          tBodyAccJerkMag-std()          
tBodyGyroMag-mean()             tBodyGyroMag-std()              tBodyGyroJerkMag-mean()         tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X               fBodyAcc-mean()-Y               fBodyAcc-mean()-Z               fBodyAcc-std()-X               
fBodyAcc-std()-Y                fBodyAcc-std()-Z                fBodyAcc-meanFreq()-X           fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X           fBodyAccJerk-mean()-Y           fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y            fBodyAccJerk-std()-Z            fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y       fBodyAccJerk-meanFreq()-Z       fBodyGyro-mean()-X              fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z              fBodyGyro-std()-X               fBodyGyro-std()-Y               fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X          fBodyGyro-meanFreq()-Y          fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()             
fBodyAccMag-std()               fBodyAccMag-meanFreq()          fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-std()      
fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-mean()         fBodyBodyGyroMag-std()          fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMag-std()      fBodyBodyGyroJerkMag-meanFreq()


Transformed Data: 
-----------------

Each variable was renamed in order to better represent the meaning. In addition, the averages of all variables were calculated per subject and per activity. 
The following names are applied to the clean dataset. 

                                                                     
"timebodyaccelerationmeanx"                                "timebodyaccelerationmeany"                               
"timebodyaccelerationmeanz"                                "timebodyaccelerationstdx"                                
"timebodyaccelerationstdy"                                 "timebodyaccelerationstdz"                                
"timegravityaccelerationmeanx"                             "timegravityaccelerationmeany"                            
"timegravityaccelerationmeanz"                             "timegravityaccelerationstdx"                             
"timegravityaccelerationstdy"                              "timegravityaccelerationstdz"                             
"timebodyaccelerationjerkmeanx"                            "timebodyaccelerationjerkmeany"                           
"timebodyaccelerationjerkmeanz"                            "timebodyaccelerationjerkstdx"                            
"timebodyaccelerationjerkstdy"                             "timebodyaccelerationjerkstdz"                            
"timebodygyromeanx"                                        "timebodygyromeany"                                       
"timebodygyromeanz"                                        "timebodygyrostdx"                                        
"timebodygyrostdy"                                         "timebodygyrostdz"                                        
"timebodygyrojerkmeanx"                                    "timebodygyrojerkmeany"                                   
"timebodygyrojerkmeanz"                                    "timebodygyrojerkstdx"                                    
"timebodygyrojerkstdy"                                     "timebodygyrojerkstdz"                                    
"timebodyaccelerationmagnitudemean"                        "timebodyaccelerationmagnitudestd"                        
"timegravityaccelerationmagnitudemean"                     "timegravityaccelerationmagnitudestd"                     
"timebodyaccelerationjerkmagnitudemean"                    "timebodyaccelerationjerkmagnitudestd"                    
"timebodygyromagnitudemean"                                "timebodygyromagnitudestd"                                
"timebodygyrojerkmagnitudemean"                            "timebodygyrojerkmagnitudestd"                            
"frequencydomainbodyaccelerationmeanx"                     "frequencydomainbodyaccelerationmeany"                    
"frequencydomainbodyaccelerationmeanz"                     "frequencydomainbodyaccelerationstdx"                     
"frequencydomainbodyaccelerationstdy"                      "frequencydomainbodyaccelerationstdz"                     
"frequencydomainbodyaccelerationmeanfreqx"                 "frequencydomainbodyaccelerationmeanfreqy"                
"frequencydomainbodyaccelerationmeanfreqz"                 "frequencydomainbodyaccelerationjerkmeanx"                
"frequencydomainbodyaccelerationjerkmeany"                 "frequencydomainbodyaccelerationjerkmeanz"                
"frequencydomainbodyaccelerationjerkstdx"                  "frequencydomainbodyaccelerationjerkstdy"                 
"frequencydomainbodyaccelerationjerkstdz"                  "frequencydomainbodyaccelerationjerkmeanfreqx"            
"frequencydomainbodyaccelerationjerkmeanfreqy"             "frequencydomainbodyaccelerationjerkmeanfreqz"            
"frequencydomainbodygyromeanx"                             "frequencydomainbodygyromeany"                            
"frequencydomainbodygyromeanz"                             "frequencydomainbodygyrostdx"                             
"frequencydomainbodygyrostdy"                              "frequencydomainbodygyrostdz"                             
"frequencydomainbodygyromeanfreqx"                         "frequencydomainbodygyromeanfreqy"                        
"frequencydomainbodygyromeanfreqz"                         "frequencydomainbodyaccelerationmagnitudemean"            
"frequencydomainbodyaccelerationmagnitudestd"              "frequencydomainbodyaccelerationmagnitudemeanfreq"        
"frequencydomainbodybodyaccelerationjerkmagnitudemean"     "frequencydomainbodybodyaccelerationjerkmagnitudestd"     
"frequencydomainbodybodyaccelerationjerkmagnitudemeanfreq" "frequencydomainbodybodygyromagnitudemean"                
"frequencydomainbodybodygyromagnitudestd"                  "frequencydomainbodybodygyromagnitudemeanfreq"            
"frequencydomainbodybodygyrojerkmagnitudemean"             "frequencydomainbodybodygyrojerkmagnitudestd"             
"frequencydomainbodybodygyrojerkmagnitudemeanfreq"        

Where variables beginning with 'time' indicates a time domain signal, frequency domain a frequency domain signal and 'std' indicates the standard deviation. 
