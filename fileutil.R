library(sqldf)

# load dataset from downloaded file
fileutil.readdata <- function(){
  #Read the dataset using sqldf package. Only extract date between 2007-02-01 and 2007-02-02
  statement <- "select * from file where Date in  ('1/2/2007', '2/2/2007')"
  plotData <- read.csv2.sql(file="household_power_consumption.txt", sql=statement, sep = ";")
  
  #Convert data& time variables to date time type
  plotData$DateTime <- strptime(paste(plotData$Date, plotData$Time),"%d/%m/%Y %H:%M:%S")
  
  return(plotData)
}

#save a plot into png file
fileutil.savetopng <- function(x, filename, FUN){
  png(filename=filename, width = 480, height = 480)
  FUN(x)
  dev.off()
}

#download a file & read data
fileutil.saveplot <- function(filename, FUN){
  d <- fileutil.readdata()
  fileutil.savetopng(d, filename, FUN)
}