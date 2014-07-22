Code Book
=========

This book provides explanatory notes on the data sets generated as part of the Course Project assignment for 
**Getting and Cleaning Data** course on **Coursera**. 

The assignment is from  the base data set at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
by:
**Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz**. Human Activity Recognition 
on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient 
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

A R-script “__*run_analysis.R*__” generates two text files “__*data_mean_std_desc.txt*__” and “__*tidy_data.txt*__”.  

**data_mean_std_desc.txt** has *68 variables x 10299 observations*. These 68 variables are the mean and 
standard deviation variables from the base data set with the activity no and their descriptions 
merged to the mean and standard deviation variables extracted from the base data set. Word Key for
the 68 variable names are as:


**mean** – mean value of the variable			**acc** – Acceleration
**sdev** – Standard deviation of the variable		**vel** – Velocity
**body** – Data is related to body or person		**time** – Time domain
**gravity** – Gravity acceleration data			**freq** – Frequency domain
**lin** – Linear value					**X,Y,Z** – Direction X, Y or Z
|**ang** – Angular value


**tidy-data.txt** has *563 variables x 54 observations*. These 563 variables are activity number, subject
and all the 561 variables as described in the feature.txt document on the UCI data. The 54 observations are
the mean of each of the variable by activity and by subject.
 

                                **Data Dictionary** - *data_mean_std_desc.txt*

Col No.	|Column Name			|Column Name Detailed Explanation
:-------|:------------------------------|:-------------------------------------------------------------------------
1	|activity.no	|Activity number designation
2	|mean.body.lin.acc.time.X.dir	|Time domain mean body linear acceleration in direction X
3	|mean.body.lin.acc.time.Y.dir	|Time domain mean body linear acceleration in direction Y
4	|mean.body.lin.acc.time.Z.dir	|Time domain mean body linear acceleration in direction Z
5	|sdev.body.lin.acc.time.X.dir	|Time domain standard deviation body  linear acceleration in direction X
6	|sdev.body.lin.acc.time.Y.dir	|Time domain standard deviation body linear acceleration in direction Y
7	|sdev.body.lin.acc.time.Z.dir	|Time domain standard deviation body linear acceleration in direction Z
8	|mean.gravity.lin.acc.time.X.dir	|Time domain mean gravity linear acceleration in direction X
9	|mean.gravity.lin.acc.time.Y.dir	|Time domain mean gravity linear acceleration in direction Y
10	|mean.gravity.lin.acc.time.Z.dir	|Time domain mean gravity linear acceleration in direction Z
11	|sdev.gravity.lin.acc.time.X.dir	|Time domain standard deviation gravity  linear acceleration in direction X
12	|sdev.gravity.lin.acc.time.Y.dir	|Time domain standard deviation gravity linear acceleration in direction Y
13	|sdev.gravity.lin.acc.time.Z.dir	|Time domain standard deviation gravity linear acceleration in direction Z
14	|mean.body.lin.vel.time.X.dir	|Time domain mean body linear velocity in direction X
15	|mean.body.lin.vel.time.Y.dir	|Time domain mean body linear velocity in direction Y
16	|mean.body.lin.vel.time.Z.dir	|Time domain mean body linear velocity in direction Z
17	|sdev.body.lin.vel.time.X.dir	|Time domain standard deviation body  linear velocity in direction X
18	|sdev.body.lin.vel.time.Y.dir	|Time domain standard deviation body linear velocity in direction Y
19	|sdev.body.lin.vel.time.Z.dir	|Time domain standard deviation body linear velocity in direction Z
20	|mean.body.ang.acc.time.X.dir	|Time domain mean body angular acceleration in direction X
21	|mean.body.ang.acc.time.Y.dir	|Time domain mean body angular acceleration in direction Y
22	|mean.body.ang.acc.time.Z.dir	|Time domain mean body angular acceleration in direction Z
23	|sdev.body.ang.acc.time.X.dir	|Time domain standard deviation body  angular acceleration in direction X
24	|sdev.body.ang.acc.time.Y.dir	|Time domain standard deviation body angular acceleration in direction Y
25	|sdev.body.ang.acc.time.Z.dir	|Time domain standard deviation body angular acceleration in direction Z
26	|mean.body.ang.vel.time.X.dir	|Time domain mean body angular velocity in direction X
27	|mean.body.ang.vel.time.Y.dir	|Time domain mean body angular velocity in direction Y
28	|mean.body.ang.vel.time.Z.dir	|Time domain mean body angular velocity in direction Z
29	|sdev.body.ang.vel.time.X.dir	|Time domain standard deviation body  angular velocity in direction X
30	|sdev.body.ang.vel.time.Y.dir	|Time domain standard deviation body angular velocity in direction Y
31	|sdev.body.ang.vel.time.Z.dir	|Time domain standard deviation body angular velocity in direction Z
32	|mean.body.lin.acc.time.mag	|Time domain mean body linear acceleration magnitude
33	|sdev.body.lin.acc.time.mag	|Time domain standard deviation body linear acceleration magnitude
34	|mean.gravity.lin.acc.time.mag	|Time domain mean gravity linear acceleration magnitude
35	|sdev.gravity.lin.acc.time.mag	|Time domain standard deviation gravity linear acceleration magnitude
36	|mean.body.lin.vel.time.mag	|Time domain mean body linear velocity magnitude
37	|sdev.body.lin.vel.time.mag	|Time domain standard deviation body linear velocity magnitude
38	|mean.body.ang.acc.time.mag	|Time domain mean body angular acceleration magnitude
39	|sdev.body.ang.acc.time.mag	|Time domain standard deviation body angular acceleration magnitude
40	|mean.body.ang.vel.time.mag	|Time domain mean body angular velocity magnitude
41	|sdev.body.ang.vel.time.mag	|Time domain standard deviation body angular velocity magnitude
42	|mean.body.lin.acc.freq.X.dir	|Frequency domain mean body linear acceleration in direction X
43	|mean.body.lin.acc.freq.Y.dir	|Frequency domain mean body linear acceleration in direction Y
44	|mean.body.lin.acc.freq.Z.dir	|Frequency domain mean body linear acceleration in direction Z
45	|sdev.body.lin.acc.freq.X.dir	|Ffrequency domain standard deviation body  linear acceleration in direction X
46	|sdev.body.lin.acc.freq.Y.dir	|Frequency domain standard deviation body linear acceleration in direction Y
47	|sdev.body.lin.acc.freq.Z.dir	|Frequency domain standard deviation body linear acceleration in direction Z
48	|mean.body.lin.vel.freq.X.dir	|Frequency domain mean body linear velocity in direction X
49	|mean.body.lin.vel.freq.Y.dir	|Frequency domain mean body linear velocity in direction Y
50	|mean.body.lin.vel.freq.Z.dir	|Frequency domain mean body linear velocity in direction Z
51	|sdev.body.lin.vel.freq.X.dir	|Frequency domain standard deviation body  linear velocity in direction X
52	|sdev.body.lin.vel.freq.Y.dir	|Frequency domain standard deviation body linear velocity in direction Y
53	|sdev.body.lin.vel.freq.Z.dir	|Frequency domain standard deviation body linear velocity in direction Z
54	|mean.body.ang.acc.freq.X.dir	|Frequency domain mean body angular acceleration in direction X
55	|mean.body.ang.acc.freq.Y.dir	|Frequency domain mean body angular acceleration in direction Y
56	|mean.body.ang.acc.freq.Z.dir	|Frequency domain mean body angular acceleration in direction Z
57	|sdev.body.ang.acc.freq.X.dir	|Frequency domain standard deviation body  angular acceleration in direction X
58	|sdev.body.ang.acc.freq.Y.dir	|Frequency domain standard deviation body angular acceleration in direction Y
59	|sdev.body.ang.acc.freq.Z.dir	|Frequency domain standard deviation body angular acceleration in direction Z
60	|mean.body.lin.acc.freq.mag	|Frequency domain mean body linear acceleration magnitude
61	|sdev.body.lin.acc.freq.mag	|Frequency domain standard deviation body linear acceleration magnitude
62	|mean.body.lin.vel.freq.mag	|Frequency domain mean body linear velocity magnitude
63	|sdev.body.lin.vel.freq.mag	|Frequency domain standard deviation body linear velocity magnitude
64	|mean.body.ang.acc.freq.mag	|Frequency domain mean body angular acceleration magnitude
65	|sdev.body.ang.acc.freq.mag	|Frequency domain standard deviation body angular acceleration magnitude
66	|mean.body.ang.vel.freq.mag	|Frequency domain mean body angular velocity magnitude
67	|sdev.body.ang.vel.freq.mag	|Frequency domain standard deviation body angular velocity magnitude
68	|activity	|Activity name
 
                                    **Data Dictionary** – *tidy_data.txt*

		
Col No.	|Column Name	|Column Name Detailed Explanation
:-------|:--------------|:--------------------------------
1	|activity.no	|Activity number
2	|subject	|Subject number
V1-V561	|Variables as defined in feature.txt on UCI
