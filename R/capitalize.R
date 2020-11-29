#' Capitalize the first letter of a string.

#' @name capitalize
#' @param x  \code{[character]}
#' @return \code{capitalize}: [character]
#' @examples

#'  capitalize(c('dog', 'hello, sir.', '1st time', 'ALREADY CAPS'))
#' @export
capitalize <- function(x) {
    # Capitalize the first letter of a string
    assert_character(x)
    start <- toupper(str_extract(x, start_with("\\w")))
    paste0(start, str_remove(x, start_with("\\w")))
    # Returns: [character]
}
