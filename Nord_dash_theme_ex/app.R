#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(dashboardthemes)
source("theme_diy.R")
# Define UI for application that draws a histogram
ui <- dashboardPage(
    dashboardHeader(title = "Nord theme"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Home", tabName = "dashboard", icon = icon("dashboard")),
            menuItem("Tab 1", tabName = "tab1", icon = icon("server")),
            menuItem("Tab 2", tabName = "tab2", icon = icon("stream"))
        )
    ),
    dashboardBody(
        theme_nord,
        fluidRow(
            tabBox(
                title = "First tabBox",
                # The id lets us use input$tabset1 on the server to find the current tab
                id = "tabset1", height = "250px",
                tabPanel("Tab1", "First tab content"),
                tabPanel("Tab2", "Tab content 2")
            ),
            box(
                title = "Inputs", 
                sliderInput("slider", "Slider input:", 1, 100, 50),
                textInput("text", "Text input:")
            )
        ),
        fluidRow(
            # A static infoBox
            infoBox("INFO BOX", 10 * 2, icon = icon("chart-line")),
            # Dynamic infoBoxes
            infoBox("INFO BOX", 10 * 2, icon = icon("chart-line"), fill = TRUE),
            infoBoxOutput("approvalBox")
        ),
        
        # infoBoxes with fill=TRUE
        fluidRow(
            box(
                title = "PRIMARY", width = 4, solidHeader = TRUE, status = "primary",
                "Box content"
            ),
            box(
                title = "SUCCESS", width = 4, solidHeader = TRUE, status = "success",
                "Box content"
            )
            ),
        fluidRow(
            box(
                title = "WARNING", width = 4, solidHeader = TRUE, status = "warning",
                "Box content"
            ),
            box(
                title = "DANGER", width = 4, solidHeader = TRUE, status = "danger",
                "Box content"
            )
        ),
        
        fluidRow(
            # Clicking this will increment the progress amount
            box(width = 4, actionButton("count", "Increment progress"))
        )
    )
)

server <- function(input, output) { }

shinyApp(ui, server)
