# Search for UW-Madison
osm_gdf = osm.features_from_address(
    'UW-Madison',
    {'amenity': ['university']})
osm_gdf

osm_gdf.plot()
