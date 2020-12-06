test_that("str_modify_all", {
  local_edition(3)
  x = c(
    "[characterORnumeric] this a [character] or [numeric] vector",
    "[numeric] this is a [numeric] vector")
  expect_snapshot(str_modify_all(x, pattern = "\\[\\w+\\]", func = function(
    x) paste0("\\code{", x, "}")), cran = TRUE)
})
