      PROGRAM EXER071A
      INTEGER I, A, B
      DIMENSION A(8), B(8)

      WRITE(*, "('Entre oito valores para a matriz <A>\n')")
      DO 100, I = 1, 8
        READ(*, "(I2)") A(I)
 100  CONTINUE

      DO 200, I = 1, 8
        B(I) = A(I) * 3
 200  CONTINUE

      WRITE(*, "('\n')")
      DO 300, I = 1, 8
        WRITE(*, "('B[', I1, '] = ', I2)") I, B(I)
 300  CONTINUE

      END

