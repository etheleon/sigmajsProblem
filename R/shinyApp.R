
library(shiny)
library(sigma)

load("gexf.rda")

#Doesnt Render
shinyApp(
    ui = fluidPage(
      sigmaOutput("network", width="100%", height="100%")
    ),
    server = function(input, output){
      output$network <- renderSigma({
        sigma(gexf = agexf$graph, drawLabels = T, labelThreshold = 20)
      })
    }
)
#Renders
shinyApp(
    ui = fluidPage(
      sigmaOutput("network", width="100%")
    ),
    server = function(input, output){
      output$network <- renderSigma({
        sigma(gexf = agexf$graph, drawLabels = T, labelThreshold = 20)
      })
    }
)
