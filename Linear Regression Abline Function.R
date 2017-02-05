#NASA Global Annual Temperature Anomalies - Surface Air Temperatures

#Setup Dataset
setwd("/Users/krusa/OneDrive/Documents/GitHub/R-Scripts")
dtmean<-read.table("global.txt", header = FALSE)

#Catagories
yrTime<- dtmean[,1]
tempMean<- dtmean[,2]

#Statistical Summary of Temperature Anomalies 
summary(tempMean)

#Boxplot of Temperature Data
boxplot(tempMean, main = "Boxplot of Temperature Data")

#Histogram of Temperature Data
hist(tempMean, main = "Histogram of Temperature Data")


#############################################################################

subsetRegression<-function(yearStart, yearEnd, color)
{
    subsetLength <- yearEnd - yearStart + 1
    
    subsection<-dtmean[1:subsetLength,]
    yr = subsection[,1]
    temp = subsection[,2]
    
    subsetLine<-lm(temp ~ yr, data = subsection)
    abline(subsetLine, col = color)
  
}

#############################################################################

plot(yrTime, tempMean, type = "l")
subsetRegression(1850, 2014, "red")
subsetRegression(1850, 1910, "red1")
subsetRegression(1850, 1950, "red2")
subsetRegression(1850, 1975, "red3")
subsetRegression(1850, 2000, "red4")


