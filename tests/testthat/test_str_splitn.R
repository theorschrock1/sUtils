library(sUtils)
context("str_splitn")
test_that("str_splitn(\"#' NOTE: If you manually change your package name in the DESCRIPTION,\\n  #' don't forget to change it here too, and in the config file.\\n  #' For a safer name change mechanism, use the function.\", \n    trim = TRUE, unlist = TRUE)", 
    {
        output <- {
            str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.", 
                trim = TRUE, unlist = TRUE)
        }
        expect_equal(test_summary(output), list(N = 3L, class = "character", 
            values = c("#' NOTE: If you manually change your package name in the DESCRIPTION,", 
            "#' don't forget to change it here too, and in the config file.", 
            "#' For a safer name change mechanism, use the function."
            )))
    })
test_that("str_splitn(\"#' NOTE: If you manually change your package name in the DESCRIPTION,\\n  #' don't forget to change it here too, and in the config file.\\n  #' For a safer name change mechanism, use the function.\", \n    trim = FALSE, unlist = TRUE)", 
    {
        output <- {
            str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.", 
                trim = FALSE, unlist = TRUE)
        }
        expect_equal(test_summary(output), list(N = 3L, class = "character", 
            values = c("#' NOTE: If you manually change your package name in the DESCRIPTION,", 
            "  #' don't forget to change it here too, and in the config file.", 
            "  #' For a safer name change mechanism, use the function."
            )))
    })
test_that("str_splitn(\"#' NOTE: If you manually change your package name in the DESCRIPTION,\\n  #' don't forget to change it here too, and in the config file.\\n  #' For a safer name change mechanism, use the function.\", \n    trim = FALSE, unlist = FALSE)", 
    {
        output <- expect_list({
            str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.", 
                trim = FALSE, unlist = FALSE)
        })
        expect_equal(test_summary(output), list(length = 1, attributes = NULL))
        expect_equal(test_summary(output[[1]]), list(N = 3, class = "character", 
            values = c("#' NOTE: If you manually change your package name in the DESCRIPTION,", 
                "  #' don't forget to change it here too, and in the config file.", 
                "  #' For a safer name change mechanism, use the function.")))
    })
