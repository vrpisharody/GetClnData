Course Project:
===============

This project is in completion of the Course Project assignment of Getting and Cleaning Data course on Coursera. This course project has four files on this repo. They are:

1. run_analysis.R
2. data_mean_std_desc.txt
3. tidy_data.txt
4. CodeBook.md

The __*run_analysis.R*__ script file is organized in to five sections in line with the assignment requirements.

The first section loads the relevant, required files using **read.table**. Test and Training data sets are then merged into 
one single file using **rbind**.

The second section uses **name** function and **R** **subsetting** rules to rename the variables or column names with the names provided
in the features file. Then the **grep** function is used with **regular expressions** to extract variables containing the mean and standard
deviation of the variables. There are *66* such variables.

The third section first uses **rbind** to merge the activity number test and training data. Then uses **cbind**  to merge the merged
activity number column to the main data set created in the second section. The added column and the column in the activity label data set
is named identical as 'activity.no' and these columns are used to merge the main data set with the activity label data. The 
**merge-by** function is used to merge the data sets on the column **'activity.no'**. 

The fourth section uses a *user defined function* - **changename** to rename the 66 variables extracted in the 
second section with descriptive names. The final data set of *68 variables x 10299 observations* is written to the 
working directory as *data_mean_std_desc.txt* using **write.table**.

The fifth section uses **melt** and **dcast** from the *library* **reshape2** to create a separate data set containing only the means
of the 561 variables in the data set pivoted on activity and subject. **Paste0** is used to create a string of names V1 to V561
to set the column names to its default in the data set loaded in the first section to avoid any instability during melt 
and dcast operations. Activity number data set created in the third section is merged using **cbind**. The subject test and
training data set read in in the first section is merged using **rbind** and the merged subject data set is then merged to the 
primary data set using **cbind**. The **melt** function from **reshape2** is then used to melt the data set on *activity+subject*.
The **dcast** function is then used to recast the data set with the mean of the variables. Subsequently, the names in the feature file is written as names of the last 561 columns of the generated data set. This data set is then written to the
working directory using **write.table** as *tidy_data.txt*.

Finally *rm(list=ls())* command is used to clean the environment. Messages at the beginning of the program and end of the program
is used to inform the user of the beginning of execution and successful completion of the program.
