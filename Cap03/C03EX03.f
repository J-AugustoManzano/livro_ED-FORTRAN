      PROGRAM C03EX03
      INTEGER*2 A, B, R
      WRITE(*, 10)
  10  FORMAT("Entre os valores para as variaveis <A> e <B>.")
      READ(*, 20) A
      READ(*, 20) B
  20  FORMAT(2I6)
      R = A + B
      IF (R .GE. 10) THEN
        WRITE(*, 30) R + 5
  30    FORMAT("Resultado = ", I6)
      ELSE
        WRITE(*, 40) R - 7
  40    FORMAT("Resultado = ", I6)
      ENDIF
      END

