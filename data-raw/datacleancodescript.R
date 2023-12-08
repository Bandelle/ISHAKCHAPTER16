library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  mutate(DATE = lubridate::ymd(DATE) ) %>%
  select(DATE,PRCP,SNOW,TMAX,TMIN) %>%
  drop_na() %>%
  rename(SNOWBALL = SNOW)

# Save the data frame to the data/ directory as MaxTemp.rda
usethis::use_data(Flagstaff_Weather,overwrite = TRUE)
