test_that("str_escape", {
  local_edition(3)
  expect_snapshot(str_escape(x = c("var(1)", "[sd]", "test$list", "a.t",
    "2^4")), cran = TRUE)
  expect_snapshot(str_escape(x = NULL), cran = TRUE)
})
