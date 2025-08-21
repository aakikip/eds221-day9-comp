library(tidyverse)
library(palmerpenguins)

#write a bunch of other code

#finally, at the end I want to plot my results

ggplot(data = penguins_subset, x = flipper_length_mm, y = body_mass_g) +
  geom_point() #wrong code

library(reprex)

#create data to incclude in our reprex
#subset penguins to just the data I need to reproduce the error
penguins_subset <- penguins |>
  select(flipper_length_mm, body_mass_g) |>
  slice_head(n = 5)

#creating a version of the data to include directly in reprex
datapasta::df_paste(penguins_subset)

#create reprex
#what we are acttually going to share

library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L,186L,195L, NA,193L),
  body_mass_g = c(3750L,3800L, 3250L,NA,3450L)
)

ggplot(data = penguins, x = flipper_length_mm, y = body_mass_g) +
  geom_point()

#select from library to ggplot, Command + cto copy in clipboard, in console run reprex(), command v on R script to paste

``` r
library(tidyverse)

penguins <- data.frame(
  flipper_length_mm = c(181L,186L,195L, NA,193L),
  body_mass_g = c(3750L,3800L, 3250L,NA,3450L)
)

ggplot(data = penguins, x = flipper_length_mm, y = body_mass_g) +
  geom_point()
#> Error in `geom_point()`:
#> ! Problem while setting up geom.
#> ℹ Error occurred in the 1st layer.
#> Caused by error in `compute_geom_1()`:
#> ! `geom_point()` requires the following missing aesthetics: x and y.
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>

  
  

  

