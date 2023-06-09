      PROGRAM C08EX05
      CHARACTER*10 ESPACO, PALAVR
      INTEGER I
      ESPACO = " "
      PALAVR = "COMPUTADOR"
      DO 100, I = 1, LEN(PALAVR), 1
        WRITE(*, *) ESPACO(:I) // PALAVR(I:I)
 100  CONTINUE
      END

