test_that("str_modify", {
  local_edition(3)
  x = c("[character] this a character vector",
    "[numeric] this is a numeric vector")
  expect_snapshot(str_modify(x, pattern = "^?\\[.*\\]", func = function(
    x) paste0("\\code{", x, "}")), cran = TRUE)
})
