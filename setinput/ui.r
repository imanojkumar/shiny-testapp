library(shinyIncubator)

shinyUI(pageWithSidebar(
  headerPanel("Setting inputs"),
  sidebarPanel(
    p("This app tests the update functions for Shiny inputs."),
    numericInput("controller", "This controls other inputs:",
                min = 1, max = 20, value = 15),

    textInput("inText",  "Text input:",   value="starting value"),
    textInput("inText2", "Text input 2:", value="starting value"),

    numericInput("inNumber", "Number input:",
                 min = 1, max = 20, value = 5, step = 0.5),
    numericInput("inNumber2", "Number input 2:",
                 min = 1, max = 20, value = 5, step = 0.5),

    sliderInput("inSlider", "Slider input:",
                min = 1, max = 20, value = 15),
    sliderInput("inSlider2", "Slider input 2:",
                min = 1, max = 20, value = c(5, 15)),
    sliderInput("inSlider3", "Slider input 3:",
                min = 1, max = 20, value = c(5, 15)),

    dateInput("inDate", "Date input:"),

    dateRangeInput("inDateRange", "Date range input:"),

    checkboxInput("inCheckbox", "Checkbox input:", value = FALSE),

    checkboxGroupInput("inCheckboxGroup", "Checkbox group input:",
                       c("label 1" = "option1",
                         "label 2" = "option2")),
    checkboxGroupInput("inCheckboxGroup2", "Checkbox group input 2:",
                       c("label 1" = "option1",
                         "label 2" = "option2")),

    radioButtons("inRadio", "Radio buttons:",
                 c("label 1" = "option1",
                   "label 2" = "option2")),
    radioButtons("inRadio2", "Radio buttons 2:",
                 c("label 1" = "option1",
                   "label 2" = "option2")),

    selectInput("inSelect", "Select input:",
                c("label 1" = "option1",
                  "label 2" = "option2")),
    selectInput("inSelect2", "Select input 2:", multiple = TRUE,
                c("label 1" = "option1",
                  "label 2" = "option2"))
  ),
  mainPanel(
    tabsetPanel(id = "inTabset",
      tabPanel("panel1", h2("This is the first panel.")),
      tabPanel("panel2", h2("This is the second panel."))
    )
  )
))
