library(ggplot2)
library(palmerpenguins)

### Creating a clear line instead of scatter plots
ggplot(data = penguins) +
  geom_smooth(mapping=aes(x = flipper_length_mm,y = body_mass_g))

### Creating 2 layers of different Geoms
ggplot(data = penguins) +
  geom_smooth(mapping=aes(x = flipper_length_mm,y = body_mass_g)) +
  geom_point(mapping=aes(x = flipper_length_mm,y = body_mass_g))
      
### Creating several linetypes, differing by species
ggplot(data = penguins) +
  geom_smooth(mapping=aes(
    x = flipper_length_mm,y = body_mass_g,
    linetype = species))

### Using the Jitter Geom
ggplot(data = penguins) +
  geom_jitter(mapping=aes(x = flipper_length_mm,y = body_mass_g))



### Creating a Bar Chart
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

### Adding Color 
ggplot(data = diamonds) +
  geom_bar(mapping=aes(x = cut, color = cut))
### But just to the border?
### We need to use "fill=" instead of "color="
ggplot(data = diamonds) +
  geom_bar(mapping=aes(x = cut, fill = cut))

### If column of coloring is not equal to x-axis
### We create a very different kind of Chart !
ggplot(data = diamonds) +
  geom_bar(mapping=aes(x = cut, fill = clarity))


