#' Shiny Server for OSM Example
#'
#' @param input,output,session shiny server reactives
#' @return reactive server
#' @export
#' @rdname osm
#' @importFrom shiny bootstrapPage checkboxInput moduleServer NS plotOutput
#'             renderPlot renderUI selectInput shinyApp sliderInput uiOutput
#' @importFrom graphics hist lines rug
#' @importFrom stats density
osmServer <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    # Goal here is to set up shiny app with user selection
    # of college or university

    # Search for locations by name - this might take a moment
    osm_gdf <- shiny::reactive({
      shiny::req(input$campus)
      osmdata::opq(input$campus) |>
        osmdata::add_osm_feature(key = "amenity", value = "university") |>
        osmdata::osmdata_sf()
    })

    # Plot OSM boundary
    output$static_plot <- shiny::renderPlot({
      shiny::req(input$campus, osm_gdf())
      ggplot2::ggplot() +
        # Base map from OpenStreetMap
        ggspatial::annotation_map_tile(type = "osm", zoom = 14,
                                       progress = "none") +
        # OSM points
        ggplot2::geom_sf(data = osm_gdf()$osm_points, 
                         fill = "transparent", 
                         alpha = 0.2, 
                         color = "red", 
                         size = 1) +
        # OSM multipolygons (there are no polygons)
        ggplot2::geom_sf(data = osm_gdf()$osm_multipolygons, 
                         fill = "transparent", 
                         alpha = 0.2, 
                         color = "red", 
                         size = 2) +
        ggplot2::ggtitle(input$campus) +
        ggplot2::theme_minimal() +
        ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5)) +
        ggplot2::coord_sf()
    })
    
    # Dynamic Thematic Map
    osm_valid <- shiny::reactive({
      shiny::req(osm_gdf())
      sf::st_make_valid(osm_gdf()$osm_multipolygons)
    })
    dynamic_plot <- shiny::renderPlot({
      shiny::req(osm_valid())
      tmap::tmap_mode("view")
      
      tmap::tm_shape(osm_valid()) +
        tmap::tm_basemap("OpenStreetMap") +
        tmap::tm_borders(col = "red", lwd = 2)
    })
  })
}
#' Shiny Module Input for osm
#' @param id identifier for shiny reactive
#' @return nothing returned
#' @rdname osm
#' @export
osmInput <- function(id) {
  ns <- shiny::NS(id)
  shiny::tagList(
    shiny::textInput(inputId = ns("campus"),
                label = "Campus Name:",
                value = "UW-Madison"),
    shiny::checkboxInput(inputId = ns("static"),
                  label = shiny::strong("Static Plot?"),
                  value = TRUE))
}
#' Shiny Module UI for osm
#' @param id identifier for shiny reactive
#' @return nothing returned
#' @rdname osm
#' @export
osmUI <- function(id) {
  ns <- shiny::NS(id)
  shiny::uiOutput(ns("dynamic_plot"))
}
#' Shiny Module Output for osm
#' @param id identifier for shiny reactive
#' @return nothing returned
#' @rdname osm
#' @export
osmOutput <- function(id) {
  ns <- shiny::NS(id)
  shiny::plotOutput(ns("static_plot"), height = "300px")
}
  
#' Shiny Module App for OSM
#' @return nothing returned
#' @rdname osm
#' @export
osmApp <- function() {
  ui <- shiny::bootstrapPage(
    osmInput("osm"), 
    osmOutput("osm")#,
#    osmUI("osm")
  )
  server <- function(input, output, session) {
    osmServer("osm")
  }
  shiny::shinyApp(ui, server)
}