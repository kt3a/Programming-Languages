      PROGRAM MAIN
      PARAMETER (MAXSIZ=99)
c get user input to determine the size of ur list
      REAL A (MAXSIZ)
c create a list called A
100   READ *,K          
c get the list user input as the second line of input               
c k is an integer
      IF (K.LE.0 .OR. K.GT.MAXSIZ) STOP           
      READ *, (A(I),I=1,K)
      PRINT *, (A(I),I=1,K)
      PRINT *,'SUM=',VSUM(A,K)
      GOTO 100
      END
C
      FUNCTION VSUM(V,N)
      REAL V(N)
      VSUM=0.0     
c when you give it 0, the program will stop -- 0 is the size of the list
c so it becomes an empty list
      DO 200 I=1,N
200   VSUM = VSUM+V(I)
      RETURN
      END
