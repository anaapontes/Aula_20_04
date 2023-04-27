library(dplyr)
library(lubridate)
library(stringr)


dados <- read.csv("Pokemon_full.csv")
head(dados) 


#TAREFA:
#TODO criar uma coluna com a transformação Z-score para altura POR type, onde Z-score é o número de desvios padrão em relação à média de um ponto de informação
dados %>%
  group_by(type) %>% 
  mutate(
    media_altura = mean(height), 
    desvio_padrao = sd(height),
    Z_score = (height-media_altura)/desvio_padrao
  ) -> df
write.csv(df, "Tarefa_20_04.csv")

