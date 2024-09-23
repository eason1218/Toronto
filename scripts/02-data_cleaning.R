#### Preamble ####
# Purpose: Cleans the raw plane data and rename the columns.
# Author: YiZhuo Li
# Date: Today
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: Used download_data download data and store data at analysis_data.csv

#### Loading Packages ####
# Install tidyverse if not already installed
# install.packages("tidyverse")
library(tidyverse)

#### Cleaning the Dataset ####
shelter_raw_data <- read_csv("C:/Users/EasonLi/Downloads/Toronto-main/Toronto-main/data/analysis_data.csv")

shelter_cleaned_data <- 
  shelter_raw_data |>
  
  select(`OCCUPANCY_DATE`, `OCCUPANCY_RATE_BEDS`, 
         `OCCUPANCY_RATE_ROOMS`, `LOCATION_NAME`, `CAPACITY_ACTUAL_BED`) |>
  
  rename(`OCCUPANCY_DATE` = `OCCUPANCY_DATE`,
         `OCCUPANCY_RATE_BEDS` = `OCCUPANCY_RATE_BEDS`,
         `OCCUPANCY_RATE_ROOMS` = `OCCUPANCY_RATE_ROOMS`,
         `LOCATION_NAME` = `LOCATION_NAME`,
         `Actual Bed Capacity` = `CAPACITY_ACTUAL_BED`)

  
#### Saving the Cleaned Dataset ####
# 使用 write.csv() 
write.csv(shelter_cleaned_data, "C:/Users/EasonLi/Downloads/Toronto-main/Toronto-main/data/analysis_data_clean.csv", row.names = FALSE)
