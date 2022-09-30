# -*- coding: utf-8 -*-

# -- Sheet --

# # Web Scraping IMDB Top 250
# ### url : https://www.imdb.com/chart/top/


library(tidyverse)
library(rvest)

url <- "https://www.imdb.com/chart/top/?ref_=nv_mv_250"
imdb <- read_html(url)

# Extract movie names and clean data
movie_names <- imdb %>%
  html_nodes("td.titleColumn") %>%
  html_text() %>%
  str_remove_all("\n") %>%  # remove \n
  str_trim() %>% # remove white space
  str_replace_all("\\s+", " ") %>% # if found more than one white space replace with one white space
  str_remove_all("[\".(0-9)]") %>% # remove (year)
  str_trim() 

movie_names %>%
    glimpse()

# Extract release years and clean data
release_years <- imdb %>%
  html_nodes("span.secondaryInfo") %>%
  html_text() %>%
  str_extract("[0-9]{4}") # Extract only number of year

release_years %>%
    glimpse()

# Extract rating and clean data
rating <- imdb %>%
  html_nodes("td.ratingColumn.imdbRating") %>%
  html_text() %>%
  str_remove_all("\n") %>%  # remove \n
  str_trim() # remove whitespace

rating %>%
    glimpse()

# Convert to Dataframe
df <- data.frame(movie_names, release_years, rating)
df

# Export in CSV file
write_csv(df, "IMDB_Top250.csv")

