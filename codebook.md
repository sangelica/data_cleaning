Study Design:

    Background information:
    The original data is from an experiment where 30 participants (subjects) were asked to perform 6 different types of activities: walking, walking_upstairs, walking_downstairs, sitting, standing and laying.
    A smartphone with an accelerometer and gyroscope is attached to their waist and used to measure 3-axial raw signals tAcc-XYZ and tGyro-XYZ at a constant rate of 50 Hz.

    Recipe to tidy data:
    1. Read "subject_train.txt" and "subject_test.txt" from training and test data sets and combine the list of subjects into 1 structure.
    2. Read "y_train.txt" and "y_test.txt" from training and test data sets and combine the list of activities into 1 structure.
    3. Make the list of activities more readable, by changing the number values to equivalent character type values.
        1: walking
        2: walking_upstairs
        3: walking_downstairs
        4: sitting
        5: standing
        6: laying
	
    4. Read the "X_train.txt" and "X_test.txt" data sets and combine into 1 structure.
    5. Get the column names from features.txt and set the names for each of the columns read in #4.
    6. Bind the subject and activity columns. Add names to the columns.
    7. Bind all of the columns together. Change all names to lower case.
    8. Filter data to contain only columns measuring mean and standard deviation of the different variables.
    9. Remove "()" in column names for readability.
    10. Order the data set by Subject.
    11. Group data by subject and activity and get the mean for all variables.

Variables:

* subject - Numbered 1-30, representing the participants in the experiment.
* activity - The different activities performed by the participants.
			walking
			walking_upstairs
			walking_downstairs
			sitting
			standing
			laying

Most of the variables below are in the following format <attribute>-<mean/std/meanFreq>-<x/y/z>

<attribute> are the different components of sensor signals measured by the accelerometer and gyroscope over time and frequency variables.
3 axial raw signal tAcc-XYZ and tGyro-XYZ measurements are processed and separated into different components represented by the variables below.

Please refer to:
http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions
for more information on this processing.

<mean/std/meanFreq> are the type of values obtained for each of the columns at the time of the experiment.
mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

<x/y/z> - direction of the signal measurement (X,Y,Z direction)

Finally, the values on each of the columns below are the calculated average values when data from step 8 above is grouped by subject and activity.

Acceleration signal was separated into body and gravity acceleration signals (tbodyacc and tgravityacc) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
These measurements are represented by the variables below.
* tbodyacc-mean-x
* tbodyacc-mean-y
* tbodyacc-mean-z
* tbodyacc-std-x               
* tbodyacc-std-y
* tbodyacc-std-z
* tgravityacc-mean-x           
* tgravityacc-mean-y
* tgravityacc-mean-z
* tgravityacc-std-x            
* tgravityacc-std-y
* tgravityacc-std-z

Body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk-XYZ and tbodygyrojerk-XYZ).
These measurements are represented by the variables below.

* tbodyaccjerk-mean-x          
* tbodyaccjerk-mean-y
* tbodyaccjerk-mean-z
* tbodyaccjerk-std-x           
* tbodyaccjerk-std-y
* tbodyaccjerk-std-z

* tbodygyrojerk-mean-x         
* tbodygyrojerk-mean-y
* tbodygyrojerk-mean-z
* tbodygyrojerk-std-x          
* tbodygyrojerk-std-y
* tbodygyrojerk-std-z

Gyroscope measurements represented by variables below.
* tbodygyro-mean-x             
* tbodygyro-mean-y
* tbodygyro-mean-z
* tbodygyro-std-x              
* tbodygyro-std-y
* tbodygyro-std-z


The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag)
* tbodyaccmag-mean             
* tbodyaccmag-std
* tgravityaccmag-mean
* tgravityaccmag-std           
* tbodyaccjerkmag-mean
* tbodyaccjerkmag-std
* tbodygyromag-mean            
* tbodygyromag-std
* tbodygyrojerkmag-mean
* tbodygyrojerkmag-std

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-XYZ, fbodyaccjerk-XYZ, fbodygyro-XYZ, fbodyaccmag, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

* fbodyacc-mean-x
* fbodyacc-mean-y
* fbodyacc-mean-z              
* fbodyacc-std-x
* fbodyacc-std-y
* fbodyacc-std-z               
* fbodyacc-meanfreq-x
* fbodyacc-meanfreq-y
* fbodyacc-meanfreq-z          
* fbodyaccjerk-mean-x
* fbodyaccjerk-mean-y
* fbodyaccjerk-mean-z          
* fbodyaccjerk-std-x
* fbodyaccjerk-std-y
* fbodyaccjerk-std-z           
* fbodyaccjerk-meanfreq-x
* fbodyaccjerk-meanfreq-y
* fbodyaccjerk-meanfreq-z      
* fbodygyro-mean-x
* fbodygyro-mean-y
* fbodygyro-mean-z             
* fbodygyro-std-x
* fbodygyro-std-y
* fbodygyro-std-z              
* fbodygyro-meanfreq-x
* fbodygyro-meanfreq-y
* fbodygyro-meanfreq-z  
* fbodyaccmag-mean
* fbodyaccmag-std
* fbodyaccmag-meanfreq         
* fbodyaccjerkmag-mean
* fbodyaccjerkmag-std
* fbodyaccjerkmag-meanfreq 
* fbodygyromag-mean
* fbodygyromag-std
* fbodygyromag-meanfreq    
* fbodygyrojerkmag-mean
* fbodygyrojerkmag-std
* fbodygyrojerkmag-meanfreq