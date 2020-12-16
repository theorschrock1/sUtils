test_that("weave", {
  local_edition(3)
  expect_snapshot(weave(letters, LETTERS), cran = TRUE)
  expect_snapshot(weave(letters, as.character(1:26)), cran = TRUE)
  expect_snapshot(weave(letters, "."), cran = TRUE)
  expect_snapshot(weave(1:5, 6:9), cran = TRUE)
  expect_snapshot(weave(list(1, factor("G"), TRUE), list("k", "k", "l")), cran = TRUE)
})
