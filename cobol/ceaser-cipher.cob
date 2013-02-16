       IDENTIFICATION DIVISION.
       PROGRAM-ID. CEASER-CIPHER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 User-String  PIC A(50).
       PROCEDURE DIVISION.
           DISPLAY "Enter string: " WITH NO ADVANCING.
           ACCEPT User-String
           DISPLAY  "Your Input String = ", User-String
           STOP RUN.
