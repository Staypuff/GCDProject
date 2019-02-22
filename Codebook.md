The feature variables contained in the data set are described by the "features_info.txt" extracted from the data URL listed in the README:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

"The set of variables that were estimated from these signals" which are included in the updated data set are: 

Mean(): Mean value 
Std(): Standard deviation.

"Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:"

GravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

"The complete list of variables of each feature vector is available in 'features.txt'" included with the data from the data URL listed in the README.

From the 561 original variables, only the means and standard deviations were included per the requirements of the assignment.  These variable names were adjusted slightly to be easier to read. The chosen variable names include abbreviations (e.g. “tBodyAccJerkMagMean”) which are not usually preferred; however, clearer descriptive names such as “TimeBodyAccelerometerJerkMagneticMean” make viewing the data more difficult, as the column widths quickly become too large.  Because of this, a compromise was made using some abbreviations in variable names.

The following variables were added to the data set:

Set:  "Train" or "Test", retaining the 2 groupings of subjects stated in the README
Activity:  walking, walking_upstairs, walking_downstairs, sitting, standing, laying
Subject: a number 1 through 30 representing the individual subject volunteers

The full list of the variables in the updated data set follow:
 
 [1] "Set"                               "Activity"                         
 [3] "Subject"                           "tBodyAccMeanX"                    
 [5] "tBodyAccMeanY"                     "tBodyAccMeanZ"                    
 [7] "tBodyAccStdX"                      "tBodyAccStdY"                     
 [9] "tBodyAccStdZ"                      "tGravityAccMeanX"                 
[11] "tGravityAccMeanY"                  "tGravityAccMeanZ"                 
[13] "tGravityAccStdX"                   "tGravityAccStdY"                  
[15] "tGravityAccStdZ"                   "tBodyAccJerkMeanX"                
[17] "tBodyAccJerkMeanY"                 "tBodyAccJerkMeanZ"                
[19] "tBodyAccJerkStdX"                  "tBodyAccJerkStdY"                 
[21] "tBodyAccJerkStdZ"                  "tBodyGyroMeanX"                   
[23] "tBodyGyroMeanY"                    "tBodyGyroMeanZ"                   
[25] "tBodyGyroStdX"                     "tBodyGyroStdY"                    
[27] "tBodyGyroStdZ"                     "tBodyGyroJerkMeanX"               
[29] "tBodyGyroJerkMeanY"                "tBodyGyroJerkMeanZ"               
[31] "tBodyGyroJerkStdX"                 "tBodyGyroJerkStdY"                
[33] "tBodyGyroJerkStdZ"                 "tBodyAccMagMean"                  
[35] "tBodyAccMagStd"                    "tGravityAccMagMean"               
[37] "tGravityAccMagStd"                 "tBodyAccJerkMagMean"              
[39] "tBodyAccJerkMagStd"                "tBodyGyroMagMean"                 
[41] "tBodyGyroMagStd"                   "tBodyGyroJerkMagMean"             
[43] "tBodyGyroJerkMagStd"               "fBodyAccMeanX"                    
[45] "fBodyAccMeanY"                     "fBodyAccMeanZ"                    
[47] "fBodyAccStdX"                      "fBodyAccStdY"                     
[49] "fBodyAccStdZ"                      "fBodyAccMeanFreqX"                
[51] "fBodyAccMeanFreqY"                 "fBodyAccMeanFreqZ"                
[53] "fBodyAccJerkMeanX"                 "fBodyAccJerkMeanY"                
[55] "fBodyAccJerkMeanZ"                 "fBodyAccJerkStdX"                 
[57] "fBodyAccJerkStdY"                  "fBodyAccJerkStdZ"                 
[59] "fBodyAccJerkMeanFreqX"             "fBodyAccJerkMeanFreqY"            
[61] "fBodyAccJerkMeanFreqZ"             "fBodyGyroMeanX"                   
[63] "fBodyGyroMeanY"                    "fBodyGyroMeanZ"                   
[65] "fBodyGyroStdX"                     "fBodyGyroStdY"                    
[67] "fBodyGyroStdZ"                     "fBodyGyroMeanFreqX"               
[69] "fBodyGyroMeanFreqY"                "fBodyGyroMeanFreqZ"               
[71] "fBodyAccMagMean"                   "fBodyAccMagStd"                   
[73] "fBodyAccMagMeanFreq"               "fBodyBodyAccJerkMagMean"          
[75] "fBodyBodyAccJerkMagStd"            "fBodyBodyAccJerkMagMeanFreq"      
[77] "fBodyBodyGyroMagMean"              "fBodyBodyGyroMagStd"              
[79] "fBodyBodyGyroMagMeanFreq"          "fBodyBodyGyroJerkMagMean"         
[81] "fBodyBodyGyroJerkMagStd"           "fBodyBodyGyroJerkMagMeanFreq"     
[83] "AngletBodyAccMeanGravity"          "AngletBodyAccJerkMeanGravityMean" 
[85] "AngletBodyGyroMeanGravityMean"     "AngletBodyGyroJerkMeanGravityMean"
[87] "AngleXGravityMean"                 "AngleYGravityMean"                
[89] "AngleZGravityMean"  


The summarized data in the separate data set consist of the averages (mean) of the above variables by activity and by subject as required by the project overview.  The activities and subjects were both placed in the column "Group", the variable "Set" was dropped, and the remaining variable names were headed with "Avg_" to indicate that they are averages calculated from the mean of the above variables among each "Group".

 [1] "Group"                                 "Avg_tBodyAccMeanX"                    
 [3] "Avg_tBodyAccMeanY"                     "Avg_tBodyAccMeanZ"                    
 [5] "Avg_tBodyAccStdX"                      "Avg_tBodyAccStdY"                     
 [7] "Avg_tBodyAccStdZ"                      "Avg_tGravityAccMeanX"                 
 [9] "Avg_tGravityAccMeanY"                  "Avg_tGravityAccMeanZ"                 
[11] "Avg_tGravityAccStdX"                   "Avg_tGravityAccStdY"                  
[13] "Avg_tGravityAccStdZ"                   "Avg_tBodyAccJerkMeanX"                
[15] "Avg_tBodyAccJerkMeanY"                 "Avg_tBodyAccJerkMeanZ"                
[17] "Avg_tBodyAccJerkStdX"                  "Avg_tBodyAccJerkStdY"                 
[19] "Avg_tBodyAccJerkStdZ"                  "Avg_tBodyGyroMeanX"                   
[21] "Avg_tBodyGyroMeanY"                    "Avg_tBodyGyroMeanZ"                   
[23] "Avg_tBodyGyroStdX"                     "Avg_tBodyGyroStdY"                    
[25] "Avg_tBodyGyroStdZ"                     "Avg_tBodyGyroJerkMeanX"               
[27] "Avg_tBodyGyroJerkMeanY"                "Avg_tBodyGyroJerkMeanZ"               
[29] "Avg_tBodyGyroJerkStdX"                 "Avg_tBodyGyroJerkStdY"                
[31] "Avg_tBodyGyroJerkStdZ"                 "Avg_tBodyAccMagMean"                  
[33] "Avg_tBodyAccMagStd"                    "Avg_tGravityAccMagMean"               
[35] "Avg_tGravityAccMagStd"                 "Avg_tBodyAccJerkMagMean"              
[37] "Avg_tBodyAccJerkMagStd"                "Avg_tBodyGyroMagMean"                 
[39] "Avg_tBodyGyroMagStd"                   "Avg_tBodyGyroJerkMagMean"             
[41] "Avg_tBodyGyroJerkMagStd"               "Avg_fBodyAccMeanX"                    
[43] "Avg_fBodyAccMeanY"                     "Avg_fBodyAccMeanZ"                    
[45] "Avg_fBodyAccStdX"                      "Avg_fBodyAccStdY"                     
[47] "Avg_fBodyAccStdZ"                      "Avg_fBodyAccMeanFreqX"                
[49] "Avg_fBodyAccMeanFreqY"                 "Avg_fBodyAccMeanFreqZ"                
[51] "Avg_fBodyAccJerkMeanX"                 "Avg_fBodyAccJerkMeanY"                
[53] "Avg_fBodyAccJerkMeanZ"                 "Avg_fBodyAccJerkStdX"                 
[55] "Avg_fBodyAccJerkStdY"                  "Avg_fBodyAccJerkStdZ"                 
[57] "Avg_fBodyAccJerkMeanFreqX"             "Avg_fBodyAccJerkMeanFreqY"            
[59] "Avg_fBodyAccJerkMeanFreqZ"             "Avg_fBodyGyroMeanX"                   
[61] "Avg_fBodyGyroMeanY"                    "Avg_fBodyGyroMeanZ"                   
[63] "Avg_fBodyGyroStdX"                     "Avg_fBodyGyroStdY"                    
[65] "Avg_fBodyGyroStdZ"                     "Avg_fBodyGyroMeanFreqX"               
[67] "Avg_fBodyGyroMeanFreqY"                "Avg_fBodyGyroMeanFreqZ"               
[69] "Avg_fBodyAccMagMean"                   "Avg_fBodyAccMagStd"                   
[71] "Avg_fBodyAccMagMeanFreq"               "Avg_fBodyBodyAccJerkMagMean"          
[73] "Avg_fBodyBodyAccJerkMagStd"            "Avg_fBodyBodyAccJerkMagMeanFreq"      
[75] "Avg_fBodyBodyGyroMagMean"              "Avg_fBodyBodyGyroMagStd"              
[77] "Avg_fBodyBodyGyroMagMeanFreq"          "Avg_fBodyBodyGyroJerkMagMean"         
[79] "Avg_fBodyBodyGyroJerkMagStd"           "Avg_fBodyBodyGyroJerkMagMeanFreq"     
[81] "Avg_AngletBodyAccMeanGravity"          "Avg_AngletBodyAccJerkMeanGravityMean" 
[83] "Avg_AngletBodyGyroMeanGravityMean"     "Avg_AngletBodyGyroJerkMeanGravityMean"
[85] "Avg_AngleXGravityMean"                 "Avg_AngleYGravityMean"                
[87] "Avg_AngleZGravityMean"  