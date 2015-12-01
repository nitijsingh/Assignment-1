# Introduction to Collaborative Social Science Data Analysis
# Instructor: Christopher Gandrud
# Date of submission:01.10.2015
# Assignment 1
##################################################################################
# Dataset being used: women
data("women")

# to find out the variables in the dataset
names(women)

#gives me the height and the weights 
?women 

# provides me with the format of the dataset being: A data frame with 15 observations on 2 variables.
[,1]	height	numeric	Height (in)
[,2]	weight	numeric	Weight (lbs)

summary(women)
# proivding me with descriptive statistics on both vaariable with, mean, median, min-max of the variables
require(graphics) 
# to plot the correlation between height and weight which in this case is positive and linear
plot(women, xlab = "Height (in)", ylab = "Weight (lb)",
     main = "women data: American women aged 30-39")
summary(women$weight) #to take a closer look at the single variable 
summary(women$height) 
plot(women$weight,women$height) #giving a graphical representation of the generated data
# to calculate the variance in the data
var(women$weight) # 240.2095
var(women$height)  # 20 
#creating boxplot for relation between american's women height and weight
plot(women$weight,women$height)