# https://class.coursera.org/exdata-030/human_grading/view/courses/975125/assessments/3/submissions

# read the required data
source("getDataPlotting1.R", encoding = "UTF-8")

## Plot 1
# open png graphics device
png(filename = "plot1.png")

# print the plot
hist(powerConsumption$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

# turn off the plot device
dev.off()
