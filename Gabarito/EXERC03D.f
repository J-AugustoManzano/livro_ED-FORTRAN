      PROGRAM EXERC03D
      INTEGER A, B, C, X
      WRITE(*, 10)
  10  FORMAT("Entre tres valores.")
      READ (*, 20) A
      READ (*, 20) B
      READ (*, 20) C
  20  FORMAT(I3)
      IF (A .GT. B) THEN
        X = A
        A = B
        B = X
      ENDIF
      IF (A .GT. C) THEN
        X = A
        A = C
        C = X
      ENDIF
      IF (B .GT. C) THEN
        X = B
        B = C
        C = X
      ENDIF
      WRITE(*, 30) A, B, C
  30  FORMAT("Os valores sao: ", I3, I3, I3)
      END

