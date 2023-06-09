      PROGRAM EXER042E
      INTEGER I, S
      S = 0
      I = 1
 100  CONTINUE
        IF (MOD(I,2) .EQ. 0) THEN
          S = S + I
        ENDIF
        I = I + 1
      IF (.NOT. I .GT. 50) THEN
        GOTO 100
      ENDIF
      WRITE(*, 10) S
  10  FORMAT(I5)
      END


