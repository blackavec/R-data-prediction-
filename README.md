the purpose of this project is to predict the spikes on AWS SQS.

# Data Source
the data has been exported from grafana's console.
for future exports, make sure you will export csv file consists of 4 columns as following:

Time, NumberOfMessagesDeleted_Sum, NumberOfMessagesReceived_Sum, NumberOfMessagesSent_Sum

# Requirements
- R Studio
- R lang 
- Python [2.*, 3.*]

# Startup
you can find a csv file regarding SQS transaction numbers in windows of 5M and range of 1 Week.

[CSV File] (./SQS-UserPersonalizationProcessingQueue.csv)

