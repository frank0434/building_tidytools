#' insert_into
#'
#' Used by [add_col()]
#'
#' insert one data.frame into another in between the column
#' @param x data.frame
#' @param y data.frame
#' @param where position to insert
#'
#' @return A modified data.frame
#' @export
#' @seealso [add_col()]
#'
#' @family xyz
#' @examples
#' df1 <- data.frame(x = 1:2, y = c("a", "b"))
#' df2 <- data.frame(z = c(TRUE, FALSE))
#' insert_into(df1, df2, where = 1)
insert_into <- function(x, y, where = 1) {
  if (where == 1) {
    cbind(y, x)
  } else if (where > ncol(x)) {
    cbind(x, y)
  } else {
    lhs <- 1:(where - 1)
    cbind(x[lhs], y, x[-lhs])
  }
}

check_where <- function(x) {
  if (length(x) != 1 || !is.numeric(x)) {
    stop("`where` must be a length one numeric vector.",
      call. = FALSE)
  }
  x <- as.integer(x)

  if (x == 0 || is.na(x)) {
    stop("`where` must not be zero or missing",
      call. = FALSE)
  } else {
    x
  }
}
