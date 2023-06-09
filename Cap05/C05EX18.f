      PROGRAM C05EX18
      INTEGER CODIGO
      DO 100, CODIGO = 32, 127, 1
         WRITE (*, 10) CHAR(CODIGO), CODIGO
  10     FORMAT("--> ", A1, " equivale ao codigo[", I3, "]")
 100  CONTINUE
      END

