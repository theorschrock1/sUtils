
#' @export
FtoN <- function(x) {
  as.numeric(as.character(x))
}
#' @export
l<- function(x) length(x)
#' @export
len<-function(x) UseMethod("len")
#' @export
len.default<- function(x) length(x)
#' @export
last=function(x){
  x[l(x)]
}
#' @export
create_unique_id=function(length=30){
  from=c(LETTERS,letters,as.character(1:9))
  paste0(sample(from,size=length,replace=T),collapse = "")
}
#' @export
is_class=function(class,type){
  grepl(type,class)
}

#' @export
which_max_len=function(x,y){
  which.max(c(len(x),len(y)))
}
#' @export
which_min_len=function(x,y){
  which.min(c(len(x),len(y)))
}

#' @export
len0=function(x){
  len(x)==0
}
#' @export
`%sep%`<-function(x,y){
  if(y%in%c("and","or")&l(x)>1){
    xl=length(x)
    xlm1=xl-1
   out=c(glue_collapse(x[1:xlm1],sep=", "),x[xl]) %>%
      glue_collapse(sep=paste0(" ",y," "))
   return(out)
  }
  glue_collapse(x,sep=y)
}
#' @export
g_stop=function(x,silent=FALSE,env=caller_env()){
  if(silent){
    out<-glue(x,.envir = env)
    class(out)<-'error_message'
    return(out)
  }
  stop(glue(x,.envir = env),call.=FALSE)
}
#' @export
g_print=function(x,env=caller_env()){
  print(glue(x,.envir = env))
}
#' @export
nlen0=function(x,n){
  !is_len(x,0)
}
#' @export
len1=function(x,n){
  is_len(x,1)
}
#' @export
is_len=function(x,n){
  length(x)==n
}
#' @export
nnull=function(x){
  !is.null(x)
}
#' @export
chr_approx=function(x,y){
  x_range<-x
  y_range<-y
  function(x){
    y_range[match(x,x_range)]
  }
}
#' @export
`%nin%`<-function (x, table){
  match(x, table, nomatch = 0) == 0
}
