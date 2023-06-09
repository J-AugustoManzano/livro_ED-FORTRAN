      PROGRAM C08EX08
      INTEGER I, J
      CHARACTER*10 PALAV
      PALAV = "COMPUTADOR"
      DO 100, I = 1, 10, 1
        DO 200, J = 65, 90, 1
          IF (PALAV(I:I) .EQ. CHAR(J)) THEN
            PALAV(I:I) = CHAR(ICHAR(CHAR(J)) + 32)
          ENDIF
 200    CONTINUE
 100  CONTINUE
      WRITE(*, "(A10)") PALAV
      END

