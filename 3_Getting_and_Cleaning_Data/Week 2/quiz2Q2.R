## Getting and Cleaning Data Quiz

# Question 2

# Installing Required Package
install.packages("sqldf")

# Loading Te Package
library("sqldf")

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
# Constructing Directory path
dir_path <- paste0(getwd(),"/3_Getting_and_Cleaning_Data/Week 2")
# File path
f <- file.path(dir_path, "ss06pid.csv")
# Download File from url
download.file(url, f)
# Reading to a data table
acs <- data.table::data.table(read.csv(f))

# Querying
query1 <- sqldf("select pwgtp1 from acs where AGEP < 50")
