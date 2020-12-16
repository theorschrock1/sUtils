test_that("check_length", {
  local_edition(3)
  expect_snapshot(check_length(letters, len = 26, null.ok = FALSE), cran = TRUE)
  expect_snapshot(check_length(letters, len = 25, null.ok = FALSE), cran = TRUE)
  expect_snapshot(check_length(letters[1:5], len = c(0, 26), null.ok = FALSE),
  cran = TRUE)
  expect_snapshot(check_length(letters[0], len = c(0, 26), null.ok = FALSE),
  cran = TRUE)
  expect_snapshot(check_length(NULL, len = c(0, 26), null.ok = FALSE), cran = TRUE)
  expect_snapshot(check_length(NULL, len = c(0, 26), null.ok = TRUE), cran = TRUE)
})
