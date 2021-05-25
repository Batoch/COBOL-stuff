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

       1 pla-nbfois.
           2 LINE 5 COL 8 VALUE 'Combien de fois ? '.
           2 PIC 9(2) TO c REQUIRED.
          
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
           2 PIC 9(2) TO a REQUIRED.
           2 LINE 8 COL 8 VALUE 'Quel est la deuxieme valeur ? '.
           2 PIC 9(2) TO b REQUIRED.
       
      *PROCEDURE
       PROCEDURE DIVISION.
       MOVE 2 TO a.
       MOVE 2 TO b.
       DISPLAY pla-nbfois.
       ACCEPT pla-nbfois.

       PERFORM VARYING i FROM 0 BY 1 UNTIL i > c
           DISPLAY pla-hello
           ADD 1 TO a
           ADD 1 TO b
           MOVE i TO a
       END-PERFORM.

       DISPLAY pla-end.

       STOP RUN.
