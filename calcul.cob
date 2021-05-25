      *IDENTIFICATION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Manipulation.

      *DATA
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 a PIC 99.
       77 b PIC 99.
       77 c PIC 99.
      * Bool qui passe a true quand 0<i<10
       77 i PIC 99.
       88 boucleafaire VALUE 0 THRU 10.

      *SCREEN
       SCREEN SECTION.
       1 pla-hello.
           2 LINE a COL b VALUE ' + '.
          
       1 pla-end.
           2 LINE 2 COL 2 VALUE 'FINI'.

       1 pla-res.
           2 BLANK SCREEN.
           2 LINE 5 COL 10.
           2 PIC 99 FROM a.
           2 LINE 5 COL 12 VALUE ' + '.
           2 PIC 99 FROM b.
           2 COL 18 VALUE ' = '.
           2 PIC 99 FROM c.

       1 pls-val.
           2 LINE 7 COL 8 VALUE 'Quel est la premiere valeur ? '.
           2 PIC S9(2) TO a REQUIRED.
           2 LINE 8 COL 8 VALUE 'Quel est la deuxieme valeur ? '.
           2 PIC x(2) TO b REQUIRED.
       
      *PROCEDURE
       PROCEDURE DIVISION.
       MOVE 2 TO a.
       MOVE 2 TO b.
       MOVE 0 TO i.

       dispplus1.
           DISPLAY pla-hello.
           ADD 1 TO a.
           ADD 1 TO b.
           ADD 1 TO i.

       IF boucleafaire THEN
           PERFORM dispplus1
       END-IF.


       DISPLAY pla-end.

       STOP RUN.
