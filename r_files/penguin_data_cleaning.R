# Install 3 packages for Data Cleaning
install.packages("here")
library(here)

install.packages("skimr")
library(skimr)

install.packages("janitor")
library(janitor)

# Actually just diplyr needed
install.packages("tidyverse")
library(tidyverse)

# Penguin dataframe <3 
install.packages("palmerpenguins")
library(palmerpenguins)

# Access dataframe
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)
colnames(penguins)

# Select a single Column
penguins %>% 
  select(species)

# Select everything but the Column
penguins %>% 
  select(-species)

# Change a column name
penguins %>% 
  rename(island_new = island)

# Change columns to big/small letters
rename_with(penguins, toupper)
rename_with(penguins, tolower)

# Cleaning the names
# Making Column Names Unique
# Only letters, numbers and underscores
clean_names(penguins)


