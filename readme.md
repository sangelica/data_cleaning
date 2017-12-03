## Data Cleaning Project

The repository contains the following files:
* readme.md - mark down file containing information about the repository

* run_analysis.R - script used to generate the tidy data set

	Input to run the script (files should be in the same working directory as run_analysis.R):
	features.txt
	subject_test.txt
	subject_train.txt
	X_test.txt
	X_train.txt
	y_test.txt
	y_train.txt
	
	Output:
	tidy_data.txt - generated on the current working directory

    The script follows the following procedure to arrive at the final data:
	1. Read subjects information from training and test data sets and combine into 1 structure.
    2. Read activities information from training and test data sets and combine into 1 structure
    3. Make activities column more readable, by changing the number values to equivalent string activities.
    4. Read the training and test data sets and combine into 1 structure.
    5. Get the column names from features.txt and set the names for each of the columns.
    6. Bind the subject and activity columns. Add names to the columns.
    7. Bind all the columns together. Change all names to lower case.
    8. Filter data to contain only mean and standard deviation related information.
    9. Remove "()" in column names for readability.
    10. Order the data set by Subject.
    11. Group data by subject and activity and get the mean for all variables.
	
* codebook.md - mark down file containing information on the different variables in the "tidy_data.txt".
