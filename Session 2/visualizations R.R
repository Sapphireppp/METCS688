
#---- Scatter plot example---------------------
x <- c(12,23,40,35,13,34,25,15,17,32,23,36,33,31)
y <- c(10,13,35,35,23,34,35,15,17,32,23,32,37,32)
df <- cbind(x,y)
df
plot(df, main="Scatterplot Example", xlab="X labels ", ylab="Y labels", pch =16)
plot(df, main="Scatterplot Example", xlab="X labels ", ylab="Y labels", pch =24, cex=0.9, col="blue", bg="blue")

#----Line plot----------------------

gausdf <- c( 8.9,-1.6 ,8,-1.5,1.5, -1.8,-8.5,1.5, 1.7,-6.2, 1.9, -2.4, -9.1, 5.4, 1.1, -3.3,8.5, -8.1,3.2, -1.6)
plot(gausdf, type = "l", xlab="X labels ", ylab="Y labels") 


#------Pie chart---------------------
slices <- c(15, 25, 60)
lbls <- c("15%", "25%", "60%")
pie(slices, labels = lbls, main="Pie Chart Example") # col=rainbow(length(lbls))

#-----Histogram------------------
xx <- iris[,3]
#xx
hist(xx, freq=FALSE, main="Histogram Example", xlab="x label", border="white", col="blue")


df <- cbind(12,14,15,12,11,15,16)
barplot(df, col="blue", names.arg=c("a","b","c","d","e","f","g"))

#----------- bar plot with two info----------
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("blue","red"),
        legend = rownames(counts), beside=TRUE) # col=topo.colors(5), main="topo.colors"

#--------------Surface plot---------- 
# install.packages("geoR")
# library("geoR")

cone <- function(x, y){
  sqrt(x^2+y^2)
}
x <- y <- seq(-1, 1, length= 18)
z <- outer(x, y, cone)

persp( x, y, z, phi = 25, theta = 45,
       xlab = "X Coordinate", 
       ylab = "Y Coordinate", 
       zlab = "Z Coordinate",
       main = "Surface plot example",
       col = "antiquewhite", shade = 0.5)

#----------- AREA PLOT ------------------
install.packages("ggplot2")
install.packages("ggthemes")
install.packages("extrafont")
install.packages("plyr")

library("ggplot2")
library("ggthemes")
library("extrafont")
library("plyr")

df2 <- read.csv("/Users/rawassizadeh/EVERYTHING/Work/TEACHING/CS\ 688\ -\ Web\ Analytics\ and\ Mining/Session\ 2/copper-data-for-tutorial.csv" , header=TRUE, sep=",")
df2

p2 <- ggplot() + geom_area(aes(y = export, x = year, fill = product), data = df2,  stat="identity")
p2
# read more about it here: http://t-redactyl.io/blog/2015/12/creating-plots-in-r-using-ggplot2-part-2-area-plots.html

#--------------------Heat Map-----------

x <- c(12,23,40,35,13,34,25,15,17,32,23,36,33,31)
y <- c(10,13,35,35,32,23,32,37,23,34,35,15,17,32)
z <- c(23,26,25,15,13,14,31,13,17,37,23,31,33,12)
df <- cbind(x,y,z)
heatmap(df, scale = "none")
# check here for more examples: https://www.datanovia.com/en/lessons/heatmap-in-r-static-and-interactive-visualization/

#---------------- Calendar plot ------------------

# http://margintale.blogspot.in/2012/04/ggplot2-time-series-heatmaps.html
library(ggplot2)
library(plyr)
library(scales)
library(zoo)

df <- read.csv("/Users/rawassizadeh/EVERYTHING/Work/TEACHING/CS\ 688\ -\ Web\ Analytics\ and\ Mining/Session\ 2/yahoo.csv", header=TRUE, sep=",")
df$date <- as.Date(df$date)  # format date
df <- df[df$year >= 2012, ]  # filter reqd years

# Create Month Week
df$yearmonth <- as.yearmon(df$date)
df$yearmonthf <- factor(df$yearmonth)
df <- ddply(df,.(yearmonthf), transform, monthweek=1+week-min(week))  # compute week number of month
df <- df[, c("year", "yearmonthf", "monthf", "week", "monthweek", "weekdayf", "VIX.Close")]
head(df)

# Plot
ggplot(df, aes(monthweek, weekdayf, fill = VIX.Close)) + 
  geom_tile(colour = "white") + 
  facet_grid(year~monthf) + 
  scale_fill_gradient(low="blue", high="red") +
  labs(x="Week of Month",
       y="",
       title = "Calendar plot example", 
       subtitle="", 
       fill="Close")

#----------- Timeline plot ------------
install.packages("timevis")

library(timevis)

data <- data.frame(
  id      = 1:4,
  content = c("Eating Lots of Carbs", "Eating Lots of Fats",
              "Staying in hospital", "Start Excersize"),
  start   = c("2019-01-10", "2019-01-11",
              "2019-01-20", "2019-02-14"),
  end     = c("2019-01-20", "2019-01-20", "2019-02-10", NA))

timevis(data)

#-------- Violin plot -------------

install.packages("ggpubr")
library("ggpubr")

data("ToothGrowth")
df <- ToothGrowth
ggviolin(df, x = "dose", y = "len", add = "boxplot")


---- 
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) + 
  geom_violin() +
  geom_boxplot(width = 0.1) + 
  #theme_bw()
  theme(
        panel.background = element_blank(), axis.line = element_line(colour = "black"))
# fill = factor(cyl)
mtcars

----
library(ggjoy)

dat %>% mutate(group = reorder(group, value, median)) %>% 
  ggplot(aes(group, value)) + geom_violin(fill = "blue")


ToothGrowth

