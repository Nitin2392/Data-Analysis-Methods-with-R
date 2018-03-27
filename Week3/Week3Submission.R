# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks/Week3")
getwd()
tomb_data <- read.csv("tombstone.csv")
head(tomb_data)

# Question 2

summary(tomb_data)

lm_model_ts = lm(tomb_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.~
                   tomb_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.)
lm_model_ts

summary(lm_model_ts)$r.square

# Question 3.1
summary(lm_model_ts)$coef[,3]
summary(lm_model_ts)$coef[,4]

# Question 3.2

anova_d1 = anova(lm_model_ts)
anova_d1

# Question 3.3

confint(lm_model_ts, level= 0.95)
plot = predict(lm_model_ts, interval = "confidence")
plot

# Question 3.4

plot(tomb_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3., 
     tomb_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years., 
     xlab = "Mean SO2 concentrations over a 100-year period", 
     ylab = "Marble Tombstone Mean Surface Recession Rates")
lines(tomb_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.,plot[,2], col='red')
lines(tomb_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.,plot[,3], col='red')
abline(lm_model_ts)
points(mean(tomb_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.),
       mean(tomb_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.),pch=20,
       col="green")

# Question 4
