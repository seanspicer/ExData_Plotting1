#
# plot1.R - Generate plot 1
#
# Author: Sean Spicer (sean.spicer@gmail.com)
# Date: 11-Jul-2015
#

#
# Load Data (common)
#
source('scripts/loaddata.R')

#
# Open PNG Device
#
png(filename='plots/plot1.png');

#
# Create Historgram
#
hist(subdata$Global_active_power, 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', 
     col='red');

#
# Close device
#
dev.off(which = dev.cur())