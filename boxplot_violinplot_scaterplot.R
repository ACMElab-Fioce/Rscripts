library(ggplot2)

dados <- read.csv("dados.csv", sep=";")

grafico <- ggplot(data = antiN, aes(x = X, y = Y, fill = FILL)) +
  geom_violin(alpha = 0.5, position = position_dodge(width = 0.75), size = 1, color = NA) +
  geom_boxplot(notch = F, outlier.size = -1, color = "black", lwd = 1, alpha = 0.7, show.legend = F) +
  ggbeeswarm::geom_quasirandom(shape = 21, dodge.width = 0.75, color = "black", alpha = 0.5, show.legend = F, size = 3) +
  scale_fill_manual(values = c("#dfe3ee", "#89d6fb", "#02a9f7", "#02577a", "#01303f")) +
  theme(panel.border = element_rect(color = "black", fill = NA, size = 1),
        axis.text = element_text(face = "bold", size = 12),
        axis.title = element_text(face = "bold", size = 14),
        legend.title = element_text(size = 16, face = "bold"),
        legend.text = element_text(size = 10, face = "bold"),
        legend.position = c(0.9, 0.80)) +  
  xlab("") +  
  ylab("") +
  labs(fill = "") +
  guides(fill = FALSE)

ggsave("grafico.jpg", plot = grafico, width = 16, height = 8, dpi = 1200)