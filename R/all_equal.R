#' Test is all values in a vector are equal.

#' @name all_equal
#' @param x  [atomic_vector]
#' @param na.rm  [logical]  Defaults to FALSE
#' @return \code{all_equal}: [Logical(1)]
#' @examples

#'  all_equal(rep('a', 5))

#'  all_equal(c('b', rep('a', 5)))

#'  all_equal(c(NA_character_, rep('a', 5)))

#'  all_equal(c(NA_character_, rep('a', 5)), na.rm = TRUE)
#' @export
all_equal <- function(x, na.rm = FALSE) {
    # Test is all values in a vector are equal

    if(!is(x,'atomic_vector'))g_stop("x must be an atomic vector")
    if(!is.logical(na.rm))g_stop("na.rm must be logical")

    if (na.rm)
        x = na.omit(x)
    length(unique(x)) == 1
    # Returns: [Logical(1)]
}
