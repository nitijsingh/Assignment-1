attach(gdpcoun)
summary(gdpcoun)
setwd
d<-read.csv(file = "/Home/Desktop/semester 3/Data analysis/assignment-1.2/Assignment-1")
d<-subset(gdpcoun)
d1<-subset(gdpcoun,gdpcoun$D.E.De == 1)
d2<-subset(gdpcoun,gdpcoun$D.E.De == 2)
d3<-subset(gdpcoun,gdpcoun$D.E.De == 3)
# Dropping the variable country name
d1$X<-NULL
# Dropping the variable years
d1$X.1<-NULL
# Dropping dummy variable
d1$D.E.De<-NULL
#Dropping the variable country name
d2$X<-NULL
#Dropping the variable years
d2$X.1<-NULL
#Dropping the dummy variable
d2$D.E.De<-NULL
#Dropping the variables country name
d3$X<-NULL
#Dropping the variable year
d3$X.1<-NULL
#Dropping dummy variable
d3$D.E.De<-NULL
############################
####### Modelling###########
#Installing plm package
install.packages("plm")
# Loading the pannel data package in the memory
library(plm)
# Loading the formula package in the memory 
library(Formula)
##########################################################################
##### Evaluating impact of ICT on GDP growth in developed countries#######
##########################################################################
# Attaching data set for developed countries
d4<-subset(d,d$D.E.De == 1)
attach(d4)
d4$X<-NULL
# Defining dependent and indenpendt variable
Y <- cbind(d4$GDP.Growth)
X <- cbind(d4$ContriICT, d4$ContriNICT)
# Descriptive statistics
# Set data as pannel data
pdata <- plm.data(d4,index=c("D.E.De", "X.1"))
# Pooled OLS Estimater 
pooling <- plm(Y ~ X, data=pdata, model= "pooling")
# Putting control variable for Export % of GDP
Y1 <- cbind(d4$GDP.Growth)
X1 <- cbind(d4$ContriICT, d4$ContriNICT, d4$Export.of.goods.and.services....of.GDP.)
# Pooled OLS Esitmater with control variable for developed countries 
pooling1 <- plm(Y1 ~ X1, data=pdata, model= "pool")
########### Visualization######################
#### Installing GGP Plots and GG Themes #######
install.packages("ggplot2")
install.packages("ggthemes")
library(ggplot2)
library(ggthemes)
qplot(d4$X.1,d4$ContriICT)
j <- ggplot(subset(d,d$D.E.De==1), aes(x = X.1, y = ContriICT))
j<-j +  geom_point() 
j<-j + facet_wrap(~ X) +theme_economist()
j
# Attaching data set for emerging countrie
d5<-subset(d,d$D.E.De == 2)
attach(d5)
d5$X<-NULL
# Defining dependent and indenpendt variable
Y2 <- cbind(d5$GDP.Growth)
X2 <- cbind(d5$ContriICT, d5$ContriNICT)
# Descriptive statistics
summary(Y2)
summary(X2)
# Set data as pannel data
pdata <- plm.data(d5,index=c("D.E.De", "X.1"))
# Pooled OLS Estimater 
pooling2 <- plm(Y2 ~ X2, data=pdata, model= "pooling")
# Putting control variable for Export % of GDP
Y3 <- cbind(d5$GDP.Growth)
X3 <- cbind(d5$ContriICT, d5$ContriNICT, d5$Export.of.goods.and.services....of.GDP.)
# Pooled OLS Esitmater with control variable for emerging countries 
pooling3 <- plm(Y3 ~ X3, data=pdata, model= "pooling")
qplot(d5$X.1,d5$ContriICT)
k <- ggplot(subset(d,d$D.E.De==2), aes(x = X.1, y = ContriICT))
k<-k +  geom_point() 
k<-k + facet_wrap(~ X) +theme_economist()
k
# Attaching data set for developing countries
d6<-subset(d,d$D.E.De == 3)
attach(d6)
d6$X<-NULL
# Defining dependent and indenpendt variable
Y4 <- cbind(d6$GDP.Growth)
X4 <- cbind(d6$ContriICT, d6$ContriNICT)
# Descriptive statistics
summary(Y4)
summary(X4)
# Set data as pannel data
pdata <- plm.data(d6,index=c("D.E.De", "X.1"))
# Pooled OLS Estimater 
pooling4 <- plm(Y4 ~ X4, data=pdata, model= "pooling")
# Putting control variable for Export % of GDP
Y5 <- cbind(d6$GDP.Growth)
X5 <- cbind(d6$ContriICT, d6$ContriNICT, d6$Export.of.goods.and.services....of.GDP.)
# Pooled OLS Esitmater with control variable for developed countries 
pooling5 <- plm(Y5 ~ X5, data=pdata, model= "pooling")
install.packages("googleVis")
library(googleVis)
df=data.frame(country=c("AU", "AT", "BE", "CA", "DK", "FI", "FR", "DE", "GB", "IT", "US"), 
              ICTInvestment=c(0.524,0.6694,0.6895,0.8425,0.8010,0.533,0.234,0.979,0.2960,0.4706,0.4011), 
              NonICTIvest=c(0.433,0.343,0.343,0.4242,0.4646,0.4532,1.3434,3.354534,0.434,1.43,2.453))
Intensity <- gvisIntensityMap(df)
plot(Intensity)
