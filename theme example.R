rm(list = ls())

library(tidyverse)
library(palmerpenguins)

source(here::here("my-ggplot-theme.R"))

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species)) +
  labs(x = "Flipper length (mm)",
       y = "Body mass (gras)",
       title = "palmer penguins body sizes") +
  theme_minimal() +
  theme(panel.backgroubd = element_rect(fill = "yellow"),
        panel.grid.major = element_line(color = "purple"),
        axis.text = element_text(color = "red"),
        axis.title = element_text(color = "green"))