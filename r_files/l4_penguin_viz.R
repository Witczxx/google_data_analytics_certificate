### Installing needed packages
install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)


### plot relationship between "body mass" & "flipper length" 
### For the "three penguin species".
### A scatter plot of points would be an effective way
### "Flipper length" on x-axis, "body mass" on y-axis
ggplot(data = penguins) + 
  geom_point(
    mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g)
    )

# Syntax Changes are allowed 
ggplot(data = penguins, 
       mapping = aes(
         x = flipper_length_mm, 
         y = body_mass_g)
       ) + geom_point()


