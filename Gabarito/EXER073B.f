      PROGRAM EXER073B
      INTEGER I, A, B, X
      DIMENSION A(10), B(10)

      WRITE(*, "('Entre dez valores para a matriz <A>\n')")
      DO 100, I = 1, 10
        READ(*, "(I2)") A(I)
 100  CONTINUE

      DO 200, I = 1, 10
        B(I) = A(I) ** 2
 200  CONTINUE

      DO 300, I = 1, 9
        DO 400, J = I + 1, 10
          IF (B(I) .LT. B(J)) THEN
            X = B(I)
            B(I) = B(J)
            B(J) = X
          ENDIF
 400    CONTINUE
 300  CONTINUE

      WRITE(*, "('\n')")
      DO 500, I = 1, 10
        WRITE(*, "('B[', I2, '] = ', I5)") I, B(I)
 500  CONTINUE

      END

