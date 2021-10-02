#' @export
R6manager = function(name,base_class) {
  cglue("R6::R6Class(
       '&&capitalize(name)&&',
        public = list(
          initialize = function(&&name&&=NULL) {
            if(nnull(&&name&&)){
             assert_class(&&name&&,'&&base_class&&')
              private$.&&name&&=lapply(&&name&&,  self$new_&&name&&)
            }
          },
          new_&&str_remove(name,ends_with('s'))&&=function(&&str_remove(name,ends_with('s'))&&){
                assert_class(&&str_remove(name,ends_with('s'))&&,'&&base_class&&')
            private$.&&name&&[[&&str_remove(name,ends_with('s'))&&$id]]<-&&str_remove(name,ends_with('s'))&&
          },
          delete_&&str_remove(name,ends_with('s'))&&=function(id){
            private$.&&name&&[[id]]<-NULL
          }
          ),
        private = list(
          .&&name&&=list()
        ),
        active = list(
          &&name&& = function(value) {
            if (missing(value)) {
              return(private$.&&name&&)
            }
            stop('&&name&& is read only. Use `new_&&str_remove(name,ends_with('s'))&&` method to add new data')

          }
        )
      )") %>% parse_expr()%>% eval()

}
