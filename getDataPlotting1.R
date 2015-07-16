# https://class.coursera.org/exdata-030/human_grading/view/courses/975125/assessments/3/submissions

library(dplyr)
library(magrittr)
library(RCurl)

# location of the data
datasetUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# create data directory if missing
if (!file.exists("./data")) dir.create("./data")

# download zipped file if missing
if(!file.exists("data/household_power_consumption.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                "data/household_power_consumption.zip", method = "curl")
}

# unzip file
unzip("data/household_power_consumption.zip", exdir = "./data")

# read data from file
powerConsumption <- read.table("data/household_power_consumption.txt", sep = ";", header = T,
                               stringsAsFactors = F, na.strings = "?")

# filter dates to 2007-02-01 or 2007-02-02
powerConsumption %<>% filter (Date == "1/2/2007" | Date == "2/2/2007")

# create a new column with date and time in format POSIXct
powerConsumption$DateTime <- as.POSIXct(paste(powerConsumption$Date, powerConsumption$Time, sep = "-"), 
                                        format = "%d/%m/%Y-%H:%M:%S", tz = "UTC")
