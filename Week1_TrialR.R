# Arithmetic operations in R
2+2
#Some maths here
sqrt(100)
# Float division returned here
a = 5/2
# Mathematical Integer Division
5%/%2

# Remainder
5 %% 2 

# List names of all objects (variables) in workspace
ls() # Since we have defined a variable a above, this returns a
objects() # Does the same function as a 

# Current Working Directory 
# setwd sets the current working directory for the project
setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Work in R")
getwd() # Returns the current working directory. 

# Vectors are an integral part of R

x <- c(1,2,3,4,5,6,7)
y <- c("Nitin", "Surya", "Suresh", "Adarsh", "Shashank")
z <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

# Now these x, y, and z are objects in this environment. 
# We can see the class of each og these variables

class(x) #Numerical 
class(y) #Character
class(z) #Logical

# Vectors in R
x1 <- c(8,9,10)
x <- c(x,x1)
x

# Flexibility with Vectors in R
x[2] # If we want to retrieve a single element
x[c(2,3,6)] # If we want to retrieve multiple elements

x[x>5] # Conditional checks with Vectors

# Operations on Vectors

x
x+1
x * 2
log(x)
sum(x)
mean(x)
summary(x)

# Exercise 1 - 
# Delete 2nd and 4th elements in X
x[-c(2,4)]
# Count how many 0's in x
sum(x==0)

# Exercise 2
var(x) #Code to calculate variance of a 
hist(x)

# Summarise a Vector

vv <- rnorm(100)
vv
?rnorm
vv[1:10]
class(vv)
length(vv)
summary(vv)
hist(vv)

# Exercise 3


