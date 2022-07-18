##Home work
#e_quakes = read.csv('path/e_quakes.csv',header=TRUE, sep=",")
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)

######Columns
e_quakes[50:60,c(1,2)]

df<-e_quakes[,-6]

#1
summary(e_quakes[,c(4,5)])

e_quakes$lat
e_quakes$long
e_quakes$depth
e_quakes$mag
e_quakes$stations

#1
summary(e_quakes$long)

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$long) 

#############


plot(e_quakes$mag)
plot(e_quakes$lat,e_quakes$long,type = 'p')
plot(e_quakes)

# points and lines 
plot(e_quakes$lat, type= "l") # p: point l: lines,b: both

plot(e_quakes$lat, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue',type='l')

# Horizontal bar plot

barplot(e_quakes$long, main = 'Long Data',
        ylab = 'Data', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$long)
hist(e_quakes$long, 
     main = 'Lond Data',
     xlab = 'long Data.rad', col='blue')

#Single box plot
boxplot(e_quakes$long,main="Boxplot")
boxplot.stats(e_quakes$long)$out

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$long)
plot(e_quakes$long, e_quakes$depth)
plot(e_quakes$long, type= "l")
plot(e_quakes$long, type= "l")
plot(e_quakes$long, type= "l")
barplot(e_quakes$long, main = 'Long Data',
        xlab = 'Data', col='green',horiz = TRUE)

boxplot(airquality[,0:4], main='Multiple Box plots')
