## Read Data
dt <- read.csv("data.txt", sep = ";", header = FALSE, stringsAsFactors = FALSE, na.strings = "?", skip = 66637, nrows = 2881)
dnames <- read.csv("data.txt", sep = ";", header = FALSE, nrows = 1, stringsAsFactors = FALSE) 
names(dt) <- dnames

t <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")

##Drawing the image
plot(t, dt$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
lines(t, dt$Sub_metering_2, type = "l", col = "red")
lines(t, dt$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red", "blue"))

dev.copy(png,"plot3.png")
dev.off()

rm(dt,dnames)