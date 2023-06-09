      PROGRAM EXER073C
      INTEGER I, A, B, C, X
      DIMENSION A(5), B(5), C(10)

      WRITE(*, "('Entre cinco valores para a matriz <A>\n')")
      DO 100, I = 1, 5
        READ(*, "(I2)") A(I)
 100  CONTINUE

      WRITE(*, "('Entre cinco valores para a matriz <B>\n')")
      DO 200, I = 1, 5
        READ(*, "(I2)") B(I)
 200  CONTINUE

      DO 300, I = 1, 10
        IF (I .LE. 5) THEN
          C(I) = A(I)
        ELSE
          C(I) = B(I - 5)
        ENDIF
 300  CONTINUE

      DO 400, I = 1, 9
        DO 500, J = I + 1, 10
          IF (C(I) .GT. C(J)) THEN
            X = C(I)
            C(I) = C(J)
            C(J) = X
          ENDIF
 500    CONTINUE
 400  CONTINUE

      WRITE(*, "('\n')")
      DO 600, I = 1, 10
        WRITE(*, "('C[', I2, '] = ', I4)") I, C(I)
 600  CONTINUE

      END

