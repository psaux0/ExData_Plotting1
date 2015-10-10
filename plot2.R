## Read Data
dt <- read.csv("data.txt", sep = ";", header = FALSE, stringsAsFactors = FALSE, na.strings = "?", skip = 66637, nrows = 2881)
dnames <- read.csv("data.txt", sep = ";", header = FALSE, nrows = 1, stringsAsFactors = FALSE) 
names(dt) <- dnames

t <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")
plot(t, dt$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, "plot2.png")
dev.off()
rm(dt,dnames)