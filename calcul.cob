       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculsCobol.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BUYING-PRICE      PIC S9(9)V99.
       01 QUANTITY          PIC S9(9)V99.
       01 VARIATION         PIC S9(9)V99.
       01 SELL-PRICE        PIC S9(9)V99.
       01 GAINS             PIC S9(9)V99.
       01 DISPLAY-GAINS     PIC +ZZ,ZZZ,ZZ9.99.
       01 DISPLAY-VARIATION PIC +ZZZ.99.

       PROCEDURE DIVISION.
           DISPLAY "Buying price".
           ACCEPT BUYING-PRICE.
           DISPLAY "Quantity".
           ACCEPT QUANTITY.
           DISPLAY "Selling price".
           ACCEPT SELL-PRICE.

           COMPUTE GAINS = (SELL-PRICE - BUYING-PRICE) * QUANTITY
           COMPUTE VARIATION = (SELL-PRICE - BUYING-PRICE)
      -                        / BUYING-PRICE * 100.

           MOVE GAINS TO DISPLAY-GAINS.
           MOVE VARIATION TO DISPLAY-VARIATION.

           IF VARIATION > 0
               DISPLAY "The variation is +" DISPLAY-VARIATION " %"
           ELSE
               DISPLAY "The variation is +" DISPLAY-VARIATION " %"
           END-IF.

           DISPLAY "You gained" DISPLAY-GAINS " €".
           STOP RUN.
