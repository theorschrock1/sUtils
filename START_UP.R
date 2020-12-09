###Welcome to sDevTools package start up!

#NOTE:The following code is intented to only be run once
library(sDevTools)

#Package metadata

fill_description(pkg_name = "sUtils", pkg_title = "PKG_TITLE",
  pkg_description = "The package description.", author_first_name = "Theo",
  author_last_name = "Schrock", author_email = "<theorschrock@gmail.com>")

# Package dependencies (IMPORTS)

imports <- c("sUtils", "glue", "stringr", "checkmate", "rlang")
sDevTools::imports_pkg(imports)

#Use Git and create a Github repo

sDevTools::create_github_repo()

#Start developement

sDevTools::go_to_dev()
