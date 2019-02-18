library(tidyverse)
library(quanteda)
winesten <- read_csv("clean_data/toptenwines.csv")

#create corpus
winestencorpus <- corpus(winesten, text_field = "descr")
docnames(winestencorpus) <- docvars(winestencorpus)$variety
summary(winestencorpus)

#create document feature matrix
my_dfm_wine <- dfm(winestencorpus, tolower = TRUE, stem = FALSE, remove_punct = TRUE, remove = c(stopwords("english"), "wine", "Merlot", "Cabernet", "Sauvignon", "Pinot", "Noir", "Blend", "Bordeaux-style", "Syrah", "Chardonnay", "Riesling", "Rosé"))