# read the features 
featureData <- read.table('./features.txt', sep="", header=FALSE)

# collect the test data in one data frame
testData <- read.table('./test/X_test.txt', sep="", header=FALSE)
colnames(testData) <- featureData[[2]]
subjectTestData <- read.table('./test/subject_test.txt', sep="", header=FALSE)
activityTestData <- read.table('./test/Y_test.txt', sep="", header=FALSE)
testData <- cbind(subjectTestData, activityTestData, testData)
colnames(testData)[1] = 'subject'
colnames(testData)[2] = 'activity_key'

# collect the training data in one data frame
trainData <- read.table('./train/X_train.txt', sep="", header=FALSE)
colnames(trainData) <- featureData[[2]]
subjectTrainData <- read.table('./train/subject_train.txt', sep="", header=FALSE)
activityTrainData <- read.table('./train/Y_train.txt', sep="", header=FALSE)
trainData <- cbind(subjectTrainData, activityTrainData, trainData)
colnames(trainData)[1] = 'subject'
colnames(trainData)[2] = 'activity_key'

# merge the training and the test data - point 1
phoneData = rbind(testData, trainData)

## filter feature columns for mean and standard deviation - point 2
phoneData = phoneData[c(1,2,grep('*mean\\(\\)*|*std\\(\\)*', colnames(phoneData)))]

# give the activities descriptive names  - point 3
activityLabelData <- read.table('./activity_labels.txt', sep="", header=FALSE)
colnames(activityLabelData) = c('activity_key','activity')
phoneData = merge(activityLabelData, phoneData, by='activity_key')
phoneData = subset(phoneData, select=-activity_key)

# give the variables descriptive names - point 4
# remove () 
# replace "-" by " "
# replace "t" by "Time " (only for first character)
# replace "f" by "Freq " (only for first character)
var <- colnames(phoneData)[3:length(colnames(phoneData))]
var <- gsub("\\(\\)", "", var)
var <- gsub("-", " ", var)
var <- sub("^t", "Time ", var)
var <- sub("^f", "Freq ", var)
var <- c(colnames(phoneData)[1:2], var)
colnames(phoneData) <- var

# create tidy data set with the average of each variable for each activity and each subject - point 5
phoneData$activity <- as.factor(phoneData$activity)
phoneData$subject <- as.factor(phoneData$subject)

meanData <- aggregate(phoneData[3:length(colnames(phoneData))], by = list(activity=phoneData$activity, subject=phoneData$subject), FUN="mean")
write.table(meanData, './mean.txt', sep="\t", row.names=FALSE)
