#
# loaddata.R
#
# Author: Sean Spicer (sean.spicer@gmail.com)
# Date: 11-Jul-2015
#

#
# If the raw data has not been processed, download- unzip- and load- it.
# Save it to a native R object file for subsequent runs.
#
# Source Location: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
#

#
# Cache Downlaoded Data
# 
CacheLoad = T;

if (!file.exists('household_power_consumption.rds')) {
  
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',
                destfile='household_power_consumption.zip', method='curl');
  
  unzip('household_power_consumption.zip');
  
  #
  # Read data into table 
  #
  data = read.table('household_power_consumption.txt', 
                    header=TRUE,
                    sep=';', 
                    na.strings='?',
                    colClasses=c(rep('character', 2), rep('numeric', 7)));
  
  
  #
  # Create DateTime object
  #
  data$Date.Time = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S");
  
  #
  # Set begining/end
  #
  start = as.Date(strptime("2007-02-01", "%Y-%m-%d"));
  end   = as.Date(strptime("2007-02-02", "%Y-%m-%d"));
  
  #
  # Subset between beginning and end
  #
  subdata = subset(data, as.Date(Date.Time) >= start & as.Date(Date.Time) <= end);
  
  #
  # Save file
  #
  if(CacheLoad) {
    saveRDS(subdata, file='household_power_consumption.rds');
  }
  
  #
  # Remove Temp Data / Downlaods
  #
  rm(data, start, end);
  
  file.remove('household_power_consumption.txt');
  file.remove('household_power_consumption.zip');
  
} else {
  
  subdata = readRDS('household_power_consumption.rds')
  
}
