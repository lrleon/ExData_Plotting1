#
# make sure the script load-data.-R is present in the same directory of
# this file as well the file containing the data
# (exdata-data-household_power_consumption.zip or
# household_power_consumption.txt) 
#

if (!file.exists("load-data.R"))
    stop("load-data.R file not found in working directory. Please make sure of copy it in this directory")

source("load-data.R")

plot3 <- function() {

    load.data()

    plot(1:2880, as.numeric(lr.data$Sub_metering_1), type="l", axes=F,
         xlab="", ylab="Energy sub metering")
    lines(1:2880, as.numeric(lr.data$Sub_metering_2), type="l", col="red")
    lines(1:2880, as.numeric(lr.data$Sub_metering_3), type="l", col="blue")
    axis(1, at=c(0, 1440, 2880), labels=c("Thu","Fri","Sat"))
    axis(2, at=c(0, 10, 20, 30))
    box()
    legend("topright", lty=1,col=c("black", "red", "blue"),
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}

if (! exists("lr.not.draw")) {

    plot3()

    png(filename="plot3.png", width=480, height=480)
    plot3()
    dev.off()
    message("plot was saved in plot3.png file")
}
