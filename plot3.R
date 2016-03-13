#setwd("working_directory")

source("fileutil.R")
source("plotutil.R")

plot3.run <- function(x){
  plotutil.plotinsamescale(x)
}


fileutil.saveplot("plot3.png", plot3.run)