test_that("drop_empty", {
  local_edition(3)
  expect_snapshot(drop_empty(x = list(one = NULL, two = character(), three = 1)),
  cran = TRUE)
})
