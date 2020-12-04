# str_splitn

    Code
      str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = TRUE, unlist = TRUE)
    Output
      [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
      [2] "#' don't forget to change it here too, and in the config file."       
      [3] "#' For a safer name change mechanism, use the function."              

---

    Code
      expect_snapshot(str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = TRUE, unlist = TRUE), cran = TRUE)
    Warning <testthat_warn>
      Adding new snapshot:
      Code
        str_splitn(
          "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
          trim = TRUE, unlist = TRUE)
      Output
        [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
        [2] "#' don't forget to change it here too, and in the config file."       
        [3] "#' For a safer name change mechanism, use the function."              

---

    Code
      str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = FALSE, unlist = TRUE)
    Output
      [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
      [2] "  #' don't forget to change it here too, and in the config file."     
      [3] "  #' For a safer name change mechanism, use the function."            

---

    Code
      expect_snapshot(str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = FALSE, unlist = TRUE), cran = TRUE)
    Warning <testthat_warn>
      Adding new snapshot:
      Code
        str_splitn(
          "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
          trim = FALSE, unlist = TRUE)
      Output
        [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
        [2] "  #' don't forget to change it here too, and in the config file."     
        [3] "  #' For a safer name change mechanism, use the function."            

---

    Code
      str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = FALSE, unlist = FALSE)
    Output
      [[1]]
      [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
      [2] "  #' don't forget to change it here too, and in the config file."     
      [3] "  #' For a safer name change mechanism, use the function."            
      

---

    Code
      expect_snapshot(str_splitn(
        "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
        trim = FALSE, unlist = FALSE), cran = TRUE)
    Warning <testthat_warn>
      Adding new snapshot:
      Code
        str_splitn(
          "#' NOTE: If you manually change your package name in the DESCRIPTION,\n  #' don't forget to change it here too, and in the config file.\n  #' For a safer name change mechanism, use the function.",
          trim = FALSE, unlist = FALSE)
      Output
        [[1]]
        [1] "#' NOTE: If you manually change your package name in the DESCRIPTION,"
        [2] "  #' don't forget to change it here too, and in the config file."     
        [3] "  #' For a safer name change mechanism, use the function."            
        

