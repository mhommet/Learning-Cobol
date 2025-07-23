       IDENTIFICATION DIVISION.
       PROGRAM-ID. HelloCobol.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MONTANT          PIC 9(5)V99 VALUE 1000.00.
       01 TAUX             PIC 9(2)V99 VALUE 15.75.
       01 INTERET          PIC 9(5)V99.

       PROCEDURE DIVISION.
           COMPUTE INTERET = MONTANT * TAUX / 100.
           DISPLAY "Intéret calculé : " INTERET.

           STOP RUN.
