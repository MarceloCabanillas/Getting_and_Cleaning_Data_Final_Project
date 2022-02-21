# Getting_and_Cleaning_Data_Final_Project
## Regarding my overall presentation of the project
First of all, I am not sure I understood the instructions. They ask me to merge the training and test data sets based on the type of activity and the people who these data sets correspond to. However, looking at the X_test.txt file, for instance, how can I know what each number represents?
For my code, I have assumed that every set of six values represents the collection of values for the activities of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING respectively , in other words, a row in the data set (sorry if my English is not good).
Based on this, the purpose of the script is to get the mean and standard deviation for each activity, both for the training and data sets and put it altogether on a data frame.
I have not considered the people who performed the activities as a criteria for merging because their names appear strange on the text files and the README file of the database says that 70% of them produced the data for the training data and the rest for the test data, which makes me think that no person that belongs to the training data can belong to the test data and viceversa, but I may be wrong.
Second of all, it takes a lot of time for my laptop to execute my code, so I have not been able to show the proper values that should appear on the text file I submitted to Coursera and instead there are hyphens.
## Regarding the explanation of my script
- First part: I read the test data set located at a particular directory of my computer as a table, but want it all in a vector so I store all the data in the datatest_v vector with for loops.
- Second part: As you may have read above, I am assuming the data has six columns and each one corresponds to a particular activity. To summarise, my objective here is to store each column in a vector. It is now easier for me to do this because the whole data is in a single vector. The first while loop will store the values datatest_v[6], datatest_v[12], datatest_v[18] and so on, which represent the sixth column. The next while loops do the same but with the rest of the columns in decreasing order (fifth column, fourth column, third, column, etc).
- Third part: I create a list of these vectors and get the mean and standard deviation of each of them using sapply. They are now in 2 vectors of length 6.
- THE FOLLOWING 3 PARTS ARE BASICALLY A REPETITION OF THE FIRST, SECOND AND THIRD PARTS RESPECTIVELY, BUT THIS TIME USING THE TRAINING DATA SET. I THINK YOU CAN SKIP THEM, BUT I WILL WRITE THEM ANYWAY JUST IN CASE.
- Fourth part: Next, I read the training data set located at a particular directory of my computer as a table, but want it all in a vector so I store all the data in the datatrain_v vector with for loops.
- Fifth part: As you may have read above, I am assuming the data has six columns and each one corresponds to a particular activity. To summarise, my objective here is to store each column in a vector. It is now easier for me to do this because the whole data is in a single vector. The first while loop will store the values datatrain_v[6], datatrain_v[12], datatrain_v[18] and so on, which represent the sixth column. The next while loops do the same but with the rest of the columns in decreasing order (fifth column, fourth column, third, column, etc).
- Sixth part: I create a list of these vectors and get the mean and standard deviation of each of them using sapply. They are now in 2 vectors of length 6.
- THIS IS THE LAST PART
- Seventh part: With the 4 vectors I created on the previous parts, I create and show a data frame where each column is for a type of value. The first two are the means for the test and training data sets and the next two are for the standard deviations for the test and training data sets. Also, each row represents an activity performed by the people of the experiment (sitting, standing, laying, etc).

Thank you for your time.
¡ABDUSCAN!
