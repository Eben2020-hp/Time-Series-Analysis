## Yearly Rainfall Data measured in mm

data <- c(23.56, 26.07, 21.86, 31.24, 23.65, 23.88,26.41, 22.67, 31.69, 23.86, 24.11, 32.43,23.26, 22.57, 23.00, 27.88, 25.32, 25.08, 
27.76, 19.82, 24.78, 20.12, 24.34, 27.42, 19.44, 21.63, 27.49, 19.43, 31.13, 23.09,25.85, 22.65, 22.75, 26.36, 17.70, 29.81,22.93, 19.22, 
20.63, 35.34, 25.89, 18.65,23.06, 22.21, 22.18, 18.77, 28.21, 32.24,22.27, 27.57, 21.59, 16.93, 29.48, 31.60, 26.25, 23.40, 25.42, 21.32, 
25.02, 33.86,22.67, 18.82, 28.44, 26.16, 28.17, 34.08,33.82, 30.28, 27.92, 27.14, 24.40, 20.35,26.64, 27.01, 19.21, 27.74, 23.85, 21.23,
28.15, 22.61, 19.80, 27.94, 21.47, 23.52,22.86, 17.69, 22.54, 23.28, 22.17 ,20.84,38.10, 20.65, 22.97, 24.26, 23.01, 23.67,26.75, 25.36, 
24.79, 27.88)





## Convert to TS object
rainfall <- ts(data, start= 1813)       ## Starting year is 1813


ts.plot(rainfall)
## We can see that the data is stationary


rainfallforcast <- HoltWinters(rainfall, beta= FALSE, gamma= FALSE)     ## beta --> TREND; gamma --> SEASONALITY
print(rainfallforcast)


## Insample Forcast
rainfallforcast$fitted
plot(rainfallforcast)


## Out-of Sample Forecast
library(forecast)
forecastrain <- forecast(rainfallforcast, h= 2)     ## h --> How many data to be predicted. 
print(forecastrain)
plot(forecastrain)