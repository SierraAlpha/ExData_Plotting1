data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
sub<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
sub$DateTime<-strptime(paste(sub$Date, sub$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot1.png", width=480, height=480)
hist(sub$Global_active_power, ylim=c(0,1200), main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()