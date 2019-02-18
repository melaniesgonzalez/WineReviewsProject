source("analysis/create_corpus_dfm.R")

#plot relative frequency of usage of target word for every 100 words for each wine types
dfm_rel_freq_wine <- dfm_weight(my_dfm_wine, scheme = "prop") * 100
rel_freq_grouped <- textstat_frequency(dfm_rel_freq_wine, groups = "variety")
rel_freq_group_tannins <- subset(rel_freq_grouped, feature %in% "tannins")  

fig3 <- ggplot(rel_freq_group_tannins, aes(x = group, y = frequency)) +
    geom_point() + 
    xlab(NULL) + 
    labs(title = "Expected frequency of word 'tannins' in descriptions of each wine type, for every 100 words",
         subtitle = "Count of target word divided by count of all words in description times 100",
         y = "Frequency") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggsave("images/fig3_comparerelfreq_tannins.png", fig3, height = 5, width = 5)
