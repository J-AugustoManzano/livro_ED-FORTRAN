      PROGRAM C08EX02
      CHARACTER*5 NOME1, NOME2, NOME3
      NOME1 = "LIVRO DE FORTRAN"
      NOME2 = "OVO"
      NOME3 = "CAUSA"
      WRITE(*, 10) NOME1
  10  FORMAT(A5)
      WRITE(*, 20) NOME2
  20  FORMAT(A5)
      WRITE(*, 30) NOME3
  30  FORMAT(A5)
      END

