# Functions in R
mean.and.sd <- function(X){
  avg <- mean(x)
  sd <- sqrt(var(x))
  sum <- sum(x)
  return(c(mean = avg, SD = sd, SUM = sum))
}

x1 <- rnorm(100)
mean.and.sd(x1)


# Conditional Programming in R

x <- rnorm(1000)

if(sum(x) > 500)
{
  print("Sum greater than 500")
} else
{
  print("Sum lesser than 500")
}

# Loops in R
for(i in 1:10) print(i)
print("Hello")
