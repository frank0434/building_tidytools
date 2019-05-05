#' @examples
#' bizarro(c("abc", "def"))
#' bizarro(1:10)
#' bizarro(c(TRUE, FALSE, TRUE))
#'
#' bizarro(mtcars)
bizarro <- function(x) {
  UseMethod("bizarro")
}

bizarro.character <- function(x) {
  str_reverse(x)
}

bizarro.numeric <- function(x) {
  -x
}

bizarro.logical <- function(x) {
  rev(x)
}

bizarro.data.frame <- function(x) {
  names(x) <- bizarro(names(x))
  x[] <- purrr::modify(x, bizarro)
  x
}

bizarro.factor <- function(x){
  forcats::fct_rev(x)
}


