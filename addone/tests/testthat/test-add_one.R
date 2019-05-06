context("test-add_one")

test_that("addition works", {
  expect_equal(add_one(1), 2)
  expect_type(add_one(2), "integer")
  testthat::expect_warning(add_one("a"))
})
