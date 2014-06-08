# Plot 1 for Experimental Data, by datarod

library(data.table)

nrows=6839 # fix bad row at 6840
DT=fread("./household_power_consumption.txt",header=TRUE,nrows=nrows,na.strings="?")

hist(DT$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (killowatts)")

dev.copy(png,file="plot1.png") # save off png file
dev.off()  # don't forget to close
