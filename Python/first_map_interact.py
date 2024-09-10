# Plot OSM boundary
osm_map = osm_gdf.reset_index().hvplot(
    # Givethe map a descriptive title
    title="UW-Madison",
    # Add a basemap
    geo=True, tiles='EsriImagery',
    # Change the colors
    fill_color='white', fill_alpha=0.2,
    line_color='skyblue', line_width=5,
    # Change the image size
    frame_width=400, frame_height=400)

# Save the map as a file to put on the web
hv.save(osm_map, 'osm.html')

# Display the map
osm_map
