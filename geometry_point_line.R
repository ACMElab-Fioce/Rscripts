library(ggplot2)

dados <- read.csv("dados.csv", sep=";")

grafico <- ggplot(data = antiS, aes(x = X, y = Y, group = GRUPO)) +
  geom_line(size = 1.5, alpha = 0.5, color = "#74d600") +
  geom_point(aes(color = "#23272a"), size = 3) +
  geom_text(aes(label = TEXTO), vjust = -1, hjust = 0) +
  labs(x = "Período", y = "Quantidade IgG anti-N", 
       color = "Doses tomadas:") +
  scale_color_manual(values = c("#23272a", "#7289da", "#ff0000"),
                     labels = c("0", "1", "2")) +
  scale_y_continuous(limits = c(0, 10)) + 
  theme_minimal() +
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 1),
    axis.text = element_text(face = "bold", size = 12),
    axis.title = element_text(face = "bold", size = 16),
    legend.title = element_text(size = 10, face = "bold"),
    legend.text = element_text(size = 10, face = "bold"),
    axis.text.x = element_text(size = 8),
    axis.text.y = element_text(size = 8),
    legend.position = c(0.15, 0.8),
    axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0)))

ggsave("grafico.jpg", plot = grafico, width = 16, height = 4, dpi = 300)