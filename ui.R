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
  titlePanel("Swiss app by Menno Oerlemans"),
  
  # Sidebar with the selection of the variable to be used 
  sidebarLayout(
    sidebarPanel(
            h4("Select the Variable you want to use in the plot:"),
            selectInput("select", "",
                   list("Agriculture", 
                        "Examination", 
                        "Education", 
                        "Catholic", 
                        "Infant Mortality" = "Infant.Mortality"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            h5("The code is in: https://github.com/MennoOerlemans/Myfirstapp"),
            h5("The presentation is in: http://rpubs.com/Menno_Oerlemans/337459"),
            br(),
            br(),
            h4("The output of the data and the lineair regression line of"),
            h4("the choosen variable against Fertility:"),
            plotOutput("plot"),
            h5("The intercept is:"),
            h4(textOutput("intercept")),
            h5("The slope is: "),
            h4(textOutput("schuin"))
    )
  )
))
