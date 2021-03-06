data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
sub<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
sub$DateTime<-strptime(paste(sub$Date, sub$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(sub$DateTime, sub$Sub_metering_1, typ="l", xlab="", ylab="Energy sub metering")
lines(sub$DateTime, sub$Sub_metering_2, col="Red")
lines(sub$DateTime, sub$Sub_metering_3, col="Blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, lty=c(1,1), cex=.8)
dev.off()
