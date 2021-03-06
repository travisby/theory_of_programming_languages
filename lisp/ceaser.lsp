;collect (replaceOneShifted str myChar key)
(DEFUN myEncrypt (str key)
       "This function will encrypt str with a ceaser cipher, using key as the shift width"
       (map
         'string #'
         (lambda(myChar)
           (findEquivChar myChar (abs (mod key 26)))
         )
         str
       )
)
(DEFUN myDecrypt (str key)
       "This function will decrypt str with a ceaser cipher, using key as the shift width"
       (myEncrypt
         str
         (- 26 key)
       )
)
(DEFUN solve (str)
       "This function will decrypt str with a ceaser cipher, returning all possible combinations"
       (map
         nil
         (lambda (key) (write-line (string (myDecrypt str key))))
         possibleKeys
       )
)
(setf possibleKeys
       (list 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25)
)

(DEFUN getPositionInNormalAlphabet (myChar)
       "Returns the position of a character in the normal alphabet.  EX: getPos...('a') = 0"
       (position myChar (nth 0 alphabets))
)
;Note: We do not take > 25 into account!
(DEFUN findEquivChar (myChar key)
       "Returns the character shifted key positions"
       (if
         (position myChar (nth 0 alphabets))
       (char
         (nth
           key
           alphabets
         )
         (position myChar (nth 0 alphabets))
       )
       myChar
       )
)
(DEFUN replaceOneShifted (str myChar key)
       "Returns the string with myChar replaced with itself shifted key away"
         (substitute
           (findEquivChar myChar key)
           myChar
           str
         )
)
(setf alphabets ( list (string "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") (string "bcdefghijklmnopqrstuvwxyzaBCDEFGHIJKLMNOPQRSTUVWXYZA") (string "cdefghijklmnopqrstuvwxyzabCDEFGHIJKLMNOPQRSTUVWXYZAB") (string "defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC") (string "efghijklmnopqrstuvwxyzabcdEFGHIJKLMNOPQRSTUVWXYZABCD") (string "fghijklmnopqrstuvwxyzabcdeFGHIJKLMNOPQRSTUVWXYZABCDE") (string "ghijklmnopqrstuvwxyzabcdefGHIJKLMNOPQRSTUVWXYZABCDEF") (string "hijklmnopqrstuvwxyzabcdefgHIJKLMNOPQRSTUVWXYZABCDEFG") (string "ijklmnopqrstuvwxyzabcdefghIJKLMNOPQRSTUVWXYZABCDEFGH") (string "jklmnopqrstuvwxyzabcdefghiJKLMNOPQRSTUVWXYZABCDEFGHI") (string "klmnopqrstuvwxyzabcdefghijKLMNOPQRSTUVWXYZABCDEFGHIJ") (string "lmnopqrstuvwxyzabcdefghijkLMNOPQRSTUVWXYZABCDEFGHIJK") (string "mnopqrstuvwxyzabcdefghijklMNOPQRSTUVWXYZABCDEFGHIJKL") (string "nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM") (string "opqrstuvwxyzabcdefghijklmnOPQRSTUVWXYZABCDEFGHIJKLMN") (string "pqrstuvwxyzabcdefghijklmnoPQRSTUVWXYZABCDEFGHIJKLMNO") (string "qrstuvwxyzabcdefghijklmnopQRSTUVWXYZABCDEFGHIJKLMNOP") (string "rstuvwxyzabcdefghijklmnopqRSTUVWXYZABCDEFGHIJKLMNOPQ") (string "stuvwxyzabcdefghijklmnopqrSTUVWXYZABCDEFGHIJKLMNOPQR") (string "tuvwxyzabcdefghijklmnopqrsTUVWXYZABCDEFGHIJKLMNOPQRS") (string "uvwxyzabcdefghijklmnopqrstUVWXYZABCDEFGHIJKLMNOPQRST") (string "vwxyzabcdefghijklmnopqrstuVWXYZABCDEFGHIJKLMNOPQRSTU") (string "wxyzabcdefghijklmnopqrstuvWXYZABCDEFGHIJKLMNOPQRSTUV") (string "xyzabcdefghijklmnopqrstuvwXYZABCDEFGHIJKLMNOPQRSTUVW") (string "yzabcdefghijklmnopqrstuvwxYZABCDEFGHIJKLMNOPQRSTUVWX") (string "zabcdefghijklmnopqrstuvwxyZABCDEFGHIJKLMNOPQRSTUVWXY")))
