#' @import stringr
#' @import glue
#' @importFrom rlang expr exprs enexpr enexprs

.onLoad <- function(libname, pkgname) {

}

#' @export
map=purrr::map

#' @export
map2=purrr::map2

#' @export
reduce=purrr::reduce

#' @export
reduce2=purrr::reduce2

#' @export
walk=purrr::walk

#' @export
walk2=purrr::walk

#' @export
accumulate=purrr::accumulate

#' @export
accumulate2=purrr::accumulate2

#' @export
glue=glue::glue

#' @export
caller_env=rlang::caller_env

#' @export
expr=rlang::expr

#' @export
enexpr=rlang::enexpr

#' @export
enexprs=rlang::enexprs

#' @export
exprs=rlang::exprs


