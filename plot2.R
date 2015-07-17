# https://class.coursera.org/exdata-030/human_grading/view/courses/975125/assessments/3/submissions

# read the required data
source("getDataPlotting1.R", encoding = "UTF-8")

## Plot 2

# Temporary set locale to enlish to get correct x-axis. If you're running English os, this won't be any problem
oldlocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "C")

# open png graphics device
png(filename = "plot2.png")

# print the plot
plot(powerConsumption$Global_active_power~powerConsumption$DateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )

# turn off the plot device
dev.off()

# set locale to original locale
Sys.setlocale("LC_TIME", oldlocale)
