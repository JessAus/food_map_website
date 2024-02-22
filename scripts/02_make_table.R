################################################################################
#   Purpose: Create DT Table to take a closer look at restaurant variables     #
#            such as price range, rating (1-10), food type and general area    #
################################################################################

# 1. Create data table ---------------------------------------------------------
table <- df %>%
  select(-c("longitude", "latitude")) %>%
  rename(
    "Restaurant" = "location",
    "Rating (1-10)" = "rating",
    "Price Range" = "price_range",
    "Type of Food" = "type",
    "General Area" = "street"
  ) %>%
  datatable(options = list(initComplete = JS(
    "function(settings, json) {",
    "$(this.api().table().header()).css({'background-color': 'RGB(26, 26, 26)', 'color': '#989898'});",
    "}"
  )),
  class = 'stripe',
  rownames = FALSE,
  filter = 'top')
