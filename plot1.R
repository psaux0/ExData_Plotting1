#read the data

dt <- read.csv("data.txt", sep = ";", header = FALSE, stringsAsFactors = FALSE, na.strings = "?", skip = 66637, nrows = 2880)
dnames <- read.csv("data.txt", sep = ";", header = FALSE, nrows = 1, stringsAsFactors = FALSE) 
names(dt) <- dnames
hist(dt$Global_active_power, freq = TRUE, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", main = "Global Active Power", ylim = c(0,1200))
dev.copy(png,"plot1.png")
dev.off()

rm(dt,dnames)