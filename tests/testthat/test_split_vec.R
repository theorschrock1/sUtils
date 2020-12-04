test_that("split_vec", {
  local_edition(3)
  x <- c("app", "apps", "apple", "bet", "cat")
  expect_snapshot(split_vec(x, x %detect% "app"), cran = TRUE)
  x <- c(1:4)
  y <- x > 2
  expect_snapshot(split_vec(x, y), cran = TRUE)
})
