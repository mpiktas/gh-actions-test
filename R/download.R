library(dplyr)
library(lubridate)
dt <- read.csv("https://raw.githubusercontent.com/mpiktas/covid19lt/master/data/lt-covid19-country.csv")

dt <- dt %>% mutate(day = ymd(day))

dt1 <- dt %>% select(day, confirmed, tests, deaths)

dt1 <- dt1 %>% mutate(downloaded = ymd_hms(Sys.time()))

dt1 %>% write.csv("data/data.csv", row.names = FALSE)