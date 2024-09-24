#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto package (Gelfand 2022)
# Author: YiZhuo Li
# Date: Today
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
marriage_licence_packages <- search_packages("Daily Shelter & Overnight Service Occupancy & Capacity")

marriage_licence_resources <- marriage_licence_packages %>%
  list_package_resources()

marriage_licence_statistics <- marriage_licence_resources[5,] %>%
  get_resource()
analysis_data = marriage_licence_statistics

write.csv(analysis_data, "C:/Users/EasonLi/Downloads/Toronto-main/Toronto-main/data/analysis_data.csv", row.names = FALSE)

