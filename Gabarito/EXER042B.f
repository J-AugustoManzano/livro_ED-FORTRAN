      PROGRAM EXER042B
      INTEGER I, S
      S = 0
      I = 1
 100  CONTINUE
        S = S + I
        I = I + 1
      IF (.NOT. I .GT. 100) THEN
        GOTO 100
      ENDIF
      WRITE(*, 10) S
  10  FORMAT(I5)
      END

