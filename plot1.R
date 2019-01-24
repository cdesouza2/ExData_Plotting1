# Contains the code to produce plot1.png
# Assumes the file loadData.R has previously been run in order to load the data
# from the file "household_power_consumption.txt" into the dat variable,
# and where the type converted columns are prefixed with "N",
# and only the rows of interest have been included.

# source("loadData.R")

png(file = "plot1.png", width = 480, height = 480)
hist(dat$NGlobal_active_power, col="Red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()