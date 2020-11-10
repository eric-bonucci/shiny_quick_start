# load useful packages
library(shiny)
library(shinydashboard)

# logical value indicating if code is running locally
debug_mode <- Sys.getenv("SHINY_PORT") == ""

# UI elements' identifiers
ID_UI_SIDEBAR <- "ID_UI_SIDEBAR"
ID_UI_BODY    <- "ID_UI_BODY"