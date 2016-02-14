calc_stopping_distance <- function(Velocity, Coeff) (Velocity*(1000/3600))^2 / (2*Coeff*9.81)

shinyServer(
  function(input, output) {
    output$inputVelocity <- renderText({paste("Velocity:", input$Velocity)})
    output$inputCoeff <- renderText({paste("Coefficient of friction:", input$Coeff)})
    stopping_distance <- reactive({calc_stopping_distance(input$Velocity, input$Coeff)})
    output$stopping_distance <- renderText({stopping_distance()})
  }
)
