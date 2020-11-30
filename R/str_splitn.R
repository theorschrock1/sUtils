#' Splits a string by line.

#' @name str_splitn
#' @param x  \code{[character]}
#' @param trim  \code{[logical]}  Must have an exact length of \code{1}.  Defaults to \code{TRUE}
#' @param unlist  \code{[logical]}  Must have an exact length of \code{1}.  Defaults to \code{TRUE}
#' @return \code{str_splitn}: [character]
#' @examples

#'  str_splitn('#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.',
#'  trim = TRUE, unlist = TRUE)
#'  str_splitn('#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.',
#'  trim = FALSE, unlist = TRUE)
#'  str_splitn('#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.',
#'  trim = FALSE, unlist = FALSE)
#' @export
str_splitn <- function(x, trim = TRUE, unlist = TRUE) {
    # Splits a string by line
    assert_character(x)
    assert_logical(trim, len = 1)
    assert_logical(unlist, len = 1)
    out <- str_split(x, pattern = "\n")
    if (trim) 
        out <- lapply(out, str_trim)
    if (unlist) 
        out <- unlist(out)
    return(out)
    # Returns: [character]
}
