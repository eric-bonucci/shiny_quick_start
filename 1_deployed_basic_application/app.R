# run environment loading script
source("./environment.R")

# UI definition
ui <- dashboardPage(
  dashboardHeader(title = "App 1.0"),
  dashboardSidebar(sidebarMenuOutput(ID_UI_SIDEBAR)),
  dashboardBody(uiOutput(ID_UI_BODY))
)

# server definition
server <- function(input, output) {}

# create and run the application
shiny_application <- shinyApp(ui = ui, server = server)

if (debug_mode) {
  # can't call runApp from shinyserver.io 
  runApp(shiny_application,
         launch.browser = rstudioapi::viewer)
} else {
  shiny_application
}

