## Getting and Cleaning Data Quiz
## Week 4
## Question 2
## Remove the commas from the GDP numbers in millions of dollars and average them.
## What is the average?

# Important Notes:
# Removed the s from https to be compatible with windows computers. 
# Skip first 5 rows and only read in relevant columns

# library("data.table")
fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileurl, "gdp.csv", method = "curl")

GDPrank <- data.table::fread("gdp.csv"
                             , skip=5
                             , nrows=190
                             , select = c(1, 2, 4, 5)
                             , col.names=c("CountryCode", "Rank", "Country", "GDP")
)

# 1. Remove the commas using gsub
# 2. Convert to integer after removing commas. 
# 3. Take mean of GDP column

answer <- GDPrank[, mean(as.integer(gsub(pattern = ',', replacement = '', x = GDP )))]
print(answer)

## answer: 377652.4


## Question 3

grep("^United",GDPrank[, Country])

## answer: 1  6 32,  correct choice :(grep("^United",countryNames), 3)
