#
# This is the server logic of a Shiny web application. 
#
# Load the needed libraries
library(shiny)
# 
shinyServer(function(input, output) {
        
# We will run several simulations of an exponential distribution with
# rate parameter 0.2 and 40 observations. The number of simulations is selected
# through the slider
       output$plot1 <- renderPlot({
                set.seed(7711)
                lambda <- 0.2
                n <- 40
                means <- NULL
                simul <- input$slider1
                for (i in 1 : simul) means <- c(means, mean(rexp(n,lambda)))
                hist(means, col="blue", main="", breaks=40)
                abline(v=mean(means), lwd="4", col="black")
       })
       
# Now plot a normal Q–Q plot, which compares our randomly generated data on the
# vertical axis to a standard normal population on the horizontal axis. The linearity
# of the points suggests that the data are normally distributed, except for a little
# difference at the high and low end of the range.
       
        output$plot2 <- renderPlot({
                set.seed(7711)
                lambda <- 0.2
                n <- 40
                means <- NULL
                simul <- input$slider1
                for (i in 1 : simul) means <- c(means, mean(rexp(n,lambda)))
                qqnorm(means)
                qqline(means, col = 2)
        })
})