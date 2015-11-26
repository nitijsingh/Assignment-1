library(ggplot2)
library(ggthemes)

qplot(d4$GDP.Growth,d4$ContriICT) #simplified version of ggplot

d4<-subset(d,d$D.E.De == 1)

p <- ggplot(d, aes(x = X.1, y = ContriICT))

p<-p + geom_bar(stat = "identity")

p<-p + geom_point()
  
p<-p + facet_wrap(~ D.E.De) + theme_hc()+ 
  xlab("Year") +
  ylab("Contribution of ICT")


p<-p +  geom_text(data = d4, aes(label = X)) 



p<-p + aes(color = X) + geom_point() + geom_smooth(lwd = 1, se = FALSE, method="loess") +theme_economist()

png()