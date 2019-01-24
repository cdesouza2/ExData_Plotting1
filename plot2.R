# Contains the code to produce plot2.png
# Assumes the file loadData.R has previously been run in order to load the data
# from the file "household_power_consumption.txt" into the dat variable,
# and where the type converted columns are prefixed with "N",
# and only the rows of interest have been included.

# source("loadData.R")

png(file = "plot2.png", width = 480, height = 480)
with(dat, plot(NDateTime, NGlobal_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()