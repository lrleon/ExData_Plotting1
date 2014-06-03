source("plot2.R")
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
message("plot was saved in plot2.png file")
