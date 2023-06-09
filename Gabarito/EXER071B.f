      PROGRAM EXER071B
      INTEGER I, A, B, C
      DIMENSION A(8), B(8), C(8)

      WRITE(*, "('Entre oito valores para a matriz <A>\n')")
      DO 100, I = 1, 8
        READ(*, "(I2)") A(I)
 100  CONTINUE

      WRITE(*, "('Entre oito valores para a matriz <B>\n')")
      DO 200, I = 1, 8
        READ(*, "(I2)") B(I)
 200  CONTINUE

      DO 300, I = 1, 8
        C(I) = A(I) - B(I)
 300  CONTINUE

      WRITE(*, "('\n')")
      DO 400, I = 1, 8
        WRITE(*, "('C[', I1, '] = ', I2)") I, C(I)
 400  CONTINUE

      END

