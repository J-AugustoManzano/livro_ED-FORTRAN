      PROGRAM EXERC02H
      REAL V, R, A
      WRITE(*, 10)
  10  FORMAT("Entre o valor do raio.")
      READ (*, 30) R
      WRITE(*, 20)
  20  FORMAT("Entre o valor da altura.")
      READ (*, 30) A
  30  FORMAT(F8.2)
      V = 3.141592 * R ** 2 * A
      WRITE(*, 40) V
  40  FORMAT("Volume = ", F8.2)
      END

