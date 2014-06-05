
#
# make sure the script load-data.-R is present in the same directory of
# this file as well the file containing the data
# (exdata-data-household_power_consumption.zip or
# household_power_consumption.txt)
#

if (!file.exists("load-data.R"))
    stop("load-data.R file not found in working directory. Please make sure of copy it in this directory")

source("load-data.R")

plot1 <- function() {

    load.data()

    hist(as.numeric(lr.data$Global_active_power), col="red",
         main = "Global Active Power", xlab="Global Active Power (kilowatts)")
}

if (! exists("lr.not.draw")) {
    plot1()

    png(filename="plot1.png", width=480, height=480)
    plot1()
    dev.off()
    message("histogram was saved in plot1.png file")
}
