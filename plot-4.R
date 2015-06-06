# plot-4.R
# multi-plot plot

setwd("C:/Users/msydor/Documents/04 Exploratory Data Analysis/Assignment-1")

# collect the subset
#
plotData = "household_power_consumption_subset.csv"
household_plot <- read.csv(file = plotData, header=TRUE)

# plot to png file
#
png(file = "plot-4.png")

par(mfrow=c(2,2))

dateTime <- as.POSIXlt(paste(as.Date(household_plot$Date, format="%d/%m/%Y"), household_plot$Time, sep=" "))

# line plot
plot(dateTime, household_plot$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# line plot
plot(dateTime, household_plot$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# multi-line plot
plot(dateTime, household_plot$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub Metering", col = "black", lwd=1, ylim = c(0,40))
lines(dateTime, household_plot$Sub_metering_2, type = "l", col = "red", lwd=1)
lines(dateTime, household_plot$Sub_metering_3, type = "l", col = "blue", lwd=1)
legend("topright",legend=names(household_plot[7:9]),col=c("black", "red", "blue"), lty=1, lwd=2, bty = "n")

# line plot
plot(dateTime, household_plot$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Voltage")

dev.off()
