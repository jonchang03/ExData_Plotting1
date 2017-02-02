## plot2.R

## Loading the data
path = "/Users/jchang16/DSU/ExData_Plotting1/household_power_consumption.txt"
power <- read.table(path, header=TRUE, sep=";", na.strings = "?") # missing values are coded as "?"
power <- power[grep("^[1,2]/2/2007", power$Date), ] # subset dates between 2007-02-01 and 2007-02-02
# You may find it useful to convert the Date and Time variables to Date/Time classes in R 
# using the strptime() and as.Date() functions.
power$datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")


## Plot 2
png(filename = "plot2.png")
plot(power$datetime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowawtts)")
dev.off()