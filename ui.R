shinyUI(pageWithSidebar(
        headerPanel("Calculate your BIG number days"),
        sidebarPanel(
                h4("What is your date of birth"), 
                dateInput("datum", "Birthdate:", startview = "decade"),
                
                h4("What's your big number for days?"),
                numericInput("div1", "Round number of days to:", 1000,min=1000, max=5000, step=4000),
                
                h4("What's your big number for hours?"),
                numericInput("div2", "Round number of hours to:", 25000,min=25000, max=100000, step=75000),
                
                h4("What's your big number for minutes?"),
                numericInput("div3", "Round number of minutes to:", 1000000,min=1000000, max=5000000, step=4000000),
                
                submitButton('Submit')
        ),
        mainPanel(
                h4('You entered'),
                verbatimTextOutput("odate"),
                
                h4('Your next big number for days is'),
                verbatimTextOutput("bigdaynr"),
                
                h4('Which is on'),
                verbatimTextOutput("bigday"),
                
                h4('Your next big number for hours is'),
                verbatimTextOutput("bighournr"),
                
                h4('Which is on'),
                verbatimTextOutput("bighour"),
                
                h4('Your next big number for minutes is'),
                verbatimTextOutput("bigminutenr"),
                
                h4('Which is on'),
                verbatimTextOutput("bigminute")
        )
))
