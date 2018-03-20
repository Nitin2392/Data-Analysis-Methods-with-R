# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks/Week2")
getwd()
read_bus_data <- read.csv("bus.csv")
head(read_bus_data)

# Question 2
# y is always response variable
# x is covariate

plot(read_bus_data$Car.miles.per.year..1000s.,
     read_bus_data$Expenses.per.car.mile..pence.,
     xlab = "Car Miles Per Year", 
     ylab = "Expenses Per Car Mile")

# Question 3

lm_model_ts = lm(read_bus_data$Expenses.per.car.mile..pence.~
                   read_bus_data$Car.miles.per.year..1000s.)
                
lm_model_ts

#3.1

lm_model_ts$coefficients

#3.2

fittedvalues = lm_model_ts$fitted.values
fittedvalues
sum(fittedvalues)

# 3.3

sum(read_bus_data$Expenses.per.car.mile..pence.)

# 3.4

residualsVar = lm_model_ts$residuals
residualsVar
sum(residualsVar)

# 3.5
#Standard Error
summary(lm_model_ts)

# 4
summary(lm_model_ts)
new_data <- read_bus_data
new_data$Expenses.per.car.mile..pence. <- 
  new_data$Expenses.per.car.mile..pence. + 1
summary(lm(new_data$Expenses.per.car.mile..pence.~
             new_data$Car.miles.per.year..1000s.))

# 5

plot(read_bus_data$Car.miles.per.year..1000s.,
     read_bus_data$Expenses.per.car.mile..pence.,
     xlab = "Car Miles Per Year", 
     ylab = "Expenses Per Car Mile")
points(mean(read_bus_data$Car.miles.per.year..1000s.),
       mean(read_bus_data$Expenses.per.car.mile..pence.), pch=15)
abline(lm_model_ts,col="blue")

# 6

summary(read_bus_data)

# 7

data_frame_Q6 <- data.frame(read_bus_data$Car.miles.per.year..1000s., abs(lm_model_ts$residuals))
colnames(data_frame_Q6) <- c("Car Miles","AbsResidual")
library(plyr)
arrange(data_frame_Q6,data_frame_Q6$AbsResidual)

# 8

mean(read_bus_data$Car.miles.per.year..1000s.)
mean(read_bus_data$Expenses.per.car.mile..pence.)
plot(read_bus_data$Car.miles.per.year..1000s.,
     read_bus_data$Expenses.per.car.mile..pence.,
     xlab = "Car Miles Per Year", 
     ylab = "Expenses Per Car Mile")
points(mean(read_bus_data$Car.miles.per.year..1000s.),
       mean(read_bus_data$Expenses.per.car.mile..pence.), pch=15)
abline(lm_model_ts,col="blue")

