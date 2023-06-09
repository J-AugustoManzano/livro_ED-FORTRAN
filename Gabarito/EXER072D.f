      PROGRAM EXER072D
      INTEGER I, J
      REAL A, R
      DIMENSION A(3,3)

      WRITE(*, '("\nEntrada de Valores\n\n")')
      DO 110, I = 1, 3
        DO 120, J = 1, 3
          WRITE(*, 10) I, J
  10      FORMAT("Entre o elemento: LINHA ", I2 , " COLUNA ", I2)
          READ(*, "(F8.2)") A(I,J)
 120    CONTINUE
 110  CONTINUE

      WRITE(*, '("\nMatriz C\n\n")')
      DO 210, I = 1, 3
        DO 220, J = 1, 3
          IF (I .EQ. J) THEN
            R = A(I,J) * 2.0
            WRITE(*, 20) I, J, R
  20        FORMAT("A[", I2 ,",", I2 ,"] = ", F8.2)
          ELSE
            R = A(I,J) * 3.0
            WRITE(*, 30) I, J, R
  30        FORMAT("A[", I2 ,",", I2 ,"] = ", F8.2)
          ENDIF
 220    CONTINUE
 210  CONTINUE

      END

