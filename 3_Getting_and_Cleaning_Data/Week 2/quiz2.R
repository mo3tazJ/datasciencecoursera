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

# Very Important Use this fix
options(httr_oob_default = TRUE)

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)

# Take action on http error
stop_for_status(req)

# Extract content from a request
json1 = content(req)

# Convert to a data.frame
gitDF = jsonlite::fromJSON(jsonlite::toJSON(json1))

# Subset data.frame
gitDF[gitDF$full_name == "jtleek/datasharing", "created_at"]
