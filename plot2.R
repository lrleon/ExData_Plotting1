# 
# make sure the script load-data.-R is present in the same directory of
# this file as well the file containing the data
# (exdata-data-household_power_consumption.zip or
# household_power_consumption.txt)
#

if (!file.exists("load-data.R"))
    stop("load-data.R file not found in working directory. Please make sure of copy it in this directory")

source("load-data.R")


plot2 <- function() {

    load.data()

    plot(1:2880, as.numeric(lr.data$Global_active_power),
         type="l", axes=F, xlab="", ylab="Global Active Power (kilowatts)")
    axis(1, at=c(0, 1440, 2880), labels=c("Thu","Fri","Sat"))
    axis(2, at=c(0, 2, 4, 6))
    box()
}

if (! exists("lr.not.draw")) {
    plot2()

    png(filename="plot2.png", width=480, height=480)
    plot2()
    dev.off()
    message("plot was saved in plot2.png file")
}
