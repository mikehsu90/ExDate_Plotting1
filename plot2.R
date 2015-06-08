household_power_consumption <- read.csv("C:/Users/Mike/Desktop/household_power_consumption.txt", sep=";", na.strings = "NA", stringsAsFactors=FALSE)
f <- household_power_consumption
filtered <- f[as.Date(f$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
dateTime <- as.POSIXlt(paste(as.Date(filtered$Date, format="%d/%m/%Y"), filtered$Time, sep=" "))
plot(dateTime, filtered$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
