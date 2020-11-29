#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Standard Normal Law Calculator"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h5("Enter a value of x to calculate the cumulative normal distribution probability associated with this value."),
            numericInput('x', 'x=', min=-1000, max=1000, step=0.0001, value=0)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h4('Pr(X<x)'),
            verbatimTextOutput("prob1"),
            h4('Pr(X>x)'),
            verbatimTextOutput("prob2"),
            h5('where X ~ N(0,1)')
        )
    )
))
