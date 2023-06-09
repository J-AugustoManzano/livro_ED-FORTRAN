      PROGRAM C08EX07
      INTEGER I, J
      CHARACTER*10 PALAV, MAIUS*(*), MINUS*(*)
      PARAMETER (MAIUS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      PARAMETER (MINUS = "abcdefghijklmnopqrstuvwxyz")
      PALAV = "COMPUTADOR"
      DO 100, I = 1, 10, 1
        DO 200, J = 1, LEN(MAIUS), 1
          IF (PALAV(I:I) .EQ. MAIUS(J:J)) THEN
            PALAV(I:I) = MINUS(J:J)
          ENDIF
 200    CONTINUE
 100  CONTINUE
      WRITE(*, "(A10)") PALAV
      END

