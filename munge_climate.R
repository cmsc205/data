# Data munging for climate data example

library(tidyverse)
library(lubridate)

original <- read.csv("GlobalLandTemperaturesByState.csv", as.is = TRUE)
head(original)

# Date handling
original$dt <- as_date(original$dt)

# Subset to get US
us <- filter(original, Country == "United States")
wi_data <- filter(original, State == "Wisconsin")

# Convert to dates