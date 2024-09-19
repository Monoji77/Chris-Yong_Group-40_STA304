#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Chris Yong
# Date: 19 September 2024
# Contact: luke.yong@mail.utoronto.ca


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####

# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
package

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
resources

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- datastore_resources %>%
  filter(id == '4d985c1d-9c7e-4f74-9864-73214f45eb4a') %>% 
  get_resource()

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "data/raw_data/raw_data.csv") 

         
