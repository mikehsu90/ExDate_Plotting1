household_power_consumption <- read.csv("C:/Users/Mike/Desktop/household_power_consumption.txt", sep=";", na.strings = "NA", stringsAsFactors=FALSE)
f <- household_power_consumption
filtered <- f[as.Date(f$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
dateTime <- as.POSIXlt(paste(as.Date(filtered$Date, format="%d/%m/%Y"), filtered$Time, sep=" "))

plot(dateTime, filtered$Sub_metering_1, type = "l")
par(new=T)
plot(dateTime, filtered$Sub_metering_2, type = "l")
par(new=T)
plot(dateTime, filtered$Sub_metering_3, type = "l", xlab="", ylab="Energy sub metering")
par(new=F)
