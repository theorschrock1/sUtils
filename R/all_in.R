#' Convience function for testing if all values in vector 'a' are present in vector 'b'.

#' @name %all_in%
#' @param  a target vector

#' @param  b key vector

#' @return  logical: true if all values in 'a' are also in 'b'.

#' @examples

#'  a <- c("A", "A", "A", "B", "B", "C")

#'  b <- c("A", "B", "C")

#'  a %all_in% b

#'  a <- c("A", "A", "A", "B", "B", "C", "D" )

#'  b <- c("A", "B", "C")

#'  a %all_in% b
#' @export
"%all_in%"<-function(a, b) {
  all(unique(a) %in% unique(b))
}

