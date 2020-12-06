#' Modify parts of a string.

#' @name str_modify
#' @param x  \code{[character]}
#' @param pattern  \code{[string]}
#' @param func  \code{[function]}
#' @param .open  \code{[string]}  Defaults to \code{'&&{'}
#' @param .close  \code{[string]}  Defaults to \code{'}&&'}
#' @return \code{str_modify}: [character]
#' @examples

#'  x = c('[character] this a character vector', '[numeric] this is a numeric vector')
#'  str_modify(x, pattern = '^?\\[.*\\]', func = function(x) paste0('\\code{',
#'  x, '}'))
#' @export
str_modify <- function(x, pattern, func, .open = "&&{", .close = "}&&") {
    # Modify parts of a string
    assert_character(x)
    assert_string(pattern)
    assert_function(func)
    assert_string(.open)
    assert_string(.close)
    if (len(x) > 1) {
        return(as_glue(unlist(map(x, str_modify, pattern = pattern, func = func, 
            .open = .open))))
    }
    ext <- str_extract(x, pattern = pattern)
    x = str_replace(x, pattern = pattern, "&&{replace}&&")
    replace <- func(ext)
    glue(x, .open = .open, .close = .close)
    # Returns: [character]
}
