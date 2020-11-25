#'  Get the index order of vector x to match the order of a second vector

#' @param  x a vector

#' @param  by the look up vector

#' @return  the index order of vector 'x' if it were to match its order to the second vector

#' @examples

#'  x <- c("K","G","R","A","C")
#'  by <- c("A","R","C","K","G")
#'  I=match_order(x,by)
#'  I
#'  x[I]
#'  x[I]==by

#' @export
match_order=function(x,by){
  if(any(duplicated(by)))stop("the second vector 'by' must have unique values")
  if(any(by%nin%x))stop("all values in the second vector 'by' must be present in vector 'x'")
  order(match(x,by))
}


