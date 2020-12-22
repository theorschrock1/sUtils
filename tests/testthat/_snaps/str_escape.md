# str_escape

    Code
      str_escape(x = c("var(1)", "[sd]", "test$list", "a.t", "2^4"))
    Output
      [1] "var\\(1\\)"  "\\[sd\\]"    "test\\$list" "a\\.t"       "2\\^4"      

---

    Code
      str_escape(x = NULL)
    Output
      character(0)

