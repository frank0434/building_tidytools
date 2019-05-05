new_safely <- function(result = NULL, error = NULL) {
  if (!is.null(result) && !is.null(error)) {
    stop(
      "One of `result` and `error` must be NULL",
      call. = FALSE
    )
  }
  structure(
    list(
      result = result,
      error = error
    ),
    class = "safely"
  )
}
