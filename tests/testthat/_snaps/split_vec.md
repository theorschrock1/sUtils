# split_vec

    Code
      split_vec(x, x %detect% "app")
    Output
      $true
      [1] "app"   "apps"  "apple"
      
      $false
      [1] "bet" "cat"
      

---

    Code
      split_vec(x, y)
    Output
      $true
      [1] 3 4
      
      $false
      [1] 1 2
      

