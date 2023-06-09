      PROGRAM EXERC03A
      INTEGER A, B, DIF
      WRITE(*, 10)
  10  FORMAT("Entre dois valores inteiros.")
      READ (*, 20) A
      READ (*, 20) B
  20  FORMAT(I3)
      IF (A .GT. B) THEN
        DIF = A - B
      ELSE
        DIF = B - A
      ENDIF
      WRITE(*, 40) DIF
  40  FORMAT("Diferenca = ", I3)
      END

