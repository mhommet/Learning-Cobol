       IDENTIFICATION DIVISION.
       PROGRAM-ID. Paragraphes.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PRICEHT           PIC S9(5)V99.
       01 TAUX              PIC S9(2)V99.
       01 TVA               PIC S9(5)V99.
       01 PRICETTC          PIC S9(6)V99.
       01 DISPLAY-TVA       PIC +ZZZZ9.99.
       01 DISPLAY-PRICETTC  PIC +ZZZZ9.99.

       PROCEDURE DIVISION.
           PERFORM SAISIR-DONNEES
           PERFORM CALCULER-TVA
           PERFORM AFFICHER-RESULTATS
           STOP RUN.

       SAISIR-DONNEES.
           DISPLAY "Quel est le prix HT ?".
           ACCEPT PRICEHT.
           DISPLAY "Quel est le taux de TVA ?".
           ACCEPT TAUX.

       CALCULER-TVA.
           COMPUTE TVA = PRICEHT * TAUX / 100.
           COMPUTE PRICETTC = PRICEHT + TVA.
           MOVE TVA TO DISPLAY-TVA.
           MOVE PRICETTC TO DISPLAY-PRICETTC.

       AFFICHER-RESULTATS.
           DISPLAY "Le montant de la TVA est de " DISPLAY-TVA.
           DISPLAY "Le prix TTC est de " DISPLAY-PRICETTC.
