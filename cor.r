# Creating boxplot for relation between Fertility and Percentage of males involved in Army
library(ggplot2)
plot (swiss$Fertility, swiss$Examination, col= "red", main ='Relation B/W Fertility and males involved in Army', xlab = 'Fertility', ylab = 'Marks')
ggplot(swiss,aes(Fertility,Examination)) + geom_point()

