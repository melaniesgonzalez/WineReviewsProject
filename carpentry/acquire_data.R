#See Jenny Bryan's piece on why you should never use setwd: github.com/jennybc/here_here

#### Load necessary libraries ----
library(tidyverse)  # contains readr package

#### Read in data from URL ----
wines <- readr::read_csv("https://raw.githubusercontent.com/stoltzmaniac/wine-reviews-kaggle/master/winemag-data_first150k.csv")

#### Save cats file as CSV in raw_data folder ----
readr::write_csv(wines, "raw_data/wines.csv")

#### Save cats file as RData file at top level of project ----
saveRDS(wines, "wines.RData")  # since saved at top level, will load automatically when project opened
