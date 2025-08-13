### Install needed Packages
install.packages("tidyr")
library(tidyr)


### New Self-Created Dataframe for 1st Video-Part
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", 
          "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", 
          "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer")
employee <- data.frame(id, name, job_title)


### Separate First Name from Last Name
separate(employee, name, into=c("first_name", "last_name"), sep=" ")


### New Self-Created Dataframe for 2nd Video-Part
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", 
                "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", 
               "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)


### Unite the First Name and Last Name columns
unite(employee, "name", first_name, last_name, sep=" ")

### Add new column to the penguins table
### So far body mass only in grams and flipper length in mm
### We will create a column for kg and flipper length in m

# Don't Forget: Tidyverse needed!
install.packages("tidyverse")
library(tidyverse)

# The Function
penguins_kg <- mutate(penguins, 
                      body_mass_kg = body_mass_g / 1000,
                      flipper_length_m = flipper_length_mm / 1000)
# With Pipe
penguins_kg <- penguins %>% 
  mutate(
    body_mass_kg = body_mass_g / 1000,
    flipper_length_m = flipper_length_mm / 1000
  )




