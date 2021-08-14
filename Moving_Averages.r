## install.packages("languageserver")

library(forecast)
library(astsa)
data(globtemp)

ma1<-ma(globtemp, order = 3)# Moving average smoothing of order 3
ma2<-ma(globtemp, order = 5)# Moving average smoothing of order 5
ma3<-ma<-ma(globtemp, order = 7)# Moving average smoothing of order 7
ma4<-ma(globtemp, order = 9)# Moving average smoothing of order 9
par(mfrow=c(2,2)) #combine multiple plots in one graph.
ts.plot(ma1,main="3 point Moving Average")
ts.plot(ma2,main="5 point Moving Average")
ts.plot(ma3,main="7 point Moving Average")
ts.plot(ma4,main="9 point Moving Average")