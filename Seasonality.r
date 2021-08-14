install.packages("tseries")

data('AirPassengers')
ts.plot(AirPassengers)

data1 <- log(AirPassengers)
ts.plot(data1)

## Seasonal Differencing
sd <- diff(data1, lag = 12)
ts.plot(sd)


## DeTrending the Data
detrend <- diff(sd)
ts.plot(detrend)

## Understanding if the Series is Stationary
library(tseries)
adf.test(detrend)