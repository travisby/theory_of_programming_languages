       IDENTIFICATION DIVISION.
       PROGRAM-ID. CEASER-CIPHER.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 User-String  PIC A(50).
       01 Converted-String  PIC A(50).
       01 Alphabet-Strings.
           10 EL0 PIC A(26) VALUE IS "abcdefghijklmnopqrstuvwxyz".
           10 EL1 PIC A(26) VALUE IS "bcdefghijklmnopqrstuvwxyza".
           10 EL2 PIC A(26) VALUE IS "cdefghijklmnopqrstuvwxyzab".
           10 EL3 PIC A(26) VALUE IS "defghijklmnopqrstuvwxyzabc".
           10 EL4 PIC A(26) VALUE IS "efghijklmnopqrstuvwxyzabcd".
           10 EL5 PIC A(26) VALUE IS "fghijklmnopqrstuvwxyzabcde".
           10 EL6 PIC A(26) VALUE IS "ghijklmnopqrstuvwxyzabcdef".
           10 EL7 PIC A(26) VALUE IS "hijklmnopqrstuvwxyzabcdefg".
           10 EL8 PIC A(26) VALUE IS "ijklmnopqrstuvwxyzabcdefgh".
           10 EL9 PIC A(26) VALUE IS "jklmnopqrstuvwxyzabcdefghi".
           10 EL10 PIC A(26) VALUE IS "klmnopqrstuvwxyzabcdefghij".
           10 EL11 PIC A(26) VALUE IS "lmnopqrstuvwxyzabcdefghijk".
           10 EL12 PIC A(26) VALUE IS "mnopqrstuvwxyzabcdefghijkl".
           10 EL13 PIC A(26) VALUE IS "nopqrstuvwxyzabcdefghijklm".
           10 EL14 PIC A(26) VALUE IS "opqrstuvwxyzabcdefghijklmn".
           10 EL15 PIC A(26) VALUE IS "pqrstuvwxyzabcdefghijklmno".
           10 EL16 PIC A(26) VALUE IS "qrstuvwxyzabcdefghijklmnop".
           10 EL17 PIC A(26) VALUE IS "rstuvwxyzabcdefghijklmnopq".
           10 EL18 PIC A(26) VALUE IS "stuvwxyzabcdefghijklmnopqr".
           10 EL19 PIC A(26) VALUE IS "tuvwxyzabcdefghijklmnopqrs".
           10 EL20 PIC A(26) VALUE IS "uvwxyzabcdefghijklmnopqrst".
           10 EL21 PIC A(26) VALUE IS "vwxyzabcdefghijklmnopqrstu".
           10 EL22 PIC A(26) VALUE IS "wxyzabcdefghijklmnopqrstuv".
           10 EL23 PIC A(26) VALUE IS "xyzabcdefghijklmnopqrstuvw".
           10 EL24 PIC A(26) VALUE IS "yzabcdefghijklmnopqrstuvwx".
           10 EL25 PIC A(26) VALUE IS "zabcdefghijklmnopqrstuvwxy".
       PROCEDURE DIVISION.
           ACCEPT User-String FROM ARGUMENT-VALUE
           DISPLAY  " = ", FUNCTION LOWER-CASE( User-String )

           STOP RUN.
