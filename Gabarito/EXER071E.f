      PROGRAM EXER071E
      INTEGER I, A, B
      DIMENSION A(10), B(10)

      WRITE(*, "('Entre dez valores para a matriz <A>\n')")
      DO 100, I = 1, 10
        READ(*, "(I2)") A(I)
 100  CONTINUE

      DO 200, I = 1, 10
        B(I) = A(11 - I)
 200  CONTINUE

      WRITE(*, "('\n')")
      DO 300, I = 1, 10
        WRITE(*, 10) I, A(I), I, B(I)
  10    FORMAT("A[", I2, "] = ", I2, " | B[", I2, "] = " , I2)
 300  CONTINUE

      END

