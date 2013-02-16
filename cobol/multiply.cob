       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLIER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1     PIC 99      VALUE   ZEROS.
       01 Num2     PIC 99      VALUE   ZEROS.
       01 Result   PIC 9999    VALUE   ZEROS.
       PROCEDURE DIVISION.
           DISPLAY "Enter first number (2 digit) :" WITH NO ADVANCING.
           ACCEPT Num1.
           DISPLAY "Enter second number (2 digit) :" WITH NO ADVANCING.
           ACCEPT Num2
           MULTIPLY Num1 BY Num2 GIVING Result.
           DISPLAY "Result is = ", Result.
           STOP RUN.
