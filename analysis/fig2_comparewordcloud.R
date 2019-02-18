source("analysis/create_corpus_dfm.R")

color_group_wine_dfm <- dfm(corpus_subset(winestencorpus, variety %in% c("Merlot", "Chardonnay")), 
              remove = c(stopwords("english"), "wine", "Merlot", "Cabernet", "Sauvignon", "Pinot", "Noir", "Blend", "Bordeaux-style", "Syrah", "Chardonnay", "Riesling", "Rosé"),
              remove_punct = TRUE, 
              groups = "variety") %>%
  dfm_trim(min_termfreq = 3)

fig2 <- textplot_wordcloud2(color_group_wine_dfm, comparison = TRUE, max_words = 300,
                   color = c("blue", "red"), shape = "circle")

#ggsave("images/fig2_comparewordcloud.png", fig2, height = 5, width = 5)
