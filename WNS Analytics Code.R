
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('randomForest') # classification algorithm

#Now that our packages are loaded, let's read in and take a peek at the data.

#view log of users (2018/10/15 - 2018/12/11)
view_log <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/view_log.csv', stringsAsFactors = F)
head(view_log)

#the product description collected from the Zbay website
item_data <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/item_data.csv', stringsAsFactors = F)
head(item_data)

#Train data contains the impression logs during 2018/11/15 - 2018/12/13 along with the label which specifies whether the ad is clicked or not.
train <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/train.csv', stringsAsFactors = F)
head(train)




