#' Modify a string.

#' @name str_modify_all
#' @param x  \code{[character]}
#' @param pattern  \code{[string]}
#' @param func  \code{[function]}
#' @return \code{str_modify_all}: [character]
#' @examples

#'  x = c('[characterORnumeric] this a [character] or [numeric] vector',
#'  '[numeric] this is a [numeric] vector')
#'  str_modify_all(x, pattern = '\\[\\w+\\]', func = function(x) paste0('\\code{',
#'  x, '}'))
#' @export
str_modify_all <- function(x, pattern, func) {
    # Modify a string
    assert_character(x)
    assert_string(pattern)
    assert_function(func)
    ext <- str_extract_all(x, pattern = pattern)
    x = str_split(x, pattern = pattern)
    replace <- lapply(ext, func)
    paste2 <- function(x, y, sep = ".") paste(x, y, sep = sep)
    as_glue(unlist(map2(x, replace, function(x, y) reduce2(x, y, paste2))))
    # Returns: [character]
}
