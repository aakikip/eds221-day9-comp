#My really ugly theme

#'@return output
#'@export result

#'@examples example of penguins

#ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  #geom_point() +
    #my_theme()

my_theme <- function()
  theme(panel.backgroubd = element_rect(fill = "yellow"),
        panel.grid.major = element_line(color = "purple"),
        axis.text = element_text(color = "red"),
        axis.title = element_text(color = "green"))