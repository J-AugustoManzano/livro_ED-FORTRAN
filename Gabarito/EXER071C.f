      PROGRAM EXER071C
      INTEGER I, A, B, C
      DIMENSION A(10), B(10), C(20)

      WRITE(*, "('Entre dez valores para a matriz <A>\n')")
      DO 100, I = 1, 10
        READ(*, "(I2)") A(I)
 100  CONTINUE

      WRITE(*, "('Entre dez valores para a matriz <B>\n')")
      DO 200, I = 1, 10
        READ(*, "(I2)") B(I)
 200  CONTINUE

      DO 300, I = 1, 20
        IF (I .LE. 10) THEN
          C(I) = A(I)
        ELSE
          C(I) = B(I - 10)
        ENDIF
 300  CONTINUE

      WRITE(*, "('\n')")
      DO 400, I = 1, 20
        WRITE(*, "('C[', I2, '] = ', I2)") I, C(I)
 400  CONTINUE

      END

