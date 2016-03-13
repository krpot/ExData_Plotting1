#setwd("working_directory")

source("fileutil.R")
source("plotutil.R")

plot4.run <- function(x){
  par(mfrow = c(2,2))
  
  plot(x$DateTime, x$Global_active_power, type="l", ylab="Global Active Power", xlab=NA)
  plot(x$DateTime, x$Voltage, type="l", ylab="Voltage", xlab="datetime")
  plotutil.plotinsamescale(x, "n")
  plot(x$DateTime, x$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
}

fileutil.saveplot("plot4.png", plot4.run)
