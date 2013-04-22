(DEFUN myEncrypt (str key)
       "This function will encrypt str with a ceaser cipher, using key as the shift width"
       (str)
)
(DEFUN myDecrypt (str key)
       "This function will decrypt str with a ceaser cipher, using key as the shift width"
       (myEncrypt(str (- 26 key)))
)
(DEFUN solve (str)
       "This function will decrypt str with a ceaser cipher, returning all possible combinations"
       (map possibleKeys (lambda (key) (decrypt str key)))
)

(DEFUN possibleKeys ()
       "Returns [0..25]"
       (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25)
)
