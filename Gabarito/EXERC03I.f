      PROGRAM EXERC03I
      INTEGER VLR, RESULT
      WRITE(*, 10)
  10  FORMAT("Entre um valor.")
      READ (*, 20) VLR
  20  FORMAT(I3)
      RESULT = VLR * 2
      IF (RESULT .GT. 30) THEN
        WRITE(*, 30) RESULT
      ENDIF
  30  FORMAT("Resultado = ", I3)
      END

