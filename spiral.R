# https://allancameron.github.io/geomtextpath/

t <- seq(5, -1, length.out = 1000) * pi

spiral <- data.frame(x    = sin(t) * 1:1000, 
                     y    = cos(t) * 1:1000,
                     text = paste(rep.int("byandell Tribal", 9), collapse = " "))

ggplot(spiral, aes(x, y, label = text)) +
  geomtextpath::geom_textpath(size = 7, vjust = 2, text_only = TRUE) +
  coord_equal(xlim = c(-1500, 1500), ylim = c(-1500, 1500)) +
  theme_void()
