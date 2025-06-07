## Getting and Cleaning Data Quiz
## Week 4
## Question 2

# Important Notes:
# Removed the s from https to be compatible with windows computers. 
# Skip first 5 rows and only read in relevant columns

# library("data.table")
fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, "gdp.csv", method = "curl")
