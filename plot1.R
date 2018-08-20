hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
##The file was downloaded to working direction, all variables setted to Characters rather than Factors.

hpc_day <- subset(hpc, hpc$Date == "2/2/2007"|hpc$Date == "1/2/2007")
##Set Date as character, then subset 2007-02-01 and 2007-02-02

dev.copy(png)
png("plot1.png")
hist(as.numeric(hpc_day$Global_active_power), main = "Global Active Power", col = "red", xlab = "Global Active Power(kilowatts)")
##Made a histogram plot with labels in PNG device
dev.off()

