#EXERCISE 2
#a. How would you classify this variable? 
#b. Plot the time series with R. 
library("readxl")
library("forecast")
library("ggplot2")
boulderdata <- read_excel("POBF2eDataFiles/Boulder_2.xlsx")
head(boulderdata)
boulderts<- ts(boulderdata[,3],start=c(1991,1),frequency = 12)
autoplot(boulderts)

#c. Create a seasonal plot for the last four years of the series with R.
#Comment on your results
bouldertsshort<-ts(boulderdata[254:301,3], start = c(2012,1), frequency = 12)
ggseasonplot(bouldertsshort)
#The peak is at the highest in June, and there is an upwards trend in temperature

#EXERCISE3
#a
#Plot the time series with R: injuries and train miles. Use the simple plot command to create a scaerplot
#of the rst column (time) against the data column. Can you draw any conclusions?

railsafe <-read_excel("POBF2eDataFiles/Rail_safety.xlsx")
head(railsafe)

#plots year(y-axis) and injuries in (x -axis)
plot(railsafe[,c(1,2)])
#as years increases, injuries increases

#plots year(y-axis) and train miles in (x -axis)
plot(railsafe[,c(1,3)])
#more train miles as year increases 

#b
#Create a scaerplot for injuries against train miles with R.
#Can you draw any conclusions?
plot(railsafe[,c(3,2)])
#This shows that the train system is not efficient.

#c
#Plot the time series of the adjusted data with R. Does the level of injuries appear to be changing over
#time? If so, in what way?
plot(railsafe[,c(1,4)])
#injuries per train miles increases, people travel more and more injuries over time

#Exercise 6
#a
#install.packages("DescTools")
library(readxl)
library(GGally)
library(DescTools)
baseballSummary<-read_excel("POBF2eDataFiles/Baseball.xlsx")
#convert data  to numerical matrix so that all data will be of the same type
mean(data.matrix(baseballSummary[,c("Salary ($000s)")]))
MeanAD(data.matrix(baseballSummary[,c("Salary ($000s)")]))
sd(data.matrix(baseballSummary[,c("Salary ($000s)")]))
summary(baseballSummary)

#b