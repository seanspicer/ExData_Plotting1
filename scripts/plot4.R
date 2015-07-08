#
# plot4.R - Generate plot 4
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
png(filename='plots/plot4.png')

#
# Set layout
#
par(mfrow=c(2,2))

#
# Top Left - Time-series plot
#
plot(subdata$Date.Time, 
     subdata$Global_active_power,
     ylab='Global Active Power', 
     xlab='', 
     type='l')

#
# Top right - Voltage Plot
#
plot(subdata$Date.Time, 
     subdata$Voltage,
     xlab='datetime', 
     ylab='Voltage', 
     type='l')

#
# Bottom left - Create Sub Meter 1 Plot
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
# Bottom right - Global reactive power
#
plot(subdata$Date.Time, 
     subdata$Global_reactive_power,
     xlab='datetime', 
     ylab='Global_reactive_power', 
     type='l');

#
# Close device
#
dev.off(which = dev.cur())