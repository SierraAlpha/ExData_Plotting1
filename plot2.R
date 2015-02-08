data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
sub<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
sub$DateTime<-strptime(paste(sub$Date, sub$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(sub$DateTime, sub$Global_active_power, typ="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()