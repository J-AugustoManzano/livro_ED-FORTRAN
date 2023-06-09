      PROGRAM C05EX22
      REAL*8 B, I, R, ANT, AT
      WRITE(*, 10)
  10  FORMAT("Entre os valores da base e do indice de uma raiz.")
      READ(*, 20) B
      READ(*, 20) I
  20  FORMAT(F20.15)
      R = 1
      ANT = 1
      AT = 0
 100  IF (ANT .NE. AT) THEN
        ANT = R
        R = (1/I) * ((I-1) * R + (B / R ** (I-1)))
        AT = R
        GOTO 100
      ENDIF
      WRITE(*, 30) B, I, R
  30  FORMAT("Raiz da base ", F7.2, " com indice ", F7.2, " equivale a
     $ ", F20.15)
      END

