Assuming Fortran 2008 spec


String Functions
================
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
TRIM(STRING)               Returns the character string STRING without
                           trailing blanks.

Array Functions
===============
SIZE(ARRAY, dim) is a function which returns the number of elements in an array ARRAY, if DIM is not given, and the number of elements in the relevant dimension if DIM is included.


-- Compile to a file called "run"


I finished in around 6 hours in the middle of Game Day
