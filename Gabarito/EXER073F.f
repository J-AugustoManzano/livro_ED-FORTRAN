      PROGRAM EXER073F
      INTEGER PESQ, I, A(10), B(10), ACHA
      CHARACTER RESP*1

      WRITE(*, "('Entre dez valores pares para a matriz <A>\n')")
      DO 110, I = 1, 10
 100    CONTINUE
          READ(*, "(I2)") A(I)
        IF (.NOT. MOD(A(I),2) .EQ. 0) THEN
          GOTO 100
        ENDIF
 110  CONTINUE

      DO 200, I = 1, 10
        B(I) = A(I) * 4
 200  CONTINUE

      RESP = "S"
 300  IF (RESP .EQ. "S" .OR. RESP .EQ. "s") THEN
        WRITE(*, "('Entre um valor a ser pesquisado:')")
        READ(*, "(I2)") PESQ
        I = 1
        ACHA = 0
 400    IF (I .LE. 10 .AND. ACHA .EQ. 0) THEN
          IF (PESQ .EQ. B(I)) THEN
            ACHA = 1
          ELSE
            I = I + 1
          ENDIF
          GOTO 400
        ENDIF
        IF (ACHA .EQ. 1) THEN
          WRITE(*, "(I2, ' foi localizado na posicao ', I2)") PESQ, I
        ELSE
          WRITE(*, "(I2, ' nao foi localizado')") PESQ
        ENDIF
        WRITE(*,"('\n\nContinua? [S]im / [N]ao + <Enter>:')")
        READ(*, "(A1)") RESP
        GOTO 300
      ENDIF

      END

