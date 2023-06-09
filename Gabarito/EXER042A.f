      PROGRAM EXER042A
      INTEGER I, Q
      I = 15
 100  CONTINUE
        Q = I ** 2
        WRITE(*, 10) Q
  10    FORMAT(I5)
        I = I + 1
      IF (.NOT. I .GT. 200) THEN
        GOTO 100
      ENDIF
      END

