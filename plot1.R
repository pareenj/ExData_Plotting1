datafile <- "E:/CourseraDataScience/Working Directory/household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Subs <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
str(Subs)
globalActivePower <- as.numeric(Subs$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
