#' Drop Null or length 0 list arguments.

#' @name drop_empty
#' @param x  \code{[list]}  NULL is ok.
#' @return \code{drop_empty}: \code{[list]}
#' @examples

#'  drop_empty(x = list(one = NULL, two = character(), three = 1))
#' @export
drop_empty <- function(x) {
    # Drop Null or length 0 list arguments
    assert_list(x, null.ok = TRUE)
    if (is.null(x)) 
        return(x)
    x[!sapply(x, is_empty)]
    # Returns: \code{[list]}
}
