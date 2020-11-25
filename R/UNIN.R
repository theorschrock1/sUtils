#' Convience function for reverse subsetting unique values.

#' @name %UNIN%
#' @param  a target vector

#' @param  b key vector

#' @return  unique values in 'a' that are not in 'b'

#' @examples

#'  a <- c("A", "A", "A", "B", "B", "C")

#'  b <- c("A", "A", "C", "C")

#'  a %UNIN% b

#' @export
"%UNIN%"<-function(a, b) {
    unique(a)[unique(a) %nin% unique(b)]
}
