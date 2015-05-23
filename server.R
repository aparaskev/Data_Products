library("shiny")

prediction <- function(inputVal){
    x <- data.frame(speed <- c(inputVal)) 
    data(cars)
    model <- lm(dist~speed, data=cars)
    predict(model, newdata=x)
}


shinyServer(
    function(input,output){
        output$speed <- renderPrint({input$speed})
        output$distance <- renderPrint({prediction(input$speed)})
    }    
)