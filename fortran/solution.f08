! 5 = keyboard, * = any kind of data you want, baby
PROGRAM ceaser
    implicit none

    INTERFACE
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
    PRINT *, "Please enter a string with less than 100 characters."
    READ (*, '(A)'), str
    PRINT *, "Please enter your (integer) encryption key."
    READ (*, *), key
    encrypted = encrypt(str, key)
    PRINT *, encrypted
    decrypted = decrypt(encrypted, key)
    PRINT *, decrypted
END PROGRAM ceaser

FUNCTION encrypt(string, key) RESULT(encrypted)
    implicit none

    character(100) :: string
    character(100) encrypted
    integer        :: key

    integer        :: i

    DO i = 0,LEN_TRIM(string)
    END DO
    encrypted = string
    RETURN
END FUNCTION encrypt

FUNCTION decrypt(string, key) RESULT(decrypted)
    implicit none
    character(100) :: decrypted
    integer, intent(in) :: key
    character(100), intent(in) :: string

    integer        :: i
    DO i = 0,LEN_TRIM(string)
    END DO
    decrypted = string
    RETURN
END FUNCTION decrypt
