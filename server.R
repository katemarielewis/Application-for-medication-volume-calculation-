library(shiny)
library(ggplot2)

drugconc<-function(animalweight, dose, conc){
  volume<-dose*animalweight/conc
  volume
}

shinyServer(function(input, output) {
  
  output$result <- renderPrint({drugconc(input$animalweight, input$dose, input$conc)})
  
})