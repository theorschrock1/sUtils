library(sUtils)
context("capitalize")
test_that("capitalize(c(\"documents\", \"test\", \"1st\"))", 
    {
        output <- {
            capitalize(c("documents", "test", "1st"))
        }
        expect_equal(test_summary(output), list(N = 3L, class = "character", 
            values = c("Documents", "Test", "1st")))
    })
