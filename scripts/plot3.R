#
# plot3.R - Generate plot 3
#
# Author: Sean Spicer (sean.spicer@gmail.com)
#

#
# Load Data (common)
#
source('scripts/loaddata.R')

#
# Open PNG Device
#
png(filename='plots/plot3.png')

#
# Create Sub Meter 1 Plot
#
plot(subdata$Date.Time, 
     subdata$Sub_metering_1, 
     type='l',
     xlab='', 
     ylab='Energy sub metering');

#
# Add Sub Meter 2 data
#
lines(subdata$Date.Time, 
      subdata$Sub_metering_2, 
      col='red');

#
# Add Sub Meter 3 data
#
lines(subdata$Date.Time, 
      subdata$Sub_metering_3, 
      col='blue');

#
# Add Legend
# 
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid');

#
# Close device
#
dev.off(which = dev.cur())