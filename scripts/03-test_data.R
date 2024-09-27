#### Preamble ####
# Purpose: Tests clean_data data no obvious statistic mistakes.
# Author: YiZhuo Li
# Date: Today
# Contact: liyizhuo.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: Already have clean data


#### Workspace setup ####
library(tidyverse)

data <- read_csv("data/raw_data/raw_data.csv")

# test 1 date
date_format_test <- all(grepl("^\\d{4}-\\d{2}-\\d{2}$", data$OCCUPANCY_DATE))

# test 2 rate > 0
rate_beds_test <- all(data$OCCUPANCY_RATE_BEDS[!is.na(data$OCCUPANCY_RATE_BEDS)] > 0)
rate_rooms_test <- all(data$OCCUPANCY_RATE_ROOMS[!is.na(data$OCCUPANCY_RATE_ROOMS)] > 0)

# test 3 capicity > 0
capacity_test <- all(data$`Actual Bed Capacity`[!is.na(data$`Actual Bed Capacity`)] > 0)
