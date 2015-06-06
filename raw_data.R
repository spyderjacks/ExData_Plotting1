# This script extracts a subset of the target data file for use in subsequent analysis
#
# rerun this script whenever the source data changes or a different subset is desired
#
#
# Columns (1:9)
###############
# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
#

setwd("C:/Users/msydor/Documents/04 Exploratory Data Analysis/Assignment-1")
subset_rowStart = 66638 
subset_rowEnd = 69516 
dataFile = "household_power_consumption.xls.txt"
subsetFile = "household_power_consumption_subset.csv"

study <- read.csv(file=dataFile, header=TRUE, sep=";")

# reviewed the file to find the appropriate index range for the data of interest...
#
study.sub <- subset(study[subset_rowStart:subset_rowEnd,1:9 ] )

# save the subset for future analysis
#
write.csv(study.sub, file = subsetFile, row.names = FALSE)
