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

a <- rnorm(10)
a.pos <- rep(NA, length(a)) #This is to simply declare and initialize nothing for size 1000
a.pos
# Code to copy only positive values from a to a.pos
for(j in 1:length(a))
{
  if(a[j]<0)
  {
    a.pos[j] <- 0
  }
  else
  {
    a.pos[j]<- a[j]
  }
}
a
a.pos
hist(a)
hist(a.pos)

