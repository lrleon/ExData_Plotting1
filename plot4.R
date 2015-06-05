 
#
# make sure the scripts load-data.-R, plot2.R and plot3.R are present in
# the same directory of this file as well the file containing the data
# (exdata-data-household_power_consumption.zip or
# household_power_consumption.txt)
#

lr.not.draw <<- TRUE # indicates to other plot functions not to plot at
                     # screeen nor to generate their png's
if (!file.exists("plot2.R"))
    stop("plot2.R file not found in working directory. Please make sure of copy it in this directory")

source("plot2.R")

if (!file.exists("plot3.R"))
    stop("plot3.R file not found in working directory. Please make sure of copy it in this directory")

source("plot3.R")

plot4 <- function() {

    load.data()

    par(mfcol=c(2,2))
    
    plot2()
    plot3()
    
    plot(1:2880, as.numeric(lr.data$Voltage), type="l", axes=F,
         xlab="datetime", ylab="Voltage")
    axis(1, at=c(0, 1440, 2880), labels=c("Thu","Fri","Sat"))
    axis(2)
    box()

    plot(1:2880, as.numeric(lr.data$Global_reactive_power), type="l", axes=F,
         xlab="datetime", ylab="Global Reactive Power")
    axis(1, at=c(0, 1440, 2880), labels=c("Thu","Fri","Sat"))
    axis(2)
    box()
    par(mfcol=c(1,1))
}

plot4()

png(filename="plot4.png", width=480, height=480)
plot4()
dev.off()
message("plot was saved in plot4.png file")

remove("lr.not.draw")
