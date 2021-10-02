#' @export
`append<-`<-function(x=NULL,value=NULL){
  #append a vector or list

  #Assertions
  if(is.null(x))return(value)
  if(is.list(x)){
    x[[length(x)+1]]<-value
    return(x)
  }
  assert_class(value,classes = class(x), null.ok = TRUE)
  #TO DO
  c(x,value)
  #returns [invisible(x)]
}
