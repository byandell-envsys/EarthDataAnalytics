# References

* [Fundamentals of Earth Data Analytics (EDA)](https://cu-esiil-edu.github.io/esiil-learning-portal/foundations/pages/00-course-overviews/foundations/01-fundamentals/00-home.html)
* [Introduction to Earth Data Science | Earth Lab CU Boulder](https://www.earthdatascience.org/courses/intro-to-earth-data-science/)
  * [Syllabus Wiki](https://github.com/earthlab-education/Earth-Analytics-AY24/wiki)
  * [Earth Data Analytics – Foundations Textbook](https://cu-esiil-edu.github.io/esiil-learning-portal/foundations/pages/00-course-overviews/foundations/00-home.html)
  * [Earth Data Science Textbooks](https://www.earthdatascience.org/)
* [Mapping Inequality](https://dsl.richmond.edu/panorama/redlining/) 

## CodeSpaces
Always stop a codespace when done to save resources!

- [GitHub Codespaces overview](https://docs.github.com/en/codespaces/overview),
[QuickStart](https://docs.github.com/en/codespaces/getting-started/quickstart) &
[Documentation](https://docs.github.com/en/codespaces)
- [GitHub Codespaces (Visual Studio Code)](https://code.visualstudio.com/docs/remote/codespaces)
- [Stopping and starting a codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/stopping-and-starting-a-codespace#stopping-a-codespace)
  
## Python Coding

- [Pandas Library](https://pandas.pydata.org/docs/)
  - [Pandas Tutorial](https://pandas.pydata.org/docs/user_guide/10min.html)
  - [Pandas API Reference](https://pandas.pydata.org/docs/reference/)
- [EDA Scientific Data Structures in Python](https://www.earthdatascience.org/courses/intro-to-earth-data-science/scientific-data-structures-python/)
  - [EDA 6.15. Intro to Pandas Dataframes](https://www.earthdatascience.org/courses/intro-to-earth-data-science/scientific-data-structures-python/pandas-dataframes/)

## Open Street Map

[OpenStreetMap (OSM)](https://www.openstreetmap.org/).
Data can be accessed via `osmdata`. 
Static maps are plotted using `ggplot2` with `sf` bridging via `geom_sf` for polygon and point layers.
OSM base map layer is added with `annotation_map_tile` from `ggspatial` package.
Interactive maps can be produces with package `tmap`.

OSM is a free resource with maps and features (but should be cited).
Most people seem to use Python to work with such maps, but there
are some tools in R.

- [OSM Wiki](https://wiki.openstreetmap.org/wiki/How_to_contribute)
- [Making Maps with R](https://bookdown.org/nicohahn/making_maps_with_r5/docs/introduction.html)
- [Quantitative Analysis with R by Brian Wood](https://bookdown.org/brianwood1/QDASS/)
- [Automating Map generation from Multi-polygon shapefiles using Python with GeoPandas and Matplotlib](https://medium.com/@sooryanarayan_5231/automating-map-generation-from-multi-polygon-shapefiles-using-python-with-geopandas-and-matplotlib-aad4c79f8d5e)

### osmdata package

- [osmdata Vignette](https://cran.r-project.org/web/packages/osmdata/vignettes/osmdata.html)
- [Mapping with Open Street Maps in R](https://jcoliver.github.io/learn-r/017-open-street-map.html)
- [Open Street Map data (RSpatialData)](https://rspatialdata.github.io/osm.html)

### ggspatial package

- [ggspatialto overlay OSM or other maps using R](https://paleolimbot.github.io/ggspatial/)
- [Spatial objects using ggspatial and ggplot2](https://paleolimbot.github.io/ggspatial/articles/ggspatial.html)

### tmap package

- [Quickstart Guide - Shapefiles and R(tmap)](https://www.kaggle.com/code/umeshnarayanappa/quickstart-guide-shapefiles-and-r-tmap)
- [tmap: thematic maps in R](https://r-tmap.github.io/tmap/)
- [tmap](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html) interactive maps
- [tmap book](https://r-tmap.github.io/tmap-book/)
- [tmap: using make-valid for multipolygons](https://stackoverflow.com/questions/76455486/impossible-to-plot-osm-multipolygons-in-tmap-and-leaflet)

## Google Maps Platform Access

Google maps can be used via `ggmap` but require a Google Map Key, which requires CC and payment.

- <https://mapsplatform.google.com/>
  - [ggmap::register_google](https://rdrr.io/cran/ggmap/man/register_google.html)
  - [Get API Key](https://developers.google.com/maps/documentation/maps-static/get-api-key/)
  - [Securing an API Key](https://cloud.google.com/docs/authentication/api-keys#securing_an_api_key)
  - [usage and billing](https://developers.google.com/maps/documentation/maps-static/usage-and-billing/)
  - [UW Guidelines on Google Maps API Key](https://wiscweb.wisc.edu/2018/11/30/events-calendar-embedded-map-display-changes/)
