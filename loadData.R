# Contains the R code to read the data in the "household_power_consumption.txt" file.
# It is assumed this file has been downloaded to the current working directory.

# First read the raw data as columns of characters
rawdat <- read.csv2("household_power_consumption.txt", stringsAsFactors = FALSE)

# Filter this data to only the dates required
dat <- subset(rawdat, rawdat$Date == "1/2/2007" | rawdat$Date == "2/2/2007")

# Now create new columns starting with N where the raw data is converted to the right type
dat$NDate = as.Date(dat$Date, "%d/%m/%Y")
dat$NTime = strptime(dat$Time, "%H:%M:%S", tz="")
dat$NGlobal_active_power = as.numeric(dat$Global_active_power)
dat$NGlobal_reactive_power = as.numeric(dat$Global_reactive_power)
dat$NVoltage = as.numeric(dat$Voltage)
dat$NGlobal_intensity = as.numeric(dat$Global_intensity)
dat$NSub_metering_1 = as.numeric(dat$Sub_metering_1)
dat$NSub_metering_2 = as.numeric(dat$Sub_metering_2)
dat$NSub_metering_3 = as.numeric(dat$Sub_metering_3)
dat$NDateTime = as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")

