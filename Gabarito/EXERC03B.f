      PROGRAM EXERC03B
      INTEGER VLR, RESULT
      WRITE(*, 10)
  10  FORMAT("Entre um valor.")
      READ (*, 20) VLR
  20  FORMAT(I3)
      IF (VLR .LT. 0) THEN
        RESULT = VLR * (-1)
      ELSE
        RESULT = VLR
      ENDIF
      WRITE(*, 40) RESULT
  40  FORMAT("Resultado = ", I3)
      END

