household_power_consumption <- read.csv("C:/Users/Mike/Desktop/household_power_consumption.txt", sep=";", na.strings = "NA", stringsAsFactors=FALSE)
f <- household_power_consumption
filtered <- f[as.Date(f$Date, "%d/%m/%Y") %in% as.Date(c('2007-02-01', '2007-02-02')),]
hist(as.numeric(filtered$Global_active_power), col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")