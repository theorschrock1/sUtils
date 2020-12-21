#' Add class 'error_message' to a character string or vector.

#' @name as_error_message
#' @param x  \code{[character]}  NULL is ok.
#' @return \code{as_error_message}: \code{[character]} character with class error_message
#' @examples

#'  as_error_message(x = 'Error message')
#' @export
as_error_message <- function(x) {
    # Add class 'error_message' to a character string or vector
    assert_character(x, null.ok = TRUE)
    if (is.null(x)) 
        return(NULL)
    x = as_glue(x)
    class(x) <- c("error_message", class(x))
    x
    # Returns: \code{[character]} character with class error_message
}
