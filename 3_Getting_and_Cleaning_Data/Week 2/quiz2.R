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
                   secret = "1c0f12c61d6047f84bdd0eba77c54de343cffda1")

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
