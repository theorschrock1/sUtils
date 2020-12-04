test_that("capitalize", {
  local_edition(3)
  expect_snapshot(capitalize(c("documents", "test", "1st")), cran = TRUE)
})
