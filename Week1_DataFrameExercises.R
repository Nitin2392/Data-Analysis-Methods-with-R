# Data Frame Exercies

id <- c("02","12","23")
name <- c("Mark","Bill","Cathy")
sex <- c("M","M","F")
math <- c(78,89,93)
music <- c(98,NA,79)

student <- data.frame(id,name,sex,math,music)
student
stu.bio <- student[,1:3]
stu.bio

stu.m <- student[sex=="M",]
stu.m

good <- rep("Yes",length(math))
good[math<90] <- "No"
good
student <- data.frame(student,good)
student
