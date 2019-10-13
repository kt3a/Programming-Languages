      PROGRAM MAIN
      PARAMETER (MAXSIZ=99)
      REAL A(MAXSIZ)
      READ *,K
      IF (K.LE.0 .OR. K.GT.MAXSIZ) STOP
      READ *, (A(I),I=1,K)
      PRINT *, (A(I),I=1,K)
      PRINT *, 'SUM=',VSUM(A,K)
      GOTO 100
      END
C
      FUNCTION VSUM(V,N)
      REAL V(N)
      DO 200 I=1,N
200   VSUM = VSUM+V(I)
      RETURN
      END
