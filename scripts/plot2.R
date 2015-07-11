#
# plot2.R - Generate plot 2
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
png(filename='plots/plot2.png')

#
# Create Time-Series Plot
#
plot(subdata$Date.Time, 
     subdata$Global_active_power,
     ylab='Global Active Power (kilowatts)', 
     xlab='', 
     type='l')

#
# Close device
#
dev.off(which = dev.cur())