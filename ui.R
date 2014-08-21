library(shiny)
library(ggplot2)

shinyUI(pageWithSidebar(
  
  headerPanel("Medication Calculator for Animals"),
  
  sidebarPanel(
    
    numericInput('animalweight', 'Animal Weight (kg)', 0, min=0, max=100, step=0.001),
    numericInput('dose', 'Medicine Dosage required for animal (mg/kg)', 0, min=0, max=1000, step=0.01),
    numericInput('conc', 'Concentration of Medicine (mg/ml)', 0, min=0, max=10000, step=0.01),
    submitButton('Submit Input')
  ),
  
  mainPanel(
    h4('Documentation:'),
    p('To use this application, enter the values for the weight of the animal you want to treat, the dosage of the medicine that is required to treat the animal and the concentration of the medicine that you have into the input boxes on the left hand side.
      Once this information is entered, click the Submit Input button so that the following function will be run on your inputted information:'),
    code('drugconc<-function(animalweight, dose, conc){
            volume<-dose*animalweight/conc
            volume
    }'),
    h3('Results:'),
    h4('The volume of medication that should be given to the animal (ml)'),
    verbatimTextOutput("result")
  )
))