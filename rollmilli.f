      PROGRAM ROLL
C Simulate the roll of a die
C Written by mike slattery - sep 1997
C Modified, mcs - oct 2018
      INTEGER COUNT
C Use the System clock (in milliseconds) to seed the
C random number generator.
      CALL SYSTEM_CLOCK(KOUNT)
      X = RAND(KOUNT)
C Now roll the die 10 times...
      DO 5 I=1,10
      X = RAND(0)
C Convert our random number between 0.0 and 1.0 to
C an integer between 1 and 6
      COUNT = 6*X+1.0
      PRINT *, COUNT
5     CONTINUE
      END
