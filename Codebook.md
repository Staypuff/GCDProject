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

From the 561 original variables, only the means and standard deviations were included per the requirements of the assignment.  These variable names were adjusted to be easier to read and are listed below.  Reference the CodeComments.txt file for specific changes.

The following variables were added to the data set:

Set:  "Train" or "Test", retaining the 2 groupings of subjects stated in the README
Activity:  walking, walking_upstairs, walking_downstairs, sitting, standing, laying
Subject: a number 1 through 30 representing the individual subject volunteers

The full list of the variables in the updated data set follow:
 
 [1] "Set"                                              
 [2] "Activity"                                         
 [3] "Subject"                                          
 [4] "TimeBodyAccelerationMeanX"                        
 [5] "TimeBodyAccelerationMeanY"                        
 [6] "TimeBodyAccelerationMeanZ"                        
 [7] "TimeBodyAccelerationStdX"                         
 [8] "TimeBodyAccelerationStdY"                         
 [9] "TimeBodyAccelerationStdZ"                         
[10] "TimeGravityAccelerationMeanX"                     
[11] "TimeGravityAccelerationMeanY"                     
[12] "TimeGravityAccelerationMeanZ"                     
[13] "TimeGravityAccelerationStdX"                      
[14] "TimeGravityAccelerationStdY"                      
[15] "TimeGravityAccelerationStdZ"                      
[16] "TimeBodyAccelerationJerkMeanX"                    
[17] "TimeBodyAccelerationJerkMeanY"                    
[18] "TimeBodyAccelerationJerkMeanZ"                    
[19] "TimeBodyAccelerationJerkStdX"                     
[20] "TimeBodyAccelerationJerkStdY"                     
[21] "TimeBodyAccelerationJerkStdZ"                     
[22] "TimeBodyGyroscopeMeanX"                           
[23] "TimeBodyGyroscopeMeanY"                           
[24] "TimeBodyGyroscopeMeanZ"                           
[25] "TimeBodyGyroscopeStdX"                            
[26] "TimeBodyGyroscopeStdY"                            
[27] "TimeBodyGyroscopeStdZ"                            
[28] "TimeBodyGyroscopeJerkMeanX"                       
[29] "TimeBodyGyroscopeJerkMeanY"                       
[30] "TimeBodyGyroscopeJerkMeanZ"                       
[31] "TimeBodyGyroscopeJerkStdX"                        
[32] "TimeBodyGyroscopeJerkStdY"                        
[33] "TimeBodyGyroscopeJerkStdZ"                        
[34] "TimeBodyAccelerationMagMean"                      
[35] "TimeBodyAccelerationMagStd"                       
[36] "TimeGravityAccelerationMagMean"                   
[37] "TimeGravityAccelerationMagStd"                    
[38] "TimeBodyAccelerationJerkMagMean"                  
[39] "TimeBodyAccelerationJerkMagStd"                   
[40] "TimeBodyGyroscopeMagMean"                         
[41] "TimeBodyGyroscopeMagStd"                          
[42] "TimeBodyGyroscopeJerkMagMean"                     
[43] "TimeBodyGyroscopeJerkMagStd"                      
[44] "FrequencyBodyAccelerationMeanX"                   
[45] "FrequencyBodyAccelerationMeanY"                   
[46] "FrequencyBodyAccelerationMeanZ"                   
[47] "FrequencyBodyAccelerationStdX"                    
[48] "FrequencyBodyAccelerationStdY"                    
[49] "FrequencyBodyAccelerationStdZ"                    
[50] "FrequencyBodyAccelerationMeanFrequencyX"          
[51] "FrequencyBodyAccelerationMeanFrequencyY"          
[52] "FrequencyBodyAccelerationMeanFrequencyZ"          
[53] "FrequencyBodyAccelerationJerkMeanX"               
[54] "FrequencyBodyAccelerationJerkMeanY"               
[55] "FrequencyBodyAccelerationJerkMeanZ"               
[56] "FrequencyBodyAccelerationJerkStdX"                
[57] "FrequencyBodyAccelerationJerkStdY"                
[58] "FrequencyBodyAccelerationJerkStdZ"                
[59] "FrequencyBodyAccelerationJerkMeanFrequencyX"      
[60] "FrequencyBodyAccelerationJerkMeanFrequencyY"      
[61] "FrequencyBodyAccelerationJerkMeanFrequencyZ"      
[62] "FrequencyBodyGyroscopeMeanX"                      
[63] "FrequencyBodyGyroscopeMeanY"                      
[64] "FrequencyBodyGyroscopeMeanZ"                      
[65] "FrequencyBodyGyroscopeStdX"                       
[66] "FrequencyBodyGyroscopeStdY"                       
[67] "FrequencyBodyGyroscopeStdZ"                       
[68] "FrequencyBodyGyroscopeMeanFrequencyX"             
[69] "FrequencyBodyGyroscopeMeanFrequencyY"             
[70] "FrequencyBodyGyroscopeMeanFrequencyZ"             
[71] "FrequencyBodyAccelerationMagMean"                 
[72] "FrequencyBodyAccelerationMagStd"                  
[73] "FrequencyBodyAccelerationMagMeanFrequency"        
[74] "FrequencyBodyBodyAccelerationJerkMagMean"         
[75] "FrequencyBodyBodyAccelerationJerkMagStd"          
[76] "FrequencyBodyBodyAccelerationJerkMagMeanFrequency"
[77] "FrequencyBodyBodyGyroscopeMagMean"                
[78] "FrequencyBodyBodyGyroscopeMagStd"                 
[79] "FrequencyBodyBodyGyroscopeMagMeanFrequency"       
[80] "FrequencyBodyBodyGyroscopeJerkMagMean"            
[81] "FrequencyBodyBodyGyroscopeJerkMagStd"             
[82] "FrequencyBodyBodyGyroscopeJerkMagMeanFrequency"   
[83] "AngletBodyAccelerationMeanGravity"                
[84] "AngletBodyAccelerationJerkMeanGravityMean"        
[85] "AngletBodyGyroscopeMeanGravityMean"               
[86] "AngletBodyGyroscopeJerkMeanGravityMean"           
[87] "AngleXGravityMean"                                
[88] "AngleYGravityMean"                                
[89] "AngleZGravityMean"


The summarized data in the separate data set consist of the averages (mean) of the above variables by activity and by subject as required by the project overview. The variables are averages of previously derived means and standard deviations, retaining the same units.

 [1] "Activity"                                         
 [2] "Subject"                                          
 [3] "TimeBodyAccelerationMeanX"                        
 [4] "TimeBodyAccelerationMeanY"                        
 [5] "TimeBodyAccelerationMeanZ"                        
 [6] "TimeBodyAccelerationStdX"                         
 [7] "TimeBodyAccelerationStdY"                         
 [8] "TimeBodyAccelerationStdZ"                         
 [9] "TimeGravityAccelerationMeanX"                     
[10] "TimeGravityAccelerationMeanY"                     
[11] "TimeGravityAccelerationMeanZ"                     
[12] "TimeGravityAccelerationStdX"                      
[13] "TimeGravityAccelerationStdY"                      
[14] "TimeGravityAccelerationStdZ"                      
[15] "TimeBodyAccelerationJerkMeanX"                    
[16] "TimeBodyAccelerationJerkMeanY"                    
[17] "TimeBodyAccelerationJerkMeanZ"                    
[18] "TimeBodyAccelerationJerkStdX"                     
[19] "TimeBodyAccelerationJerkStdY"                     
[20] "TimeBodyAccelerationJerkStdZ"                     
[21] "TimeBodyGyroscopeMeanX"                           
[22] "TimeBodyGyroscopeMeanY"                           
[23] "TimeBodyGyroscopeMeanZ"                           
[24] "TimeBodyGyroscopeStdX"                            
[25] "TimeBodyGyroscopeStdY"                            
[26] "TimeBodyGyroscopeStdZ"                            
[27] "TimeBodyGyroscopeJerkMeanX"                       
[28] "TimeBodyGyroscopeJerkMeanY"                       
[29] "TimeBodyGyroscopeJerkMeanZ"                       
[30] "TimeBodyGyroscopeJerkStdX"                        
[31] "TimeBodyGyroscopeJerkStdY"                        
[32] "TimeBodyGyroscopeJerkStdZ"                        
[33] "TimeBodyAccelerationMagMean"                      
[34] "TimeBodyAccelerationMagStd"                       
[35] "TimeGravityAccelerationMagMean"                   
[36] "TimeGravityAccelerationMagStd"                    
[37] "TimeBodyAccelerationJerkMagMean"                  
[38] "TimeBodyAccelerationJerkMagStd"                   
[39] "TimeBodyGyroscopeMagMean"                         
[40] "TimeBodyGyroscopeMagStd"                          
[41] "TimeBodyGyroscopeJerkMagMean"                     
[42] "TimeBodyGyroscopeJerkMagStd"                      
[43] "FrequencyBodyAccelerationMeanX"                   
[44] "FrequencyBodyAccelerationMeanY"                   
[45] "FrequencyBodyAccelerationMeanZ"                   
[46] "FrequencyBodyAccelerationStdX"                    
[47] "FrequencyBodyAccelerationStdY"                    
[48] "FrequencyBodyAccelerationStdZ"                    
[49] "FrequencyBodyAccelerationMeanFrequencyX"          
[50] "FrequencyBodyAccelerationMeanFrequencyY"          
[51] "FrequencyBodyAccelerationMeanFrequencyZ"          
[52] "FrequencyBodyAccelerationJerkMeanX"               
[53] "FrequencyBodyAccelerationJerkMeanY"               
[54] "FrequencyBodyAccelerationJerkMeanZ"               
[55] "FrequencyBodyAccelerationJerkStdX"                
[56] "FrequencyBodyAccelerationJerkStdY"                
[57] "FrequencyBodyAccelerationJerkStdZ"                
[58] "FrequencyBodyAccelerationJerkMeanFrequencyX"      
[59] "FrequencyBodyAccelerationJerkMeanFrequencyY"      
[60] "FrequencyBodyAccelerationJerkMeanFrequencyZ"      
[61] "FrequencyBodyGyroscopeMeanX"                      
[62] "FrequencyBodyGyroscopeMeanY"                      
[63] "FrequencyBodyGyroscopeMeanZ"                      
[64] "FrequencyBodyGyroscopeStdX"                       
[65] "FrequencyBodyGyroscopeStdY"                       
[66] "FrequencyBodyGyroscopeStdZ"                       
[67] "FrequencyBodyGyroscopeMeanFrequencyX"             
[68] "FrequencyBodyGyroscopeMeanFrequencyY"             
[69] "FrequencyBodyGyroscopeMeanFrequencyZ"             
[70] "FrequencyBodyAccelerationMagMean"                 
[71] "FrequencyBodyAccelerationMagStd"                  
[72] "FrequencyBodyAccelerationMagMeanFrequency"        
[73] "FrequencyBodyBodyAccelerationJerkMagMean"         
[74] "FrequencyBodyBodyAccelerationJerkMagStd"          
[75] "FrequencyBodyBodyAccelerationJerkMagMeanFrequency"
[76] "FrequencyBodyBodyGyroscopeMagMean"                
[77] "FrequencyBodyBodyGyroscopeMagStd"                 
[78] "FrequencyBodyBodyGyroscopeMagMeanFrequency"       
[79] "FrequencyBodyBodyGyroscopeJerkMagMean"            
[80] "FrequencyBodyBodyGyroscopeJerkMagStd"             
[81] "FrequencyBodyBodyGyroscopeJerkMagMeanFrequency"   
[82] "AngletBodyAccelerationMeanGravity"                
[83] "AngletBodyAccelerationJerkMeanGravityMean"        
[84] "AngletBodyGyroscopeMeanGravityMean"               
[85] "AngletBodyGyroscopeJerkMeanGravityMean"           
[86] "AngleXGravityMean"                                
[87] "AngleYGravityMean"                                
[88] "AngleZGravityMean"  
