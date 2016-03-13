#setwd("working_directory")

source("fileutil.R")
source("plotutil.R")

plot2.run <- function(x){
  plot(x$DateTime, x$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=NA)
}


fileutil.saveplot("plot2.png", plot2.run)
                  