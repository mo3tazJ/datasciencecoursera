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

file2url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(file2url, "stats.csv", method = "curl")

eduDT <- data.table::fread("stats.csv")

mergedDT <- merge(GDPrank, eduDT, by = 'CountryCode')

answer <- mergedDT[grepl(pattern = "Fiscal year end: June 30;", mergedDT[, `Special Notes`]), .N]

print(paste0("Answer: ", answer))
