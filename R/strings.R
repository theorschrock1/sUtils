#' @export
cglue=function(x,env=caller_env()){
  glue(x,.open="&&",.close="&&",.envir = env)
}

#' @export
followed_by=function(x){
  paste0("(?=",x,")")
}
#' @export
not_followed_by=function(x){
  paste0("(?!",x,")")
}
#' @export
preceding=function(x){
paste0("(?<=",x,")")
}
#' @export
not_preceding=function(x){
  paste0("(?<!",x,")")
}
#' @export
`%preceding%`<-function(x,y){
 paste0(preceding(x),y)
}
#' @export
`%npreceding%`<-function(x,y){
  paste0(not_preceding(x),y)
}
#' @export
`%preceding%`<-function(x,y){
  paste0(preceding(x),y)
}
#' @export
`%followed_by%`<-function(x,y){
  paste0(x,followed_by(y))
}
#' @export
`%nfollowed_by%`<-function(x,y){
  paste0(x,not_followed_by(y))
}
#' @export
any_char=function()".*"
#' @export
any_word=function()"\\w+"
#' @export
any_letter=function()"\\w"
#' @export
any_not_letter=function()"\\W"
#' @export
any_not_num=function()"\\D+"
#' @export
any_num=function()"\\-?\\d+\\.?\\d*"
#' @export
start_with=function(x) paste0("^",x)
#' @export
ends_with=function(x) paste0(x,"$")
#' @export
any_preceding=function(x,until="")glue(until,'.*',followed_by(x))
#' @export
any_not_preceding=function(x){
  paste0('.*',not_followed_by(x))
}
#' @export
not_containing=function(x){
  paste0('^(?!.*',x,")")
}#' @export
any_following=function(x,until="")paste0(preceding(x),'.*',until)
#' @export
any_inside=function(x,y){

  x%preceding%".*?"%followed_by%y
}
#' @export
`%inside%`=function(x,y){
  if(l(y)!=2)g_stop("y must be length 2, not {length(y)}")
  if(l(y)!=2)g_stop("x must be length 2, not {length(x)}")

  y[1]%preceding%paste0(x,"?")%followed_by%y[2]
}

#' @export
'.'<-function(...)list(...)
#' @export
`%detect%`<-function(x,pattern){
  grepl(pattern%sep%"|",x)
}
#' @export
`%ndetect%`<-function(x,pattern){
  !grepl(pattern%sep%"|",x)
}
