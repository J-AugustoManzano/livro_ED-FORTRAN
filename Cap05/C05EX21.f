      PROGRAM C05EX21
      REAL*8 BASE, INDICE, RESULT
      WRITE(*, 10)
  10  FORMAT("Entre os valores da base e do indice de uma raiz.")
      READ(*, 20) BASE
      READ(*, 20) INDICE
  20  FORMAT(F20.15)
      RESULT = EXP(LOG(BASE)*(1/INDICE))
      WRITE(*, 30) BASE, INDICE, RESULT
  30  FORMAT("Raiz da base ", F7.2, " com indice ", F7.2, " equivale a
     $ ", F20.15)
      END

