source("load-data.R")

plot1 <- function() {

    load.data()

    hist(as.numeric(lr.data$Global_active_power), col="red",
         main = "Global Active Power", xlab="Global Active Power (kilowatts)")
}

plot1()

png(filename="plot1.png", width=480, height=480)
plot1()
dev.off()
message("histogram was saved in plot1.png file")
