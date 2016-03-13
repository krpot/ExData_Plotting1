#setwd("working_directory")

source("fileutil.R")
source("plotutil.R")

plot1.run <- function(x){
  hist(x$Global_active_power, main = "Global Active Power", col = "red", xlab="Global Active Power (kilowatts)")
}

fileutil.saveplot("plot1.png", plot1.run)

