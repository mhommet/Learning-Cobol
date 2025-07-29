       IDENTIFICATION DIVISION.
       PROGRAM-ID. structure.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CLIENT.
           05 NOM      PIC A(30).
           05 PRENOM   PIC A(30).
           05 AGE      PIC 99.
       
       01 CLIENT2.
           05 NOM2      PIC A(30).
           05 PRENOM2   PIC A(30).
           05 AGE2      PIC 99.
       
       PROCEDURE DIVISION.
           DISPLAY "Quel est ton prénom ?"
           ACCEPT PRENOM
           DISPLAY "Et ton nom ?"
           ACCEPT NOM
           DISPLAY "Et ton age ?"
           ACCEPT AGE

           DISPLAY "Tu est : " PRENOM " " NOM " (" AGE " ans)"

           MOVE CLIENT TO CLIENT2
           
           STOP RUN.
