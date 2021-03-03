test_that("n_precision", {
  local_edition(3)
  expect_snapshot(n_precision(x = c(23.1, 23, 120, 234.021, NA)), cran = TRUE)
})
