png(file = "./plot2.png", width = 480, height = 480)
  ## data source
mydata <- read.csv("./household_power_consumption.txt", sep = ";")
  ## setup date and my data of interest
x <- mydata$Date
x <- as.character(x)
my_dates <-which(x == "1/2/2007" | x == "2/2/2007")
mydata <- mydata[my_dates, ]
Global.Active.Power <- as.numeric(as.character(mydata[,3]))
Times <- as.character(mydata$Time)
Dates <- x[my_dates]
DateTime <- paste(Dates, Times, sep = "/")
DateTime <- strptime(DateTime, format = "%d/%m/%Y/%H:%M:%S")
par(mar = c(6.5, 8.5, 4.1, 2.1))
plot(DateTime, 
     Global.Active.Power, 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)", 
     type = "l"
     )
dev.off()
