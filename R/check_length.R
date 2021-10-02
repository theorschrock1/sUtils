#' Check the length of an r object.

#' @name check_length
#' @param x
#' @param len  \code{[integerish]} Acceptable lengths of an object
#' @param null.ok  \code{[logical]}  Must have an exact length of \code{1}.  Defaults to \code{FALSE}
#' @return \code{check_length}: \code{[TRUE|character]}
#' @examples

#'  check_length(letters, len = 26, null.ok = FALSE)
#'  check_length(letters, len = 25, null.ok = FALSE)
#'  check_length(letters[1:5], len = c(0, 26), null.ok = FALSE)
#'  check_length(letters[0], len = c(0, 26), null.ok = FALSE)
#'  check_length(NULL, len = c(0, 26), null.ok = FALSE)
#'  check_length(NULL, len = c(0, 26), null.ok = TRUE)
#' @export
check_length <- function(x, len, null.ok = FALSE) {
    # Check the length of an r object
    assert_integerish(len, min = 0)
    assert_logical(null.ok, len = 1)
    if (is.null(x) && null.ok == F)
        return("Must not be NULL")
    if (is.null(x) && null.ok == TRUE)
        return(TRUE)
    if (length(x) %nin% len)
        return(glue("Must have a length equal to [{len%sep%\"|\"}]"))
    TRUE
    # Returns: \code{[TRUE|character]}
}
#' @export
assert_length <-  checkmate::makeAssertionFunction(check_length)
