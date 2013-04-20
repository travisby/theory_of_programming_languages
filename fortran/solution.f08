! 5 = keyboard, * = any kind of data you want, baby
PROGRAM ceaser
    implicit none

    interface
        FUNCTION encrypt(string, key)
            character(100) :: encrypt
            integer, intent(in) :: key
            character(100), intent(in) :: string
        END FUNCTION encrypt
        FUNCTION decrypt(string, key)
            character(100) :: decrypt
            integer, intent(in) :: key
            character(100), intent(in) :: string
        END FUNCTION decrypt
    END INTERFACE


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
END PROGRAM ceaser

FUNCTION encrypt(string, key) RESULT(encrypted)
    implicit none

    character(100) :: string
    character(100) encrypted
    integer        :: key
    encrypted = string
    return
END FUNCTION encrypt

FUNCTION decrypt(string, key) RESULT(decrypted)

    implicit none
    character(100) :: decrypted
    integer, intent(in) :: key
    character(100), intent(in) :: string
    decrypted = string
    return
END FUNCTION decrypt

