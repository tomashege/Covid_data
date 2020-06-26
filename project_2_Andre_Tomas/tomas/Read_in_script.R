#Read in script
library(tidyverse)
bt <- read_csv('/Users/tomashegewisch/data_block/scraped_websites/businesstech.csv')
citizen <- read_csv('/Users/tomashegewisch/data_block/scraped_websites/citizen_out.csv')
groundup <-read_csv('/Users/tomashegewisch/data_block/scraped_websites/groundup.csv')
mavric <- read_csv('/Users/tomashegewisch/data_block/scraped_websites/mavric.csv')
news24_ewn_enca_mybrod_mg <- read_csv('/Users/tomashegewisch/data_block/scraped_websites/news24_ewn_enca_mybrod_mg.csv')
sabc <- read_csv('/Users/tomashegewisch/data_block/scraped_websites/sabc_news_out.csv')
sowetan<- read_csv('/Users/tomashegewisch/data_block/scraped_websites/sowetan_out.csv')
thevox <-read_csv('/Users/tomashegewisch/data_block/scraped_websites/the_daily_out.csv')

combined <- bind_rows(bt, citizen, groundup, mavric, news24_ewn_enca_mybrod_mg, sabc, sowetan,thevox)
write_csv(combined, "/Users/tomashegewisch/data_block/scraped_websites/all_the_news_articles.csv")

saveRDS(combined, file = "combined_all_articals.rds")

combined %>% count(site) %>% ggplot(aes(site, n)) + 
  geom_bar(stat="identity") + 
  coord_flip()

