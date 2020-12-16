# check_length

    Code
      check_length(letters, len = 26, null.ok = FALSE)
    Output
      [1] TRUE

---

    Code
      check_length(letters, len = 25, null.ok = FALSE)
    Output
      Must have a length equal to [25]

---

    Code
      check_length(letters[1:5], len = c(0, 26), null.ok = FALSE)
    Output
      Must have a length equal to [0|26]

---

    Code
      check_length(letters[0], len = c(0, 26), null.ok = FALSE)
    Output
      [1] TRUE

---

    Code
      check_length(NULL, len = c(0, 26), null.ok = FALSE)
    Output
      [1] "Must not be NULL"

---

    Code
      check_length(NULL, len = c(0, 26), null.ok = TRUE)
    Output
      [1] TRUE

