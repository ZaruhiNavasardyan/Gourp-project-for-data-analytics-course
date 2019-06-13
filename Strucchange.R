library(csv)
library(forecast)
library(tseries)
library(strucchange)
prod_df <- read.csv(file = 'all.csv',header = TRUE)


stock <- ts(prod_df$Adj_Close, start=c(2009, 5), end=c(2019,5), frequency=250) 
stock
# store the breakpoints
bp.stock <- breakpoints(stock ~ 1)
summary(bp.stock)
#plot
plot(bp.stock)
plot(stock)
lines(bp.rice)

## confidence intervals
ci.stock <- confint(bp.stock)
ci.stock
lines(ci.stock)