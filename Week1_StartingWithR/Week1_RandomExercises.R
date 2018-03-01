#Programming questions

cel <- c(25,26,27,28,29,30)
far <- c(77.0,78.8, 80.6, 82.4, 86.0)
temp <- matrix(data = NA, nrow = 6, ncol = 2, byrow=FALSE, dimnames = NULL)
temp
temp[,1] <- cel
temp[,2] <- 9/5 * temp[,1] + 32
temp

colnames(temp) <- c("Celcius","Farenheit")
temp

# Program to simulate the apply(M,Margin,Mean) function in R for any matrix

apply(temp,1,mean)
?apply
dim(temp)
temp[1,]
sum(temp[6,])/2

similuate_mean <- function(a,x)
{
  row_count <- c(dim(temp))
  if(x == 1)
  {
    for(i in 1:row_count[1])
    {
      avg = sum(a[i,])/row_count[2]
      print(avg)
    }
  }
  else
  {
    for(i in 1:row_count[2])
    {
      avg = sum(a[,i])/row_count[1]
      print(avg)
    }
  }
}

apply(temp,1,mean)
similuate_mean(temp,1)

apply(temp,2,mean)
similuate_mean(temp,2)

