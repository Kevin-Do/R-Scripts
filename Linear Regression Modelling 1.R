#Working Directory Access to Data
setwd("/Users/krusa/OneDrive/Documents/GitHub/R-Scripts")
dtmean<-read.table("gl_land.txt", header = FALSE)

#Xd and Yd
yrTime=dtmean[,1]
tempMean=dtmean[,2]

#Set into Columns
regdata=dtmean[,1:2]

summary(tempMean)
summary(yrTime)

#Boxplot
boxplot(tempMean)
boxplot(yrTime)

#Histogram
hist(tempMean)
hist(yrTime)

#Linear Regression Model
lm(tempMean ~ yrTime)

###
# Call:
#   lm(formula = tempMean ~ yrTime)
# 
# Coefficients:
#   (Intercept)       yrTime  
# -17.949291     0.009223 
#
# Equation: y = -17.9 + .01t
###

#Plot and overlay Regression Line
plot(yrTime, tempMean, type = "l")
regression<- lm(tempMean ~ yrTime)
abline(regression, col = "Red")

#Regression Data
summary(regression)

###
# Call:
#   lm(formula = tempMean ~ yrTime)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -0.44528 -0.11753 -0.01427  0.11089  0.36181 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -1.795e+01  7.254e-01  -24.75   <2e-16 ***
#   yrTime       9.223e-03  3.724e-04   24.77   <2e-16 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0.1705 on 134 degrees of freedom
# Multiple R-squared:  0.8207,	Adjusted R-squared:  0.8194 
# F-statistic: 613.4 on 1 and 134 DF,  p-value: < 2.2e-16
###

