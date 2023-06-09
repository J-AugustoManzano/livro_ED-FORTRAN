      PROGRAM C07EX09
      INTEGER I, J, X, MEIO, COMECO, FINAL, PESQ, A(10), ACHA
      CHARACTER RESP*1

      WRITE(*, "('Pesquisa binaria de valores\n')")

* // Entrada de dados

      WRITE(*, "('Entre 10 valores.\n')")
      DO 100, I = 1, 10, 1
        READ(*, "(I2)") A(I)
 100  CONTINUE

* // Ordenacao

      DO 200, I = 1, 9, 1
        DO 300, J = I + 1, 10, 1
          IF (A(I) .GT. A(J)) THEN
            X = A(I)
            A(I) = A(J)
            A(J) = X
          ENDIF
 300    CONTINUE
 200  CONTINUE

* // Psquisa e apresentacao

      RESP = "S"
 400  IF (RESP .EQ. "S" .OR. RESP .EQ. "s") THEN
        WRITE(*, "('Entre um valor a ser pesquisado:')")
        READ(*, "(I2)") PESQ
        COMECO = 1
        FINAL = 10
        ACHA = 0
 500    IF (COMECO .LE. FINAL .AND. ACHA .EQ. 0) THEN
          MEIO = (COMECO + FINAL) / 2
          IF (PESQ .EQ. A(MEIO)) THEN
            ACHA = 1
          ELSE
            IF (PESQ .LT. A(MEIO)) THEN
              FINAL = MEIO - 1
            ELSE
              COMECO = MEIO + 1
            ENDIF
          ENDIF
          GOTO 500
        ENDIF
        IF (ACHA .EQ. 1) THEN
          WRITE(*, "(I2, ' foi localizado na posicao ', I2)") PESQ,
     $          MEIO
        ELSE
          WRITE(*, "(I2, ' nao foi localizado')") PESQ
        ENDIF
        WRITE(*,"('\n\nContinua? [S]im / [N]ao + <Enter>:')")
        READ(*, "(A1)") RESP
        GOTO 400
      ENDIF

      END

