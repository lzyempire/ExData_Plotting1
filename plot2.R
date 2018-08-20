hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
##The file was downloaded to working direction, all variables setted to Characters rather than Factors.

hpc_day <- subset(hpc, hpc$Date == "2/2/2007"|hpc$Date == "1/2/2007")
##Set Date as character, then subset 2007-02-01 and 2007-02-02
hpc_time_string <- paste(hpc_day$Date, hpc_day$Time)
hpc_time <- strptime(hpc_time_string, format = "%d/%m/%Y %H:%M:%S")
##Got the time value

dev.copy(png)
png("plot2.png")
plot(hpc_time, hpc_day$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
##plot the plot2.png

dev.off()

