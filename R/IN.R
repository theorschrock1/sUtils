#' Convience function for subsetting values.

#' @name %IN%
#' @param  a target vector

#' @param  b key vector

#' @return  unique values in 'a' that are  in 'b'

#' @examples

#'  a <- c("A", "A", "A", "B", "B", "C")

#'  b <- c("A", "A", "C", "C")

#'  a %IN% b

#' @export
"%IN%"<-function(a, b) {
    a[a %in% unique(b)]
}
