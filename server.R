# Requires the libraries shiny.
library(shiny)
library(dplyr)

# Brings in the 
source('scripts/create_viz.R')

# Reads in the dataset iris.
data("iris")

shinyServer(function(input, output) {
  # Produces the graph for the ui.
  output$graph <- renderPlotly({
    create_viz(iris, input$radio, input$text)
  })
})