#' Inverse grep
#'
#'
#' Same as running \code{x[!grepl(pattern,x)]}

#' @name %ngrep%
#' @param  a target vector

#' @param  pattern vector of patterns to match. if \code{length(pattern)>1}, pattern will be collapsed by '|' (or).

#' @return  a vector of matches

#' @examples

#'  a <- c("wages.csv", "wages.txt", "wages.xlsx")
#'  pattern <- c(".txt", ".csv")
#'  a %ngrep% pattern

#' @export
`%ngrep%`<-function(x, pattern) {
    x[!grepl(pattern%sep%"|",x)]
}

