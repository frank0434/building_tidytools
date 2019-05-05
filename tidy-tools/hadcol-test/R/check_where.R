#' @example
#' x <- 0
#' x <- NA
#' x <- 1:10
#' x <- "a"
check_where <- function(x){
  if (x == 0 || is.na(x)){
    stop("Error: `x` is not a single postive integer.")
  } else if (length(x) != 1 || !is.integer(x)) {
    stop("Error: `x` is not a single postive integer.")
  }
}
# check_x(x)
