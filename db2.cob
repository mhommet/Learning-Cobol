       IDENTIFICATION DIVISION.
       PROGRAM-ID. LIRECOMPTE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       EXEC SQL INCLUDE SQLCA END-EXEC.  *> Gérer les retours DB2

       01 ID-COMPTE     PIC 9(5).
       01 SOLDE-COMPTE  PIC S9(7)V99.
       01 DISPLAY-SOLDE PIC +ZZZ,ZZ9.99.

       PROCEDURE DIVISION.
           DISPLAY "Entrez l'ID du compte :"
           ACCEPT ID-COMPTE.

           EXEC SQL
               SELECT SOLDE
               INTO :SOLDE-COMPTE
               FROM COMPTES
               WHERE ID_COMPTE = :ID-COMPTE
           END-EXEC.

           IF SQLCODE = 0
               MOVE SOLDE-COMPTE TO DISPLAY-SOLDE
               DISPLAY "Solde du compte : " DISPLAY-SOLDE
           ELSE
               DISPLAY "Compte introuvable ou erreur DB2."
           END-IF.

           STOP RUN.
