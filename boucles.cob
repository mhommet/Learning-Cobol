       IDENTIFICATION DIVISION.
       PROGRAM-ID. Boucles.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOMBRE        PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Tapez un nombre (0 pour arrêter) :"
           ACCEPT NOMBRE.

           PERFORM UNTIL NOMBRE = 0
               DISPLAY "Vous avez tapé : " NOMBRE
               DISPLAY "Encore un ? (0 pour arrêter) :"
               ACCEPT NOMBRE
           END-PERFORM.

           DISPLAY "Fin du programme.".
           STOP RUN.

