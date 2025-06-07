## Getting and Cleaning Data Quiz
## Week 4
## Question 1

library("data.table")
fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, "communities.csv", method = "curl")
communities <- data.table::fread("communities.csv")

splitted_names <- strsplit(names(communities), "wgtp")

element_123 <- splitted_names[[123]]

print(element_123)

## answer: ""   "15"
