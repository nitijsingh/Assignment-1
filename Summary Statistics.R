attach(gdpcoun)
summary(gdpcoun)
setwd
d<-read.csv(file = "/Home/Desktop/semester 3/Data analysis/assignment-1.2/Assignment-1")
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

