

library(testthat)

test_that("new_safely returns a list with correct components", {
  x <- new_safely()
  expect_s3_class(x,"safely")
  expect_named(x, c("result", "error"))}
)
