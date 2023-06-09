      PROGRAM EXER072C
      INTEGER I, J
      REAL A
      DIMENSION A(4,4)

      WRITE(*, '("\nEntrada de Valores\n\n")')
      DO 110, I = 1, 4
        DO 120, J = 1, 4
          WRITE(*, 10) I, J
  10      FORMAT("Entre o elemento: LINHA ", I2 , " COLUNA ", I2)
          READ(*, "(F8.2)") A(I,J)
 120    CONTINUE
 110  CONTINUE

      WRITE(*, '("\nMatriz C\n\n")')
      DO 210, I = 1, 4
        DO 220, J = 1, 4
          IF (I .EQ. J) THEN
            WRITE(*, 20) I, J, A(I,J)
  20        FORMAT("A[", I2 ,",", I2 ,"] = ", F8.2)
          ENDIF
 220    CONTINUE
 210  CONTINUE

      END

