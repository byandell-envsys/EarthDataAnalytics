# References

* [Introduction to Earth Data Science | Earth Lab CU Boulder](https://www.earthdatascience.org/courses/intro-to-earth-data-science/)
  * [Syllabus Wiki](https://github.com/earthlab-education/Earth-Analytics-AY24/wiki)
  * [Earth Data Analytics – Foundations Textbook](https://cu-esiil-edu.github.io/esiil-learning-portal/foundations/pages/00-course-overviews/foundations/00-home.html)
  * [Earth Data Science Textbooks](https://www.earthdatascience.org/)
* [Mapping Inequality](https://dsl.richmond.edu/panorama/redlining/) 

## CodeSpaces

- [GitHub Codespaces overview](https://docs.github.com/en/codespaces/overview)
- [Stopping and starting a codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/stopping-and-starting-a-codespace#stopping-a-codespace)
  
## Open Street Map with R

[OpenStreetMap (OSM)](https://www.openstreetmap.org/).
Data can be accessed via `osmdata`. 
Static maps are plotted using `ggplot2` with `sf` bridging via `geom_sf` for polygon and point layers.
OSM base map layer is added with `annotation_map_tile` from `ggspatial` package.
Interactive maps can be produces with package `tmap`.

OSM is a free resource with maps and features (but should be cited).
Most people seem to use Python to work with such maps, but there
are some tools in R.

[OpenStreetMap (OSM)](https://www.openstreetmap.org/)
- [osmdata Vignette](https://cran.r-project.org/web/packages/osmdata/vignettes/osmdata.html)
- [Mapping with Open Street Maps in R](https://jcoliver.github.io/learn-r/017-open-street-map.html)
- [Open Street Map data (RSpatialData)](https://rspatialdata.github.io/osm.html)
- [ggspatial](https://paleolimbot.github.io/ggspatial/) overlay OSM or other maps using R
- [tmap](https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html) interactive maps

## Google Maps Platform Access

Google maps can be used via `ggmap` but require a Google Map Key, which requires CC and payment.

- <https://mapsplatform.google.com/>
  - [ggmap::register_google](https://rdrr.io/cran/ggmap/man/register_google.html)
  - [Get API Key](https://developers.google.com/maps/documentation/maps-static/get-api-key/)
  - [Securing an API Key](https://cloud.google.com/docs/authentication/api-keys#securing_an_api_key)
  - [usage and billing](https://developers.google.com/maps/documentation/maps-static/usage-and-billing/)
  - [UW Guidelines on Google Maps API Key](https://wiscweb.wisc.edu/2018/11/30/events-calendar-embedded-map-display-changes/)
