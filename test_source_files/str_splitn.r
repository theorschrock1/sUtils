build_snapshot_test('str_splitn',{
 str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = TRUE, unlist = TRUE)
str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = FALSE, unlist = TRUE)
str_splitn("#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
    trim = FALSE, unlist = FALSE)
},overwrite = TRUE)
