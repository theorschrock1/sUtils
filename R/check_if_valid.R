#' @export
require_true<-function(condition,message_if_false,env=caller_env()){
  if(condition){
    return(TRUE)
  }
  class(message_if_false)<-'error_message'
  rlang::return_from(env,message_if_false)
}
#' @export
require_false<-function(condition,message_if_true,env=caller_env()){
  if(condition==F){
    return(TRUE)
  }
  class(message_if_true)<-'error_message'
  rlang::return_from(env,message_if_true)
}
#' @export
check_if_valid<-function(x,env=caller_env()){
  if(is_error(x))
    rlang::return_from(env,x)
  invisible(x)
}
