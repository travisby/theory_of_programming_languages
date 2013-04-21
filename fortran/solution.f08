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
    PRINT *, TRIM(encrypted)
    decrypted = decrypt(encrypted, key)
    PRINT *, TRIM(decrypted)
END PROGRAM ceaser

FUNCTION encrypt(string, key) RESULT(encrypted)
    implicit none

    character(100) :: string
    character(100) encrypted
    integer        :: key

    integer        :: i
    character      :: ourChar
    integer        :: lowerA
    integer        :: lowerZ
    integer        :: upperA
    integer        :: upperZ
    integer        :: ourCharNum
    logical        :: myFuckingBool
    logical        :: myOtherFuckingBool

    lowerA = IACHAR('a')
    lowerZ = IACHAR('z')
    upperA = IACHAR('A')
    upperZ = IACHAR('Z')

    DO i = 0,LEN_TRIM(string)
        ourChar = string(i:i)
        ourCharNum = IACHAR(ourChar)
        myFuckingBool = ((ourCharNum .GE. lowerA) .AND.  (ourCharNum .LE. lowerZ))
        myOtherFuckingBool = ((ourCharNum .GE. upperA) .AND.  (ourCharNum .LE. upperZ))
        IF (myFuckingBool) THEN
            ourChar = ACHAR(lowerA + MOD(ourCharNum - lowerA + key, 26))
        ELSE IF (myOtherFuckingBool) THEN
            ourChar = ACHAR(upperA + MOD(ourCharNum - upperA + key, 26))
        END IF
        encrypted(i:i) = ourChar
    END DO
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
