      PROGRAM C03EX05
      INTEGER*2 CODIGO
      WRITE(*, 10)
  10  FORMAT("Entre o codigo de acesso")
      READ(*, 20) CODIGO
  20  FORMAT(2I6)
      IF (CODIGO .EQ. 1 .OR. CODIGO .EQ. 2 .OR. CODIGO .EQ. 3) THEN
        IF (CODIGO .EQ. 1) THEN
          WRITE(*, 30)
  30      FORMAT("um")
        ENDIF
        IF (CODIGO .EQ. 2) THEN
          WRITE(*, 40)
  40      FORMAT("dois")
        ENDIF
        IF (CODIGO .EQ. 3) THEN
          WRITE(*, 50)
  50      FORMAT("tres")
        ENDIF
      ELSE
        WRITE(*, 60)
  60    FORMAT("codigo invalido")
      ENDIF
      END

