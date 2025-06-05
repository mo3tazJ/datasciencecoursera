## Getting and Cleaning Data Quiz

# Question 1
# install.packages("jsonlite")
# install.packages("httpuv")
# install.packages("httr")

library(jsonlite)
library(httpuv)
library(httr)

# OAuth endpoint
oauth_endpoints("github")

# Configure The app created in Github (Moutaz_Github_App)
myapp <- oauth_app(appname = "Moutaz_Github_App",
                   key = "Ov23liA4EjAgknVBUGrR",
                   secret = "daa03bbab5ea4247f3c248a193419610a80fe0d1")
