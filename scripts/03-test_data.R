#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv('data/raw_data/simulated.csv')

####  test for negative numbers #### 
data$number_of_marriages |> min() <= 0

####  test for negative numbers #### 
sum(is.na(data$number_of_marriages)) != 0


