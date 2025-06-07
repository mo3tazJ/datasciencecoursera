## Getting and Cleaning Data Quiz
## Week 4
## Question 4

# fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
# download.file(fileurl, "gdp.csv", method = "curl")

GDPrank <- data.table::fread('gdp.csv'
                             , skip=5
                             , nrows=190
                             , select = c(1, 2, 4, 5)
                             , col.names=c("CountryCode", "Rank", "Country", "GDP")
)
