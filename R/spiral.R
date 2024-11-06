# https://allancameron.github.io/geomtextpath/
library(ggplot2)

n <- 1500
t <- seq(5, -1, length.out = n) * pi

spiral <- data.frame(x    = sin(t) * 1:n, 
                     y    = cos(t) * 1:n,
                     text = paste(rep.int("byandell-envsys", 9), collapse = " "))

ggplot(spiral, aes(x, y, label = text, size = size)) +
  geomtextpath::geom_textpath(size = 8, vjust = 2, text_only = TRUE) +
  coord_equal(xlim = c(-1500, 1500), ylim = c(-1500, 1500)) +
  theme_void()
