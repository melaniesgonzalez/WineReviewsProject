source("analysis/create_corpus_dfm.R")

#create frequency plot for top 50 words across all wine types
features_dfm <- textstat_frequency(my_dfm_wine, n = 50)
features_dfm$feature <- with(features_dfm, reorder(feature, -frequency))

fig1 <- ggplot(data = features_dfm) +
  geom_point(mapping = aes(x = feature, y = frequency)) +
  labs(title = "Top 50 most frequent words") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) 

ggsave("images/fig1_top50overall.png", fig1, height = 5, width = 5)