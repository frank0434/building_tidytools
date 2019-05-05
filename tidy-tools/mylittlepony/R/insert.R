insert_into <- function(x, y, where = 1){
  if (where == 1) {
    cbind(y, x)
  } else if (where > ncol(x)){
    cbind(x, y)
  } else {
    cbind(x[, 1:where], y, x[, (where-1):ncol(x)])

  }
}
