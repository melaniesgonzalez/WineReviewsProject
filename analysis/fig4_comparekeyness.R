source("analysis/create_corpus_dfm.R")

#create document-feature matrix grouped by wine color
color_group_wine_dfm <- dfm(winestencorpus, groups = "color", tolower = TRUE, stem = FALSE, remove_punct = TRUE, remove = c(stopwords("english"), "wine", "Merlot", "Cabernet", "Sauvignon", "Pinot", "Noir", "Blend", "Bordeaux-style", "Syrah", "Chardonnay", "Riesling", "Rosé"))

#plot keyness of words
result_keyness <- textstat_keyness(color_group_wine_dfm, target = "Red")

fig4 <- textplot_keyness(result_keyness, color = c("red", "gray")) +
  labs(title = "Keyness of words in descriptions of red vs. white wines",
       subtitle = "Degree to which word is distinguishing feature of descriptions of red vs. white wine")

ggsave("images/fig4_comparekeyness.png", fig4, height = 5, width = 5)
