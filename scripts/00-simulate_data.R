#### Preamble ####
# Purpose: Simulates number of marriages in the year 2023
# Author: Chris Yong
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
set.seed(123)
# [...UPDATE THIS...]

#### Simulate data ####

start_date = as.Date('2023-01-01')
end_date = as.Date('2023-12-12')

data <- 
  tibble(
    date = as.Date(runif(n=100, 
                         min = as.numeric(start_date), 
                         max = as.numeric(end_date))
                   ),
    number_of_marriages = rpois(n = 100, lambda = 10)
  )

write_csv(data, file = 'data/raw_data/simulated.csv')

setwd('C:/Users/chris/OneDrive/Personal/Education/Y3S1/STA304/Lecture 3/starter_folder')
data
