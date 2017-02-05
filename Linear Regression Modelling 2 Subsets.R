#NASA Global Annual Temperature Anomalies - Land & Ocean

#Setup Dataset
setwd("/Users/krusa/OneDrive/Documents/GitHub/R-Scripts")
dtmean<-read.table("gl_land_ocean.txt", header = FALSE)

#Catagories
yrTime<- dtmean[,1]
tempMean<- dtmean[,2]

#Statistical Summary of Temperature Anomalies 
summary(tempMean)

#Boxplot of Temperature Data
boxplot(tempMean, main = "Boxplot of Temperature Data")

#Histogram of Temperature Data
hist(tempMean, main = "Histogram of Temperature Data")

#Full Linear Model (using all data)
lm(tempMean ~ yrTime, main = "Full Linear Model")


#######################################################################################


#Full Dataset Plot
plot(yrTime, tempMean, type = "l", main = "Global Annual Data (Land & Ocean)", xlab = "Time (Year)", ylab = "Temperature Anomalies (Mean)" )

#Linear Model (Years 1880 - 2014)
subsectionA <- dtmean[1:135,] #Subsection A
yrA<-subsectionA[,1]
tempA<-subsectionA[,2]
a = lm(tempA ~ yrA, data = subsectionA)
abline(a, col = "Red", lwd = 2)

#Linear Model (Years 1880 - 1910)
subsectionB <- dtmean[1:31,] #Subsection B
yrB<-subsectionB[,1]
tempB<-subsectionB[,2]
b = lm(tempB ~ yrB, data = subsectionB)
abline(b, col = "Blue", lwd = 2)

#Linear Model (Years 1880 - 1950)
subsectionC <- dtmean[1:71,] #Subsection C
yrC<-subsectionC[,1]
tempC<-subsectionC[,2]
c = lm(tempC ~ yrC, data = subsectionC)
abline(c, col = "Green", lwd = 2)

#Linear Model (Years 1880 - 1975)
subsectionD <- dtmean[1:96,] #Subsection D
yrD<-subsectionD[,1]
tempD<-subsectionD[,2]
d = lm(tempD ~ yrD, data = subsectionD)
abline(d, col = "Yellow", lwd = 2)

#Linear Model (Years 1880 - 2000)
subsectionE <- dtmean[1:121,] #Subsection E
yrE<-subsectionE[,1]
tempE<-subsectionE[,2]
e= lm(tempE ~ yrE, data = subsectionE)
abline(e, col = "Orange", lwd = 2)

legend("topleft", inset=.05, title="Linear Regression Lines",
       c("1880 - 1910: Blue","1880 - 1975: Yellow","1880 - 1950: Green","1880 - 2000: Orange","1880 - 2014: Red"), horiz=FALSE)

#######################################################################################


