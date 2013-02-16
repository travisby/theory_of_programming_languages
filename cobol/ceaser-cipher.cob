       IDENTIFICATION DIVISION.
       PROGRAM-ID. CEASER-CIPHER.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 User-String  PIC A(50).
       01 Converted-String  PIC A(50).
       PROCEDURE DIVISION.
           ACCEPT User-String FROM ARGUMENT-VALUE
           DISPLAY  " = ", FUNCTION LOWER-CASE( User-String )

           STOP RUN.
