#https://www.kaggle.com/zynicide/wine-reviews
#~130,000 wine reviews
#"description: A few sentences from a sommelier describing the wine's taste, smell, look, feel, etc."
#"variety: The type of grapes used to make the wine (ie Pinot Noir)"

#### Load necessary libraries ----
library(tidyverse)  # contains readr package

#### Read in data from URL ----
wines <- readr::read_csv("https://raw.githubusercontent.com/stoltzmaniac/wine-reviews-kaggle/master/winemag-data_first150k.csv")

#### Save wines dataset as CSV in raw_data folder ----
readr::write_csv(wines, "raw_data/wines.csv")

#### Save wines dataset as RData file at top level of project ----
saveRDS(wines, "wines.RData")  # since saved at top level, will load automatically when project opened
