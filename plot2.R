datafile <- "E:/CourseraDataScience/Working Directory/household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Subs <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
str(Subs)
globalActivePower <- as.numeric(Subs$Global_active_power)
Date_Time <- strptime(paste(Subs$Date, Subs$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(Date_Time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
png("plot2.png", width=480, height=480)
plot(Date_Time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()