      PROGRAM EXERC03C
      REAL N1, N2, N3, N4, MD
      WRITE(*, 10)
  10  FORMAT("Entre as quatro notas.")
      READ (*, 20) N1
      READ (*, 20) N2
      READ (*, 20) N3
      READ (*, 20) N4
  20  FORMAT(F5.2)
      MD = (N1 + N2 + N3 + N4) / 4
      IF (MD .GE. 5) THEN
        WRITE(*, 30) MD
  30    FORMAT("Aprovado com media ", F5.2)
      ELSE
        WRITE(*, 40) MD
  40    FORMAT("Reprovado com media ", F5.2)
      ENDIF
      END

