      PROGRAM C03EX02
      INTEGER*2 A, B, X
      WRITE(*, 10)
  10  FORMAT("Entre os valores para as variaveis <A> e <B>.")
      READ(*, 20) A
      READ(*, 20) B
  20  FORMAT(2I6)
      IF (A .GT. B) THEN
        X = A
        A = B
        B = X
      ENDIF
      WRITE(*, 30) A, B
  30  FORMAT("Os valores ordenados sao ", I6, " e ", I6)
      END

