library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Computation of the stopping distance of a moving vehicle"),
    sidebarPanel(
      p("Adjust the sliders to match the vehicle's velocity and the road's condition through providing a value for the friction of coefficient. For dry roads pick a higher value for the coefficient! The currently selected values are also displayed and updated on the right."),
      sliderInput("Velocity", "Vehicle's velocity in km/h", value = 150, min = 1, max = 350, step = 10),
      sliderInput("Coeff", "Friction of coefficient", value = 0.5, min = 0, max = 1.35, step = 0.1),
      br(),
      p("The formula to compute a vehicle's stopping distance which is used in this application can be found at the following url:"),
      a("https://en.wikipedia.org/wiki/Braking_distance", href="https://en.wikipedia.org/wiki/Braking_distance")
    ),
    mainPanel(
      h4("Your input:"),
      textOutput("inputVelocity"),
      textOutput("inputCoeff"),
      h4("Calculated stopping distance in meters (m):"),
      textOutput("stopping_distance")
    )
  )
)