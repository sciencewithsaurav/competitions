
###############################
#  Packages import
###############################

library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('randomForest') # classification algorithm

###############################
#  Importing data
###############################

#view log of users (2018/10/15 - 2018/12/11)
view_log <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/view_log.csv', stringsAsFactors = F)
head(view_log)

#the product description collected from the Zbay website
item_data <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/item_data.csv', stringsAsFactors = F)
head(item_data)

#Train data contains the impression logs during 2018/11/15 - 2018/12/13 along with the label which specifies whether the ad is clicked or not.
train <- read.csv('D:/Data Science/WNS Analytics Wizard 2019/train_NA17Sgz/train.csv', stringsAsFactors = F)
head(train)


###############################
#  Exploratory data analysis
###############################

unique(view_log$device_type) #"android" "iphone"  "web" 

count(view_log, view_log$device_type)
#1 android                3117737
#2 iphone                     861
#3 web                         24

unique(train$os_version) #"old"          "latest"       "intermediate"

ggplot(train,aes(x = train$os_version, fill = factor(train$is_4G))) +
  geom_bar(stat='count') +
  scale_y_continuous(trans = "log10") +
  xlab("OS version") +
  facet_grid(.~train$is_click)



