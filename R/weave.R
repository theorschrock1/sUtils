#' weave two vectors or lists.

#' @name weave
#' @param x \code{[[vector|list]}
#' @param y \code{[class(x)]} must have the same class as \code{x} and have length equal to \code{[1 | length(x) | length(x)-1 ]}.  If length is 1, \code{y} will be inserted between every instance of \code{x}.
#' @return \code{weave}: \code{[vector|list]}
#' @examples

#'  weave(letters, LETTERS)
#'  weave(letters, as.character(1:26))
#'  weave(letters, '.')
#'  weave(1:5, 6:9)
#'  weave(list(1, factor('G'), TRUE), list('k', 'k', 'l'))
#' @export
weave <- function(x, y) {
    # weave to vectors or lists
    assert(check_vector(x), check_list(x))
    assert(check_class(y, classes = class(x)), check_length(y, len = c(1, length(x) -
        1, length(x))), combine = "and")
    if (is.list(x)) {
        x <- lapply(x, list)
        y <- lapply(y, list)
    }
    sameLen = length(y) == length(x)
    if (sameLen && length(y) == 1)
        return(c(x, y))
    if (length(y) == 1)
        y = rep(y, length(x) - 1)
    ylast = NULL
    if (sameLen) {
        ylast = last(y)
        y = y[1:(length(y) - 1)]
        if (is.list(x))
            ylast = ylast[[1]]
    }
    out = c(reduce2(x, y, function(x, y, sep) {
        c(x, sep, y)
    }), ylast)
    out
    # Returns: \code{[vector|list]}
}
