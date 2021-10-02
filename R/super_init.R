#' @export
super_init=function(...){
  if(is.null(private$.init)||!is.logical(private$.init)||length(private$.init)!=1){
    g_stop("Breaking change in super initialize. For all subclasses using 'super_init', please add a field to private called `.init` with value set to FALSE for all subclasses")
  }
  if(private$.init)
    return()
  private$.init=TRUE
  super_args=list(...)

  assert_named(super_args)

  parents= list()
  parent=self
  while(nnull(parent)){
    append(parents)=parent$.__enclos_env__$super
    parent=parent$.__enclos_env__$super
  }
  parents= rev(parents)

  for(i in 1:l(parents)){
    x=  parents[[i]]
    super_fmls_names=rlang::fn_fmls_names(x$initialize)
    now_args<-super_args[names(super_args)%in%super_fmls_names]
    expr(x$initialize(!!!now_args)) %>% eval()
    super_args=super_args[names(super_args)%nin%super_fmls_names]
  }
  if(length(super_args)>0){

    g_stop("Unused arguement/s:`{names(super_args)%sep%','}`")
  }
  return(invisible(NULL))
}
# super_init=function(...){
#   super_args=list(...)
#   super_fmls_names=rlang::fn_fmls_names(super$initialize)
#   print(  super_fmls_names)
#   if(!names(super_args)%all_in%super_fmls_names){
#     unused=names(super_args)[names(super_args)%nin%super_fmls_names] %>% glue_collapse(sep=',')
#     availible=glue_collapse(super_fmls_names,sep='\n')
#     stop(glue("Unused arguement/s:'{unused}'\nAvailible arguments:\n{availible}"))
#   }
#
#   expr(super$initialize(!!! super_args)) %>% eval()
# }
