
#
# Simply load data into a data frame
load.data <- function(filename) {

    data <- read.table(filename, header=T, sep=";", nrows=2075259)
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    data <- data[data$Date >= "2007-02-01" | data$Date <= "2007-02-02", ]
    data$Time <- strptime(data$Time, "%T")

    data
}
