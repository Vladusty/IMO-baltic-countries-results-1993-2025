library(tidyverse)
library(readxl)
library(writexl)
library(ggplot2)
library(ggtext)

IMO <- read_xlsx('IMO_LVA_EST_LIT.xlsx') %>%
  mutate(Country = factor(Country, levels = c("Latvia", "Lithuania", "Estonia")))

ggplot(IMO, aes(x = Year, y = Inverted_Relative_Rank, color = Country)) +
  geom_line(size = 1) +
  geom_smooth(method = "loess", se = FALSE, linetype = "dashed", size = 0.8) +
  labs(
    title = "International Math Olympiad Relative Ranking of Baltic Countries (1993–2025)",
    x = "Year",
    y = "Relative Rank (1 = best)",
    color = "Country",
    caption = "Source: IMO official results (https://www.imo-official.org/results.aspx).\nRelative Rank = 1 − (Country Rank / Number of Participants).\nTrend line: loess smoothing (dashed line).\nValues closer to 1 indicate better performance."
  ) +
  scale_x_continuous(breaks = 1993:2025) +
  scale_y_continuous(
    breaks = seq(0, 1, 0.1),
    labels = ~ scales::number(.x, big.mark = " ", decimal.mark = ",")
  ) +
  theme_minimal() +
  theme(
    panel.grid.major.y = element_line(color = "grey85", size = 0.2),
    panel.grid.minor.y = element_blank()
  )

summary_df <- IMO %>%
  group_by(Country) %>%
  summarise(
    Mean_Rank = mean(Rank),
    Median_Rank = median(Rank),
    Best_Rank = min(Rank),
    Worst_Rank = max(Rank),
    SD = sd(Rank),
    Mean_Relative_Rank = mean(Inverted_Relative_Rank),
    Median_Relative_Rank = median(Inverted_Relative_Rank),
    Best_Relative_Rank = max(Inverted_Relative_Rank),
    Worst_Relative_Rank = min(Inverted_Relative_Rank),
    SD_Relative_Rank = sd(Inverted_Relative_Rank)
  )

print(summary_df, n = Inf)
