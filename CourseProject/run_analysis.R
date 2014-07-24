                # COURSERA : Getting & Cleaning Data - Course Project #


    #     List of relevant text files in directory :
    #         X_test.txt, X_train.txt - test and train data set.
    #         features.txt - measurement/column names.
    #         y_test.txt, y_train.txt - measurement activity numbers
    #         subject_test.txt - subject list for each measurement set
    #         activity_labels.txt
    
# User Function definitions.

# Define function to change col names

changename=function(name){
    
    if (grepl('mean',name)) {str1='mean'
    }else if (grepl('std',name)) str1='sdev'
    
    if (grepl('tBodyAcc[^jerkmag]',name,ignore.case=T)) {str2='body.lin.acc.time'
    }else if (grepl('tGravityAcc[^jerkmag]',name,ignore.case=T)) {str2='gravity.lin.acc.time'
    }else if (grepl('tBodyAccJerk[^mag]',name,ignore.case=T)) {str2='body.lin.vel.time'
    }else if (grepl('tBodyGyro[^jerkmag]',name,ignore.case=T)) {str2='body.ang.acc.time'
    }else if (grepl('tBodyGyroJerk[^mag]',name,ignore.case=T)) {str2='body.ang.vel.time'
    }else if (grepl('tBodyAccMag',name,ignore.case=T)) {str2='body.lin.acc.time.mag'                                       
    }else if (grepl('tGravityAccMag',name,ignore.case=T)) {str2='gravity.lin.acc.time.mag'
    }else if (grepl('tBodyAccJerkMag',name,ignore.case=T)) {str2='body.lin.vel.time.mag'
    }else if (grepl('tBodyGyroMag',name,ignore.case=T)) {str2='body.ang.acc.time.mag'
    }else if (grepl('tBodyGyroJerkMag',name,ignore.case=T)) {str2='body.ang.vel.time.mag'                                         
    }else if (grepl('fBodyAcc[^jerkmag]',name,ignore.case=T)) {str2='body.lin.acc.freq'
    }else if (grepl('fBodyAccJerk[^mag]',name,ignore.case=T)) {str2='body.lin.vel.freq'
    }else if (grepl('fBodyGyro[^jerkmag]',name,ignore.case=T)) {str2='body.ang.acc.freq'
    }else if (grepl('fBodyGyroJerk[^mag]',name,ignore.case=T)) {str2='body.ang.vel.freq'
    }else if (grepl('fBodyAccMag',name,ignore.case=T)) {str2='body.lin.acc.freq.mag'                                       
    }else if (grepl('fBodyBodyAccJerkMag',name,ignore.case=T)) {str2='body.lin.vel.freq.mag'
    }else if (grepl('fBodyBodyGyroMag',name,ignore.case=T)) {str2='body.ang.acc.freq.mag'
    }else if (grepl('fBodyBodyGyroJerkMag',name,ignore.case=T)) str2='body.ang.vel.freq.mag'
    
    if (grepl('X',name)) {str3='X.dir'
    }else if (grepl('Y',name)) {str3='Y.dir'
    }else if (grepl('Z',name)) str3='Z.dir'                                         
    
    if (exists('str3')){
        result=paste(str1,str2,str3,sep='.')
    } else {result=paste(str1,str2,sep='.')}
    
}


# Assignment No. 1: Merge and create one data set of training and test data set


    # Load relevant data files into R:
    
    # Find path to test and train data set

    file.paths=list.files(pattern='^X_.*\\.txt|features.txt|^y_.*\\.txt|^subject.*\\.txt|activity_labels.txt',
                          recursive=T, include.dirs=T)
    
    # [1] "UCI HAR Dataset/activity_labels.txt"     "UCI HAR Dataset/features.txt"           
    # [3] "UCI HAR Dataset/test/subject_test.txt"   "UCI HAR Dataset/test/X_test.txt"        
    # [5] "UCI HAR Dataset/test/y_test.txt"         "UCI HAR Dataset/train/subject_train.txt"
    # [7] "UCI HAR Dataset/train/X_train.txt"       "UCI HAR Dataset/train/y_train.txt"

    # Load the files to R:
    
    message('Loading files.....pls wait')
    data.test=read.table(file.paths[4]) # test data file
    data.train=read.table(file.paths[7]) # training data file
    feature=read.table(file.paths[2]) # column name list
    rowact.test=read.table(file.paths[5]) # data of activity no for row for test data
    rowact.train=read.table(file.paths[8]) # data of activity no for row for training data
    subject.test=read.table(file.paths[3]) # data of subjects for test data
    subject.train=read.table(file.paths[6]) # data of subjects for training data
    act_label=read.table(file.paths[1]) # Activity labels and description
    
    
    # Review each loaded file with head(file,3) & tail(file,3) commands
    
    # Merge the test and train data into one data set
    
    data.merge=rbind(data.test,data.train)
    

    
# Assignment No. 2: Extract only the measurements on the mean 
#                   and standard deviation for each measurement
    
    # Name total dataset with column names from feature data
    
    names(data.merge)=as.character(feature[,2])
    
    # Get subsetted data of mean and std deviation values for test and train data
    
    # Find column names to keep
    index=grep("mean\\(\\)|std\\(\\)",names(data.merge),value=T,ignore.case=T)
    
    # Subset total dataset
    data.merge.sub=data.merge[index]
    
    
# Assignment No. 3: Use descriptive activity names to name the activities 
#                   in the data set (In assignment no 1., test is the first data set in rbind)
    
    rowact.merge=rbind(rowact.test,rowact.train) # merge test and train activity rows
    
    data.merge.sub=cbind(data.merge.sub,rowact.merge) # Add the activity rows to data.merge
    
    names(data.merge.sub)[67]='activity.no'
    
    names(act_label)=c('activity.no','activity') # name the columns of activity label data
    
    data.merge.sub=merge(data.merge.sub,act_label,by='activity.no',sort=F) #merge data on activity no
                                                                           # set sort to false to avoid warnings
    
    
# Assignment No. 4 : Label the data set with appropriate descriptive variable names
    
    # col name key :mean,sdev=mean and standard deviation of measurement
    #               body=body based, gravity=gravity based, 
    #               lin=linear, ang=angular, acc=acceleration,vel=velocity, 
    #               time=time domain, freq=frequency domain, mag=magnitude
    #               X.dir=X direction, Y.dir=Y direction, Z.dir=Z direction
    
    name.label=names(data.merge.sub)[2:67] # Extract the relevant col names
    
    desc.label=unlist(sapply(name.label,changename)) # change the names.*changename*-user defined
    
    names(data.merge.sub)[2:67]=desc.label # Change column names to descriptive names as per key
    
    write.table(data.merge.sub,'data_mean_std_desc.txt') # write the final truncated data to a text file
    
    
# Assignment No. 5 : Create a second, independent tidy data set with the average of each variable 
#                    for each activity and each subject
    
    library(reshape2) # load library reshape2 for data resetting
    
    names.merge=paste0("V",1:561) # generate name list. Avoid instability
    
    names(data.merge)=names.merge # Rename to default col names
    
    subject.merge=rbind(subject.test,subject.train) # merge subject data
    
    data.merge=cbind(data.merge,rowact.merge) # merge with activity nos
    
    data.merge=cbind(data.merge,subject.merge) # merge with subject data
    
    names(data.merge)[562:563]=c('activity.no','subject') # name added columns
    
    data.merge=melt(data.merge,id.var=c('activity.no','subject')) # melt data on activity no
                                                                  # & subject    
    
    data.merge=dcast(data.merge,activity.no+subject~variable,mean) # Recast with mean
    
    names(data.merge)[3:563]=as.character(feature[,2])

    write.table(data.merge,'tidy_data.txt')
    
    rm(list=ls())

    message('Run Analysis successful....output files saved to working directory')

    
