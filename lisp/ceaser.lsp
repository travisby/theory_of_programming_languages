(DEFUN alphabets () (list (*abcdefghijklmnopqrstuvwxyz*) (*bcdefghijklmnopqrstuvwxyza*) (*cdefghijklmnopqrstuvwxyzab*) (*defghijklmnopqrstuvwxyzabc*) (*efghijklmnopqrstuvwxyzabcd*) (*fghijklmnopqrstuvwxyzabcde*) (*ghijklmnopqrstuvwxyzabcdef*) (*hijklmnopqrstuvwxyzabcdefg*) (*ijklmnopqrstuvwxyzabcdefgh*) (*jklmnopqrstuvwxyzabcdefghi*) (*klmnopqrstuvwxyzabcdefghij*) (*lmnopqrstuvwxyzabcdefghijk*) (*mnopqrstuvwxyzabcdefghijkl*) (*nopqrstuvwxyzabcdefghijklm*) (*opqrstuvwxyzabcdefghijklmn*) (*pqrstuvwxyzabcdefghijklmno*) (*qrstuvwxyzabcdefghijklmnop*) (*rstuvwxyzabcdefghijklmnopq*) (*stuvwxyzabcdefghijklmnopqr*) (*tuvwxyzabcdefghijklmnopqrs*) (*uvwxyzabcdefghijklmnopqrst*) (*vwxyzabcdefghijklmnopqrstu*) (*wxyzabcdefghijklmnopqrstuv*) (*xyzabcdefghijklmnopqrstuvw*) (*yzabcdefghijklmnopqrstuvwx*) (*zabcdefghijklmnopqrstuvwxy*)))

(DEFUN myEncrypt (str key)
       "This function will encrypt str with a ceaser cipher, using key as the shift width"
       (map str (lambda(myChar) replaceOneShifted(str myChar key)))
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
       (list 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25)
)

(DEFUN getPositionInNormalAlphabet (myChar)
       "Returns the position of a character in the normal alphabet.  EX: getPos...('a') = 0"
       (position myChar (nth 0 alphabets))
)
;Note: We do not take > 25 into account!
(DEFUN findEquivCharacter (myChar key)
       "Returns the character shifted key positions"
       (nth getPositionInNormalAlphabet(myChar) (nth key alphabets))
)
(DEFUN replaceOneShifted(str myChar key)
       "Returns the string with myChar replaced with itself shifted key away"
       (replace myChar findEquivChar(myChar key) str)
)
