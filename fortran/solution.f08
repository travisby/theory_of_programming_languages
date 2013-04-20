! 5 = keyboard, * = any kind of data you want, baby
Program ceaser
    implicit none

    INTERFACE
        function encrypt(string, key)
            character(100) :: encrypt
            integer, intent(in) :: key
            character(100), intent(in) :: string
        end function encrypt
        function decrypt(string, key)
            character(100) :: decrypt
            integer, intent(in) :: key
            character(100), intent(in) :: string
        end function decrypt
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
End Program ceaser

function encrypt(string, key) result(encrypted)
    implicit none

    character(100) :: string
    character(100) encrypted
    integer        :: key
    encrypted = string
    return
end function encrypt

function decrypt(string, key) result(decrypted)

    implicit none
    character(100) :: decrypted
    integer, intent(in) :: key
    character(100), intent(in) :: string
    decrypted = string
    return
end function decrypt

