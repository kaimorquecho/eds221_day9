install.packages("reprex")
library(reprex)
library(palmerpenguins)
library(tidyverse)


# head of df will always give us first few rows 

head(penguins, 5) [, c("bill_length_mm","flipper_length_mm")] # this gives the first 5 rows for bill_length_mm and flipper_length_mm

# use datapasta package to make a tibble out of the subset ^ above so we can share it with a classmate without making them download the entire penguins package v 

datapasta::df_paste(head(penguins, 5)
                    [, c('bill_length_mm', 'flipper_length_mm')])
## Create a reprex to reproduce error
# create a mini dataset to work with ^ 

## here vvv is my reprex

my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L))

ggplot(data = penguins, aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point() 

# then to make a reprex, highlight this ^^ and then while having it copied, go to console and type 'reprex()' and run it. it will use what is on clipboard to make reprex and it will return reprex to clipboard automatically. 

