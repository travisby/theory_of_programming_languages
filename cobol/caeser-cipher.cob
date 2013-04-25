       IDENTIFICATION DIVISION.
       PROGRAM-ID. CEASER-CIPHER.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 func         PIC A(15).
       01 User-String  PIC A(50).
       01 EncKey       PIC 99.
       01 Temp         PIC A(50).
       PROCEDURE DIVISION.
           ACCEPT func FROM ARGUMENT-VALUE
           ACCEPT User-String FROM ARGUMENT-VALUE
           ACCEPT EncKey FROM ARGUMENT-VALUE
           SET User-String TO FUNCTION LOWER-CASE (User-String)
           SET func TO FUNCTION UPPER-CASE (func)
           CALL func USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp.
           STOP RUN.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENCRYPT.
       DATA DIVISION.
       LINKAGE SECTION.
       01 User-String  PIC A(50).
       01 EncKey       PIC 99.
       01 Temp         PIC A(50).
       PROCEDURE DIVISION USING User-String EncKey Temp.
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECRYPT.
       DATA DIVISION.
       LINKAGE SECTION.
       01 User-String  PIC A(50).
       01 EncKey       PIC 99.
       01 Temp         PIC A(50).
       PROCEDURE DIVISION USING User-String EncKey Temp.
           SUBTRACT EncKey FROM 26 GIVING EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. SOLVE.
       DATA DIVISION.
       LINKAGE SECTION.
       01 User-String  PIC A(50).
       01 EncKey       PIC 99.
       01 Temp         PIC A(50).
       PROCEDURE DIVISION USING User-String EncKey Temp.
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp
           DISPLAY Temp
           ADD 1 TO EncKey
           CALL 'MAKE-CIPHER' USING
           BY CONTENT User-String EncKey
           BY REFERENCE Temp

           EXIT PROGRAM.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAKE-CIPHER.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 Alpha.
           05 Alphabet-Strings.
               10 FILLER PIC A(26) VALUE "abcdefghijklmnopqrstuvwxyz".
               10 FILLER PIC A(26) VALUE "bcdefghijklmnopqrstuvwxyza".
               10 FILLER PIC A(26) VALUE "cdefghijklmnopqrstuvwxyzab".
               10 FILLER PIC A(26) VALUE "defghijklmnopqrstuvwxyzabc".
               10 FILLER PIC A(26) VALUE "efghijklmnopqrstuvwxyzabcd".
               10 FILLER PIC A(26) VALUE "fghijklmnopqrstuvwxyzabcde".
               10 FILLER PIC A(26) VALUE "ghijklmnopqrstuvwxyzabcdef".
               10 FILLER PIC A(26) VALUE "hijklmnopqrstuvwxyzabcdefg".
               10 FILLER PIC A(26) VALUE "ijklmnopqrstuvwxyzabcdefgh".
               10 FILLER PIC A(26) VALUE "jklmnopqrstuvwxyzabcdefghi".
               10 FILLER PIC A(26) VALUE "klmnopqrstuvwxyzabcdefghij".
               10 FILLER PIC A(26) VALUE "lmnopqrstuvwxyzabcdefghijk".
               10 FILLER PIC A(26) VALUE "mnopqrstuvwxyzabcdefghijkl".
               10 FILLER PIC A(26) VALUE "nopqrstuvwxyzabcdefghijklm".
               10 FILLER PIC A(26) VALUE "opqrstuvwxyzabcdefghijklmn".
               10 FILLER PIC A(26) VALUE "pqrstuvwxyzabcdefghijklmno".
               10 FILLER PIC A(26) VALUE "qrstuvwxyzabcdefghijklmnop".
               10 FILLER PIC A(26) VALUE "rstuvwxyzabcdefghijklmnopq".
               10 FILLER PIC A(26) VALUE "stuvwxyzabcdefghijklmnopqr".
               10 FILLER PIC A(26) VALUE "tuvwxyzabcdefghijklmnopqrs".
               10 FILLER PIC A(26) VALUE "uvwxyzabcdefghijklmnopqrst".
               10 FILLER PIC A(26) VALUE "vwxyzabcdefghijklmnopqrstu".
               10 FILLER PIC A(26) VALUE "wxyzabcdefghijklmnopqrstuv".
               10 FILLER PIC A(26) VALUE "xyzabcdefghijklmnopqrstuvw".
               10 FILLER PIC A(26) VALUE "yzabcdefghijklmnopqrstuvwx".
               10 FILLER PIC A(26) VALUE "zabcdefghijklmnopqrstuvwxy".
           05 FILLER REDEFINES Alphabet-Strings.
               10 Alpha-String OCCURS 26 TIMES PIC A(26).
       LINKAGE SECTION.
       01 User-String  PIC A(50).
       01 EncKey       PIC 99.
       01 Temp         PIC A(50).
       PROCEDURE DIVISION USING User-String EncKey Temp.
       SET EncKey TO FUNCTION ABS (EncKey)
       SET EncKey TO FUNCTION MOD (EncKey, 26)
       INSPECT User-String
           CONVERTING Alpha-String(1) TO Alpha-String(EncKey + 1)
           MOVE User-String TO Temp
           EXIT PROGRAM.
