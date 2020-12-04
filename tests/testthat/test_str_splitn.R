test_that("str_splitn", {
  local_edition(3)
  local_edition(3)
  expect_snapshot(expect_snapshot(str_splitn(
    "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = TRUE, unlist = TRUE), cran = TRUE), cran = TRUE)
  expect_snapshot(expect_snapshot(str_splitn(
    "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = FALSE, unlist = TRUE), cran = TRUE), cran = TRUE)
  expect_snapshot(expect_snapshot(str_splitn(
    "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = FALSE, unlist = FALSE), cran = TRUE), cran = TRUE)
})
