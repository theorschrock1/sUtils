#' Stop function execution quietly.

#' @name stop_quiet
#' @param x  \code{[string]}
#' @param env  \code{[environment]}  Defaults to \code{caller_env()}
#' @return \code{stop_quiet}: \code{[string]} returns a character string of class error message from the function environment.
#' @export
#' @examples
#' fn=function(x){
#'   if(is.character(x))
#'     stop_quiet('input x should be numeric, not {class(x)}')
#' x+1
#'
#' }
#' fn('a')
#' fn(2)
stop_quiet <- function(x, env = caller_env()) {
    # Stop function execution quietly
    assert_string(x)
    assert_environment(env)
    out <- glue(x, .envir = env)
    class(out) <- c("error_message", class(out))
    rlang::return_from(env, out)
    # Returns: [string] returns a character string of class error message from the function environment.
}
