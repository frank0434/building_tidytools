#' col_means(mtcars)
#' col_means(mtcars[, 0])
#' col_means(mtcars[0, ])
#' col_means(mtcars[, "mpg", drop = F])
#' df <- data.frame(
#'   x = 1:26,
#'   y = letters
#' )
#' col_means(df)

typeof(mtcars[,0])
typeof(mtcars[0,])
class(mtcars[, "mpg", drop = F])
typeof(mtcars[, "mpg", drop = F])
str(df)
df[,sapply(df, is.numeric)]
mtcars[,sapply(mtcars[, "mpg", drop = F],is.numeric)]
