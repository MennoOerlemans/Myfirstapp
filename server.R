#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
require(stats)
data(swiss)

shinyServer(function(input, output) {
        
        col <- reactive({
                input$select 
        })
        
        
        formula <- reactive({
                paste("Fertility ~", input$select)
        })
        
        mf <- reactive({
                lm(as.formula(formula()), data = swiss)
        })
        
        
        output$plot <- renderPlot({ 
                plot(as.formula(formula()), 
                     data = swiss, ylab="Fertility", xlab=col(), col="red")
                abline(mf())
        })
        
        
        
        
})