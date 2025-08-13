# Install and Load Dataframe
install.packages("tidyverse")
library(tidyverse) 
data("diamonds")
View(diamonds)

# Use Tibble for the first time
as_tibble(diamonds)
# Now it is displayed, but not saved

# How to safe a Tibble
diamonds_tibble <- as_tibble(diamonds)
diamonds_tibble
