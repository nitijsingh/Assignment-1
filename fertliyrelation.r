####################################################################################
# Introduction to collaborative social science data analysis                       #
# By Christopher Gandrud                                                           #
# Date - 26th September 2015                                                       #
# Assigment 1                                                                      #
# Question- Does occuption of the male member has an effect on Infant Mortality    #
# Hypothesis- The provinces which has a higher male members involved in Agriculture#
# would have higher fertility rate as compared to provinces which more male  #
# members in the army.                                                             #
# By- Alessia D' Alessandro and Nitij Singh                                        #
# Date of Submission - 2nd OCtober 2015                                            #
####################################################################################

# Print R session Info
sessionInfo()

# Listing of the all the data sets available with R Studio
data()

# Load demographic data for Switzerland in year 1888
data("swiss")

# Viewing the information of the loaded data set
?swiss

# Summary of the Swiss data set looking for centrality
summary(swiss)

# List the variables in the data set 
names(swiss)

# Creating an histogram between Provinces and Fertility
hist(swiss$Fertility, col = "gray75", main = 'Infant Mortality in 47 Provinces in Switzerland', xlab = 'Mortality',xlim = c(10,28))

# Creating an histogram between Provinces and Percentage of males involved in agricuture 
hist(swiss$Agriculture, col = "red", main = 'Percentage of males involved in agriculture as Occupation', xlab ='Percentage of Males' , xlim = c(0,100))

# Creating an histogram between Provinces and Percenatage of draftees receiving highest maek on army examination
hist(swiss$Examination, col = "green", main = 'Percentage of draftees receving highest marks', xlab = 'Percentage of highest mark on army examination'  )

# Creating boxplot for relation between Fertility and Percentage of males involved in Agriculture
plot(swiss$Fertility, swiss$Agriculture, main = 'Relation b/w Fertility and Percentage of Males in Agriculture', xlab = 'Fertility', ylab = 'Percentage of male involved in Agriculture')

# Checking corelation between Fertility and Agriculture 
cor.test(swiss$Fertility, swiss$Agriculture)

# Creating GGPlot for Fertility and Agriculture 
ggplot(swiss,aes(Fertility,Agriculture)) + geom_smooth()

###############################################################
#          Pearson's product-moment correlation               #
#                                                             #
# data:  swiss$Fertility and swiss$Agriculture                #
# t = 2.5316, df = 45, p-value = 0.01492                      #
# alternative hypothesis: true correlation is not equal to 0  #
# 95 percent confidence interval:                             #
#  0.07334947 0.58130587                                      #
# sample estimates:                                           #
#  cor                                                        #
# 0.3530792                                                   #
###############################################################
#############################################################

#############################################################
# Explaining the results of correlation                     #
# There is a postive effect of percentage of males employed #
# on the fertility rate                                     # 
#############################################################
source("cor.R")
# Creating GGPlot in order to explain the corelation between fertility and army
ggplot(swiss,aes(Fertility,Examination)) + geom_point()


######################
# Explaining the results
# We observe a negative relationship between fertility and marks obtained in army
# there we have say that more people in the army will lead to low fertility rates 
# data:  swiss$Fertility and swiss$Examination
#t = -5.6753, df = 45, p-value = 9.45e-07
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
#  -0.7870674 -0.4403995
# sample estimates:
#  cor 
# -0.6458827 
# Hence it proves our hypothesis that occupation has an effect on the Fertility.
######################

