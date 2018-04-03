# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks/Week4")
getwd()
read_pga_data <- read.csv("PGA.csv")
head(read_pga_data)

# Question 2

install.packages("psych")
library(psych)
pairs.panels(read_pga_data)

# Question 3

lm_model <- lm(AverageWinnings ~ Age+AverageDrive+DrivingAccuracy+
                 GreensonRegulation+AverageNumofPutts+SavePercent+NumEvents, data=read_pga_data)

summary(lm_model)

# Question 4

summary(lm_model)$coef[,3:4]

# Question 5

f_test = summary(lm_model)$fstatistic
f_stats = f_test[1]

f_stats

# Question 6

confint(lm_model)

# Question 7

prediction_case <- data.frame(Age = 35,
                             AverageDrive = 287, 
                             DrivingAccuracy = 64, 
                             GreensonRegulation = 64.9,
                             AverageNumofPutts = 1.778,
                             SavePercent = 48,
                             NumEvents = 26)

class(prediction_case)
pred_model = predict(lm_model, prediction_case,interval = "confidence", level = 0.95,
                     type="response")
pred_model

help(predict)

# Question 8
prediction_case_que8 = data.frame(Age = 42,
                             AverageDrive = 295, 
                             DrivingAccuracy = 69, 
                             GreensonRegulation = 67.7,
                             AverageNumofPutts = 1.80,
                             SavePercent = 54,
                             NumEvents = 30)
pred_model_que8 = predict(lm_model, prediction_case_que8, 
                     interval = "confidence", level = 0.95, 
                     type = "response")
pred_model_que8

pred_model[3] - pred_model[2]
pred_model_que8[3] - pred_model_que8[2]

# Question 9

sd = apply(read_pga_data[,-1],2,function(x) { (x - mean(x)/sd(x))})
sd = as.data.frame(sd)
new_lmmodel = lm(AverageWinnings ~ Age+AverageDrive+DrivingAccuracy+
             GreensonRegulation+AverageNumofPutts+SavePercent+NumEvents, data=sd)
summary(new_lmmodel)
barplot(summary(new_lmmodel)$coef)
                 