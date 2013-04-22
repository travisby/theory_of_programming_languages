(DEFUN myEncrypt (str key)
       "This function will encrypt str with a ceaser cipher, using key as the shift width"
       (map
         'string #'
         (lambda(myChar) (replaceOneShifted str myChar key))
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
         'string #'
         (lambda (key) (decrypt str key))
         possibleKeys
       )
)
(DEFUN possibleKeys ()
       "Returns [0..25]"
       (list 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25)
)

(DEFUN getPositionInNormalAlphabet (myChar)
       "Returns the position of a character in the normal alphabet.  EX: getPos...('a') = 0"
       (position myChar (nth 0 alphabets))
)
;Note: We do not take > 25 into account!
(DEFUN findEquivCharacter (myChar key)
       "Returns the character shifted key positions"
       (char
         (nth
           key
           alphabet
         )
         myChar
       )
)
(DEFUN replaceOneShifted(str myChar key)
       "Returns the string with myChar replaced with itself shifted key away"
       (replace myChar findEquivChar(myChar key) str)
)
(DEFUN alphabets () ( list (string "abcdefghijklmnopqrstuvwxyz") (string "bcdefghijklmnopqrstuvwxyza") (string "cdefghijklmnopqrstuvwxyzab") (string "defghijklmnopqrstuvwxyzabc") (string "efghijklmnopqrstuvwxyzabcd") (string "fghijklmnopqrstuvwxyzabcde") (string "ghijklmnopqrstuvwxyzabcdef") (string "hijklmnopqrstuvwxyzabcdefg") (string "ijklmnopqrstuvwxyzabcdefgh") (string "jklmnopqrstuvwxyzabcdefghi") (string "klmnopqrstuvwxyzabcdefghij") (string "lmnopqrstuvwxyzabcdefghijk") (string "mnopqrstuvwxyzabcdefghijkl") (string "nopqrstuvwxyzabcdefghijklm") (string "opqrstuvwxyzabcdefghijklmn") (string "pqrstuvwxyzabcdefghijklmno") (string "qrstuvwxyzabcdefghijklmnop") (string "rstuvwxyzabcdefghijklmnopq") (string "stuvwxyzabcdefghijklmnopqr") (string "tuvwxyzabcdefghijklmnopqrs") (string "uvwxyzabcdefghijklmnopqrst") (string "vwxyzabcdefghijklmnopqrstu") (string "wxyzabcdefghijklmnopqrstuv") (string "xyzabcdefghijklmnopqrstuvw") (string "yzabcdefghijklmnopqrstuvwx") (string "zabcdefghijklmnopqrstuvwxy") ) )
