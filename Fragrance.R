# Load libraries
library(ggplot2)
library(ggridges)

# Read your new dataset
Fragrance_types <- read.csv("file.csv")

# Ridge plot (basic version)
ggplot(Fragrance_types, aes(x = Lumina.number,y = Fragrance.types, group = Fragrance.types)) +geom_density_ridges(HALF = "BLANK") +
  
  labs(x = "Lumina number",y = NULL)