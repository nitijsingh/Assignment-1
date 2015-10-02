# Creating boxplot for relation between Fertility and Percentage of males involved in Army
library(ggplot2)

plot (swiss$Fertility, swiss$Examination, col= "red", main ='Relation B/W Fertility and males involved in Army', xlab = 'Fertility', ylab = 'Marks')

# Checking corelation between fertility and marks obtained in army 
cor.test(swiss$Fertility,swiss$Examination)

# Creating GGPlot in order to explain the corelation
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
#sample estimates:
#  cor 
#-0.6458827 
######################