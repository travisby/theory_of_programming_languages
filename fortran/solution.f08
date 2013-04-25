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
        FUNCTION solve(string)
            character(*), intent(in) :: string
            character(LEN=LEN_TRIM(string)) ::  solve
        END FUNCTION solve
    END INTERFACE

    character(1000)  :: str
    integer         :: key
    character(100)  :: strKey
    character(100)  :: func
    character(1000)  :: converted
    CALL getarg(1, func)
    CALL getarg(2, str)
    IF (func .eq. "encrypt") THEN
        CALL getarg(3, strKey)
        Read( strKey, '(i10)' ) key
        PRINT *, encrypt(TRIM(str), key) 
    ELSE IF (func .eq. "decrypt") THEN
        CALL getarg(3, strKey)
        Read( strKey, '(i10)' ) key
        PRINT *, decrypt(TRIM(str), key) 
    ELSE
        PRINT *, solve(TRIM(str)) 
    END IF
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

    ! Possible performance boost: move these out and treat them as constants
    lowerA = IACHAR('a')
    lowerZ = IACHAR('z')
    upperA = IACHAR('A')
    upperZ = IACHAR('Z')

    IF (key < 0) THEN
        key = key * (0 - 1)
    END IF
    DO i = 0,LEN_TRIM(string)
        ourChar = string(i:i)
        ourCharNum = ICHAR(ourChar)
        ! There is a line length issue with fortran... and putting these two on
        ! the same line was not a good time.
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
    character(*), intent(in) :: string
    character(LEN=LEN_TRIM(string)) :: decrypted
    integer, intent(in) :: key

    integer        :: i
    decrypted = encrypt(string, 26 - key)
END FUNCTION decrypt

FUNCTION solve(string) RESULT(solved)
    implicit none
    INTERFACE
        FUNCTION decrypt(string, key)
            integer, intent(in) :: key
            character(*), intent(in) :: string
            character(LEN=LEN_TRIM(string)) ::  decrypt
        END FUNCTION decrypt
    END INTERFACE
    character(*), intent(in) :: string
    character(LEN=LEN_TRIM(string)) ::  solved
    integer        :: i

    DO i = 1,26
        solved = decrypt(string, i)
        PRINT *, TRIM(solved)
    END DO
    solved = ""
END FUNCTION solve
