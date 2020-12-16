# weave

    Code
      weave(letters, LETTERS)
    Output
       [1] "a" "A" "b" "B" "c" "C" "d" "D" "e" "E" "f" "F" "g" "G" "h" "H" "i" "I" "j"
      [20] "J" "k" "K" "l" "L" "m" "M" "n" "N" "o" "O" "p" "P" "q" "Q" "r" "R" "s" "S"
      [39] "t" "T" "u" "U" "v" "V" "w" "W" "x" "X" "y" "Y" "z" "Z"

---

    Code
      weave(letters, as.character(1:26))
    Output
       [1] "a"  "1"  "b"  "2"  "c"  "3"  "d"  "4"  "e"  "5"  "f"  "6"  "g"  "7"  "h" 
      [16] "8"  "i"  "9"  "j"  "10" "k"  "11" "l"  "12" "m"  "13" "n"  "14" "o"  "15"
      [31] "p"  "16" "q"  "17" "r"  "18" "s"  "19" "t"  "20" "u"  "21" "v"  "22" "w" 
      [46] "23" "x"  "24" "y"  "25" "z"  "26"

---

    Code
      weave(letters, ".")
    Output
       [1] "a" "." "b" "." "c" "." "d" "." "e" "." "f" "." "g" "." "h" "." "i" "." "j"
      [20] "." "k" "." "l" "." "m" "." "n" "." "o" "." "p" "." "q" "." "r" "." "s" "."
      [39] "t" "." "u" "." "v" "." "w" "." "x" "." "y" "." "z"

---

    Code
      weave(1:5, 6:9)
    Output
      [1] 1 6 2 7 3 8 4 9 5

---

    Code
      weave(list(1, factor("G"), TRUE), list("k", "k", "l"))
    Output
      [[1]]
      [1] 1
      
      [[2]]
      [1] "k"
      
      [[3]]
      [1] G
      Levels: G
      
      [[4]]
      [1] "k"
      
      [[5]]
      [1] TRUE
      
      [[6]]
      [1] "l"
      

