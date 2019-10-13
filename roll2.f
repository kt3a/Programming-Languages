      PROGRAMROLL
C Simulate the roll of a die
C Written by mike slattery - sep 1997
      INTEGERTIME,COUNT
      X=RAND(TIME())
      DO5I=1,10
      X=RAND(0)
      COUNT=6*X+1.0
      PRINT*,COUNT
5     CONTINUE
      END
