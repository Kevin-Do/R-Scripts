read.table("")
#read.csv
#read.av

#Set Data
dtmean<-read.table("/Users/krusa/OneDrive/Documents/GitHub/R-Scripts/gl_land.txt",header = FALSE)
#Set Column 1
time<-dtmean[,1]
#Set Column 2
mean<-dtmean[,2]

#Plot
plot(time,mean, type = "o", xlab = "Year", ylab = "Temperature")