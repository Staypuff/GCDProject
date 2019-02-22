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
Std(): Standard deviation

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
 
 [1] "Set"                              
 [2] "Activity"                         
 [3] "Subject"                          
 [4] "tBodyAccMeanX"                    
 [5] "tBodyAccMeanY"                    
 [6] "tBodyAccMeanZ"                    
 [7] "tBodyAccStdX"                     
 [8] "tBodyAccStdY"                     
 [9] "tBodyAccStdZ"                     
[10] "tGravityAccMeanX"                 
[11] "tGravityAccMeanY"                 
[12] "tGravityAccMeanZ"                 
[13] "tGravityAccStdX"                  
[14] "tGravityAccStdY"                  
[15] "tGravityAccStdZ"                  
[16] "tBodyAccJerkMeanX"                
[17] "tBodyAccJerkMeanY"                
[18] "tBodyAccJerkMeanZ"                
[19] "tBodyAccJerkStdX"                 
[20] "tBodyAccJerkStdY"                 
[21] "tBodyAccJerkStdZ"                 
[22] "tBodyGyroMeanX"                   
[23] "tBodyGyroMeanY"                   
[24] "tBodyGyroMeanZ"                   
[25] "tBodyGyroStdX"                    
[26] "tBodyGyroStdY"                    
[27] "tBodyGyroStdZ"                    
[28] "tBodyGyroJerkMeanX"               
[29] "tBodyGyroJerkMeanY"               
[30] "tBodyGyroJerkMeanZ"               
[31] "tBodyGyroJerkStdX"                
[32] "tBodyGyroJerkStdY"                
[33] "tBodyGyroJerkStdZ"                
[34] "tBodyAccMagMean"                  
[35] "tBodyAccMagStd"                   
[36] "tGravityAccMagMean"               
[37] "tGravityAccMagStd"                
[38] "tBodyAccJerkMagMean"              
[39] "tBodyAccJerkMagStd"               
[40] "tBodyGyroMagMean"                 
[41] "tBodyGyroMagStd"                  
[42] "tBodyGyroJerkMagMean"             
[43] "tBodyGyroJerkMagStd"              
[44] "fBodyAccMeanX"                    
[45] "fBodyAccMeanY"                    
[46] "fBodyAccMeanZ"                    
[47] "fBodyAccStdX"                     
[48] "fBodyAccStdY"                     
[49] "fBodyAccStdZ"                     
[50] "fBodyAccMeanFreqX"                
[51] "fBodyAccMeanFreqY"                
[52] "fBodyAccMeanFreqZ"                
[53] "fBodyAccJerkMeanX"                
[54] "fBodyAccJerkMeanY"                
[55] "fBodyAccJerkMeanZ"                
[56] "fBodyAccJerkStdX"                 
[57] "fBodyAccJerkStdY"                 
[58] "fBodyAccJerkStdZ"                 
[59] "fBodyAccJerkMeanFreqX"            
[60] "fBodyAccJerkMeanFreqY"            
[61] "fBodyAccJerkMeanFreqZ"            
[62] "fBodyGyroMeanX"                   
[63] "fBodyGyroMeanY"                   
[64] "fBodyGyroMeanZ"                   
[65] "fBodyGyroStdX"                    
[66] "fBodyGyroStdY"                    
[67] "fBodyGyroStdZ"                    
[68] "fBodyGyroMeanFreqX"               
[69] "fBodyGyroMeanFreqY"               
[70] "fBodyGyroMeanFreqZ"               
[71] "fBodyAccMagMean"                  
[72] "fBodyAccMagStd"                   
[73] "fBodyAccMagMeanFreq"              
[74] "fBodyBodyAccJerkMagMean"          
[75] "fBodyBodyAccJerkMagStd"           
[76] "fBodyBodyAccJerkMagMeanFreq"      
[77] "fBodyBodyGyroMagMean"             
[78] "fBodyBodyGyroMagStd"              
[79] "fBodyBodyGyroMagMeanFreq"         
[80] "fBodyBodyGyroJerkMagMean"         
[81] "fBodyBodyGyroJerkMagStd"          
[82] "fBodyBodyGyroJerkMagMeanFreq"     
[83] "AngletBodyAccMeanGravity"         
[84] "AngletBodyAccJerkMeanGravityMean" 
[85] "AngletBodyGyroMeanGravityMean"    
[86] "AngletBodyGyroJerkMeanGravityMean"
[87] "AngleXGravityMean"                
[88] "AngleYGravityMean"                
[89] "AngleZGravityMean"


The summarized data in the separate data set consist of the averages (mean) of the above variables by activity and by subject as required by the project overview.  The activities and subjects were both placed in the column "Group", the variable "Set" was dropped, and the remaining variable names were headed with "Avg_" to indicate that they are averages calculated from the mean of the above variables among each "Group".

 [1] "Group"                                
 [2] "Avg_tBodyAccMeanX"                    
 [3] "Avg_tBodyAccMeanY"                    
 [4] "Avg_tBodyAccMeanZ"                    
 [5] "Avg_tBodyAccStdX"                     
 [6] "Avg_tBodyAccStdY"                     
 [7] "Avg_tBodyAccStdZ"                     
 [8] "Avg_tGravityAccMeanX"                 
 [9] "Avg_tGravityAccMeanY"                 
[10] "Avg_tGravityAccMeanZ"                 
[11] "Avg_tGravityAccStdX"                  
[12] "Avg_tGravityAccStdY"                  
[13] "Avg_tGravityAccStdZ"                  
[14] "Avg_tBodyAccJerkMeanX"                
[15] "Avg_tBodyAccJerkMeanY"                
[16] "Avg_tBodyAccJerkMeanZ"                
[17] "Avg_tBodyAccJerkStdX"                 
[18] "Avg_tBodyAccJerkStdY"                 
[19] "Avg_tBodyAccJerkStdZ"                 
[20] "Avg_tBodyGyroMeanX"                   
[21] "Avg_tBodyGyroMeanY"                   
[22] "Avg_tBodyGyroMeanZ"                   
[23] "Avg_tBodyGyroStdX"                    
[24] "Avg_tBodyGyroStdY"                    
[25] "Avg_tBodyGyroStdZ"                    
[26] "Avg_tBodyGyroJerkMeanX"               
[27] "Avg_tBodyGyroJerkMeanY"               
[28] "Avg_tBodyGyroJerkMeanZ"               
[29] "Avg_tBodyGyroJerkStdX"                
[30] "Avg_tBodyGyroJerkStdY"                
[31] "Avg_tBodyGyroJerkStdZ"                
[32] "Avg_tBodyAccMagMean"                  
[33] "Avg_tBodyAccMagStd"                   
[34] "Avg_tGravityAccMagMean"               
[35] "Avg_tGravityAccMagStd"                
[36] "Avg_tBodyAccJerkMagMean"              
[37] "Avg_tBodyAccJerkMagStd"               
[38] "Avg_tBodyGyroMagMean"                 
[39] "Avg_tBodyGyroMagStd"                  
[40] "Avg_tBodyGyroJerkMagMean"             
[41] "Avg_tBodyGyroJerkMagStd"              
[42] "Avg_fBodyAccMeanX"                    
[43] "Avg_fBodyAccMeanY"                    
[44] "Avg_fBodyAccMeanZ"                    
[45] "Avg_fBodyAccStdX"                     
[46] "Avg_fBodyAccStdY"                     
[47] "Avg_fBodyAccStdZ"                     
[48] "Avg_fBodyAccMeanFreqX"                
[49] "Avg_fBodyAccMeanFreqY"                
[50] "Avg_fBodyAccMeanFreqZ"                
[51] "Avg_fBodyAccJerkMeanX"                
[52] "Avg_fBodyAccJerkMeanY"                
[53] "Avg_fBodyAccJerkMeanZ"                
[54] "Avg_fBodyAccJerkStdX"                 
[55] "Avg_fBodyAccJerkStdY"                 
[56] "Avg_fBodyAccJerkStdZ"                 
[57] "Avg_fBodyAccJerkMeanFreqX"            
[58] "Avg_fBodyAccJerkMeanFreqY"            
[59] "Avg_fBodyAccJerkMeanFreqZ"            
[60] "Avg_fBodyGyroMeanX"                   
[61] "Avg_fBodyGyroMeanY"                   
[62] "Avg_fBodyGyroMeanZ"                   
[63] "Avg_fBodyGyroStdX"                    
[64] "Avg_fBodyGyroStdY"                    
[65] "Avg_fBodyGyroStdZ"                    
[66] "Avg_fBodyGyroMeanFreqX"               
[67] "Avg_fBodyGyroMeanFreqY"               
[68] "Avg_fBodyGyroMeanFreqZ"               
[69] "Avg_fBodyAccMagMean"                  
[70] "Avg_fBodyAccMagStd"                   
[71] "Avg_fBodyAccMagMeanFreq"              
[72] "Avg_fBodyBodyAccJerkMagMean"          
[73] "Avg_fBodyBodyAccJerkMagStd"           
[74] "Avg_fBodyBodyAccJerkMagMeanFreq"      
[75] "Avg_fBodyBodyGyroMagMean"             
[76] "Avg_fBodyBodyGyroMagStd"              
[77] "Avg_fBodyBodyGyroMagMeanFreq"         
[78] "Avg_fBodyBodyGyroJerkMagMean"         
[79] "Avg_fBodyBodyGyroJerkMagStd"          
[80] "Avg_fBodyBodyGyroJerkMagMeanFreq"     
[81] "Avg_AngletBodyAccMeanGravity"         
[82] "Avg_AngletBodyAccJerkMeanGravityMean" 
[83] "Avg_AngletBodyGyroMeanGravityMean"    
[84] "Avg_AngletBodyGyroJerkMeanGravityMean"
[85] "Avg_AngleXGravityMean"                
[86] "Avg_AngleYGravityMean"                
[87] "Avg_AngleZGravityMean" 
