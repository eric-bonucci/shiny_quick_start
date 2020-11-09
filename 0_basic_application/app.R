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

# run the application
runApp(shinyApp(ui = ui, server = server),
       launch.browser = rstudioapi::viewer)
