shinyUI(
  pageWithSidebar(
    headerPanel("My first Shiny App"),
    
    sidebarPanel(
      selectInput("Distribution","Please Select Distribution Type",
                  choices = c("Normal","Exponential")),
      sliderInput("sampleSize", "Please Select Sample Size",
                  min = 100, max = 5000, value = 1000, step=100),
      conditionalPanel(condition="input.Distribution == 'Normal'",
                       textInput("Mean","Please Select The Mean",10),
                       textInput("sd","Please Select The Standard Deviation",3)),
      conditionalPanel(condition="input.Exponential == 'Exponential'",
                       textInput("lambda","Please Select The Exponential Lambda",1))
    ),
    
    mainPanel(
      plotOutput("myPlot")
    )
    
  )
  
)