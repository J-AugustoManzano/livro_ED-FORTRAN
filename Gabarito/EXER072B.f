      PROGRAM EXER072B
      INTEGER I, J, A, B, C
      DIMENSION A(4,4), B(4,4), C(4,4)

      WRITE(*, '("\nMatriz A\n\n")')
      DO 110, I = 1, 4
        DO 120, J = 1, 4
          WRITE(*, 10) I, J
  10      FORMAT("Entre o elemento: LINHA ", I2 , " COLUNA ", I2)
          READ(*, "(I3)") A(I,J)
 120    CONTINUE
 110  CONTINUE

      WRITE(*, '("\nMatriz B\n\n")')
      DO 210, I = 1, 4
        DO 220, J = 1, 4
          WRITE(*, 20) I, J
  20      FORMAT("Entre o elemento: LINHA ", I2 , " COLUNA ", I2)
          READ(*, "(I3)") B(I,J)
 220    CONTINUE
 210  CONTINUE

      DO 310, I = 1, 4
        DO 320, J = 1, 4
          C(I,J) = A(I,J) - B(I,J)
 320    CONTINUE
 310  CONTINUE

      WRITE(*, '("\nMatriz C\n\n")')
      DO 410, I = 1, 4
        DO 420, J = 1, 4
          WRITE(*, 40) I, J, C(I,J)
  40      FORMAT("C[", I2 ,",", I2 ,"] = ", I2)
 420    CONTINUE
 410  CONTINUE

      END

