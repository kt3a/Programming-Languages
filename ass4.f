c katie tooher, assignment 4, 3 dimensional vectors
c objective: get two 3d vectors from the user then print out the two
c vectors and the angle between them
      PROGRAM FORTRAN
      REAL L(99)      
      REAL R(99)
C      REAL FIRST
C      REAL SECOND
C      REAL DOT
C      REAL MAG
C      REAL FINALA
C      REAL FRAC
      PRINT *,"TELL ME THE LENGTH OF YOUR VECTORS"
      READ *, N
      PRINT *,"FIRST VECTOR"
c write a looop here based on N that loops for the length of the vector
      READ *,(L(I),I=1,N)
      PRINT *,"NOW GIVE ME THE SECOND VECTOR"
      READ *,(R(I),I=1,N)
C      DOT = DOTPROD(L,R,N)
C      FIRST = LENN(L,N)
C      PRINT *, FIRST
C      SECOND = LENN(R,N)
C      MAG = FIRST + SECOND
C      FRAC = DOT/MAG
C      FINALA = ACOS(FRAC)
      PRINT *,"RADIANS: ",ANGLE(L,R,N) 
C      PRINT *, FINALAi
C      X = (180/3.14)*FINALA
C      PRINT *,"DEGREES: ",X
      END
C
      FUNCTION ANGLE(L,R,N)
      REAL L(N)
      REAL R(N)
      ANGLE = DOT(L,R,N) / ALEN(L,N)*ALEN(R,N)
      ANGLE = ACOS(ANGLE)
      RETURN
      END
C  
      FUNCTION ALEN(L,N)
      REAL L(N)
      DO 25, I=1,N
25    ALEN = ALEN + L(I)**2
      ALEN = SQRT(ALEN)
      RETURN
      END

      FUNCTION DOTPROD(L,R,N)
      REAL L(N)
      REAL R(N)
 
      DO 20, I=1,N
20    DOTPROD = DOTPROD + L(I)*R(I)
      RETURN
      END
