
#
# Simply load data into a data frame
load.data <- function() {

    if (exists("lr.data"))
        return (lr.data)
    
    filename <- "household_power_consumption.txt"

                                        # checks if files exist
    if (!file.exists(filename)) {
        if (!file.exists("exdata-data-household_power_consumption.zip")) {
            stop("House power consumption data not found")
        }
        message("unziping the data. Please wait ...")
        unzip("exdata-data-household_power_consumption.zip")
    }
        
    message("Loading and processing data. Please wait ...")
    data <- read.table(filename, header=T, sep=";", nrows=2075259,
                       colClasses = "character")
        
    data$Date <- as.Date(data$Date, "%d/%m/%Y") 
    data <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02", ]
    data$Time <- strptime(data$Time, "%T")

    lr.data <<- data

    message("Necessary data is in lr.data data frame")
    message("NOTE: prefix lr is used in order to mitigate name space pollution")

    lr.data
}

