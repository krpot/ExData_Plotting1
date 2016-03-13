#x: dataset
#y: column
#yabl: y-axis label
plotutil.plotwithylabcolor <- function(x, y, ylab, color){
  plot(x, y, type="s", ylab=ylab, xlab=NA, col=color, ylim=c(0, 40))
}

plotutil.plotinsamescale <- function(x, bty="o"){
  colors <- c("black", "red", "blue")
  lables <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  plotutil.plotwithylabcolor(x$DateTime, x$Sub_metering_1, "Energy sub metering", "black")
  par(new=TRUE)
  plotutil.plotwithylabcolor(x$DateTime, x$Sub_metering_2, "Energy sub metering", "red")
  par(new=TRUE)
  plotutil.plotwithylabcolor(x$DateTime, x$Sub_metering_3, "Energy sub metering", "blue")
  legend("topright", legend=lables, col=colors, pch="-", lwd="3", bty = bty)
}
