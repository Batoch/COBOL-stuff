      *IDENTIFICATION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Plusmoins.
       
      *DATA
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 seed PIC 9(8) VALUE 0.
       77 nbatrouver PIC 99.
       77 nbentre PIC 99.
       77 lineend PIC 99.
       77 colend PIC 99.
       77 i PIC 99.

       SCREEN SECTION.
       1 pla-jeu.
           2 LINE 7 COL 5 VALUE 'Entrer le nombre: '.
           2 PIC 99 TO nbentre REQUIRED.

       1 pla-plus.
           2 LINE 4 COL 5 VALUE 'Mauvais nombre, plus petit que '.
           2 PIC 99 FROM nbentre.
       
       1 pla-moins.
           2 LINE 5 COL 5 VALUE 'Mauvais nombre, plus grand que '.
           2 PIC 99 FROM nbentre.

       1 pla-fin.
           2 LINE lineend COL colend VALUE 'BRAVO! C''etait bien '.
           2 PIC 99 FROM nbatrouver.
           
       1 pla-clear.
           2 BLANK SCREEN.

       PROCEDURE DIVISION.
       MOVE FUNCTION CURRENT-DATE(9:8) TO seed.
       COMPUTE nbatrouver = FUNCTION RANDOM (seed) * 100.
       MOVE 4 TO lineend.
       MOVE 5 TO colend.

       PERFORM UNTIL nbatrouver = nbentre
           DISPLAY pla-jeu
           ACCEPT pla-jeu
           IF nbentre > nbatrouver THEN
               DISPLAY pla-plus
           ELSE
               DISPLAY pla-moins
           END-IF
       END-PERFORM.

       DISPLAY pla-clear.
       DISPLAY pla-fin

       STOP RUN.
