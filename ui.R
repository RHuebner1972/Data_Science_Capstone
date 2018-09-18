### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/sriharshams/coursera-data-science-capstone
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Capstone: Course Project",
                   tabPanel("Next Word Prediction",
                            HTML("<strong>by Rich Huebner</strong>"),
                            br(),
                            HTML("<strong>Date: September 17, 2018</strong>"),
                            br(),
                            img(src = ""),
                            # Sidebar
                              sidebarLayout(
                              sidebarPanel(
                                helpText("Begin typing in a sentence to have fun predicting the next word. This application allows you to enter words, and it will tell you what the next word will be!"),
                                textInput("inputString", "Enter your text",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                                ),
                              mainPanel(
                                  h2("Predicted Next Word"),
                                  verbatimTextOutput("prediction"),
                                  strong("Sentence Input:"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: green;}'), 
                                  textOutput('text1'),
                                  br(),
                                  strong("How was this predicted?"),
                                  tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                  textOutput('text2')
                              )
                              )
                             
                  ),
                   tabPanel("About",
                            mainPanel(
                              img(src = ""),
                              includeMarkdown("about.md")
                            )
                   )
)
)