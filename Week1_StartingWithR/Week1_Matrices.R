setwd("C:/Users/Nitin Rangarajan/Desktop/UC Material/Courses/Spring/Flex2/Data Analysis Methods/Work in R/Week1")
getwd()

# Matrix in R

matrix(data = NA, nrow =1, ncol = 1, byrow = FALSE, dimnames = NULL)
# Just a matrix of 1 row and 1 col with NA as the value. 

# A normal matrix here with values filled by row
matrix(data = 1:15, nrow = 5, ncol = 3, byrow = TRUE, dimnames= NULL)

# A normal matrix here with values filled by column
matrix(data = 1:15, nrow = 5, ncol = 3, byrow = FALSE, dimnames= NULL)

# Operations on Matrices in R
n <- matrix(data = 1:15, nrow = 5, ncol = 3, byrow = FALSE, dimnames= NULL)
n[2,3]
n[3,2]
n[5,]

# To multiply two matrices, we need to ensure that the number of columns
# in matrix 1 is equal to the number of rows in matrix 2.
# Therefore, if we have to multiply n with another matrix, we need to 
# have a matrix with 5 rows since n has 5 columns

n2 <- matrix(data = 1:15, nrow = 3, ncol = 5, byrow = TRUE)
n2
n3 <- n %*% n2
n3

# To obtain the mean of each column, use APPLY function
# APPLY (X, MARGIN, FUN,...)
# Margin 1 - Rows, 2 - Columns
apply (n3, 1, mean)
apply (n3, 2, mean)
apply(n3, c(1,2), mean) # c(1,2) indicates both row and column

# This represents the dimensions of matrix
dim(n) # 5 rows and 3 columns
n

t(n) # t(matrix) indicates the transpose of the matrix

sum(n) # Sum of all values in the matrix

new.n <- as.vector(n)
new.n # Configure matrix as vector

