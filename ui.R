library(shiny)
library(markdown)

shinyUI(
        fluidPage(
        pageWithSidebar(
                headerPanel("MPG prediction based on mtcars dataset"),
        sidebarPanel(
                numericInput('am', 'Transmission (0 = automatic, 1 = manual):', 0, min = 0, max = 1, step = 1),
                numericInput('qsec', '1/4 mile time:', 17.7, min = 14.5, max = 22.9, step = 0.1), 
                numericInput('wt', 'Weight (lb/1000):', 3.3, min = 1.5, max = 5.4, step = 0.1), 
                submitButton('Submit')
        ), 
        mainPanel(
                h3('Result of linear prediction'),
                verbatimTextOutput("prediction")
        ) ),
        fluidRow(
                column(12,includeMarkdown("readme.md")
                )))
)

