#### Load necessary libraries ----
library(tidyverse)  # contains readr package and dplyr package

#### Read in CSV from raw_data folder ----
wines <- readr::read_csv("raw_data/wines.csv")

#### Select top 10 wines ----
toptennames <- wines %>%
  select(description, variety) %>%
  group_by(variety) %>%
  tally() %>%
  arrange(-n) %>%
  head(10) %>%
  .$variety

#### Concatenate descriptions by wine type ----
toptenwines <- wines %>%
  mutate(color = case_when(variety %in% c("Merlot", 
                                          "Cabernet Sauvignon", 
                                          "Pinot Noir", 
                                          "Red Blend", 
                                          "Bordeaux-style Red Blend", 
                                          "Syrah") ~ "Red",
                           variety %in% c("Chardonnay", 
                                          "Sauvignon Blanc", 
                                          "Riesling", 
                                          "Rosé") ~ "White")) %>%
  filter(variety %in% toptennames) %>%
  group_by(variety, color) %>%
  summarise(descr = paste0(description, collapse = ""))

#### Save domshort file as CSV in clean_data folder ----
readr::write_csv(toptenwines, "clean_data/toptenwines.csv")
