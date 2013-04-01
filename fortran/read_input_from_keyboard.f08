! 5 = keyboard, * = any kind of data you want, baby
Program io
    implicit none
    character(100)  :: str
    integer         :: key
    print *, "Please enter a string with less than 100 characters."
    read (*, '(A)'), str
    print *, "Please enter your (integer) encryption key."
    read (*, *), key
    print *, str
    print *, key
End Program io
