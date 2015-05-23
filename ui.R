library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Relationship of the speed of the car and the stopping distance"),
    sidebarPanel(
        h4("DOCUMENTATION" , align = "center"),
        h5("The specific application predicts the distance that a car needs in order to stop
           by taking into consideration a specific value of speed. In order to achieve it,
           we created a linear regression model based on the data of speed and stopping 
           distance that are provided by the R dataset named cars. The user of this application
           can simply enter a value for speed and then press the button submit. The linear model
           should then calculate and demonstate the predicted value of stopping distance. Enjoy ..."),
        numericInput('speed', 'Insert speed of the car', 15, min=0, max=25, step=1),
        submitButton("Submit")
        #actionButton("goButton", "Go!")
    ),
    mainPanel(
        h4('You entered speed:'),
        verbatimTextOutput("speed"),
        h4("And the stoping distance according to the model is:"),
        verbatimTextOutput("distance")
        )
    )
)