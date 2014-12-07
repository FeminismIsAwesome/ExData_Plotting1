readAndCleanData <- function() {
  household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
  selectedTimePeriod <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
  selectedTimePeriod$Global_active_power <- as.numeric(as.character((selectedTimePeriod$Global_active_power)))
  selectedTimePeriod$Global_reactive_power <- as.numeric(as.character((selectedTimePeriod$Global_reactive_power)))
  selectedTimePeriod$Voltage <- as.numeric(as.character((selectedTimePeriod$Voltage)))
  selectedTimePeriod$DateTime <- as.POSIXct(paste(test$Date, test$Time), format="%d/%m/%Y %H:%M:%S")
  selectedTimePeriod$Sub_metering_1 <- as.numeric(as.character((selectedTimePeriod$Sub_metering_1)))
  selectedTimePeriod$Sub_metering_2 <- as.numeric(as.character((selectedTimePeriod$Sub_metering_2)))
  selectedTimePeriod$Sub_metering_3 <- as.numeric(as.character((selectedTimePeriod$Sub_metering_3)))
  selectedTimePeriod
  
}