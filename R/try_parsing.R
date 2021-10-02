#' try running an expression and capture either the output or error message.

#' @name try_parsing
#' @param  x an expression in character format
#' @param  error_message the message to return if the execution throws an error


#' @return  either the output of the execution or a message of class error_message

#' @examples

#'  out <- try_parsing('1,w',error_message="SYTHAX ERROR")
#'  print(out)
#'  print(is_error(out))
#' @export
try_parsing=function(x,error_message){
  if(is.null(x)){
    return(missing_arg())
  }
  if(!is_character(x))stop('x must be a string')
  out<-try(parse_expr(x),silent=T)
  if(is(out,"try-error")){
    og_error<-str_split(out,"\\d+:")[[1]][3]
    out=glue('{error_message}\n{og_error}')
    class(out)<-'error_message'
  }
  out
}
