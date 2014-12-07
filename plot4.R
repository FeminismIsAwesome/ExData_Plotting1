source("commonPlot.R")
source("plot3.R")
source("plot2.R")
makePlot4 <- function() {
  selectedTimePeriod <- readAndCleanData()
  png("plot4.png")
  par(mfrow=c(2,2))
  drawGlobalActivePower(selectedTimePeriod)
  with(selectedTimePeriod, plot(DateTime, Voltage, type = "l", xlab="datetime"))
  drawEnergySubMetering(selectedTimePeriod)
  with(selectedTimePeriod, plot(DateTime, Global_reactive_power, type = "l",xlab="datetime"))
  
  dev.off()
  
}