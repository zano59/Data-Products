#
# The Central Limit Theorem states that the distribution of averages is often normal,
# even if the distribution that the data is being sampled from is very non-normal.
# We will run a variable number of simulations of an exponential distribution and
# will also show that this distribution is approximately normal if the number of 
# simulation is sufficiently large.

library(shiny)
shinyUI(fluidPage(
        titlePanel("Central Limit Theorem"),
        sidebarLayout(
                sidebarPanel(
                        h2("Change the number of simulations"),
                        sliderInput("slider1", "", 0, 2000, 1000),
                        h4("The Central Limit Theorem states that the distribution of averages is often normal, even if the distribution that the data is being sampled from is very non-normal."),
                        h4("We will run a variable number of simulations of an exponential distribution with rate parameter 0.2 and 40 observations."),
                        h4("This normal Q–Q plot compares our randomly generated data on the vertical axis to a standard normal population on the horizontal axis.")
                                                                ),
                mainPanel(
                        plotOutput("plot1"),
                        plotOutput("plot2")
                )
        )
))