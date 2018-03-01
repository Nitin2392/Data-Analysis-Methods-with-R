# Data - Frames
type <- c(rep("drug",2),"placebo",rep("drug",2),rep("placebo",3))
score <- c(8,10,5,rep(9,2),7,6,6)
type
score
clinic <- data.frame(type,score)
clinic
class(clinic)

#To calculate means for data frame
mean(score[type=="drug"])
mean(score[type=="placebo"])

#Subsets of Data Frame
clinic
clinic[,2]
clinic[,"score"]
clinic[type=="drug",]
clinic[score>=9,]
clinic[,1]

# Lists in R

samp_list <- list(name="Fred",wife="Mary",no_children = 3, names_children = c(1,"A","B"),ages_children = c(12,14,16))
samp_list

class(samp_list)
length(samp_list)
class(samp_list$ages_children)
class(samp_list$name)
class(samp_list$names_children)

#Retrieve elements from a List
samp_list$wife
samp_list[4]
samp_list$names_children[3]
samp_list[[4]][3]


