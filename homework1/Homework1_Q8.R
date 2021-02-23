# set as working directory
setwd("~/Documents/Baruch_GA/2021_Spring_STA9890_StatisticalLearning/homework1")

####################################
# 8 (a)
college = read.csv('College.csv')
college =read.csv('College.csv', stringsAsFactors=TRUE)
college

#####################################
# 8 (b)
rownames(college) = college[,1]
fix(college)
View(college)
college = college[,-1]
fix(college)
View(college)


#####################################
# 8 (c) i
summary(college)

# 8 (c) ii
pairs(college[,1:10])

# 8 (c) iii
plot(college$Private, college$Outstate)

# 8 (c) iv
Elite = rep("No", nrow(college))
Elite[college$Top10perc>50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college, Elite)
summary(college$Elite)
plot(college$Elite, college$Outstate)

# 8 (c) v
par(mfrow=c(2,2))
hist(college$Apps)
hist(college$Accept)
hist(college$Enroll)
hist(college$Top10perc)

# 8 (c) vi
par(mfrow=c(1,2))
plot(college$Private, college$Expend, main = 'Instructional Expenditure', xlab = 'Private School')
# discovery 1: private school are expected to be expensive.
plot(college$Private, college$S.F.Ratio, main = 'Student/Faculty ratio', xlab = 'Private School')
# discovery 2: faculty have more students in public schools than private schools
