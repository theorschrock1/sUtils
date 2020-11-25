#' Convience function for grep.

#' @name %grep%
#' @param  x a character vector

#' @param  pattern a pattern to match.  if \code{length(pattern)>1}, pattern will be collapsed by '|' (or).

#' @return  a vector of matches

#' @examples
#' a <- c("catfish", "catty","doggy", "dog", "man", "boy")
#' b <- c("cat","dog")
#' a %grep% b

#' @export
`%grep%`<-function(x, pattern) {
    x[grepl(pattern%sep%'|', x)]
}


