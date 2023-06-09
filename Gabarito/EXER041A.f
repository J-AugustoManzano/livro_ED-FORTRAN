      PROGRAM EXER041A
      INTEGER I, Q
      I = 15
 100  IF (I .LE. 200) THEN
        Q = I ** 2
        WRITE(*, 10) Q
  10    FORMAT(I5)
        I = I + 1
        GOTO 100
      ENDIF
      END

