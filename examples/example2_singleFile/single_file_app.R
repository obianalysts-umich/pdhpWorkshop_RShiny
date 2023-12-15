
library(shiny)

myUI = fluidPage(
    
    "Hello World",
    textInput("text_input_example", label = "Type a Message", value = "Hello UofM"),
    verbatimTextOutput("message")
)

myServer = function(input, output){
    output$message = renderText({input$text_input_example})
}

shinyApp(ui = myUI, server = myServer)

# note that the UI, server, and call can be in separate files (a la example1) or in a single file, like this example. We can also break up the server, the UI, or both into multiple files each as needed