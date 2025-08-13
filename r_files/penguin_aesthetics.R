### Run Packages
library(ggplot2)
library(palmerpenguins)
### Starter Visualisation
### Ending point of our last time
ggplot(data = penguins) +
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g)
  )

### Adding color to differ species (Nr.1A)
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    color = species))

### Exchanging color-differ to shape-differ (Nr.1B)
ggplot(data = penguins) +
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    shape = species))

### Combining color-differ and shape-differ (Nr.2)
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    color = species,
    shape = species))

### Adding size-differ! (Nr.3)
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    color = species,
    shape = species,
    size = species))

### Adding different Transparencies
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    alpha = species))

### Change the colour of the dots
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g,
    color = "purple"))

### Running code outside of mapping=aes()
ggplot(data = penguins) + 
  geom_point(mapping=aes(
    x = flipper_length_mm, 
    y = body_mass_g),
    color = "purple")