library(tidyverse)
library(ggthemes)
car_plot <- mtcars |>
  select(mpg, wt) |>
  mutate(tons = wt/2) |>
  ggplot(mapping = aes(x = tons, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y~x, se  = FALSE) +
  theme_clean() +
  labs(title = "Fuel Efficiency and Weight", subtitle = "Heavier cars are less efficient", x = "Weight (Tons)", y = "MPG", caption = "Henderson and Vellerman (1981)")

write_rds(car_plot, "car-plot.rds")
