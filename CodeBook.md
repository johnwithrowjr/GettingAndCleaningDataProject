
This data set is a processed version of smartphone accelerometer data obtained from the
experiment described on the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data is stored at the following URL location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of this processing effort was to do the following:
1.  Merge the testing and training data sets into a single flat file
2.  Create an additional field "mode" that indicates whether each observation was part of testing or training.
3.  Replace activity numbers with a new field "activity" that shows the activity more descriptively as a string.
4.  Provide more descriptive labels for the dataset in general.
5.  Add an additional field "subjectnum" for the number of the subject being measured.
6.  Create an additional file "mean.txt" that shows only fields displaying mean values of each measurement, shown below:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X 
tGravityAcc-mean()-Y 
tGravityAcc-mean()-Z 
tBodyAccJerk-mean()-X 
tBodyAccJerk-mean()-Y 
tBodyAccJerk-mean()-Z 
tBodyGyro-mean()-X 
tBodyGyro-mean()-Y 
tBodyGyro-mean()-Z 
tBodyGyroJerk-mean()-X 
tBodyGyroJerk-mean()-Y 
tBodyGyroJerk-mean()-Z 
tBodyAccMag-mean() 
tGravityAccMag-mean() 
tBodyAccJerkMag-mean() 
tBodyGyroMag-mean() 
tBodyGyroJerkMag-mean() 
fBodyAcc-mean()-X 
fBodyAcc-mean()-Y 
fBodyAcc-mean()-Z 
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z 
fBodyGyro-mean()-X 
fBodyGyro-mean()-Y 
fBodyGyro-mean()-Z 
fBodyAccMag-mean() 
fBodyBodyAccJerkMag-mean() 
fBodyBodyGyroMag-mean() 
fBodyBodyGyroJerkMag-mean()

7.  Create an additional file "meansd.txt" that shows all fields above but also the ones below, showing standard deviations of the same varibles:

tBodyAcc-std()-X           
tBodyAcc-std()-Y          
tBodyAcc-std()-Z           
tGravityAcc-std()-X       
tGravityAcc-std()-Y        
tGravityAcc-std()-Z       
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y      
tBodyAccJerk-std()-Z       
tBodyGyro-std()-X         
tBodyGyro-std()-Y          
tBodyGyro-std()-Z         
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y     
tBodyGyroJerk-std()-Z      
tBodyAccMag-std()         
tGravityAccMag-std()       
tBodyAccJerkMag-std()     
tBodyGyroMag-std()         
tBodyGyroJerkMag-std()    
fBodyAcc-std()-X           
fBodyAcc-std()-Y          
fBodyAcc-std()-Z           
fBodyAccJerk-std()-X      
fBodyAccJerk-std()-Y       
fBodyAccJerk-std()-Z      
fBodyGyro-std()-X          
fBodyGyro-std()-Y         
fBodyGyro-std()-Z          
fBodyAccMag-std()         
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-std()    
fBodyBodyGyroJerkMag-std()

JRW