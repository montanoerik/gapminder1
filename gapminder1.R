library(dplyr)
library(tidyverse)
library(purrr)
library(gapminder)

gapminder1 <- gapminder %>% 
  mutate(lifeExp = round(lifeExp, digits = 1),
         gdpPercap = round(gdpPercap, digits = 0),
         pop = signif(pop, 3),
         logpop = round(log2(pop), digits = 1)) %>% 
  select(country,
         continent,
         year,
         lifeExp,
         pop,
         gdpPercap,
         logpop) %>%
  filter(year == 1997 & continent == "Americas") %>% 
  arrange(desc(lifeExp)) 

gapminder1
