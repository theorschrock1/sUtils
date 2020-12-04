test_that("path", {
  local_edition(3)
  expect_snapshot(path("documents", "test", "testtest.R"), cran = TRUE)
})
