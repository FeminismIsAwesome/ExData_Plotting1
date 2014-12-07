source("commonPlot.R")
makePlot2 <- function() {
  household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
  selectedTimePeriod <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
  selectedTimePeriod$Global_active_power <- as.numeric(as.character((selectedTimePeriod$Global_active_power)))
  selectedTimePeriod$DateTime <- as.POSIXct(paste(test$Date, test$Time), format="%d/%m/%Y %H:%M:%S")
  png("plot2.png")
  drawGlobalActivePower(selectedTimePeriod)
  dev.off()
}

drawGlobalActivePower <- function(selectedTimePeriod) {
  with(selectedTimePeriod, plot(DateTime, Global_active_power, type = "l", xlab="",  ylab = "Global Active Power (kilowatts)"))
}