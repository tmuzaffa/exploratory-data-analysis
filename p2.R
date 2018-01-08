df <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
df$Date <- as.Date(ds$Date, format = "%d/%m/%Y")
dat <- subset(df, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(data$Date), data$Time)
dat$Datetime <- as.POSIXct(datetime)
plot(dat$Global_active_power ~ dat$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "Plot2.png")
dev.off()