      PROGRAM EXERC02I
      INTEGER A, B, X
      WRITE(*, 10)
  10  FORMAT("Entre o valor da variavel <A>.")
      READ (*, 30) A
      WRITE(*, 20)
  20  FORMAT("Entre o valor da variavel <B>.")
      READ (*, 30) B
  30  FORMAT(I3)
      X = A
      A = B
      B = X
      WRITE(*, 40) A, B
  40  FORMAT("<A> = ", I3, " <B> = ", I3)
      END

