#' Convience function for reverse subsetting values.

#' @name %NIN%
#' @param  a target vector

#' @param  b key vector

#' @return  values in 'a' that are not in 'b'

#' @examples

#'  a <- c("A", "A", "A", "B", "B", "C")

#'  b <- c("A", "A", "C", "C")

#'  a %NIN% b

#' @export
"%NIN%"<-function(a, b) {
    a[a %nin% unique(b)]
}
