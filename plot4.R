# Contains the code to produce plot4.png
# Assumes the file loadData.R has previously been run in order to load the data
# from the file "household_power_consumption.txt" into the dat variable,
# and where the type converted columns are prefixed with "N",
# and only the rows of interest have been included.

# source("loadData.R")

png(file = "plot4.png", width = 480, height = 480)

par(mfcol = c(2,2))

# Plot top left graph
with(dat, plot(NDateTime, NGlobal_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))

# Plot bottom left graph
with(dat, plot(NDateTime, NSub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", col = "Black"))
with(dat, lines(NDateTime, NSub_metering_2, col = "Red"))
with(dat, lines(NDateTime, NSub_metering_3, col = "Blue"))
legend("topright", lty=1, lwd=1, col = c("Black", "Red", "Blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

# Plot top right graph
with(dat, plot(NDateTime, NVoltage, xlab = "datetime", ylab = "Voltage", type = "l"))

# Plot bottom right graph
with(dat, plot(NDateTime, NGlobal_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l"))

dev.off()