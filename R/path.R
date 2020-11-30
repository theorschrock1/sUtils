#' Build a file path.

#' @name path
#' @param ... the pieces of the path
#' @return \code{path}: character(file_path)
#' @examples

#'  path(getwd(), 'test', 'testtest.R')
#' @export
path <- function(...) {
    # Build a file path
    lapply(list(...), assert_character, len = 1)
    c(...) %sep% "/"
    # Returns: character(file_path)
}
