source("analysis/create_corpus_dfm.R")

#plot raw frequency of usage of target word for each wine types
freq_grouped <- textstat_frequency(my_dfm_wine, groups = "variety")
freq_group_tannins <- subset(freq_grouped, freq_grouped$feature %in% "tannins")  

fig2 <- ggplot(freq_group_tannins, aes(x = group, y = frequency)) +
  geom_point() + 
  xlab(NULL) + 
  labs(title = "Raw frequency of word 'tannins' in descriptions of each wine type",
       y = "Frequency") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggsave("images/fig2_comparerawfreq_tannins.png", fig2, height = 5, width = 5)