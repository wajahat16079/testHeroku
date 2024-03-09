#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import qdap
#' @import DT
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  output$text = renderDataTable({
    # browser()
    # p(qdap::read.transcript("text.docx"))
    # Sample sentences
    sentences <- c("I love R programming!",
                   "Text analysis is fascinating.",
                   "This is not a good example.",
                   "I'm feeling happy today.",
                   "The weather is terrible.")

    # Perform sentiment analysis
    sentiment_scores <- qdap::polarity(sentences)
    sentiment_scores$all
  })
}
