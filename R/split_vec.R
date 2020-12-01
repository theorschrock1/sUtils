#' Split a vector in to two based on a logical test.

#' @name split_vec
#' @param x  \code{[atomic_vector]}
#' @param y  \code{[logical]}  Must have an exact length of \code{length(x)}.
#' @return \code{split_vec}: list(x[TRUE],x[FALSE])
#' @examples

#'  x <- c('app', 'apps', 'apple', 'bet', 'cat')
#'  split_vec(x, x %detect% 'app')
#'  x <- c(1:4)
#'  y <- x > 2
#'  split_vec(x, y)
#' @export
split_vec <- function(x, y) {
    # Split a vector in to two based on a logical test
    assert_atomic_vector(x)
    assert_logical(y, len = length(x))
    list(true = x[y], false = x[!y])
    # Returns: list(x[TRUE],x[FALSE])
}
