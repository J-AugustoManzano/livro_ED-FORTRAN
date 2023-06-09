      PROGRAM C03EX01
      INTEGER*2 A, B, R
      WRITE(*, 10)
  10  FORMAT("Entre os valores para as variaveis <A> e <B>.")
      READ(*, 20) A
      READ(*, 20) B
  20  FORMAT(2I6)
      R = A + B
      IF (R .GT. 10) THEN
        WRITE(*, 30) R
  30    FORMAT("Resultado = ", I6)
      ENDIF
      END

