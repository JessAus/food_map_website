################################################################################
#   Purpose: Create df listing restaurants, location, rating, price, and type  #
#            of food                                                           #
################################################################################


# 1. Load required packages ----------------------------------------------------
pacman::p_load(leaflet, tidyverse, sf, fontawesome, DT)


# 2. Create data frame ---------------------------------------------------------
df <- tibble::tribble(~location, ~longitude, ~latitude, ~rating, ~price_range, ~type, ~street,
                      "Costa Vida", -97.310380, 32.911810, 8, "$$", "Mexican/Latin", "Alliance/Presidio - Fort Worth",
                      "Hongthong Cafe", -97.270520, 32.795100, 10, "$", "Asian", "Saigon Market - Haltom",
                      "Pho Thien", -97.268870, 32.795790, 10, "$", "Asian", "Saigon Market - Haltom",
                      "Chicken Salad Chick", -97.322810, 32.899910, 7, "$$", "Chicken", "Alliance/Presidio - Fort Worth",
                      "Slim Chicken", -97.266230, 32.894320, 8, "$$", "Chicken", "North Tarrant Pkwy - Fort Worth",
                      "SWAD", -97.271608, 32.893674, 8, "$$", "Indian", "North Tarrant Pkwy - Fort Worth",
                      "Jersey Mike's", -97.341457 , 32.870329, 7, "$", "Deli", "Blue Mound - Saginaw",
                      "Taste of Thai", -97.06521, 32.706956, 10, "$$$", "Asian", "Arkansas Court - Arlington",
                      "Chick-Fil-A", -97.318889, 32.859564, 7, "$", "Chicken", "Western Center - Saginaw",
                      "Tiger Donut", -97.228692, 32.823537, 6, "$", "Breakfast", "Blvd 26 - NRH",
                      "Swig", -97.341855, 32.868535, 7, "$$", "Drinks", "Blue Mound - Saginaw",
                      "Salad & Go", -97.341798, 32.867766, 6, "$", "Deli", "Blue Mound - Saginaw",
                      "Race Street Coffee", -97.303433, 32.773337, 9, "$", "Drinks", "Race Street - Fort Worth",
                      "Taste of Asia", -97.288807, 32.873047, 7, "$$", "Asian", "Beach - Fort Worth",
                      "Pollo Regio", -97.289197, 32.776235, 8, "$", "Chicken", "Beach - Fort Worth",
                      "Cane Rosso", -97.333048, 32.730479, 10, "$$", "Pizza/Italian", "Downtown Fort Worth",
                      "Boca 31", -97.343937, 32.733804, 8, "$$", "Mexican/Latin", "Downtown Fort Worth",
                      "Los Molcajetes", -97.292813, 32.860151, 6, "$$", "Mexican/Latin", "Western Center - Fort Worth",
                      "Melt", -97.337858, 32.730461, 10, "$$", "Dessert", "Downtown Fort Worth",
                      "Doc's Food Store", -97.272759, 32.783578, 8, "$", "Mexican/Latin", "Haltom Rd - Haltom",
                      "First Watch", -97.187675, 32.855465, 5, "$$", "Breakfast", "Blvd 26 - NRH",
                      "Chan's Mongolian Grill", -97.188996, 32.855101, 6, "$$", "Asian", "Blvd 26 - NRH",
                      "Twisted Root Burger Company", -97.103975, 32.735363, 5, "$$", "Burgers", "E Abram - Arlington",
                      "Mellow Mushroom", -97.107285, 32.738048, 8, "$$", "Pizza/Italian", "W Division - Arlington",
                      "HK Sushi", -97.238563, 32.872822, 8, "$$", "Asian", "Rufe Snow - Watauga",
                      "Itoko Sushi & Ramen", -97.238971, 32.85835, 7, "$$", "Asian", "Rufe Snow - Watauga",
                      "Calabrese", -97.132278, 32.948874, 8, "$$$", "Pizza/Italian", "Southlake",
                      "Bosses Pizza", -97.415397, 32.806082, 7, "$$", "Pizza/Italian", "Jacksboro Hwy - Lakeworth",
                      "Guanajuato Bakery", -97.300417, 32.774489, 6, "$", "Dessert", "Belknap - Fort Worth",
                      "Koracha", -97.167557, 32.851332, 7, "$$", "Asian", "Harwood Rd - Bedford",
                      "Las Delicias de Michoacan", -97.237717, 32.846513, 6, "$", "Dessert", "Rufe Snow - Watauga",
                      "The Cheesecake Factory", -97.330283, 32.755057, 6, "$$$", "Dessert", "Downtown Fort Worth",
                      "Gustos Burgers", -97.34171, 32.730832, 7, "$$", "Burgers", "Downtown Fort Worth",
                      "Aw Shucks", -96.770333, 32.831017, 8, "$$$", "Seafood", "Greenview - Dallas",
                      "Revolver Taco Lounge", -96.784666, 32.784277, 9, "$$$", "Mexican/Latin", "Deep Ellum - Dallas",
                      "Main Squeeze", -97.28691, 32.914112, 7, "$$", "Drinks", "Heritage Trace - Fort Worth")


# 3. Rename df -----------------------------------------------------------------
map_data = df

