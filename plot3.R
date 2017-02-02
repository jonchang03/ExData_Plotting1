## plot3.R

## Loading the data
path = "/Users/jchang16/DSU/ExData_Plotting1/household_power_consumption.txt"
power <- read.table(path, header=TRUE, sep=";", na.strings = "?") # missing values are coded as "?"
power <- power[grep("^[1,2]/2/2007", power$Date), ] # subset dates between 2007-02-01 and 2007-02-02
# You may find it useful to convert the Date and Time variables to Date/Time classes in R 
# using the strptime() and as.Date() functions.
power$datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")


## Plot 3
png(filename = "plot3.png")
plot(power$datetime, power$Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering")
lines(power$datetime, power$Sub_metering_2, type="l", col="red")
lines(power$datetime, power$Sub_metering_3, type="l", col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2)
dev.off()