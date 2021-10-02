build_snapshot_test('split_vec',{
x <- c("app", "apps", "apple", "bet", "cat")
split_vec(x, x %detect% "app")
x <- c(1:4)
y <- x > 2
split_vec(x, y)
},overwrite = TRUE)
run_app()
