col_write <- function(df, path = tempdir()) {
  names <- colnames(df)
  paths <- paste0(path, "/",names, ".txt")
  map2(df,paths, ~ writeLines(as.character(.x), .y))
}
?ifelse
