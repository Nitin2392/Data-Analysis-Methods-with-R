# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks/Week2")
getwd()
read_tombstone_data <- read.csv("tombstone.csv")
head(read_tombstone_data)

# Question 2

plot(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3., 
      read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years., 
        xlab = "Mean SO2 concentrations over a 100-year period", 
        ylab = "Marble Tombstone Mean Surface Recession Rates")

# Question 3

lm_model_ts = lm(read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.~
                 read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.)
lm_model_ts

#3.1

lm_model_ts$coefficients

#3.2

fittedvalues = lm_model_ts$fitted.values
fittedvalues
sum(fittedvalues)

# 3.3

sum(read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.)

# 3.4

residualsVar = lm_model_ts$residuals
residualsVar
sum(residualsVar)

# 3.5
#Standard Error
summary(lm_model_ts)

# 4
summary(lm_model_ts)
new_data <- read_tombstone_data
new_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3. <- 
  new_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.+1
summary(lm(new_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.~
             new_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.))

# 5

plot(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3., 
     read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years., 
     xlab = "Mean SO2 concentrations over a 100-year period", 
     ylab = "Marble Tombstone Mean Surface Recession Rates")
points(mean(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.),
       mean(read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.))
abline(lm_model_ts,col="blue")

# 6

summary(read_tombstone_data)

# 7

data_frame_Q6 <- data.frame(read_tombstone_data$City, abs(lm_model_ts$residuals))
colnames(data_frame_Q6) <- c("City","AbsResidual")
library(plyr)
arrange(data_frame_Q6,data_frame_Q6$AbsResidual)

# 8

mean(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.)
mean(read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.)

plot(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3., 
     read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years., 
     xlab = "Mean SO2 concentrations over a 100-year period", 
     ylab = "Marble Tombstone Mean Surface Recession Rates")
points(mean(read_tombstone_data$Modelled.100.Year.Mean.SO2.Concentration..ug.m..3.),
       mean(read_tombstone_data$Marble.Tombstone.Mean.Surface.Recession.Rate..mm.100years.))
abline(lm_model_ts,col="blue")

