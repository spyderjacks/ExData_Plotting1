# plot-1.R
# Histogram

setwd("C:/Users/msydor/Documents/04 Exploratory Data Analysis/Assignment-1")

plotData = "household_power_consumption_subset.csv"

household_plot <- read.csv(file = plotData, header=TRUE)

png(file = "plot-1.png")
hist(household_plot$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global ActivePower (kilowatts)", ylab = "Frequency")
dev.off()