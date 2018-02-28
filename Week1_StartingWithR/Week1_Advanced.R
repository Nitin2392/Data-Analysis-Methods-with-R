# Create vector by Sequence in R

seq(1,10, by = 1)
seq(0,100, by = 5)
seq(1,10,length.out = 10)
1:10

# Create vectors by using Repeat

rep(2,10)
rep(1:4,times = 2)
rep(1:4, each =2, times = 2)

# NA values in R

na_v <- c(1,2,NA,3,NA,6)
mean(na_v)
mean(na_v,na.rm =  T)
is.na(na_v)

