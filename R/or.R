#' Logical test for non-zero, non-null, and TRUE.

#' @name %or%
#' @param  x an object

#' @param  y an object

#' @return  Returns 'x' if it is length > zero (including character count), non-null,not missing, or TRUE.  Otherwise returns 'y'

#' @examples

#'  x <- NULL

#'  y <- 2

#'  x %or% y

#'  x <- 4

#'  y <- 2

#'  x %or% y

#' @export
"%or%" <-function (x, y)
{
  if(missing(x))return(y)
  if(is.list(x)&&l(x)>0)return(x)
  if (is.null(x) | l(x) == 0) return(y)
  if (length(x)==1 &(x[1] == F|x[1] == ""))   return(y)
  return(x)
}

