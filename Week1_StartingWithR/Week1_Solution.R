# Question 1
getwd()
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Homeworks")
getwd()
cardata_week1 <- read.csv("car_r.csv")
cardata_week1
?read.csv()

# Question 2

names(cardata_week1)
length(names(cardata_week1))

# Question 3
nrow(cardata_week1)
length(which(cardata_week1["brand"] == "Ford"))

# Question 4
mean(cardata_week1[['num_accidents']],na.rm=TRUE)
mean(cardata_week1[['mileage']],na.rm=TRUE)
mean(cardata_week1[['num_passengers']],na.rm=TRUE)
mean(cardata_week1[['speed_car']],na.rm=TRUE)
mean(cardata_week1[['speed_air']],na.rm=TRUE)
mean(cardata_week1[['height']],na.rm=TRUE)
mean(cardata_week1[['width']],na.rm=TRUE)

#SD
sd(cardata_week1[['num_accidents']],na.rm=TRUE)
sd(cardata_week1[['mileage']],na.rm=TRUE)
sd(cardata_week1[['num_passengers']],na.rm=TRUE)
sd(cardata_week1[['speed_car']],na.rm=TRUE)
sd(cardata_week1[['speed_air']],na.rm=TRUE)
sd(cardata_week1[['height']],na.rm=TRUE)
sd(cardata_week1[['width']],na.rm=TRUE)

#Question 5 - Histogram

hist(cardata_week1[['num_accidents']],col = "lightblue", border = "red", breaks = 30, main="Hist - Distribution of Car Accidents", xlab = "Number of Accidents")
hist(cardata_week1[['mileage']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Car Mileage", xlab = "Mileage")
hist(cardata_week1[['num_passengers']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Car Passengers", xlab = "Passengers")
hist(cardata_week1[['speed_car']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Car Speeds", xlab = "Car Speed")
hist(cardata_week1[['speed_air']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Air Speeds", xlab = "Air Speed")
hist(cardata_week1[['height']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Height", xlab = "Height")
hist(cardata_week1[['width']],col = "lightblue", border = "red", breaks  = "Sturges", main="Hist - Distribution of Width", xlab = "Width")

#Question 6 - Check for NA values

apply(cardata_week1,2,anyNA)
prop_miss_Value = sum(is.na(cardata_week1)) / (nrow(cardata_week1) * ncol(cardata_week1))
prop_miss_Value

# Question 7 - Relative speed of the car

relative_speed_car <- mean(cardata_week1$speed_car + abs(cardata_week1$speed_air))
relative_speed_car
avg_Relative_speed_car <- mean(cardata_week1$speed_car)
avg_Relative_speed_car

# Question 8 - Create clean data set

cars_mileage_less <- length(which(cardata_week1["mileage"] < 40000))
cars_mileage_less
cars_less_height <- length(which(cardata_week1["height"] < 5 ))
cars_less_height
modified_cardata <- subset(cardata_week1, mileage >= 40000 & height <= 5)
modified_cardata <- na.omit(modified_cardata)
nrow(modified_cardata)
ncol(modified_cardata)

# Question 9 - 
data_ford <- subset(modified_cardata, brand == "Ford")
data_ford
data_GM <- subset(modified_cardata, brand == "GM")
data_GM
data_Toyota <- subset(modified_cardata, brand == "Toyota")
data_Toyota
