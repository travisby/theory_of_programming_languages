Assuming Fortran 2008 spec


String Functions
================
. Character string functions:

The functions below perform operations from and to character strings. Please note that ACHAR works with the standard ASCII character set while CHAR works with the representation in the computer you are using.
ACHAR(I)          Returns the ASCII character which has number I
ADJUSTL(STRING)   Adjusts to the left
ADJUSTR(STRING)   Adjusts to the right
CHAR(I, kind)     Returns the character that has the number I
IACHAR(C)         Returns the ASCII number of the character C
ICHAR(C)          Returns the number of character C

INDEX(STRING, SUBSTRING, back)  Returns the starting position for a
    substring within  a  string.  If BACK  is  true then you get the
    last starting position, in the  other case, the first one.

LEN_TRIM(STRING)  Returns the length of the string without the possibly 
    trailing blanks.

       LGE(STRING_A, STRING_B)
       LGT(STRING-A, STRING_B)
       LLE(STRING_A, STRING_B)
       LLT(STRING_A, STRING_B)
The above routines compare two strings using sorting according to ASCII. If a string is shorter than the other, blanks are added at the end of the short string. If a string contains a character outside the ASCII character set, the result is implementation-dependent.
REPEAT(STRING, NCOPIES)    Concatenates a character string NCOPIES
                           times with itself.
SCAN(STRING, SET, back)    Returns the position of the first occurrence
                           of any character in the string SET in the string
                           STRING. If BACK is true, you will get
                           the rightmost such character.
TRIM(STRING)               Returns the character string STRING without
                           trailing blanks.
VERIFY(STRING, SET, back)  Returns the position of the first character
                           in STRING which is not in SET.  If BACK
                           is TRUE, you get the last one!
                           The result is zero if all characters are
                           included!
