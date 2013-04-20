! 5 = keyboard, * = any kind of data you want, baby
Program io
    implicit none
    character(100)  :: str
    integer         :: key
    character(100)  :: encrypted
    character(100)  :: decrypted
    print *, "Please enter a string with less than 100 characters."
    read (*, '(A)'), str
    print *, "Please enter your (integer) encryption key."
    read (*, *), key
    encrypted = encrypt(str, key)
    print *, encrypted
    decrypted = decrypt(encrypted, key)
    print *, decrypted
End Program io
