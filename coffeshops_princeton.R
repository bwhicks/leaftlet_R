# Load leaflet
library(leaflet)

# Make a cool icon
coffeeIcon <- makeIcon(
  iconUrl = '1313448311-300px.png',
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

# list the shops I want to add to the map
coffee_shops <- c(
  'Small World Coffee (Witherspoon St.)',
  'Small World Coffee (Nassau St.)',
  'Halo Pub',
  'Rojo Roastery',
  'Terra Libri',
  'Starbucks'
)

lat <- c(40.350125,  40.352417, 40.351168, 40.349890, 40.351724, 40.349998)
lon <- c(-74.660215, -74.651156, -74.660980, -74.661740, -74.660306, -74.659517)

shops_df <- data.frame(lat = lat, lon = lon)

shops_df %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = coffeeIcon, popup = coffee_shops)