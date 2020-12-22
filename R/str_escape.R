#' Escape a regex pattern.

#' @name str_escape
#' @param x  \code{[character]}  NULL is ok.  Defaults to \code{NULL}
#' @return \code{str_escape}: \code{[character]} a character vector with length equal to x.
#' @examples

#'  str_escape(x = c('var(1)', '[sd]', 'test$list', 'a.t', '2^4'))
#'  str_escape(x = NULL)
#' @export
str_escape <- function(x = NULL) {
    # Escape a regex pattern
    assert_character(x, null.ok = TRUE)
    str_replace_all(x, "(\\W)", "\\\\\\1")
    # Returns: \code{[character]} a character vector with length equal to x.
}
