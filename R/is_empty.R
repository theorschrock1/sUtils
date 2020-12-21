#' Check is an arguement has no rows, is NULL, or zero length.

#' @name is_empty
#' @param x
#' @return \code{is_empty}: \code{[logical(1)]}
#' @examples

#'  is_empty(x = NULL)
#'  is_empty(x = 1)
#'  is_empty(x = c(1:2))
#'  is_empty(x = data.frame())
#'  is_empty(x = data.frame(1))
#'  is_empty(x = list())
#'  is_empty(x = list(1))
#'  is_empty(x = 'a')
#'  is_empty(x = '')
#' @export
is_empty <- function(x) {
    # Check is an arguement has no rows, is NULL, or zero length
    if (is.null(x)) 
        return(TRUE)
    if (len0(x)) 
        return(TRUE)
    if (is.character(x) && str_length(x) == 0) 
        return(TRUE)
    if (len0(nrow(x))) 
        return(FALSE)
    if (isTRUE(nrow(x) == 0)) 
        return(TRUE)
    return(FALSE)
    # Returns: \code{[logical(1)]}
}
