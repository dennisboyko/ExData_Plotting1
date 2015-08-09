png(file = "./plot1.png", width = 480, height = 480)
  ## load the data set
mydata <- read.csv("./household_power_consumption.txt", sep = ";")
  ## setup date
x <- mydata$Date
x <- as.character(x)
  ## dates and data of interest
my_dates <-which(x == "1/2/2007" | x == "2/2/2007")
mydata <- mydata[my_dates, ]
Global.Active.Power <- as.numeric(as.character(mydata[,3]))
par(mar = c(6.5, 8.5, 4.1, 2.1))
hist(Global.Active.Power, 
     main = "Global Active Power", 
     col = "red", 
     xlab = "Global Active Power (kilowatts)",
     ylim = c(0, 1200)
     )
dev.off()