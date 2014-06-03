source("load-data.R")

plot2 <- function() {

    load.data()

    plot(1:2880, lr.data$Global_active_power, type="l", axes=F, xlab="",
         ylab="Global Active Power (kilowatts)")
    axis(1, at=c(0, 1440, 2880), labels=c("Thu","Fri","Sat"))
    axis(2, at=c(0, 2, 4, 6))
    box()
}

plot2()

png(filename="plot2.png", width=480, height=480)
plot2()
dev.off()
message("histogram was saved in plot2.png file")
