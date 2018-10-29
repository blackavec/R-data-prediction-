install.packages("tidyverse")

library(lattice)

sqsData <- read.csv("SQS-UserPersonalizationProcessingQueue.csv", header = TRUE, sep = ";", stringsAsFactors = TRUE)

timeList              <- as.factor(sqsData$Time)
deletedMessagesList   <- as.integer(sqsData$NumberOfMessagesDeleted_Sum)
receivedMessagesList  <- as.integer(sqsData$NumberOfMessagesReceived_Sum)
sentMessagesSumList   <- as.integer(sqsData$NumberOfMessagesSent_Sum)

chartDataFrame <- data.frame("time" = timeList, "deleted" = deletedMessagesList, "received" = receivedMessagesList, "sent" = sentMessagesSumList)

xyplot(
  deletedMessagesList+receivedMessagesList+sentMessagesSumList~timeList,
  data = chartDataFrame,
  type = "l",
  auto.key=list(space='bottom')
)
