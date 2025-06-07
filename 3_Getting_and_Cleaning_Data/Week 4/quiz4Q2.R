## Getting and Cleaning Data Quiz
## Week 4
## Question 2

# library("data.table")
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, "gdp.csv", method = "curl")
