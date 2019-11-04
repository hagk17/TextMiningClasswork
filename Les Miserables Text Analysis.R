library(dplyr)
library(tidytext)
library(gutenbergr)
library(knitr)
library(magrittr)
library(dplyr)
library(stringr)
library(ggplot2)



###################### Analysis of Les Miserables ######################

lesMis <- gutenberg_download(135)
lesMis %<>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words)

lesMisCount <-  lesMis %>% count(word, sort = TRUE)
 View(lesMisCount)






