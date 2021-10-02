#Check Usage -----
checks=checkPackageUsage()
runTests(package="sUtils")
#Dismiss Usage Warnings -----
#  suppressUsageWarnings(checks)
###Dev Setup -----
## INSTALL: CTRL + SHIFT + B
sDevTools::clearEnv() ## CTRL + SHIFT + R
library(sDevTools)
sDevTools::loadUtils()
#Dev -----
n_precision<-
 function(x){
   #Documentation
   fdoc("get the numeric precision of a vector","[numeric(length(x))]")
   #Assertions
   assert_numeric(x)
   #TO DO
   not_na<-!is.na(x)
   x=str_remove(as.character(x),"\\.0+$")
   out=str_extract(as.character(x),"\\.\\d+")
   has_dec=str_detect(x,"\\.")
   out<-rep(0,length(out))
   out[has_dec&not_na]=str_length(str_extract(x[has_dec&not_na],"\\.\\d+"))-1

   has_zeros=str_detect(x,'0+$')
   out[!has_dec&has_zeros&not_na]=-str_length(str_extract(x[!has_dec&has_zeros&not_na],'0+$'))
   out[x==0]<-0
   out[!not_na]<-NA
 out
 }
#document------
 fn_document(n_precision,{
n_precision(x=c(23.1,23,120,234.021,NA))
 })
