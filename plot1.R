makePlot <- function() {
  household_power_consumption <- read.csv("household_power_consumption.txt", sep=";")
  selectedTimePeriod <- household_power_consumption[household_power_consumption$Date == "1/2/2007" | household_power_consumption$Date == "2/2/2007",]
  globalActivePower <- as.numeric(as.character((selectedTimePeriod$Global_active_power)))
  png("plot1.png")
  hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",ylim=c(0,1200))
  dev.off()
}
  