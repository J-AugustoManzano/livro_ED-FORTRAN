      PROGRAM EXER073I
      INTEGER I, J, X, MEIO, COMECO, FINAL, PESQ, ACHA
      INTEGER A(5), B(5), C(10)
      CHARACTER RESP*1

      WRITE(*, "('Entre cinco valores divisiveis por 3\n')")
      DO 110, I = 1, 5
 100    CONTINUE
          READ(*, "(I2)") A(I)
        IF (.NOT. MOD(A(I),3) .EQ. 0) THEN
          GOTO 100
        ENDIF
 110  CONTINUE

      WRITE(*, "('Entre cinco valores divisiveis por 8\n')")
      DO 210, I = 1, 5
 200    CONTINUE
          READ(*, "(I2)") B(I)
        IF (.NOT. MOD(B(I),8) .EQ. 0) THEN
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
          IF (C(I) .GT. C(J)) THEN
            X = C(I)
            C(I) = C(J)
            C(J) = X
          ENDIF
 500    CONTINUE
 400  CONTINUE

      RESP = "S"
 600  IF (RESP .EQ. "S" .OR. RESP .EQ. "s") THEN
        WRITE(*, "('Entre um valor a ser pesquisado:')")
        READ(*, "(I2)") PESQ
        COMECO = 1
        FINAL = 10
        ACHA = 0
 700    IF (COMECO .LE. FINAL .AND. ACHA .EQ. 0) THEN
          MEIO = (COMECO + FINAL) / 2
          IF (PESQ .EQ. C(MEIO)) THEN
            ACHA = 1
          ELSE
            IF (PESQ .LT. C(MEIO)) THEN
              FINAL = MEIO - 1
            ELSE
              COMECO = MEIO + 1
            ENDIF
          ENDIF
          GOTO 700
        ENDIF
        IF (ACHA .EQ. 1) THEN
          WRITE(*, "(I2, ' foi localizado na posicao ', I2)") PESQ,
     $          MEIO
        ELSE
          WRITE(*, "(I2, ' nao foi localizado')") PESQ
        ENDIF
        WRITE(*,"('\n\nContinua? [S]im / [N]ao + <Enter>:')")
        READ(*, "(A1)") RESP
        GOTO 600
      ENDIF

      END




