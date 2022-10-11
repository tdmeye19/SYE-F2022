library(tidyverse)

wc_forecasts <- read_csv("data/world-cup-2018/wc_forecasts.csv")
wc_matches <- read_csv("data/world-cup-2018/wc_matches.csv")

library(rvest)
library(zoo)

url <- "https://www.transfermarkt.us/united-states/kader/verein/3505/saison_id/2021/plus/1"

## convert the html code into something R can read
h <- read_html(url)

## grabs the tables
tab <- h %>% html_nodes("table")

test1 <- tab[[1]] %>% html_table()
test2 <- tab[[2]] %>% html_table()

russia_saudi <- wc_matches %>% slice(1)
