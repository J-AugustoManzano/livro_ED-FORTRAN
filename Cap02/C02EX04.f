      PROGRAM C02EX04
      INTEGER*2 A, B, R
      WRITE(*, 10)
  10  FORMAT("Entre a seguir os valores para <A> e <B>.")
      READ(*, 20) A, B
  20  FORMAT(I5)
      R = A + B
      WRITE(*, 30) R
  30  FORMAT("\nSoma = ", I5)
      END

