################################################################################
#   Purpose: Create leaflet map displaying favorite restaurants across FW      #
################################################################################


# 1. Customize Icons for Leaflet Map -------------------------------------------
icoLst <- awesomeIconList(
  `Mexican/Latin` = makeAwesomeIcon(text = fa("pepper-hot"), markerColor = "red"),
  Asian = makeAwesomeIcon(text = fa("bowl-food"), markerColor = "green"),
  Chicken = makeAwesomeIcon(text = fa("drumstick-bite"), markerColor = "blue"),
  Indian = makeAwesomeIcon(text = fa("bowl-rice"), markerColor = "darkgreen"),
  Deli = makeAwesomeIcon(text = fa("seedling"), markerColor = "orange"),
  Breakfast = makeAwesomeIcon(text = fa("bacon"), markerColor = "pink"),
  Drinks = makeAwesomeIcon(text = fa("mug-saucer"), markerColor = "purple"),
  `Pizza/Italian` = makeAwesomeIcon(text = fa("pizza-slice"), markerColor = 'darkred'),
  Dessert = makeAwesomeIcon(text = fa("ice-cream"), markerColor = 'black'),
  Burgers = makeAwesomeIcon(text = fa("burger"), markerColor = "darkblue"),
  Seafood = makeAwesomeIcon(text = fa("fish"), markerColor = "white", iconColor = "black")
)


# 2. Create Leaflet Map --------------------------------------------------------
map <- leaflet(map_data) %>%
  addTiles() %>%
  addProviderTiles(provider = "Thunderforest.Pioneer") %>%
  addAwesomeMarkers(lng= ~longitude, lat= ~latitude, label= ~location, icon = ~icoLst[type])
