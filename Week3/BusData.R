# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks/Week3")
getwd()
bus_data <- read.csv("bus.csv")
head(bus_data)

# Question 2

summary(bus_data)

lm_model_ts = lm(bus_data$Expenses.per.car.mile..pence.~
                   bus_data$Car.miles.per.year..1000s.)
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

plot(bus_data$Car.miles.per.year..1000s., 
     bus_data$Expenses.per.car.mile..pence., 
     xlab = "Car Miles Per Year", 
     ylab = "Expenses Per Car Mile")
lines(bus_data$Car.miles.per.year..1000s.,plot[,2], col='red')
lines(bus_data$Car.miles.per.year..1000s.,plot[,3], col='red')
abline(lm_model_ts)
points(mean(bus_data$Car.miles.per.year..1000s.),
       mean(bus_data$Expenses.per.car.mile..pence.),pch=20,
       col="green")

# Question 4
