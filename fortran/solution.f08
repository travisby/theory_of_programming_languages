! 5 = keyboard, * = any kind of data you want, baby
PROGRAM ceaser
    implicit none
    INTERFACE
        FUNCTION encrypt(string, key)
            integer, intent(in) :: key
            character(*), intent(in) :: string
            character(LEN=LEN_TRIM(string)) ::  encrypt
        END FUNCTION encrypt
        FUNCTION decrypt(string, key)
            integer, intent(in) :: key
            character(*), intent(in) :: string
            character(LEN=LEN_TRIM(string)) ::  decrypt
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
    encrypted = encrypt(TRIM(str), key)
    PRINT *, encrypted
    decrypted = decrypt(encrypted, key)
    PRINT *, decrypted
END PROGRAM ceaser

FUNCTION encrypt(string, key) RESULT(encrypted)
    implicit none

    character(LEN=*) :: string
    character(LEN=LEN_TRIM(string)) :: encrypted
    integer          :: key

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
        ourCharNum = ICHAR(ourChar)
        myFuckingBool = ((ourCharNum .GE. lowerA) .AND.  (ourCharNum .LE. lowerZ))
        myOtherFuckingBool = ((ourCharNum .GE. upperA) .AND.  (ourCharNum .LE. upperZ))
        IF (myFuckingBool) THEN
            ourChar = CHAR(lowerA + MOD(ourCharNum - lowerA + key, 26))
        ELSE IF (myOtherFuckingBool) THEN
            ourChar = CHAR(upperA + MOD(ourCharNum - upperA + key, 26))
        END IF
        encrypted(i:i) = ourChar
    END DO
        encrypted = TRIM(encrypted)
    RETURN
END FUNCTION encrypt

FUNCTION decrypt(string, key) RESULT(decrypted)
    implicit none
    INTERFACE
        FUNCTION encrypt(string, key)
            integer, intent(in) :: key
            character(*), intent(in) :: string
            character(LEN=LEN_TRIM(string)) ::  encrypt
        END FUNCTION encrypt
    END INTERFACE
    character(100) :: decrypted
    integer, intent(in) :: key
    character(100), intent(in) :: string

    integer        :: i
    decrypted = encrypt(string, -key)
END FUNCTION decrypt
