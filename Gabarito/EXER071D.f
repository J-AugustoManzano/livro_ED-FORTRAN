      PROGRAM EXER071D
      INTEGER I, A, B
      DIMENSION A(15), B(15)

      WRITE(*, "('Entre quinze valores para a matriz <A>\n')")
      DO 100, I = 1, 15
        READ(*, "(I2)") A(I)
 100  CONTINUE

      DO 200, I = 1, 15
        B(I) = A(I) ** 2
 200  CONTINUE

      WRITE(*, "('\n')")
      DO 300, I = 1, 15
        WRITE(*, "('B[', I2, '] = ', I2)") I, B(I)
 300  CONTINUE

      END

