C KATIE TOOHER PROGRAMMING LANGUAGES COSC3410 ASSIGNMENT 4
C I APPOLIGIZE FOR THE LATENESS THE ACOS FUNCTION WAS GIVING ME GRIEF!
       
        PROGRAM VECTORS
C
        REAL L(99)
        REAL R(99)
C FIRST I GET THE USER INPUT FOR THE LENGTH OF THE VECTOR        
        PRINT *, 'TELL ME THE LENGTH OF YOUR VECTOR'
        READ *, N
C  THEN I GET THE VECTORS USING THIS READ INPUT LOOP THAT WILL LOOP FOR THE GIVEN LENGTH         
        PRINT *, 'FIRST VECTOR'
        READ *, (L(I), I=1, N)
        
        PRINT *, 'NOW GIVE ME THE SECOND VECTOR'
        READ *, (R(I), I=1, N)
C  HERE I AM PRINTING OUT THE ANSWERS BY CALLING THE ANGLE FUNCITON
        PRINT *, 'RADIANS ', ANGLE(L,R,N)
        PRINT *, 'DEGREES',(180/3.14)*ANGLE(L,R,N)
        END
C
        
C THE ANGLE FUNCTION CALCUATES THE FINAL ANSWERS 
        FUNCTION ANGLE(A,B,N)
        REAL A(N)
        REAL B(N)
        ANGLE = DOTPROD(A,B,N) / (ALEN(A,N) * ALEN(B,N))
        ANGLE = ACOS(ANGLE)    
        RETURN
        END
C
C    THE ALEN FUNCTION CALCUATES THE MAGNITUDE OF THE VECTORS
        FUNCTION ALEN(V,N)
        REAL V(N)
        ALEN = 0.0
        DO 10, I=1, N
10      ALEN = ALEN + (V(I)**2)
        ALEN = ALEN**(0.5)
C        LENN = SQRT(LENN)
        RETURN
        END
C
C    THE DOTPROD FUNCTION FINDS THE DOT PRODUCT OF THE VECTORS GIVEN
        FUNCTION DOTPROD(J,K,N)
        REAL J(N)
        REAL K(N)
C THIS LOOP TAKES THE TWO ARRAY VECTORS AND MULTIPLIES THE X VALUES, THEN THE Y VALUES THEN THE Z VALUES AND SO ON 
C THEN ADD THAT TOGETHER TO GET THE MAGNITUDE OR LENGTH 
        DO 20, I=1, N
20      DOTPROD = DOTPROD + J(I)*K(I)
        RETURN
        END
