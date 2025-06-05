## Getting and Cleaning Data Quiz

## Question 4
## How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page:
## http://biostat.jhsph.edu/~jleek/contact.html

# Establish a connection to the page

connection <- url("http://biostat.jhsph.edu/~jleek/contact.html")
html_code <- readLines(connection)
# Important !!! closing the connection
close(connection)
# counting char using nchar() Function
c(nchar(htmlCode[10]), nchar(htmlCode[20]), nchar(htmlCode[30]), nchar(htmlCode[100]))

# Answer: 
# 45 31 7 25
