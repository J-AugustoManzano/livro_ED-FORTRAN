      PROGRAM C02EX03
      CHARACTER NOME*40
      WRITE(*, 10)
  10  FORMAT("Entre a seguir o seu nome")
      READ(*, 20) NOME
  20  FORMAT(A40)
      WRITE(*, 30) NOME
  30  FORMAT("\nOla,\n", A40)
      END

