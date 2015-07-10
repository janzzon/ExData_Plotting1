# https://class.coursera.org/exdata-030/human_grading/view/courses/975125/assessments/3/submissions

# read the required data
source("getDataPlotting1.R", encoding = "UTF-8")

## Plot 3

# Temporary set locale to enlish to get correct x-axis. If you're running English os, this won't be any problem
oldlocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "English")

# open png graphics device
png(filename = "plot3.png")

# print the plot w. metering 1
plot(powerConsumption$Sub_metering_1~powerConsumption$DateTime, type = "l", xlab = "", ylab = "Energy sub metering")
# Add metering 2 and 3
lines(powerConsumption$Sub_metering_2~powerConsumption$DateTime, col = "red")
lines(powerConsumption$Sub_metering_3~powerConsumption$DateTime, col = "blue")
# Add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"),lty = 1)

# turn off the plot device
dev.off()

# set locale to original locale
Sys.setlocale("LC_TIME", oldlocale)
