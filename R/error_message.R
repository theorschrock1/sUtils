#' Set and collect error messages.  For use in tryCatch.

#' @name error_message
#' @param  message the message to return if the execution in tryCatch throws an error

#' @return  a message of class error

#' @examples

#'  message <- tryCatch(1+a_nonexistent_variable,error=error_message("Execution Error"))

#'  is_error(message)

#'  print(message)

#' @export
error_message=function(message){
  function(e){
    class(message)='error_message'
    message
  }
}
#' @export
is_error=function(x){
  is(x,'error_message')|is(x,'error')|is(x,'try-error')
}


