processData <- function ()
{
    # 1. read subjects information from training and test data sets
    #    and combine into 1 structure
    tr_subject <- read.table("subject_train.txt")
    ts_subject <- read.table("subject_test.txt")
    
    subject <- rbind(tr_subject,ts_subject)
    
    # 2. read activities information from training and test data sets
    #    and combine into 1 structure
    tr_activity <- read.table("y_train.txt")
    ts_activity <- read.table("y_test.txt")
    
    activity <- rbind(tr_activity,ts_activity)
    
    # 3. make activities column more readable
    activity[activity == 1] <- "walking"
    activity[activity == 2] <- "walking_upstairs"
    activity[activity == 3] <- "walking_downstairs"
    activity[activity == 4] <- "sitting"
    activity[activity == 5] <- "standing"
    activity[activity == 6] <- "laying"
    
    # 4. read the training and test data sets
    #    and combine into 1 structure
    tr_data <- read.table("X_train.txt")
    ts_data <- read.table("X_test.txt")
    
    t_data <- rbind(tr_data,ts_data)
    
    # 5. get the column names from features.txt and set the names for the columns.
    t_colnames <- read.table("features.txt")
    t_colnames <- t_colnames$V2
    names(t_data) <- t_colnames
    
    # 6. Bind the subject and activity columns. Add names to the columns.
    t_merged_data <- cbind(subject, activity)
    names(t_merged_data) <- c("subject","activity")
    
    # 7. Bind all the columns together. Change all names to lower case.
    t_merged_data <- cbind(t_merged_data, t_data)
    names(t_merged_data) <- tolower(names(t_merged_data))
    
    # 8. Filter data to contain only mean and standard deviation related information.
    t_merged_data <- t_merged_data[,grep("subject|activity|-mean|-std",names(t_merged_data))]
    
    # 9.Remove "()" in column names
    names(t_merged_data) <- sub("\\(\\)","",names(t_merged_data))
    
    # 10. Order by Subject
    t_merged_data <- t_merged_data[order(t_merged_data$subject),]
    
    # 11. Group data by subject and activity and get the mean of all variables.
    tidy_data <- t_merged_data %>% group_by(subject,activity,add=TRUE) %>% summarize_all(funs(mean))
    tidy_data

}

t_data <- processData()
write.table(t_data, file='tidy_data.txt', sep="\t", row.name=FALSE)