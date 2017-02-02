## plot1.R

## Loading the data
path = "/Users/jchang16/DSU/ExData_Plotting1/household_power_consumption.txt"
power <- read.table(path, header=TRUE, sep=";", na.strings = "?") # missing values are coded as "?"
power <- power[grep("^[1,2]/2/2007", power$Date), ] # subset dates between 2007-02-01 and 2007-02-02
# You may find it useful to convert the Date and Time variables to Date/Time classes in R 
# using the strptime() and as.Date() functions.
power$datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")


## Plot 1
png(filename = "plot1.png")
hist(power$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
