      PROGRAM EXER042F
      INTEGER B, E, P, I
      WRITE(*, 10)
  10  FORMAT("Entre os valores da BASE e do EXPOENTE")
      READ(*, 20) B
      READ(*, 20) E
  20  FORMAT(I3)
      P = 1
      I = 1
 100  CONTINUE
        P = P * B
        I = I + 1
      IF (.NOT. I .GT. E) THEN
        GOTO 100
      ENDIF
      WRITE(*, 30) P
  30  FORMAT(I5)
      END


