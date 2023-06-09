      PROGRAM EXERC03G
      INTEGER A, B, C, D, E, MAIOR, MENOR
      WRITE(*, 10)
  10  FORMAT("Entre cinco valores.")
      READ (*, 20) A
      READ (*, 20) B
      READ (*, 20) C
      READ (*, 20) D
      READ (*, 20) E
  20  FORMAT(I3)
      MAIOR = A
      IF (MAIOR .LT. B) THEN
        MAIOR = B
      ENDIF
      IF (MAIOR .LT. C) THEN
        MAIOR = C
      ENDIF
      IF (MAIOR .LT. D) THEN
        MAIOR = D
      ENDIF
      IF (MAIOR .LT. E) THEN
        MAIOR = E
      ENDIF
      MENOR = A
      IF (MENOR .GT. B) THEN
        MENOR = B
      ENDIF
      IF (MENOR .GT. C) THEN
        MENOR = C
      ENDIF
      IF (MENOR .GT. D) THEN
        MENOR = D
      ENDIF
      IF (MENOR .GT. E) THEN
        MENOR = E
      ENDIF
      WRITE(*, 30) MAIOR
  30  FORMAT("O maior valor equivale a = ", I3)
      WRITE(*, 40) MENOR
  40  FORMAT("O menor valor equivale a = ", I3)
      END

