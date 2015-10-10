##Read the data
dt <- read.csv("data.txt", sep = ";", header = FALSE, stringsAsFactors = FALSE, na.strings = "?", skip = 66637, nrows = 2881)
dnames <- read.csv("data.txt", sep = ";", header = FALSE, nrows = 1, stringsAsFactors = FALSE) 
names(dt) <- dnames

##Read the time
datetime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))
with(dt, {
  plot(datetime, Global_active_power, ylab = "Global Active Power", xlab = "", type = "l")
  plot(datetime, Voltage, ylab = "Voltage", type = "l")
  plot(datetime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
  lines(datetime, Sub_metering_2, type = "l", col = "red")
  lines(datetime, Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red", "blue"))
  plot(datetime, Global_reactive_power, type = "l")
})

dev.copy(png, "plot4.png")
dev.off()
rm(dt,dnames)