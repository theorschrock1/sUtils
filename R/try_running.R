#' try running an expression and capture either the output or error message.

#' @name try_running
#' @param  x the expression
#' @param  error the message to return if the execution throws an error


#' @return  either the output of the execution or a message of class error

#' @examples

#'  out <- try_running(1+a_nonexistent_variable,message="Execution Error")

#'  print(out)


try_running=function(x,message){
  tmp=expr(tryCatch(!!enexpr(x),error=error_message(!!message)))
  eval(tmp)
}
