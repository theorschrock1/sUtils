#' Convience function for subsetting unique values.

#' @name %UIN%
#' @param  a target vector

#' @param  b key vector

#' @return  unique values in 'a' that are  in 'b'

#' @examples

#'  a <- c("A", "A", "A", "B", "B", "C")

#'  b <- c("A", "A", "C", "C")

#'  a %UNI% b

#' @export
"%UIN%"<-function(a, b) {
    unique(a)[unique(a) %in% unique(b)]
}
