# is_empty

    Code
      is_empty(x = NULL)
    Output
      [1] TRUE

---

    Code
      is_empty(x = 1)
    Output
      [1] FALSE

---

    Code
      is_empty(x = c(1:2))
    Output
      [1] FALSE

---

    Code
      is_empty(x = data.frame())
    Output
      [1] TRUE

---

    Code
      is_empty(x = data.frame(1))
    Output
      [1] FALSE

---

    Code
      is_empty(x = list())
    Output
      [1] TRUE

---

    Code
      is_empty(x = list(1))
    Output
      [1] FALSE

---

    Code
      is_empty(x = "a")
    Output
      [1] FALSE

---

    Code
      is_empty(x = "")
    Output
      [1] TRUE

