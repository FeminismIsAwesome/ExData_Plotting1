source("commonPlot.R")
makePlot3 <- function() {
  selectedTimePeriod <- readAndCleanData()
  png("plot3.png")
  drawEnergySubMetering(selectedTimePeriod)
  dev.off()
  
}
drawEnergySubMetering <- function(selectedTimePeriod) {
  with(selectedTimePeriod,plot(DateTime, Sub_metering_1, type = "l",  ylab = "Energy sub metering", xlab=""))
  points(selectedTimePeriod$DateTime, selectedTimePeriod$Sub_metering_2, col = "red", type = "l")
  points(selectedTimePeriod$DateTime, selectedTimePeriod$Sub_metering_3, col = "blue", type = "l")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), fill = c("black","red","blue"))
}