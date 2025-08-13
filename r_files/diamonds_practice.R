# Install Tidyverse Package
install.packages("tidyverse")

# Open Tidyverse Package
library(tidyverse)

# Add Diamonds into Global Environment
data("diamonds")

# Open the Data Frame
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)
mutate(diamonds, new_carat=carat*100)