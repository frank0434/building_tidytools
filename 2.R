df %>% group_by(x1) %>% summarise(mean = mean(y1))
df %>% group_by(x2) %>% summarise(mean = mean(y2))
df %>% group_by(x3) %>% summarise(mean = mean(y3))
df %>% group_by(x4) %>% summarise(mean = mean(y4))


fun_summarise <- function(x, y){
  x <- enquo(x)
  y <- enquo(y)
  mtcars %>% 
    dplyr::group_by(!!x) %>% 
    dplyr::summarise(mean = mean(!!y))
}
library(tidyverse)
fun_summarise(cyl, mpg)
