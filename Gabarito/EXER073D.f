      PROGRAM EXER073D
      INTEGER I, A, B, C, X
      DIMENSION A(5), B(5), C(10)

      WRITE(*, "('Entre cinco valores pares para a matriz <A>\n')")
      DO 110, I = 1, 5
 100    CONTINUE
          READ(*, "(I2)") A(I)
        IF (.NOT. MOD(A(I),2) .EQ. 0) THEN
          GOTO 100
        ENDIF
 110  CONTINUE

      WRITE(*, "('Entre cinco valores impares para a matriz <B>\n')")
      DO 210, I = 1, 5
 200    CONTINUE
          READ(*, "(I2)") B(I)
        IF (.NOT. MOD(B(I),2) .NE. 0) THEN
          GOTO 200
        ENDIF
 210  CONTINUE

      DO 300, I = 1, 10
        IF (I .LE. 5) THEN
          C(I) = A(I)
        ELSE
          C(I) = B(I - 5)
        ENDIF
 300  CONTINUE

      DO 400, I = 1, 9
        DO 500, J = I + 1, 10
          IF (C(I) .LT. C(J)) THEN
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




