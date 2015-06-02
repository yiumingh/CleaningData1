## Using run_analysis.R

Use the following command to clean up the data.

```
R CMD BATCH run_analysis.R
```

The script first collects the activity and feature labels.

Then it filters the features labels list to select only the mean/std features.

It will go into each directory for test and train, collect the data readings and combine it for each subject.

It will merge the combined data with the activity labels.

Finally, it will aggregate based on both Subject and Activity using the mean function.

I dropped the Y.test and col.names that got generated during data cleaning since they're meaningless values.

## Code Book

The following code book describes the variables:

Variable | Explanation 
---------|------------
Subject | The test subject in question 
Activity | The tested activity the measurement is on 
X.test.tBodyAcc.mean...X | average of the mean of the raw body acceleration reading on the x axis
X.test.tBodyAcc.mean...Y | average of the mean of the raw body acceleration reading on the y axis
X.test.tBodyAcc.mean...Z | average of the mean of the raw body acceleration reading on the z axis
X.test.tBodyAcc.std...X	| average of the mean of the standard deviation of the the raw body acceleration reading on the x axis
X.test.tBodyAcc.std...Y	| average of the mean of the standard deviation of the the raw body acceleration reading on the y axis
X.test.tBodyAcc.std...Z	| average of the mean of the standard deviation of the the raw body acceleration reading on the z axis
X.test.tGravityAcc.mean...X | average of the mean of the gravity acceleration on the X axis
X.test.tGravityAcc.mean...Y | average of the mean of the gravity acceleration on the Y axis
X.test.tGravityAcc.mean...Z | average of the mean of the gravity acceleration on the Z axis
X.test.tGravityAcc.std...X | average of the standard deviation of the gravity acceleration on the X axis
X.test.tGravityAcc.std...Y | average of the standard deviation of the gravity acceleration on the Y axis
X.test.tGravityAcc.std...Z | average of the standard deviation of the gravity acceleration on the Z axis
X.test.tBodyAccJerk.mean...X | average of the mean of the jerk acceleration of the body on the X axis
X.test.tBodyAccJerk.mean...Y | average of the mean of the jerk acceleration of the body on the Y axis
X.test.tBodyAccJerk.mean...Z | average of the mean of the jerk acceleration of the body on the Z axis
X.test.tBodyAccJerk.std...X | average of the standard deviation of the jerk acceleration of the body on the X axis
X.test.tBodyAccJerk.std...Y | average of the standard deviation of the jerk acceleration of the body on the Y axis
X.test.tBodyAccJerk.std...Z | average of the standard deviation of the jerk acceleration of the body on the Z axis
X.test.tBodyGyro.mean...X | average of the mean of the gyro of the body on the X axis
X.test.tBodyGyro.mean...Y | average of the mean of the gyro of the body on the Y axis
X.test.tBodyGyro.mean...Z | average of the mean of the gyro of the body on the Z axis
X.test.tBodyGyro.std...X | average of the standard deviation of the gyro of the body on the X axis
X.test.tBodyGyro.std...Y | average of the standard deviation of the gyro of the body on the Y axis
X.test.tBodyGyro.std...Z | average of the standard deviation of the gyro of the body on the Z axis
X.test.tBodyGyroJerk.mean...X | average of the mean of the gyro jerk of the body on the X axis
X.test.tBodyGyroJerk.mean...Y | average of the mean of the gyro jerk of the body on the Y axis
X.test.tBodyGyroJerk.mean...Z | average of the mean of the gyro jerk of the body on the Z axis
X.test.tBodyGyroJerk.mean...X | average of the mean of the gyro jerk of the body on the X axis
X.test.tBodyGyroJerk.mean...Y | average of the mean of the gyro jerk of the body on the Y axis
X.test.tBodyGyroJerk.mean...Z | average of the mean of the gyro jerk of the body on the Z axis
X.test.tBodyAccMag.mean.. | average of the mean of the magnitude of the acceleration of the body
X.test.tBodyAccMag.std.. | average of the standard deviation of the magnitude of the acceleration of the body
X.test.tGravityAccMag.mean.. | average of the mean of the magnitude of the gravity acceleration
X.test.tGravityAccMag.std.. | average of the standard deviation of the magnitude of the gravity acceleration
X.test.tBodyAccJerkMag.mean.. | average of the mean of the magnitude of the gravity jerk acceleration of the body
X.test.tBodyAccJerkMag.std.. | average of the standard deviation of the magnitude of the gravity jerk acceleration of the body
X.test.tBodyGyroMag.mean.. | average of the mean of the magnitude of the body gyro
X.test.tBodyGyroMag.std.. | average of the standard deviation of the magnitude of the body gyro
X.test.tBodyGyroJerkMag.mean.. | average of the mean of the magnitude of the body gyro jerk
X.test.tBodyGyroJerkMag.std.. | average of the standard deviation of the magnitude of the body gyro jerk
X.test.fBodyAcc.mean...X | average of the mean of the fft of the body acceleration on the X axis
X.test.fBodyAcc.mean...Y | average of the mean of the fft of the body acceleration on the Y axis
X.test.fBodyAcc.mean...Z | average of the mean of the fft of the body acceleration on the Z axis
X.test.fBodyAcc.std...X | average of the standard deviation of the fft of the body acceleration on the X axis
X.test.fBodyAcc.std...Y | average of the standard deviation of the fft of the body acceleration on the Y axis
X.test.fBodyAcc.std...Z | average of the standard deviation of the fft of the body acceleration on the Z axis
X.test.fBodyAccJerk.mean...X | average of the mean of the fft of the body acceleration jerk on the X axis
X.test.fBodyAccJerk.mean...Y | average of the mean of the fft of the body acceleration jerk on the Y axis
X.test.fBodyAccJerk.mean...Z | average of the mean of the fft of the body acceleration jerk on the Z axis
X.test.fBodyAccJerk.std...X | average of the standard deviation of the fft of the body acceleration jerk on the X axis
X.test.fBodyAccJerk.std...Y | average of the standard deviation of the fft of the body acceleration jerk on the Y axis
X.test.fBodyAccJerk.std...Z | average of the standard deviation of the fft of the body acceleration jerk on the Z axis
X.test.fBodyGyro.mean...X | average of the mean of the fft of the body gyro on the X axis
X.test.fBodyGyro.mean...Y | average of the mean of the fft of the body gyro on the Y axis
X.test.fBodyGyro.mean...Z | average of the mean of the fft of the body gyro on the Z axis
X.test.fBodyGyro.mean...X | average of the standard deviation of the fft of the body gyro on the X axis
X.test.fBodyGyro.mean...Y | average of the standard deviation of the fft of the body gyro on the Y axis
X.test.fBodyGyro.mean...Z | average of the standard deviation of the fft of the body gyro on the Z axis
X.test.fBodyAccMag.mean.. | average of the mean of the fft of the body acceleration
X.test.fBodyAccMag.std.. | average of the standard deviation of the fft of the body acceleration
X.test.fBodyBodyAccJerkMag.mean.. | average of the mean of the fft of the body acceleration jerk magnitude
X.test.fBodyBodyAccJerkMag.std.. | standard deviation of the mean of the fft of the body acceleration jerk magnitude
X.test.fBodyBodyGyroMag.mean.. | average of the mean of the fft of the body gyro magnitude
X.test.fBodyBodyGyroMag.std.. | average of the standard deviation of the fft of the body gyro magnitude
X.test.fBodyBodyGyroJerkMag.mean.. | average of the mean of the fft of the body gyro jerk magnitude
X.test.fBodyBodyGyroJerkMag.std.. | average of the standard deviation of the fft of the body gyro jerk magnitude
