#To know what each part means, I suggest you to read this script along the README file in the repository.
#First Part
datatest = read.table("C:/Users/user/Desktop/Coursera/R/3/sem4/UCI HAR Dataset/test/X_test.txt", header = FALSE)
datatest_v = c()
for(i in 1:nrow(datatest)) {
  for(j in 1:ncol(datatest)){
    datatest_v = c(datatest_v, datatest[i,j])
  }
}

#Second Part
test_WALKING = c()
test_WALKING_UPSTAIRS = c()
test_WALKING_DOWNSTAIRS = c()
test_SITTING = c()
test_STANDING = c()
test_LAYING = c()

k = 1
while(6*k <= length(datatest_v)){
  test_WALKING = c(test_WALKING,datatest_v[6*k]
  k = k + 1
}

k = 1
while(6*k - 1 <= length(datatest_v)){
  test_WALKING_UPSTAIRS = c(test_WALKING_UPSTAIRS,datatest_v[6*k - 1]
  k = k + 1
}

k = 1
while(6*k - 2 <= length(datatest_v)){
  test_WALKING_DOWNSTAIRS = c(test_WALKING_DOWNSTAIRS,datatest_v[6*k - 2]
                   k = k + 1
}

k = 1
while(6*k - 3 <= length(datatest_v)){
  test_SITTING = c(test_SITTING,datatest_v[6*k - 3]
                   k = k + 1
}

k = 1
while(6*k - 4 <= length(datatest_v)){
  test_STANDING = c(test_STANDING,datatest_v[6*k - 4]
                   k = k + 1
}

k = 1
while(6*k - 5 <= length(datatest_v)){
  test_LAYING = c(test_LAYING,datatest_v[6*k - 5]
                   k = k + 1
}

#Third Part
list_of_activities_test = list(test_WALKING=test_WALKING, test_WALKING_UPSTAIRS=test_WALKING_UPSTAIRS, test_WALKING_DOWNSTAIRS=test_WALKING_DOWNSTAIRS, test_SITTING=test_SITTING, test_STANDING=test_STANDING, test_LAYING=test_LAYING)
vector_of_means_test = sapply(list_of_activities_test, mean)
vector_of_std_dev_test = sapplpy(list_of_activities_test, sd)

#Fourth Part
datatrain = read.table("C:/Users/user/Desktop/Coursera/R/3/sem4/UCI HAR Dataset/train/X_train.txt", header = FALSE)
datatrain_v = c()
for(i in 1:nrow(datatrain)) {
  for(j in 1:ncol(datatrain)){
    datatrain_v = c(datatrain_v, datatrain[i,j])
  }
}

#Fifth part
train_WALKING = c()
train_WALKING_UPSTAIRS = c()
train_WALKING_DOWNSTAIRS = c()
train_SITTING = c()
train_STANDING = c()
train_LAYING = c()

k = 1
while(6*k <= length(datatrain_v)){
  train_WALKING = c(train_WALKING,datatrain_v[6*k]
                   k = k + 1
}

k = 1
while(6*k - 1 <= length(datatrain_v)){
  train_WALKING_UPSTAIRS = c(train_WALKING_UPSTAIRS,datatrain_v[6*k - 1]
                            k = k + 1
}

k = 1
while(6*k - 2 <= length(datatrain_v)){
  train_WALKING_DOWNSTAIRS = c(train_WALKING_DOWNSTAIRS,datatrain_v[6*k - 2]
                              k = k + 1
}

k = 1
while(6*k - 3 <= length(datatrain_v)){
  train_SITTING = c(train_SITTING,datatrain_v[6*k - 3]
                   k = k + 1
}

k = 1
while(6*k - 4 <= length(datatrain_v)){
  train_STANDING = c(train_STANDING,datatrain_v[6*k - 4]
                    k = k + 1
}

k = 1
while(6*k - 5 <= length(datatrain_v)){
  train_LAYING = c(train_LAYING,datatrain_v[6*k - 5]
                  k = k + 1
}

#Sixth part
list_of_activities_test = list(train_WALKING=train_WALKING, train_WALKING_UPSTAIRS=train_WALKING_UPSTAIRS, train_WALKING_DOWNSTAIRS=train_WALKING_DOWNSTAIRS, train_SITTING=train_SITTING, train_STANDING=train_STANDING, train_LAYING=train_LAYING)
vector_of_means_train = sapply(list_of_activities_train, mean)
vector_of_std_dev_train = sapplpy(list_of_activities_train, sd)

#Seventh part
TIDY_DATA = data.frame(Means_of_test_data=vector_of_means_test,Means_of_train_data=vector_of_means_train,StndrdDev_of_test_Data=vector_of_std_dev_test,StndrdDev_of_train_Data=vector_of_std_dev_train)
TIDY_DATA