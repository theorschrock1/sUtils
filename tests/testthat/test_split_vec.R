library(sUtils)
context("split_vec")
test_that("x <- c(\"app\", \"apps\", \"apple\", \"bet\", \"cat\")\nsplit_vec(x, x %detect% \"app\")", 
    {
        output <- expect_list({
            x <- c("app", "apps", "apple", "bet", "cat")
            split_vec(x, x %detect% "app")
        })
        expect_equal(test_summary(output), list(length = 2, attributes = list(names = c("true", 
            "false"))))
        expect_equal(test_summary(output[["true"]]), list(N = 3, 
            class = "character", values = c("app", "apps", "apple")))
        expect_equal(test_summary(output[["false"]]), list(N = 2, 
            class = "character", values = c("bet", "cat")))
    })
test_that("x <- c(1:4)\ny <- x > 2\nsplit_vec(x, y)", {
    output <- expect_list({
        x <- c(1:4)
        y <- x > 2
        split_vec(x, y)
    })
    expect_equal(test_summary(output), list(length = 2, attributes = list(names = c("true", 
        "false"))))
    expect_equal(test_summary(output[["true"]]), list(sum = 7, 
        min = 3, max = 4, avg = 3.5, N = 2, class = "integer", 
        anyMissing = FALSE))
    expect_equal(test_summary(output[["false"]]), list(sum = 3, 
        min = 1, max = 2, avg = 1.5, N = 2, class = "integer", 
        anyMissing = FALSE))
})
