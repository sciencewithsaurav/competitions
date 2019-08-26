
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('randomForest') # classification algorithm

#Now that our packages are loaded, let's read in and take a peek at the data.
item_data <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/item_data.csv', stringsAsFactors = F)
head(item_data)

train <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/train.csv', stringsAsFactors = F)
head(train)

view_log <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/view_log.csv', stringsAsFactors = F)
head(view_log)




