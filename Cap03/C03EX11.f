      PROGRAM C03EX11
      INTEGER*1 MES
      WRITE(*, 10)
  10  FORMAT("Entre um numero equivalente a um MES.")
      READ(*, 20) MES
  20  FORMAT(I2)
      IF (MES == 1) THEN
        WRITE(*, 101)
      ELSE
        IF (MES == 2) THEN
          WRITE(*, 102)
        ELSE
          IF (MES == 3) THEN
            WRITE(*, 103)
          ELSE
            IF (MES == 4) THEN
              WRITE(*, 104)
            ELSE
              IF (MES == 5) THEN
                WRITE(*, 105)
              ELSE
                IF (MES == 6) THEN
                  WRITE(*, 106)
                ELSE
                  IF (MES == 7) THEN
                    WRITE(*, 107)
                  ELSE
                    IF (MES == 8) THEN
                      WRITE(*, 108)
                    ELSE
                      IF (MES == 9) THEN
                        WRITE(*, 109)
                      ELSE
                        IF (MES == 10) THEN
                          WRITE(*, 110)
                        ELSE
                          IF (MES == 11) THEN
                            WRITE(*, 111)
                          ELSE
                            IF (MES == 12) THEN
                              WRITE(*, 112)
                            ELSE
                              WRITE(*, 113)
                            ENDIF
                          ENDIF
                        ENDIF
                      ENDIF
                    ENDIF
                  ENDIF
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
      ENDIF
 101  FORMAT("Janeiro")
 102  FORMAT("Fevereiro")
 103  FORMAT("Marco")
 104  FORMAT("Abril")
 105  FORMAT("Maio")
 106  FORMAT("Junho")
 107  FORMAT("Julho")
 108  FORMAT("Agosto")
 109  FORMAT("Setembro")
 110  FORMAT("Outubro")
 111  FORMAT("Novembro")
 112  FORMAT("Dezembro")
 113  FORMAT("Mes invalido")
      END

