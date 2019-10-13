C FORTRAN DEMO PROGRAM
C PRINT FIBONACCI NUMBERS LESS THAN 200



      PROGRAM FIBO
      I = 1
      J = 1
5     PRINT *,I
      K = I + J
      I = J
      J = K
      IF (I.LT. 200) GOTO 5
      END
