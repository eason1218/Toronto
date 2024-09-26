#### Preamble ####
# Purpose: Simulates table of shelter in Toronto
# Author: YiZhuo Li
# Date: Today
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: No


#### Workspace setup ####
library(tidyverse)
library(dplyr)

set.seed(1)


simulated_data <- data.frame(
  OCCUPANCY_DATE = seq(as.Date('2024-01-01'), by = "day", length.out = 100), 
  OCCUPANCY_RATE_BEDS = sample(seq(80, 100, by = 0.5), 100, replace = TRUE),  
  OCCUPANCY_RATE_ROOMS = sample(seq(80, 100, by = 0.5), 100, replace = TRUE),  
  LOCATION_NAME = sample(c('COSTI Hotel Program Dixon', 'COSTI Reception Centre', 'COSTI Uptown Hotel Program'), 
                         100, replace = TRUE),  
  Actual_Bed_Capacity = sample(seq(5, 50, by = 1), 100, replace = TRUE) 
)


head(simulated_data)
