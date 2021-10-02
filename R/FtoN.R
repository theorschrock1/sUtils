
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
    class(out)<-c('error_message',class(out))
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
#' @export
drop_nulls <- function(x){
  x[!sapply(x, is.null)]
}
#' @export
add_R6_active_logicals=function(R6,.f,test_variable,options){
  .f=enexpr(.f)
  fnames<-glue("is_{test_variable}_{options}")
  tv=expr(self$tmp)
  tv[[3]]=parse_expr(test_variable)
  for(i in 1:l(options)){
    tmp<-expr(.f(!!tv,!!options[i]))
    tmp[[1]]<-.f
    fn_in<-expr(function(value) {
      if(missing(value)){
        return(!!tmp)
      }
      stop("This variable is read only")
    })
    R6$set('active',fnames[i],eval( fn_in))
  }
  R6
}
#' @export
mget_R6_attrs=function(r6_envir,attrs,.in=NULL){
  if(!is.null(.in)){
    r6_envir<-r6_envir[[.in]]
  }

  list_call= function(x){
    if(is(x,"language"))return(list(x))
    x
  }

  out=mget(attrs,envir=r6_envir,ifnotfound = '.variableNotFound') %>%
    lapply(list_call)
  out[sapply(out,function(x)!is_list(x)||x!='.variableNotFound')]

}

