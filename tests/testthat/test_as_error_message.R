test_that("as_error_message", {
  local_edition(3)
  expect_snapshot(as_error_message(x = "Error message"), cran = TRUE)
})
