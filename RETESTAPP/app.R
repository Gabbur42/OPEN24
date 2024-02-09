
library(shiny)


# Define UI for application that draws a histogram
ui <- fluidPage(shinyUI(
  navbarPage(
    title = "1er test",
    tabPanel(title = "Sommaire",
             "Titre 1 : blabla"),
    tabPanel(title = "Graphiques",
             "Graps de ..."),
    navbarMenu("réf",
               tabPanel("ref n°1"),
               tabPanel("ref n°2")
    )
  )
),
fileInput(inputId = "idFile", label = "Select a file"),tableOutput(outputId = "table"),

    # Application title
    titlePanel("Les diamants"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("groupe",
                        "Nombre de groupe:",
                        min = 2,
                        max = 60,
                        value = 10)
        ,radioButtons(inputId = "col", label = "couleur", inline = TRUE,
                       choices = c("red", "green", "pink")),
        actionButton("Graphique", "Lancer le calcul !")),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("testshiny")
        )
    )
)



# Define server logic required to draw a histogram
server <- function(input, output) {output$table <- renderTable({cars})
output$testshiny <- renderPlot({
  input$Graphique
  isolate({
    color <- input$color
    x <- cars[,2]
    bins <- seq(min(x), max(x), length.out = input$groupe + 1)
    hist(x, breaks = bins, col = color, border = 'black')
  })
})
}

# Run the application 
shinyApp(ui = ui, server = server)

