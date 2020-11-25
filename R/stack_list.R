
fill_missing_slots=function(x,y){
  max_index <- which_max_len(x, y)
  min_index <- which_min_len(x, y)
  lts = list(x, y)
  missing_names <- names(lts[[max_index]]) %NIN% names(lts[[min_index]])
  if(l(missing_names)>0){
    missing_class <-
      lts[[max_index]][names(lts[[max_index]]) %nin% names(lts[[min_index]])] %>% lapply(class) %>% unlist()

    fillna<-function(x,missing_names,missing_class){
      for(i in 1:l(missing_names)){
        insert_na<-try_running(as(NA,"function"),message="nope")
        if(is_error(insert_na))insert_na<-as(list(NA),"function")
        x[[missing_names[i]]]<-insert_na
      }
      x
    }

    lts[[min_index]] <-
      fillna(lts[[min_index]], missing_names, missing_class)
  }
  x=lts[[1]]
  y=lts[[2]]
  list(x=x[order(names(x))],y=y[order(names(y))])
}

stack_list=function(x,y){
  out<-fill_missing_slots(x,y)
  map2(out$x,out$y,c)
}
#' @export
stack_lists=function(lists){
  reduce(lists,stack_list)
}
